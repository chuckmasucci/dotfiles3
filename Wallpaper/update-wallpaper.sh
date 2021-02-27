shopt -s nullglob
wall=(~/Wallpaper/wall*)
total=${#wall[@]}
random=$((1 + $RANDOM % total))

feh --bg-fill $HOME/Wallpaper/wall$random.png
