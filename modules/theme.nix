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
				foreground             = "#e5d4e8";
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
				selectionForeground    = "1e1e2e";
				selectionBackground    = "f5e0dc";

				cursor                   = "f5e0dc"; 
				cursorText 	= "1e1e2e";

				url               = "f5e0dc";

				activeBorder     = "b4befe";
				inactiveBorder= "6c7086";
				bellBorder= "f9e2af";

				activeTabForeground = "11111b";
				activeTabBackground= "cba6f7";
				inactiveTabForeground= "cdd6f4";
				inactiveTabBackground= "181825";
				tabBarBackground= "11111b";

				mark1Foreground= "1e1e2e";
				mark1Background= "b4befe";
				mark2Foreground= "1e1e2e";
				mark2Background= "cba6f7";
				mark3Foreground= "1e1e2e";
				mark3Background= "cba6f7";
			};
		}
		.${cfg.name}
	);
}
