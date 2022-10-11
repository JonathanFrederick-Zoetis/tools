# Install a couple dev tools
apt-get purge openssh-server vim

# Re-disable some useful settings
declare -a arrayCommands
arrayCommands=(
"gsettings set org.gnome.desktop.wm.keybindings switch-applications []"
"gsettings set org.gnome.mutter overlay-key ''"
"gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding 'F11'"
)


# Iterate the string array using for loop
for ((i = 0; i < ${#arrayCommands[@]}; i++))
do
    CmdLine="sudo ${DBUS_SESSION_INFO} ${arrayCommands[i]}"
    execute_command "${CmdLine}"
done
