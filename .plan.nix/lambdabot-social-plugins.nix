{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-social-plugins"; version = "5.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Social plugins for Lambdabot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[activity] Check where and how much is lambdabot used.\n\n[karma] Track who's been good and who's been naughty.\n\n[poll] Let the people vote.\n\n[seen] Track who was around when.\n\n[tell] Leave messages for other users.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lambdabot-core)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.time)
          ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../lambdabot-social-plugins; }