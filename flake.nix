{
  description = "git-recent-branches";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      name = "git-recent-branches";
      overlay = final: prev: {
        ${name} = prev.callPackage ./default.nix { };
      };
    in flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [overlay];
        };
      in rec {
        packages = { ${name} = pkgs.${name}; };
        defaultPackage = packages.${name};
      }
    )
    //
    { inherit overlay; }
    ;
}
