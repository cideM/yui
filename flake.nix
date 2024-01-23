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

        alacrittyToml = pkgs.stdenv.mkDerivation rec {
          name = "yui-alacritty";
          buildInputs = with pkgs; [
            lua54Packages.lua
          ];
          buildPhase = ''
            make alacritty/yui.toml
            rm -r src Makefile flake.nix flake.lock README.md CONTRIBUTING.md LICENSE.txt
          '';
          src = pkgs.lib.cleanSourceWith {
            filter = path: type:
              !(pkgs.lib.hasInfix "screenshots" path)
              && !(pkgs.lib.hasInfix "colors/" path)
              && !(pkgs.lib.hasInfix "autoload/" path)
              && !(pkgs.lib.hasInfix "doc/" path);
            src = ./.;
          };
          installPhase = ''
            mkdir -p $out
            cp alacritty/yui.toml $out/yui.toml
          '';
        };

        alacritty = pkgs.stdenv.mkDerivation rec {
          name = "yui-alacritty";
          buildInputs = with pkgs; [
            lua54Packages.lua
          ];
          buildPhase = ''
            make alacritty/yui.yml
            rm -r src Makefile flake.nix flake.lock README.md CONTRIBUTING.md LICENSE.txt
          '';
          src = pkgs.lib.cleanSourceWith {
            filter = path: type:
              !(pkgs.lib.hasInfix "screenshots" path)
              && !(pkgs.lib.hasInfix "colors/" path)
              && !(pkgs.lib.hasInfix "autoload/" path)
              && !(pkgs.lib.hasInfix "doc/" path);
            src = ./.;
          };
          installPhase = ''
            mkdir -p $out
            cp alacritty/yui.yml $out/yui.yml
          '';
        };

        nvim = pkgs.vimUtils.buildVimPlugin rec {
          name = "yui-theme-nvim";

          buildInputs = with pkgs; [
            lua54Packages.lua
          ];

          buildPhase = ''
            make
            rm -r src Makefile flake.nix flake.lock README.md CONTRIBUTING.md LICENSE.txt
          '';

          src = pkgs.lib.cleanSourceWith {
            filter = path: type:
              !(pkgs.lib.hasInfix "screenshots" path)
              && !(pkgs.lib.hasInfix "colors/" path)
              && !(pkgs.lib.hasInfix "autoload/" path)
              && !(pkgs.lib.hasInfix "doc/" path);
            src = ./.;
          };
        };
      in rec {
        packages = flake-utils.lib.flattenTree {
          nvim = nvim;
          alacritty = alacritty;
          alacrittyToml = alacrittyToml;
        };

        defaultPackage = packages.yui;

        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            coreutils
            moreutils
            jq
            alejandra
            lua54Packages.lua
            lua-language-server
            stylua
          ];
        };
      }
    );
}
