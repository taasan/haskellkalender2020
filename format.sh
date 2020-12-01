#!/usr/bin/env bash

set -eu -o pipefail

function doIt {
    git ls-files -z '*.hs' | xargs -0 "$@"
}

doIt stylish-haskell --inplace
doIt hindent
