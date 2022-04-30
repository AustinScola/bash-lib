function check_brew_formula_installed() {
    local formula=$1
    if brew ls --version "${formula}" > /dev/null; then
        echo "yes"
    else
        echo "no"
    fi
}
