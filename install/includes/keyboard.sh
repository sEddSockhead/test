if [ ! -f ~/.config/niri/config.kdl ] ;then
    # Setup keyboard layout
    echo -e "${GREEN}"
    figlet "Keyboard"
    echo -e "${NONE}"
    echo "Please select your keyboard layout. Can be changed later in ~/.config/niri/config.kdl"
    echo "Start typing = Search, RETURN = Confirm, CTRL-C = Cancel"
    echo
    keyboard_layout=$(localectl list-x11-keymap-layouts | gum filter --height 15 --placeholder "Find your keyboard layout...")
    echo
    if [ -z $keyboard_layout ] ;then
        keyboard_layout="us" 
    fi
    SEARCH="input {"
    REPLACE="input {\n    keyboard_layout \"$keyboard_layout\""
    sed -i -e "s/$SEARCH/$REPLACE/g" ~/ml4w/$version/.config/niri/config.kdl
    echo ":: Keyboard layout changed to $keyboard_layout"
    echo
else
    rm ~/ml4w/$version/.config/niri/config.kdl
fi
