#!/bin/sh
nix-shell -p pkgs.subversion pkgs.gnumake pkgs.python36Packages.pandas
