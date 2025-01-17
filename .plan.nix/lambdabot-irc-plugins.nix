{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-irc-plugins"; version = "5.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "IRC plugins for lambdabot.";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[irc] Lets lambdabot connect to IRC.\n\n[localtime] Check user's local time.\n\n[log] Log IRC channels.\n\n[topic] Modify channel topics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lambdabot-core)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.split)
          (hsPkgs.time)
          ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../lambdabot-irc-plugins; }