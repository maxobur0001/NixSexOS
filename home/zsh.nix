{...}: {
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake ~/.config/nixos";
      upgrade = "sudo nixos-rebuild --upgrade switch --flake ~/.config/nixos";
      clear-garbage = "sudo nix-collect-garbage -d";
      home-update = "home-manager switch --flake ~/.config/nixos";
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
