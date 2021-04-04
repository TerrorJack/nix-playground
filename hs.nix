{ sources ? import ./nix/sources.nix { }
, pkgs ? import sources.nixpkgs { }
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
      dhall
      ekg
      esqueleto
      folds
      ghcid
      gi-gtk-hs
      haskell-language-server
      HaTeX
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
      reflex-dom
      replace-megaparsec
      sbv
      servant-server
      ShellCheck
      selda-sqlite
      singletons
      stack
      streamly
      sydtest-wai
      threepenny-gui
      tree-diff
      tree-sitter-haskell
      tree-sitter-typescript
      unbound-generics
      wai-middleware-auth
      wai-websockets
      weeder
    ]))
  ];
}
