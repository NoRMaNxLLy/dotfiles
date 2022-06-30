#!/bin/bash
internet() {
    ping -q 1.1.1.1 -c 3 -w 3 &> /dev/null && \
        echo "yup." || \
        ( echo "nah." ; exit 1 ) 
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
            time) printf "${color[11]} ${color[16]} %(%H:%M)T\n" ;;
            date) printf "${color[11]} ${color[16]} %(%a %b %d)T\n" ;;

            wifi|wireless)
                local iface="wlan0"
                while read Key Value; do
                    case ${Key/:/} in
                        SSID) local SSID="${Value}" ;;
                        signal) local RSSI="${Value/ /}";;
                    esac
                done < <( iw dev $iface link )
                if [[ -n $RSSI ]]; then
                    printf "%s  %s\n" "$SSID" "$RSSI"
                else
                    printf "[%s] is not connect.\n" $iface
                fi
                ;;

            mem*|ram)
                while read Key Total Used _; do
                    if [[ ${Key} == "Mem:" ]]; then
                        Usage=$(( Used / Total * 100))
                    fi
                    printf '%.0f%%\n' $Usage
                done < <(\free -t)
                # printf "${color[11]} ${color[16]} %s\n"    $(\free -t | awk 'FNR==2{printf("%.0f%\n"), $3/$2*100}') ;;  # not the best thing 
            ;;
        esac
        shift
    done
}
