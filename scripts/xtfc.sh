#!/bin/bash

# xfce4 terminal font changer 
# this script will toggle between monospace font and other fonts.
# the reason to do this is because monospace font display arabic letters much 
# better than the other fonts.

CACHE="$HOME/.cache/xfce4-terminal-oldfont"
CONFIG="$HOME/.config/xfce4/terminal/terminalrc"
Monospace="Monospace 8"

while IFS='=' read -r Key Value; do
    [[ $Key = "FontName" ]] && {
        case "$Value" in
            Monospace*)
                OldFont="$Value"
                #readarray NewFont < $CACHE  # i don't like this....
                NewFont="$(< $CACHE)"
                ;;
            *)
                OldFont="$Value"
                NewFont="$Monospace"
                echo "$OldFont" > $CACHE
                ;;
        esac
        break
    }
done < $CONFIG

echo "OldFont:  $OldFont"
echo "NewFont:  $NewFont"

# i'll use sed(1) this time...
sed -E -i "/FontName/s/$OldFont/$NewFont/" $CONFIG
