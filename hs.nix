{ sources ? import ./nix/sources.nix { }
, pkgs ? import sources.nixpkgs { config = { allowBroken = true; }; }
, ghc ? "ghc8104"
}: pkgs.mkShell {
  nativeBuildInputs = [
    (pkgs.haskell.packages."${ghc}".ghcWithPackages (ps: with ps; [
      accelerate
      Agda
      apecs-physics
      arithmoi
      boltzmann-samplers
      bound
      c2hs
      cabal-fmt
      cabal-install
      cabal2nix
      criterion
      darcs
      dhall
      diagrams
      ekg
      esqueleto
      fakedata
      ffmpeg-light
      folds
      futhark
      ghcid
      gi-gtk-hs
      gitlib-libgit2
      hadolint
      haskell-language-server
      HaTeX
      hgeometry
      hindent
      hip
      hledger-ui
      hledger-web
      hmatrix-backprop
      http-client-openssl
      hnix
      idris
      inspection-testing
      language-javascript
      linear
      llvm-hs
      mergeful
      mergeless
      (pkgs.haskell.lib.doJailbreak monad-bayes)
      niv
      pandoc
      recursion-schemes
      reflex-dom
      replace-megaparsec
      sbv
      selda-sqlite
      servant-openapi3
      servant-server
      singletons
      stack
      streamly
      sydtest-wai
      tasty-smallcheck
      threepenny-gui
      tree-diff
      tree-sitter-haskell
      tree-sitter-typescript
      trifecta
      twitter-conduit
      unbound-generics
      unification-fd
      wai-middleware-auth
      wai-websockets
      weeder
    ]))
  ];
}
