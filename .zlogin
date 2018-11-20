#
# Executes commands at login post-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Execute code only if STDERR is bound to a TTY.
[[ -o INTERACTIVE && -t 2 ]] && {

  # Start X?
    if [ "$(fgconsole 2>/dev/null)" -eq "1" ]; then
        sudo systemctl start teamviewerd.service
        sudo systemctl start lightdm.service
    fi

} >&2
