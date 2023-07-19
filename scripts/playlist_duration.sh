#!/bin/sh

url=$1

test -z "$url" && exit 1

yt-dlp --flat-playlist --print duration "$url" \
    | awk '
    BEGIN{sum = 0}
    {sum += $1}
    END {
        sum = sum

        hours = sum / 3600
        remains = sum % 3600
        minutes = remains / 60
        remains = remains % 60

        printf("normal: %02d:%02d:%02d\n", hours, minutes, remains)
        printf("1.25: %02d:%02d:%02d\n", hours/1.25, minutes/1.25, remains/1.25)
        printf("1.50: %02d:%02d:%02d\n", hours/1.50, minutes/1.50, remains/1.50)
        printf("1.75: %02d:%02d:%02d\n", hours/1.75, minutes/1.75, remains/1.75)
        printf("2.00: %02d:%02d:%02d\n", hours/2.00, minutes/2.00, remains/2.00)
    }
    '
