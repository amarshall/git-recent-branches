{ ruby, stdenv, ... }:
let
  version = "0.3.2";
in stdenv.mkDerivation {
  name = "git-recent-branches-${version}";
  buildInputs = [ ruby ];
  makeFlags = [ "prefix=$(out)" ];
  src = ./.;
}
