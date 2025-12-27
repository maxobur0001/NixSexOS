{ pkgs, ... }:

{
  imports = [./packages];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  boot.kernelPackages = pkgs.linuxPackages_zen;
  services.resolved = {
    enable = true;
    extraConfig = ''
    nameserver 1.1.1.1
    '';
  };
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [ "en_US.UTF-8/UTF-8" "ru_RU.UTF-8/UTF-8" ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.maxobur0001 = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "adbusers" "wireshark" ];
    packages = with pkgs; [
      tree
    ];
  };

  xdg = {
    mime = {
      enable = true;
      defaultApplications = {
        "text/html" = "org.qutebrowser.qutebrowser.desktop";
        "x-scheme-handler/http" = "org.qutebrowser.qutebrowser.desktop";
        "x-scheme-handler/https" = "org.qutebrowser.qutebrowser.desktop";
        "x-scheme-handler/about" = "org.qutebrowser.qutebrowser.desktop";
        "x-scheme-handler/unknown" = "org.qutebrowser.qutebrowser.desktop";
      };
    };
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gnome
        xdg-desktop-portal-wlr
      ];
      config.niri.default = [ "gnome" "wlr" ];
      xdgOpenUsePortal = true;
    };
  };

  security.sudo = {
    enable = true;
    extraConfig = ''
    maxobur0001 ALL=(ALL:ALL) NOPASSWD: ALL
    '';
  };
  security.rtkit.enable = true;

  environment.sessionVariables = {
    "NIXOS_OZONE_WL" = "1";
    "DEFAULT_BROWSER" = "${pkgs.qutebrowser}/bin/qutebrowser";
  };
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # don't touch it folk
  system.stateVersion = "25.05"; # Did you read the comment?
}

