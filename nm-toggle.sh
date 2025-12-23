#!/bin/bash
set -eEo pipefail

# --- CONFIGURATION ---
CONNECTION_NAME="wg0-mullvad"
# ---------------------

# Check if the connection is active and toggle
if nmcli connection show --active | grep -q "${CONNECTION_NAME}"; then
  # Is active, so disconnect
  mullvad disconnect
  else
  # Is not active, so connect
  mullvad connect
  fi
