# Install a couple dev tools
apt-get install openssh-server vim
apt-get autoclean

# Re-enable some useful settings
declare -a arrayCommands
arrayCommands=(
"gsettings set org.gnome.desktop.wm.keybindings switch-applications ['<Super>Tab', '<Alt>Tab']"
"gsettings set org.gnome.mutter overlay-key 'Super_L'"
"gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding ''"
)


# Iterate the string array using for loop
for ((i = 0; i < ${#arrayCommands[@]}; i++))
do
    CmdLine="sudo ${DBUS_SESSION_INFO} ${arrayCommands[i]}"
    ${CmdLine}
done

