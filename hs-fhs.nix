{ sources ? import ./nix/sources.nix { }
, pkgs ? import sources.nixpkgs { }
}:
(pkgs.buildFHSUserEnv {
  name = "hs-fhs";
  targetPkgs = ps: import ./stdenv-drvs.nix ps ++ (with ps; [
    gmp.dev
    ncurses.dev
    zlib.dev
  ]);
}).env
