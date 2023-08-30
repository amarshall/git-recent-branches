{ lib
, ruby
, stdenv
}:

stdenv.mkDerivation {
  pname = "git-recent-branches";
  version = "0.3.2";
  buildInputs = [ ruby ];
  makeFlags = [ "prefix=$(out)" ];
  src = ./.;

  meta.platforms = ruby.meta.platforms;
}
