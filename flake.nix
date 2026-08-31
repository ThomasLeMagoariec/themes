{
  description = "My custom NixOS modules";

  outputs = { self, ... }: {
    homeManagerModules.default = ./modules/default.nix;
  };
}
