{
  description = "A minimalistic Vim and Neovim color scheme that uses very few colors.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };

        neovim = pkgs.vimUtils.buildVimPlugin {
          pname = "yui";
          version = "latest";
          buildInputs = with pkgs; [
            lua54Packages.lua
          ];
          buildPhase = ''
            make clean
            make colors/yui_light.vim
            make colors/yui_dark.vim
            make autoload/lightline/colorscheme/yui.vim
            make autoload/lightline/colorscheme/yui_dark.vim
            rm -rf src flake.* screenshots README.md Makefile LICENSE* CONTRIBUTING.md
          '';
          src = with pkgs.lib;
            cleanSourceWith {
              filter = cleanSourceFilter;
              src = ./.;
            };
        };

        makeFishPlugin = pkgName: makePath:
          pkgs.fishPlugins.buildFishPlugin rec {
            pname = pkgName;
            version = "git";

            buildInputs = with pkgs; [
              lua54Packages.lua
            ];

            buildPhase = ''
              make clean
              make ${makePath}
              mkdir -p conf.d
              mv ${makePath} conf.d/
            '';

            src = with pkgs.lib;
              cleanSourceWith {
                filter = cleanSourceFilter;
                src = ./.;
              };
          };

        ghostty = pkgs.stdenv.mkDerivation {
          buildInputs = with pkgs; [
            lua54Packages.lua
          ];
          pname = "yui";
          version = "latest";
          buildPhase = ''
            make clean
            make ghostty/yui_light
            make ghostty/yui_dark
          '';
          installPhase = ''
            mkdir -p $out
            cp -r ghostty $out
          '';
          src = with pkgs.lib;
            cleanSourceWith {
              filter = cleanSourceFilter;
              src = ./.;
            };
        };

        alacritty = pkgs.stdenv.mkDerivation {
          buildInputs = with pkgs; [
            lua54Packages.lua
          ];
          pname = "yui";
          version = "latest";
          buildPhase = ''
            make clean
            make alacritty/yui_light.yml
            make alacritty/yui_light.toml
            make alacritty/yui_dark.yml
            make alacritty/yui_dark.toml
          '';
          installPhase = ''
            mkdir -p $out
            cp -r alacritty $out
          '';
          src = with pkgs.lib;
            cleanSourceWith {
              filter = cleanSourceFilter;
              src = ./.;
            };
        };
      in rec {
        packages = flake-utils.lib.flattenTree {
          neovim = neovim;
          alacritty = alacritty;
          ghostty = ghostty;
          fish_dark = makeFishPlugin "fish_dark" "fish/yui_dark.fish";
          fish_light = makeFishPlugin "fish_light" "fish/yui.fish";
        };

        defaultPackage = packages.neovim;

        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            coreutils
            moreutils
            jq
            alejandra
            nodePackages.prettier
            (lua54Packages.lua.withPackages (ps:
              with ps; [
              ]))
            lua-language-server
            stylua
          ];
        };
      }
    );
}
