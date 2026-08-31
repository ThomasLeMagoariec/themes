{ config, lib, pkgs, ... }:
let
  cfg = config.programs.whatever;

  themes = {
    rose-pine = ''
      background = #191724
      foreground = #e0def4
    '';
    gruvbox = ''
      background = #282828
      foreground = #ebdbb2
    '';
    nord = ''
      background = #2e3440
      foreground = #d8dee9
    '';
  };
in
{
  options.programs.whatever = {
    enable = lib.mkEnableOption "whatever";
    theme = lib.mkOption {
      type = lib.types.enum [ "rose-pine" "gruvbox" "nord" ];
      default = "rose-pine";
    };
  };

  config = lib.mkIf cfg.enable {

    home.file.".whateverrc".text = themes.${cfg.theme};
  };
}
