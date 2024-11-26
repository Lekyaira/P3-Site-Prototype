{
  pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11") {},
}:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    sass
    nodejs_20
  ];
  buildInputs = with pkgs; [
  ];
}
