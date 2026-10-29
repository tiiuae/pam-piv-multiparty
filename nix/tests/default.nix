# SPDX-FileCopyrightText: 2026 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0

{
  pkgs,
  lib,
  nixosModules,
}:

let
  testDeps = import ../test-deps { inherit pkgs; };
in
{
  e2e = pkgs.testers.runNixOSTest (
    import ./e2e.nix {
      inherit lib testDeps;
      multipartyModule = nixosModules.default;
    }
  );
}
