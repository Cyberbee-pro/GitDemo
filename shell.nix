{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gh
    pkgs.git
  ];

  shellHook = ''
    echo "Git & GitHub dev shell activated!"
    echo "GitHub CLI: $(gh --version | head -n 1)"
  '';
}
