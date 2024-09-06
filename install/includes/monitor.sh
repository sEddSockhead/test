if [ ! -f ~/.config/niri/config.kdl ] ;then
    # Set initial screen resolution
    echo -e "${GREEN}"
    figlet "Monitor"
    echo -e "${NONE}"
    echo "Please select your initial screen resolution. Can be changed later in ~/.config/niri/config.kdl"
    echo
    screenres=$(gum choose --height 15 "1024x768" "1280x720" "1280x800" "1440x900" "1280x1024" "1680x1050" "1280x1440" "1600x1200" "1920x1080" "1920x1200" "2560x1440" "2560x1600")
    SEARCH="outputs {"
    REPLACE="outputs {\n    \"eDP-1\" {\n        mode { width $screenres }\n    }"
    sed -i -e "s/$SEARCH/$REPLACE/g" ~/ml4w/$version/.config/niri/config.kdl    
    echo ":: Initial screen resolution set to $screenres"
else
    rm ~/ml4w/$version/.config/niri/config.kdl
fi
