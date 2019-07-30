with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "lambdabot";
  buildInputs = [
    gmp
    zlib
    pcre
    gcc
    pkgconfig

    mueval
    haskellPackages.djinn
    ncurses
  ];
  src = null;
  shellHook = ''
    export LD_LIBRARY_PATH=${pcre.out}/lib:${gmp}/lib:${zlib}/lib:${ncurses}/lib:$LD_LIBRARY_PATH
    export PATH=$PATH:$HOME/.local/bin
  '';
}
