{pkgs, lib, ...}: {
  xdg.portal = {
    enable = true;
    extraPortals = lib.mkForce (with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
      xdg-desktop-portal
    ]);
    xdgOpenUsePortal = true;
  };
}
