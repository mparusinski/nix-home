{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "michalparusinski";
  home.homeDirectory = "/home/michalparusinski";
  
  home.packages = [
    pkgs.git
    pkgs.keepassxc
    pkgs.bat
    pkgs.fzf
    pkgs.thefuck
    pkgs.mc
  ];

  services.syncthing = {
    enable = true;
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
    };
    history = {
      size = 10000;
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "thefuck" "wd" "fzf" ];
      theme = "robbyrussell";
    };
  };
}
