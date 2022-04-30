# Echo "yes" if a Cargo crate with the given version is installed or echo "no" if the crate is not
# installed or the version does not match.
function check_cargo_crate_installed() {
    local crate=$1
    local version=$2
    if [[ $(cargo install --list | { grep "^${crate} v${version}[ :]" || true; }) != "" ]]; then
        echo "yes"
    else
        echo "no"
    fi
}
