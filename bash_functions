#!/bin/bash
internet() {
    ping 1.1.1.1 -c 3 -w 3 &> /dev/null && \
        echo "yup." || \
        { echo "nah." ; exit 1 ;} 
}

update_repos() {
    local currentdir=`pwd`
    clear
    for repo in $HOME/{dotfiles,Scripts,.config/qutebrowser}; do { 
        cd $repo;
        echo -e "### $repo ###\n";
        git add . ;
        if git commit -a -m "updating..."; then
            git push; 
        fi
        echo -e "------------------------------------------------\n";
    } 
done
cd $currentdir
}

ansic() {
    local width=$((COLUMNS / 8))
    for x in  0 1; do
        for i in {0..7}; do
            printf "\e[48;5;$((i+x*8))m%${width}d\e[0m" $((i+x*8))
        done
        echo
    done
}

# using vim as a PAGER --> https://vim.fandom.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
vman() {
    [[ $# -gt 0 ]] && {
        /usr/bin/man $* | \
        col -b | \
        vim -c 'set ft=man nomod nolist nonumber norelativenumber colorcolumn=0' -;
    }
}

# markdown reader.
md() {
    pandoc "$1" | lynx -stdin
}

video_cut() {
    [[ $# < 4 ]] && { printf "$FUNCNAME Start End Src Dst\n"; return 1; }

    Start="$1"
    End="$2"
    Src="$3"
    youtube_dl="${YouTubeDl:-youtube-dl} --no-playlist -f best --get-url "$Src""
    [[ $Src == *www.* ]] && Src=$($youtube_dl)
    Dst="$4"
    ffmpeg -ss $Start -to $End -i $Src -codec copy $Dst
}

# trying to remove the status bar from my workflow.
stts() {
    while [[ $# > 0 ]]; do
        case ${1,,} in
            time) printf "${Co[11]} ${Co[16]} %(%H:%M)T\n" ;;
            date) printf "${Co[11]} ${Co[16]} %(%a %b %d)T\n" ;;

            wifi|wireless)
                local iface="wlan0"
                while read Key Value; do
                    case ${Key/:/} in
                        SSID) local SSID="${Value}" ;;
                        signal) local RSSI="${Value/ /}" ;;
                    esac
                done < <( iw dev $iface link )
                if [[ -n $SSID ]]; then
                    local Ip
                    read -r _ _ Ip < <(ip -br addr show dev $iface)
                    printf "${Co[11]} ${Co[16]} [%s %s] - %s\n" \
                        "$SSID" "$RSSI" "$Ip"
                else
                    printf "[%s] is not connect.\n" $iface
                fi
                ;;

            mem*|ram)
                if ! command -v bc &> /dev/null; then
                    echo "bc(1) was not found." 1>&2
                    break
                fi
                while read Key Total Used _; do
                    [[ ${Key} == "Mem:" ]]&& local Usage=$(echo "$Used/$Total*100"|bc -l)
                done < <(\free -t)
                # printf "${Co[11]} ${Co[16]} %s\n"    $(\free -t | awk 'FNR==2{printf("%.0f%\n"), $3/$2*100}') ;;  # not the best thing 
                printf "${Co[11]} ${Co[16]} %.0f%%\n" $Usage
                ;;
        esac
        shift
    done
}

duck() {
    local url="https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$(urlencode "$*")"
    lynx "$url"
}

