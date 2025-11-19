{ pkgs, ... }:

{
  imports = [./packages];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.maxobur0001 = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
  };

  security.sudo = {
    enable = true;
    extraConfig = ''
    maxobur0001 ALL=(ALL:ALL) NOPASSWD: ALL
    '';
  };
  security.rtkit.enable = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  # don't touch it folk
  system.stateVersion = "25.05"; # Did you read the comment?

}

