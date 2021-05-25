# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

s/#.*//g
s/^\s+|\s+$//g
s/\s+/ /g

s/'\\t'/9/g;  s/'\\n'/10/g; s/'\\r'/13/g
s/' '/32/g;   s/'0'/48/g;  s/'@'/64/g; s/'P'/80/g;  s/'`'/96/g;  s/'p'/112/g
s/'!'/33/g;   s/'1'/49/g;  s/'A'/65/g; s/'Q'/81/g;  s/'a'/97/g;  s/'q'/113/g
s/'"'/34/g;   s/'2'/50/g;  s/'B'/66/g; s/'R'/82/g;  s/'b'/98/g;  s/'r'/114/g
s/'#'/35/g;   s/'3'/51/g;  s/'C'/67/g; s/'S'/83/g;  s/'c'/99/g;  s/'s'/115/g
s/'\$'/36/g;  s/'4'/52/g;  s/'D'/68/g; s/'T'/84/g;  s/'d'/100/g; s/'t'/116/g
s/'%'/37/g;   s/'5'/53/g;  s/'E'/69/g; s/'U'/85/g;  s/'e'/101/g; s/'u'/117/g
s/'&'/38/g;   s/'6'/54/g;  s/'F'/70/g; s/'V'/86/g;  s/'f'/102/g; s/'v'/118/g
s/'\\''/39/g; s/'7'/55/g;  s/'G'/71/g; s/'W'/87/g;  s/'g'/103/g; s/'w'/119/g
s/'\('/40/g;  s/'8'/56/g;  s/'H'/72/g; s/'X'/88/g;  s/'h'/104/g; s/'x'/120/g
s/'\)'/41/g;  s/'9'/57/g;  s/'I'/73/g; s/'Y'/89/g;  s/'i'/105/g; s/'y'/121/g
s/'\*'/42/g;  s/':'/58/g;  s/'J'/74/g; s/'Z'/90/g;  s/'j'/106/g; s/'z'/122/g
s/'\+'/43/g;  s/';'/59/g;  s/'K'/75/g; s/'\['/91/g; s/'k'/107/g; s/'\{'/123/g
s/','/44/g;   s/'<'/60/g;  s/'L'/76/g; s/'\\'/92/g; s/'l'/108/g; s/'\|'/124/g
s/'-'/45/g;   s/'='/61/g;  s/'M'/77/g; s/'\]'/93/g; s/'m'/109/g; s/'\}'/125/g
s/'\.'/46/g;  s/'>'/62/g;  s/'N'/78/g; s/'\^'/94/g; s/'n'/110/g; s/'~'/126/g
s/'\/'/47/g;  s/'\?'/63/g; s/'O'/79/g; s/'_'/95/g;  s/'o'/111/g

s/\b\^\b/^0/g
s/\b(add|sub|mul|div|mod|printc|printi) \*([0-9]+)\b/push \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|printc|printi) \^([0-9]+)\b/copy \2 \1/g
s/\b(add|sub|mul|div|mod|printc|printi) ([0-9]+)\b/push \2 \1/g
s/\b(add|sub|mul|div|mod) \*([0-9]+)\b/push \2 retrieve \1/g
s/\b(add|sub|mul|div|mod) \^([0-9]+)\b/copy \2 \1/g
s/\b(add|sub|mul|div|mod) ([0-9]+)\b/push \2 \1/g

s/\bcopy 0\b/dup/g

s/\b(call|jmp|jz|jn) \.([A-Za-z0-9_-]+)\b/\1 \2/g
s/\.([A-Za-z0-9_-]+:)/\1/g

s/(push|copy|slide) ([0-9]+) /\1 \2\n/g
s/(label|call|jmp|jz|jn) ([^ ]+) /\1 \2\n/g
s/(dup|swap|drop|add|sub|mul|div|mod|store|retrieve|ret|end|printc|printi|readc|readi) /\1\n/g

s/\bdrop\b/pop/g
s/\bstore\b/set/g
s/\bretrieve\b/get/g
s/\bend\b/exit/g
s/\bprintc\b/pchr/g
s/\bprinti\b/pnum/g
s/\breadc\b/ichr/g
s/\breadi\b/inum/g
