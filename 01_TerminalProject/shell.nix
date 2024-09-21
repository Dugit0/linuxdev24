with import <nixpkgs>{};

stdenv.mkDerivation rec {
    name = "Show";
    buildInputs = [
        ncurses
        ];
    shellHook = ''
        make
        exit
    '';
}


