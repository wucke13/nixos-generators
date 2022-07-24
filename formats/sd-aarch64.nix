{ config, lib, pkgs, modulesPath, ... }:
let
  extlinux-conf-builder =
    import "${toString modulesPath}/system/boot/loader/generic-extlinux-compatible/extlinux-conf-builder.nix" {
      pkgs = pkgs.buildPackages;
    };

in
{
  imports = [
    "${toString modulesPath}/installer/sd-card/sd-image-aarch64.nix"
  ];
  formatAttr = "sdImage";
}
