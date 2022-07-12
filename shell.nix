{ pkgs ? import <nixpkgs> { } }:
let
  easy-ps = import
    (pkgs.fetchFromGitHub {
      owner = "justinwoo";
      repo = "easy-purescript-nix";
      rev = "5dca2f0f3b9ec0bceabb23fa1fd2b5f8ec30fa53";
      sha256 = "mkHIyWk5Xh54FqCU7CT3G/tnHF7mLbQt3EfnNCMCTO8=";
    }) {
    inherit pkgs;
  };
in
pkgs.mkShell {
  buildInputs = [
    easy-ps.purs-0_15_2
    easy-ps.spago
  ];
}
