{config, pkgs, ...}: {
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake ~/nix";
      clear-garbage = "sudo nix-collect-garbage -d";
      home-update = "home-manager switch --flake ~/nix";
      cd = "z";
      ls = "eza --icons=always -1";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "simple";
    };
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
