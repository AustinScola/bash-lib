HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="${HERE}"

source "${REPO_ROOT}/check_brew_formula_installed.sh"
source "${REPO_ROOT}/ask_yes_or_no.sh"

function ensure_brew_formula_installed() {
    local formula=$1
    if [[ $(check_brew_formula_installed "${formula}") == "no" ]]; then
        echo "The brew formula \"${formula}\" is not installed."
        echo -n "Would you like to install \"${formula}\" and continue? "
        local install="$(ask_yes_or_no)"
        if [[ "${install}" == "no" ]]; then
            echo "Aborting..."
            exit 1
        fi
        brew install "${formula}"
    fi
}
