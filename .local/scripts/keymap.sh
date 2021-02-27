#!/bin/bash

setxkbmap -option ''

# Caps Lock to a) Escape when tapped, b) Ctrl when held
setxkbmap -layout gb -option caps:ctrl_modifier level3:rwin terminate:ctrl_alt_bksp compose:prsc
xcape -e 'Caps_Lock=Escape'

# assign return to control on press, return on release
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 66 = Control_L'
xmodmap -e 'add Control = Control_L'

# # make a fake escape key (so we can map it with xcape)
xmodmap -e 'keycode 999 = Escape'
xcape -e 'Control_L=Escape'

# assign return to control on press, return on release
xmodmap -e 'keycode 36 = 0x1234'
xmodmap -e 'add Control = 0x1234'

# make a fake return key (so we can map it with xcape)
xmodmap -e 'keycode any = Return'
xcape -e '0x1234=Return'
