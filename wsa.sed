# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

s/(^|[^\\'])#.*//g
s/\s+/ /g
s/^ | $//g

s/'\\t'/9/g; s/'\\n'/10/g; s/'\\v'/11/g; s/'\\f'/12/g; s/'\\r'/13/g; s/'\\e'/27/g
s/' '/32/g;   s/'0'/48/g;  s/'@'/64/g; s/'P'/80/g;    s/'`'/96/g;  s/'p'/112/g
s/'!'/33/g;   s/'1'/49/g;  s/'A'/65/g; s/'Q'/81/g;    s/'a'/97/g;  s/'q'/113/g
s/'"'/34/g;   s/'2'/50/g;  s/'B'/66/g; s/'R'/82/g;    s/'b'/98/g;  s/'r'/114/g
s/'#'/35/g;   s/'3'/51/g;  s/'C'/67/g; s/'S'/83/g;    s/'c'/99/g;  s/'s'/115/g
s/'\$'/36/g;  s/'4'/52/g;  s/'D'/68/g; s/'T'/84/g;    s/'d'/100/g; s/'t'/116/g
s/'%'/37/g;   s/'5'/53/g;  s/'E'/69/g; s/'U'/85/g;    s/'e'/101/g; s/'u'/117/g
s/'&'/38/g;   s/'6'/54/g;  s/'F'/70/g; s/'V'/86/g;    s/'f'/102/g; s/'v'/118/g
s/'\\''/39/g; s/'7'/55/g;  s/'G'/71/g; s/'W'/87/g;    s/'g'/103/g; s/'w'/119/g
s/'\('/40/g;  s/'8'/56/g;  s/'H'/72/g; s/'X'/88/g;    s/'h'/104/g; s/'x'/120/g
s/'\)'/41/g;  s/'9'/57/g;  s/'I'/73/g; s/'Y'/89/g;    s/'i'/105/g; s/'y'/121/g
s/'\*'/42/g;  s/':'/58/g;  s/'J'/74/g; s/'Z'/90/g;    s/'j'/106/g; s/'z'/122/g
s/'\+'/43/g;  s/';'/59/g;  s/'K'/75/g; s/'\['/91/g;   s/'k'/107/g; s/'\{'/123/g
s/','/44/g;   s/'<'/60/g;  s/'L'/76/g; s/'\\\\'/92/g; s/'l'/108/g; s/'\|'/124/g
s/'-'/45/g;   s/'='/61/g;  s/'M'/77/g; s/'\]'/93/g;   s/'m'/109/g; s/'\}'/125/g
s/'\.'/46/g;  s/'>'/62/g;  s/'N'/78/g; s/'\^'/94/g;   s/'n'/110/g; s/'~'/126/g
s/'\/'/47/g;  s/'\?'/63/g; s/'O'/79/g; s/'_'/95/g;    s/'o'/111/g
s/'\\x00'/0/g;  s/'\\x10'/16/g; s/'\\x20'/32/g; s/'\\x30'/48/g; s/'\\x40'/64/g; s/'\\x50'/80/g; s/'\\x60'/96/g;  s/'\\x70'/112/g
s/'\\x01'/1/g;  s/'\\x11'/17/g; s/'\\x21'/33/g; s/'\\x31'/49/g; s/'\\x41'/65/g; s/'\\x51'/81/g; s/'\\x61'/97/g;  s/'\\x71'/113/g
s/'\\x02'/2/g;  s/'\\x12'/18/g; s/'\\x22'/34/g; s/'\\x32'/50/g; s/'\\x42'/66/g; s/'\\x52'/82/g; s/'\\x62'/98/g;  s/'\\x72'/114/g
s/'\\x03'/3/g;  s/'\\x13'/19/g; s/'\\x23'/35/g; s/'\\x33'/51/g; s/'\\x43'/67/g; s/'\\x53'/83/g; s/'\\x63'/99/g;  s/'\\x73'/115/g
s/'\\x04'/4/g;  s/'\\x14'/20/g; s/'\\x24'/36/g; s/'\\x34'/52/g; s/'\\x44'/68/g; s/'\\x54'/84/g; s/'\\x64'/100/g; s/'\\x74'/116/g
s/'\\x05'/5/g;  s/'\\x15'/21/g; s/'\\x25'/37/g; s/'\\x35'/53/g; s/'\\x45'/69/g; s/'\\x55'/85/g; s/'\\x65'/101/g; s/'\\x75'/117/g
s/'\\x06'/6/g;  s/'\\x16'/22/g; s/'\\x26'/38/g; s/'\\x36'/54/g; s/'\\x46'/70/g; s/'\\x56'/86/g; s/'\\x66'/102/g; s/'\\x76'/118/g
s/'\\x07'/7/g;  s/'\\x17'/23/g; s/'\\x27'/39/g; s/'\\x37'/55/g; s/'\\x47'/71/g; s/'\\x57'/87/g; s/'\\x67'/103/g; s/'\\x77'/119/g
s/'\\x08'/8/g;  s/'\\x18'/24/g; s/'\\x28'/40/g; s/'\\x38'/56/g; s/'\\x48'/72/g; s/'\\x58'/88/g; s/'\\x68'/104/g; s/'\\x78'/120/g
s/'\\x09'/9/g;  s/'\\x19'/25/g; s/'\\x29'/41/g; s/'\\x39'/57/g; s/'\\x49'/73/g; s/'\\x59'/89/g; s/'\\x69'/105/g; s/'\\x79'/121/g
s/'\\x0A'/10/g; s/'\\x1A'/26/g; s/'\\x2A'/42/g; s/'\\x3A'/58/g; s/'\\x4A'/74/g; s/'\\x5A'/90/g; s/'\\x6A'/106/g; s/'\\x7A'/122/g
s/'\\x0B'/11/g; s/'\\x1B'/27/g; s/'\\x2B'/43/g; s/'\\x3B'/59/g; s/'\\x4B'/75/g; s/'\\x5B'/91/g; s/'\\x6B'/107/g; s/'\\x7B'/123/g
s/'\\x0C'/12/g; s/'\\x1C'/28/g; s/'\\x2C'/44/g; s/'\\x3C'/60/g; s/'\\x4C'/76/g; s/'\\x5C'/92/g; s/'\\x6C'/108/g; s/'\\x7C'/124/g
s/'\\x0D'/13/g; s/'\\x1D'/29/g; s/'\\x2D'/45/g; s/'\\x3D'/61/g; s/'\\x4D'/77/g; s/'\\x5D'/93/g; s/'\\x6D'/109/g; s/'\\x7D'/125/g
s/'\\x0E'/14/g; s/'\\x1E'/30/g; s/'\\x2E'/46/g; s/'\\x3E'/62/g; s/'\\x4E'/78/g; s/'\\x5E'/94/g; s/'\\x6E'/110/g; s/'\\x7E'/126/g
s/'\\x0F'/15/g; s/'\\x1F'/31/g; s/'\\x2F'/47/g; s/'\\x3F'/63/g; s/'\\x4F'/79/g; s/'\\x5F'/95/g; s/'\\x6F'/111/g; s/'\\x7F'/127/g
s/\b0x00\b/0/g;  s/\b0x10\b/16/g; s/\b0x20\b/32/g; s/\b0x30\b/48/g; s/\b0x40\b/64/g; s/\b0x50\b/80/g; s/\b0x60\b/96/g;  s/\b0x70\b/112/g
s/\b0x01\b/1/g;  s/\b0x11\b/17/g; s/\b0x21\b/33/g; s/\b0x31\b/49/g; s/\b0x41\b/65/g; s/\b0x51\b/81/g; s/\b0x61\b/97/g;  s/\b0x71\b/113/g
s/\b0x02\b/2/g;  s/\b0x12\b/18/g; s/\b0x22\b/34/g; s/\b0x32\b/50/g; s/\b0x42\b/66/g; s/\b0x52\b/82/g; s/\b0x62\b/98/g;  s/\b0x72\b/114/g
s/\b0x03\b/3/g;  s/\b0x13\b/19/g; s/\b0x23\b/35/g; s/\b0x33\b/51/g; s/\b0x43\b/67/g; s/\b0x53\b/83/g; s/\b0x63\b/99/g;  s/\b0x73\b/115/g
s/\b0x04\b/4/g;  s/\b0x14\b/20/g; s/\b0x24\b/36/g; s/\b0x34\b/52/g; s/\b0x44\b/68/g; s/\b0x54\b/84/g; s/\b0x64\b/100/g; s/\b0x74\b/116/g
s/\b0x05\b/5/g;  s/\b0x15\b/21/g; s/\b0x25\b/37/g; s/\b0x35\b/53/g; s/\b0x45\b/69/g; s/\b0x55\b/85/g; s/\b0x65\b/101/g; s/\b0x75\b/117/g
s/\b0x06\b/6/g;  s/\b0x16\b/22/g; s/\b0x26\b/38/g; s/\b0x36\b/54/g; s/\b0x46\b/70/g; s/\b0x56\b/86/g; s/\b0x66\b/102/g; s/\b0x76\b/118/g
s/\b0x07\b/7/g;  s/\b0x17\b/23/g; s/\b0x27\b/39/g; s/\b0x37\b/55/g; s/\b0x47\b/71/g; s/\b0x57\b/87/g; s/\b0x67\b/103/g; s/\b0x77\b/119/g
s/\b0x08\b/8/g;  s/\b0x18\b/24/g; s/\b0x28\b/40/g; s/\b0x38\b/56/g; s/\b0x48\b/72/g; s/\b0x58\b/88/g; s/\b0x68\b/104/g; s/\b0x78\b/120/g
s/\b0x09\b/9/g;  s/\b0x19\b/25/g; s/\b0x29\b/41/g; s/\b0x39\b/57/g; s/\b0x49\b/73/g; s/\b0x59\b/89/g; s/\b0x69\b/105/g; s/\b0x79\b/121/g
s/\b0x0A\b/10/g; s/\b0x1A\b/26/g; s/\b0x2A\b/42/g; s/\b0x3A\b/58/g; s/\b0x4A\b/74/g; s/\b0x5A\b/90/g; s/\b0x6A\b/106/g; s/\b0x7A\b/122/g
s/\b0x0B\b/11/g; s/\b0x1B\b/27/g; s/\b0x2B\b/43/g; s/\b0x3B\b/59/g; s/\b0x4B\b/75/g; s/\b0x5B\b/91/g; s/\b0x6B\b/107/g; s/\b0x7B\b/123/g
s/\b0x0C\b/12/g; s/\b0x1C\b/28/g; s/\b0x2C\b/44/g; s/\b0x3C\b/60/g; s/\b0x4C\b/76/g; s/\b0x5C\b/92/g; s/\b0x6C\b/108/g; s/\b0x7C\b/124/g
s/\b0x0D\b/13/g; s/\b0x1D\b/29/g; s/\b0x2D\b/45/g; s/\b0x3D\b/61/g; s/\b0x4D\b/77/g; s/\b0x5D\b/93/g; s/\b0x6D\b/109/g; s/\b0x7D\b/125/g
s/\b0x0E\b/14/g; s/\b0x1E\b/30/g; s/\b0x2E\b/46/g; s/\b0x3E\b/62/g; s/\b0x4E\b/78/g; s/\b0x5E\b/94/g; s/\b0x6E\b/110/g; s/\b0x7E\b/126/g
s/\b0x0F\b/15/g; s/\b0x1F\b/31/g; s/\b0x2F\b/47/g; s/\b0x3F\b/63/g; s/\b0x4F\b/79/g; s/\b0x5F\b/95/g; s/\b0x6F\b/111/g; s/\b0x7F\b/127/g

s/\bjeof\b/jz/g

s/\^( |$)/^0\1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \*\^(-?[0-9]+)\b/copy \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \*(-?[0-9]+)\b/push \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \^(-?[0-9]+)\b/copy \2 \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|printc|printi|readc|readi) (-?[0-9]+)\b/push \2 \1/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \*\^(-?[0-9]+)\b/copy \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \*(-?[0-9]+)\b/push \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \^-?([0-9]+)\b/copy \2 \1/g
s/\b(add|sub|mul|div|mod|store) (-?[0-9]+)\b/push \2 \1/g
s/\bcopy 0\b/dup/g

s/\b(call|jmp|jz|jn) \.([A-Za-z0-9_-]+)\b/\1 _\2/g
s/\.([A-Za-z0-9_-]+:)/_\1/g

s/(push|copy|slide) (-?[0-9]+) /\1 \2\n/g
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
