{ config, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
    font = {
      name = "Iosevka Nerd Font";
      size = 10;
    };
    keybindings = {
      "ctrl+left" = "neighboring_window left";
      "shift+left" = "move_window right";
      "ctrl+down" = "neighboring_window down";
      "shift+down" = "move_window up";
    };
    extraConfig = ''
      mouse_hide_wait         2.0
      url_color               #0087bd
      url_style               dotted
      enable_audio_bell       no
      confirm_os_window_close 0
      background_opacity      0.2
      window_margin_width     5
      tab_bar_edge            top
      tab_bar_style           powerline
      tab_bar_align           center
      tab_bar_min_tabs        2
      tab_switch_strategy     previous
      wheel_scroll_multiplier 10
      background              #1D2021
      foreground              #d4be98
      cursor                  #A89983
      selection_background    #928374
      color0                  #1D2021
      color8                  #928373
      color1                  #fb4833
      color9                  #fb4833
      color2                  #b8ba25
      color10                #b8ba25
      color3                  #fabc2e
      color11                #fabc2e
      color4                  #83a597
      color12                #83a597
      color5                  #d3859a
      color13                #d3859a
      color6                  #8ec07b
      color14                #8ec07b
      color7                  #a89983
      color15                #ebdbb2
      selection_foreground    #1d2021
    '';
  };
}
