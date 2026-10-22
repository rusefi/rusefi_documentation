#!/bin/bash
set -euo pipefail

apt_get() {
    sudo DEBIAN_FRONTEND=noninteractive apt-get \
        -o Acquire::Retries=3 \
        -o Acquire::http::Timeout=30 \
        -o Acquire::https::Timeout=30 "$@"
}

case "${1:-}" in
    configure)
        # TODO: Revisit the Azure mirror workaround when this runner issue is resolved:
        # https://github.com/actions/runner-images/issues/14823
        # Ubuntu's noble image uses deb822 .sources files; older images may
        # still use sources.list or .list files. Some runners use apt-mirrors.txt.
        # Rewrite only the Azure mirror in known apt source files.
        while IFS= read -r -d '' source_file; do
            sudo sed -i 's#://azure\.archive\.ubuntu\.com#://archive.ubuntu.com#g' "$source_file"
        done < <(find /etc/apt -type f \( -name sources.list -o -name '*.list' -o -name '*.sources' -o -name apt-mirrors.txt \) -print0)
        ;;
    update)
        apt_get update
        ;;
    install)
        shift
        apt_get -y install "$@"
        ;;
    *)
        echo "Usage: $0 {configure|update|install [packages...]}" >&2
        exit 2
        ;;
esac
