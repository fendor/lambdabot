{ pkgs ? import <nixpkgs> {} }:
# default.nix
let
  # Import the Haskell.nix library,
  haskell = import (builtins.fetchTarball https://github.com/input-output-hk/haskell.nix/archive/master.tar.gz) { inherit pkgs; };

  # Import the file you will create in the stack-to-nix or cabal-to-nix step.
  my-pkgs = import ./pkgs.nix;

  # # Stack projects use this:
  # pkgSet = haskell.mkStackPkgSet {
  #   stack-pkgs = my-pkgs;
  #   pkg-def-extras = [
  #     # these extras will provide additional packages
  #     # ontop of the package set.  E.g. extra-deps
  #     # for stack packages. or local packages for
  #     # cabal.projects
  #   ];
  #   modules = [
  #     # specific package overrides would go here
  #     # example:
  #     #  packages.cbors.patches = [ ./one.patch ];
  #     #  packages.cbors.flags.optimize-gmp = false;
  #   ];
  # };

  # Cabal projects use this:
  pkgSet = haskell.mkCabalProjectPkgSet {
    plan-pkgs = my-pkgs;
    pkg-def-extras = [];
    modules = [
      { nonReinstallablePkgs =
         [ "ghc-boot" "binary" "bytestring" "filepath" "directory" "containers" "time" "unix" "Win32"
           "ghci" "hpc" "process" "terminfo" "transformers" "mtl" "parsec" "text"
         ];
      }

      { packages.Cabal.patches = [./Cabal.patch]; }
	    { packages.happy.package.setup-depends = [pkgSet.config.hsPkgs.Cabal]; }
	    { packages.haskell.src.exts.package.setup-depends = [pkgSet.config.hsPkgs.Cabal]; }
    ];
  };

in pkgSet.config.hsPkgs // { _config = pkgSet.config; }