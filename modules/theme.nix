{ config, lib, ... }:
let
	cfg = config.theme;
in
	{
	options.theme = {
		name = lib.mkOption {
			type = lib.types.str;
			default = "sakura-reflection";
			description = "Active theme name, used for readability/switch statements.";
		};

		colors = lib.mkOption {
			type = lib.types.attrsOf lib.types.str;
			description = "Shared color palette consumed by per-program modules.";
			default = { };
		};
	};

	config.theme.colors = lib.mkDefault (
		{
			sakura-reflection = {
				foreground             = "e5d4e8";
				background              = "10131f";
				selectionForeground   = "10131f";
				selectionBackground    = "e0b3d6";

				cursor                  = "d9a8dc";
				cursorText               = "10131f";

				url                     = "d9a8dc";

				activeBorder            = "b98fd1";
				inactiveBorder          = "4a4e6e";
				bellBorder               = "f2c6d9";

				activeTabForeground     = "10131f";
				activeTabBackground    = "c9a0dc";
				inactiveTabForeground  = "cdc3e0";
				inactiveTabBackground  = "1a1e30";
				tabBarBackground       = "0a0c15";

				mark1Foreground         = "10131f";
				mark1Background         = "b98fd1";
				mark2Foreground         = "10131f";
				mark2Background         = "c9a0dc";
				mark3Foreground         = "10131f";
				mark3Background         = "7fa8c9";
			};
			catppuccin = {
				foreground              = "cdd6f4";
				background              = "1e1e2e";
				selection_foreground    = "1e1e2e";
				selection_background    = "f5e0dc";

				cursor                   = "f5e0dc"; 
				cursor_text_color        = "1e1e2e";

				url_color               = "f5e0dc";

				active_border_color     = "b4befe";
				inactive_border_color   = "6c7086";
				bell_border_color       = "f9e2af";

				wayland_titlebar_color = "system";
				macos_titlebar_color  = "system";

				active_tab_foreground   = "11111b";
				active_tab_background  = "cba6f7";
				inactive_tab_foreground = "cdd6f4";
				inactive_tab_background = "181825";
				tab_bar_background      = "11111b";

				mark1_foreground = "1e1e2e";
				mark1_background = "b4befe";
				mark2_foreground = "1e1e2e";
				mark2_background = "cba6f7";
				mark3_foreground = "1e1e2e";
				mark3_background = "74c7ec";
			};
		}
		.${cfg.name}
	);
}
