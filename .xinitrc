xrdb -load ~/.Xresources
urxvtd --quiet --opendisplay --fork
./setBg.sh
exec i3
