{pkgs, lib, inputs, ...}: {
  programs.xwayland.enable = true;
  programs.niri.enable = true;
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.gamescope.enable = true;
  programs.steam = {
    enable = true;
    fontPackages = with pkgs; [
      noto-fonts
      wqy_zenhei
    ];
  };
  programs.appimage.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    home-manager
    brightnessctl
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
    obsidian
    imagemagick
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
    gamemode
    gnome-calculator
    gcc
    inputs.prismlauncher.packages.${pkgs.stdenv.system}.default
    qbittorrent
  ];
  fonts.packages = with pkgs; [
    noto-fonts
  ];
  fonts.fontconfig.enable = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
    ];
}
