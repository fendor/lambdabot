{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-core"; version = "5.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot core functionality";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nManage plugins, network connections, configurations\nand much more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-sum-template)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.hslogger)
          (hsPkgs.HTTP)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-bsd)
          (hsPkgs.parsec)
          (hsPkgs.prim-uniq)
          (hsPkgs.random)
          (hsPkgs.random-fu)
          (hsPkgs.random-source)
          (hsPkgs.regex-tdfa)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../lambdabot-core; }