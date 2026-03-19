{pkgs, ...}: {
  imports = [
    ./zapret
  ];
  services.xserver = {
    enable = true;
    xkb.layout = "us,ru";
    xkb.options = "grp:ctrl_space_toggle";
    windowManager.i3.enable = true;
    excludePackages = [ pkgs.xterm ];
  };
  services.printing = {
    enable = true;
    drivers = [ pkgs.pantum-driver ];
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
    host  all  all 127.0.0.1/32 md5
    '';
  };
  services.zerotierone = {
    enable = true;
    joinNetworks = [
      "08752e18b1eb3beb"
    ];
  };
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
