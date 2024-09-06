# ----------------------------------------------------- 
# Install packages 
# ----------------------------------------------------- 

installer_packages=(
    "niri"
    "waybar"
    "rofi-wayland"
    "alacritty"
    "dunst"
    "thunar"
    "xdg-desktop-portal-wlr"
    "qt5-wayland"
    "qt6-wayland"
    "swaybg"
    "swaylock"
    "firefox"
    "ttf-font-awesome"
    "vim"
    "fastfetch"
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd"
    "fuse2"
    "gtk4"
    "libadwaita"
    "jq"
    "python-gobject"
    "pipewire"
    "libgtop"
    "bluez"
    "bluez-utils"
    "btop"
    "networkmanager"
    "dart-sass"
    "wl-clipboard"
    "brightnessctl"
    "swww"
    "python"
    "gnome-bluetooth-3.0"
)

installer_yay=(
    "wlogout"
    "grimblast-git"
    "gpu-screen-recorder"
    "hyprpicker"
    "matugen-bin"
    "python-gpustat"
    "aylurs-gtk-shell-git"
)

# Install packages
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";

# Install bun
curl -fsSL https://bun.sh/install | bash
sudo ln -s $HOME/.bun/bin/bun /usr/local/bin/bun
