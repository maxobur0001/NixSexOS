{config, pkgs, ...}: {
  imports = [
    ./zapret/init.nix
  ];
  services.xserver.enable = true;
  services.printing.enable = true;
  services.libinput.enable = true;
  services.openssh.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
}
