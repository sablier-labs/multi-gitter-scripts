#!/usr/bin/env bash

# Pre-requisites:
# - multi-gitter (https://github.com/lindell/multi-gitter/)
# - sd (https://github.com/chmln/sd)

# Strict mode: https://gist.github.com/vncsna/64825d5609c146e80de8b1fd623011ca
set -euo pipefail

# Path to the LICENSE.md file
license_file="LICENSE.md"

# Command to replace the years 2019, 2020, 2021, 2022, or 2023 with 2024
# just before the text "Sablier Labs Ltd"
sd '(2019|2020|2021|2022|2023) Sablier Labs Ltd' '2024 Sablier Labs Ltd' $license_file

# Print out success message
echo "Year updated in $license_file"