{pkgs, lib, ...}: {
  programs.xwayland.enable = true;
  programs.niri.enable = true;
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.steam = {
    package = pkgs.steam-small;
    enable = true;
    gamescopeSession.enable = true;
  };

  environment.systemPackages = with pkgs; [
    vim
    wget
    home-manager
    brightnessctl
    bluez
    pulseaudio
    libnotify
    wl-clipboard
    playerctl
    swaybg
    grim
    slurp
    discord
    eza
    fastfetch
    xwayland-satellite
    blobdrop
    btop
    mpv
    kew
    audacity
    blender
    obsidian
    imagemagick
    mindustry
    libreoffice
    bluetui
    thunderbird
    telegram-desktop
    godot
    yazi
    nautilus
    unzip
    zip
    unrar
    p7zip
    docker
    cargo
    rustc
  ];
  fonts.packages = with pkgs; [
    noto-fonts
    dejavu_fonts
    liberation_ttf
    wqy_zenhei
  ];
  fonts.fontconfig = {
    enable = true;
    cache32Bit = true;
  };
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
    ];
}
