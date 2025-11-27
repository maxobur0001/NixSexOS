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
  services.printing.enable = true;
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
    #type  database  DBuser  auth-method
    local  all       all     trust
    '';

  };
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
