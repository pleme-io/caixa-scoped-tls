# nix/modules/home-manager.nix — auto-generated from scoped-tls.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.scoped-tls; in {
  options.programs.scoped-tls = {
    enable = lib.mkEnableOption "scoped-tls";
    package = lib.mkOption { type = lib.types.package; default = pkgs.scoped-tls or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
