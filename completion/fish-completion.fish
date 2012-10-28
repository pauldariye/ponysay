# fish completion for ponysay            -*- shell-script -*-
# Author: Elis Axelsson <etu AT elis DOT nu>

set -g ponies   ('/usr/bin/ponysay' --onelist)
set -g xponies  ('/usr/bin/ponysay' ++onelist)
set -g quoters  ('/usr/bin/ponysay' --quoters)
set -g balloons ('/usr/bin/ponysay' --balloonlist)


## TODO: update with options [see info manual]:  +f  +l  +L  ++list  ++altlist  ++file  --file  ++pony  {-A, +A, -V, -K, -X}(with alternative)
complete --command ponysay --short-option h --long-option help                                           --description 'help of ponysay'
complete --command ponysay --short-option v --long-option version                                        --description 'version of ponysay'
complete --command ponysay --short-option l --long-option list                                           --description 'list pony names'
complete --command ponysay --short-option L --long-option altlist                                        --description 'list pony names with alternatives'
complete --command ponysay --short-option B --long-option balloonlist                                    --description 'list balloon style names'
complete --command ponysay --short-option f --long-option pony        --arguments "$ponies"              --description 'pony'
#complete --command ponysay --short-option F                           --arguments "$xponies"             --desc#ription 'extra pony'
complete --command ponysay --short-option q --long-option quote       --arguments "$quoters"  --no-files --description 'pony'
complete --command ponysay --short-option b --long-option balloon     --arguments "$balloons" --no-files --description 'balloon style'
complete --command ponysay --short-option W --long-option wrap        --arguments 'Integer'              --description 'specify the column when the message should be wrapped' ## TODO arguments `none` and `inherit` should be suggested
complete --command ponysay                                            --arguments 'MESSAGE'


set -e ponies
set -e xponies
set -e quoters
set -e balloons
