{...}: {
  imports = [
    ./zapret
  ];
  virtualisation.docker.enable = true;
  services.xserver = {
    enable = true;
    xkb.layout = "us,ru";
    xkb.options = "grp:ctrl_space_toggle";
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
}
