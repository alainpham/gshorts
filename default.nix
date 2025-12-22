{ stdenv, pkgconfig, sdl2 }:

stdenv.mkDerivation rec {
  pname = "gshorts";
  version = "master";

  src = ./.;

  # pkg-config is needed at build time to resolve SDL2 flags
  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ sdl2 ];

  buildPhase = ''
    make clean
  '';

  installPhase = ''
    mkdir -p "$out/bin"
    cp gshorts "$out/bin/gshorts"
  '';
}
