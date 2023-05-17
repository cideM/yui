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

        yuiVim = pkgs.vimUtils.buildVimPlugin rec {
          name = "yui";

          buildInputs = with pkgs; [
            lua54Packages.lua
          ];

          buildPhase = ''
            make
            rm -r template Makefile flake.nix flake.lock README.md
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
          yui = yuiVim;
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
