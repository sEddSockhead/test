distro=""

# Check for distro
if [ -f /etc/arch-release ] ;then
    distro="arch"
fi

# Select installer manually
if [ -z $distro ] ;then
    echo "ERROR: Your Linux distribution could not be detected or is not supported."
    echo
    echo "Please confirm that you are using Arch Linux or cancel the installation."
    echo
    version=$(gum choose "arch" "cancel")
    if [ "$version" == "arch" ] ;then
        echo ":: Installer for Arch"
        distro="arch"
    elif [ "$version" == "cancel" ] ;then
        echo ":: Setup canceled"
        exit 130    
    else
        echo ":: Setup canceled"
        exit 130
    fi
fi

echo "$distro" > dotfiles/.config/ml4w/settings/distro
