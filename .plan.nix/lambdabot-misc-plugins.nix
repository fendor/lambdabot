{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-misc-plugins"; version = "5.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot miscellaneous plugins";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[dummy] Many commands with fixed replies.\n\n[error] Debug error handling.\n\n[fresh] Generate Haskell project names.\n\n[hello] Hello, world.\n\n[todo] A to-do list for lambdabot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.lambdabot-core)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.random-fu)
          (hsPkgs.random-source)
          (hsPkgs.regex-tdfa)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.split)
          (hsPkgs.tagsoup)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
          ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../lambdabot-misc-plugins; }