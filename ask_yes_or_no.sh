function ask_yes_or_no() {
    while true; do
        read -p "[y|n]?" yes_or_no
        case $yes_or_no in
            [y]* ) echo "yes"; break;;
            [n]* ) echo "no"; break;;
            * ) echo "Type 'y' for yes or 'n' for no.";;
        esac
    done
}
