{config, pkgs, ...}: {
  programs.nixvim.enable = true;
  programs.nixvim.imports = [
    ./core/init.nix
    ./plugins/init.nix
  ];
}
