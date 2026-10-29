# SPDX-FileCopyrightText: 2026 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0

{ pkgs }:

let
  javacard-sdk = pkgs.callPackage ./javacard-sdk.nix { };
  jcardsim = pkgs.callPackage ./jcardsim.nix { inherit javacard-sdk; };
  pivapplet = pkgs.callPackage ./pivapplet.nix { inherit jcardsim; };
in
{
  inherit javacard-sdk jcardsim pivapplet;
}
