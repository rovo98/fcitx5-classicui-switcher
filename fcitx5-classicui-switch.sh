#!/bin/bash
# author rovo98

# fcitx5 user config location
FCITX5_USER_CONFIG_LOCATION=~/.config/fcitx5
CLASSICUI_DISABLE_STATE_CONF_FILE=${FCITX5_USER_CONFIG_LOCATION}/classicui-disable-state.cfg

send_notification() {
    if [[ $DESKTOP_SESSION -eq 'plasma' ]]; then
        notify-send -a fcitx5-classicui-switch "$1"
    else
        echo $1
    fi
}

fcitx5_classicui_switcher() {
    current_state=$(cat ${CLASSICUI_DISABLE_STATE_CONF_FILE})
    if [[ ${current_state} -eq 1 ]]; then
        fcitx5 -r --enable classicui > /dev/null 2>&1 &
        echo 0 > ${CLASSICUI_DISABLE_STATE_CONF_FILE}
        send_notification 'Fcitx5 classicui enabled!'
    else
        fcitx5 -r --disable classicui > /dev/null 2>&1 &
        echo 1 > ${CLASSICUI_DISABLE_STATE_CONF_FILE}
        send_notification 'Fcitx5 classicui disabled!'
    fi
}

fcitx5_classicui_switcher

