{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-reference-plugins"; version = "5.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot reference plugins.";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[dict] Query various dictionaries.\n\n[metar] Look up avian weather reports.\n\n[oeis] Look up number sequences on OEIS.\n\n[search] Query search engines.\n\n[spell] Check spelling of wrods.\n\n[ticker] Look up stock quotes.\n\n[url] Display titles of URLs on channels.\n\n[where] Manage and query a key-URL list.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.HTTP)
          (hsPkgs.lambdabot-core)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.oeis)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.split)
          (hsPkgs.tagsoup)
          (hsPkgs.utf8-string)
          ];
        };
      };
    } // rec { src = (pkgs.lib).mkDefault ../lambdabot-reference-plugins; }