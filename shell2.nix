# shell.nix
{ pkgs ? import <nixpkgs> {} }:

let
  hsPkgs = import ./default.nix { inherit pkgs; };
in
  hsPkgs.shellFor {
    # Include only the *local* packages of your project.
    packages = ps: with ps; [
      lambdabot
      lambdabot-core
      lambdabot-haskell-plugins
      lambdabot-irc-plugins
      lambdabot-misc-plugins
      lambdabot-novelty-plugins
      lambdabot-reference-plugins
      lambdabot-social-plugins
      lambdabot-trusted

    ];

    # Builds a Hoogle documentation index of all dependencies,
    # and provides a "hoogle" command to search the index.
    withHoogle = false;

    # You might want some extra tools in the shell (optional).
    buildInputs = with pkgs.haskellPackages;
      [ ];
  }