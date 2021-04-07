{ sources ? import ./nix/sources.nix { }
, pkgs ? import sources.nixpkgs { config = { allowBroken = true; }; }
, ghc ? "ghc8104"
}: pkgs.mkShell {
  nativeBuildInputs = [
    (pkgs.haskell.packages."${ghc}".ghcWithPackages (ps: with ps; [
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
      folds
      ghcid
      gi-gtk-hs
      gitlib-libgit2
      haskell-language-server
      HaTeX
      hindent
      hledger-ui
      hledger-web
      hmatrix-backprop
      http-client-openssl
      hnix
      inspection-testing
      language-javascript
      linear
      llvm-hs
      mergeful
      mergeless
      niv
      pandoc
      recursion-schemes
      reflex-dom
      replace-megaparsec
      sbv
      servant-server
      ShellCheck
      selda-sqlite
      servant-openapi3
      singletons
      stack
      streamly
      sydtest-wai
      threepenny-gui
      tree-diff
      tree-sitter-haskell
      tree-sitter-typescript
      twitter-conduit
      unbound-generics
      wai-middleware-auth
      wai-websockets
      weeder
    ]))
  ];
}
