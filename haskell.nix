{pkgs, ...}:

{
 environment.systemPackages = with pkgs; [
  haskellPackages.ghc
  cabal-install
  haskellPackages.haskell-language-server
 ];
}
