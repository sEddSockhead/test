if [ ! -d ~/.config/ml4w ] ;then
    if [ $(_isKVM) == "0" ] ;then
        echo -e "${GREEN}"
        figlet "KVM VM"
        echo -e "${NONE}"
        if gum confirm "Are you running this script in a KVM virtual machine?" ;then
            SEARCH="env {"
            REPLACE="env {\n    WLR_NO_HARDWARE_CURSORS \"1\"\n    WLR_RENDERER_ALLOW_SOFTWARE \"1\""
            sed -i -e "s/$SEARCH/$REPLACE/g" ~/ml4w/$version/.config/niri/config.kdl

            echo ":: Environment settings set for KVM cursor support."
        elif [ $? -eq 130 ]; then
            echo ":: Installation canceled"
            exit
        else
            echo ":: KVM configuration skipped"
        fi
    fi
fi
