#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

cd "$(dirname "$0")"

main() {
    echo Updating node dependencies
    # npm i -g npm
    # Install other packages here
}

main "$@"
