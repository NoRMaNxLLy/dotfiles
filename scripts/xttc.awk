#!/bin/awk -f

# xfce terminal transparency changer.
# it's sluggish.

BEGIN { FS="=" }
{
    if ( $1 == "BackgroundDarkness" )  {
        if (change == "up" ) {
            if ( $2 >= 1 ) $2 = 1
            else $2 += 0.05
        }
        else { 
            if ( $2 <= 0) $2 = 0
            else $2 -= 0.05
        }

        # i tried $0, didn't work.
        print $1"="$2
    }
    else
        print $0
} 

