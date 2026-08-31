{ config, lib, pkgs, ... }:
let
  c = config.theme.colors;
in
{
  config = lib.mkIf config.programs.kitty.enable {
    programs.kitty.settings = {
      foreground              = c.foreground;
      background               = "#FF0000";
      selection_foreground     = c.selectionForeground;
      selection_background     = c.selectionBackground;

      cursor                   = c.cursor;
      cursor_text_color        = c.cursorText;

      url_color                 = c.url;

      active_border_color       = c.activeBorder;
      inactive_border_color     = c.inactiveBorder;
      bell_border_color         = c.bellBorder;

      wayland_titlebar_color    = "system";
      macos_titlebar_color      = "system";

      active_tab_foreground     = c.activeTabForeground;
      active_tab_background     = c.activeTabBackground;
      inactive_tab_foreground   = c.inactiveTabForeground;
      inactive_tab_background   = c.inactiveTabBackground;
      tab_bar_background        = c.tabBarBackground;

      mark1_foreground = c.mark1Foreground;
      mark1_background = c.mark1Background;
      mark2_foreground = c.mark2Foreground;
      mark2_background = c.mark2Background;
      mark3_foreground = c.mark3Foreground;
      mark3_background = c.mark3Background;
    };
  };
}
