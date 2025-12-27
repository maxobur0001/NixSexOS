{pkgs, ...}: {
  imports = [
    ./zapret
  ];
  virtualisation.docker.enable = true;
  services.xserver = {
    enable = true;
    xkb.layout = "us,ru";
    xkb.options = "grp:ctrl_space_toggle";
    windowManager.i3 = {
      enable = true;
      extraPackages = [ pkgs.dmenu ];
    };
  };
  services.printing = {
    enable = true;
    drivers = [ pkgs.hplipWithPlugin pkgs.hplip ];
  };
  services.libinput.enable = true;
  services.openssh.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    wireplumber.enable = true;
    jack.enable = true;
  };
  services.postgresql = {
    enable = true;
    ensureDatabases = [ "vanillitybot" ];
    authentication = pkgs.lib.mkOverride 10 ''
    local all  all  trust
    host  all  all 127.0.0.1/32 trust
    '';
  };
  services.cloudflare-warp = {
    enable = true;
  };
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
