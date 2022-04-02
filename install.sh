#!/bin/bash
#author rovo98


# fcitx5 user config location
FCITX5_USER_CONFIG_LOCATION=~/.config/fcitx5
CLASSICUI_DISABLE_STATE_CONF_FILE=${FCITX5_USER_CONFIG_LOCATION}/classicui-disable-state.cfg


main() {
    # copy file without confirmation
    alias cp=cp
    cp -rf $CLASSICUI_DISABLE_STATE_CONF_FILE $FCITX5_USER_CONFIG_LOCATION

    # enable fcitx5 classicui by default
    fcitx5 --enable classicui -r > /dev/null 2>&1 &
    echo "Enable classicui addon by default."

    # install executable binary
    local_bin_loc=~/.local/bin
    cp -rf $(pwd)/fcitx5-classicui-switch.sh $local_bin_loc
    ln -sf ${local_bin_loc}/fcitx5-classicui-switch.sh ${local_bin_loc}/fcs

    echo "Fcitx5 classicui switcher installed. Now you can execute fcitx5-classicui-switch or fcs to use it."
}

main
