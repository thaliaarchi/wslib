# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

s/(^|[^\\'])#.*//g
s/\s+/ /g
s/^ | $//g

s/'\\a'/7/g; s/'\\b'/8/g; s/'\\t'/9/g; s/'\\n'/10/g; s/'\\v'/11/g; s/'\\f'/12/g; s/'\\r'/13/g; s/'\\e'/27/g

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

s/'\\x00'/0/g;   s/'\\x20'/32/g;  s/'\\x40'/64/g;  s/'\\x60'/96/g;   s/'\\x80'/128/g;  s/'\\xa0'/160/g;  s/'\\xc0'/192/g;  s/'\\xe0'/224/g
s/'\\x01'/1/g;   s/'\\x21'/33/g;  s/'\\x41'/65/g;  s/'\\x61'/97/g;   s/'\\x81'/129/g;  s/'\\xa1'/161/g;  s/'\\xc1'/193/g;  s/'\\xe1'/225/g
s/'\\x02'/2/g;   s/'\\x22'/34/g;  s/'\\x42'/66/g;  s/'\\x62'/98/g;   s/'\\x82'/130/g;  s/'\\xa2'/162/g;  s/'\\xc2'/194/g;  s/'\\xe2'/226/g
s/'\\x03'/3/g;   s/'\\x23'/35/g;  s/'\\x43'/67/g;  s/'\\x63'/99/g;   s/'\\x83'/131/g;  s/'\\xa3'/163/g;  s/'\\xc3'/195/g;  s/'\\xe3'/227/g
s/'\\x04'/4/g;   s/'\\x24'/36/g;  s/'\\x44'/68/g;  s/'\\x64'/100/g;  s/'\\x84'/132/g;  s/'\\xa4'/164/g;  s/'\\xc4'/196/g;  s/'\\xe4'/228/g
s/'\\x05'/5/g;   s/'\\x25'/37/g;  s/'\\x45'/69/g;  s/'\\x65'/101/g;  s/'\\x85'/133/g;  s/'\\xa5'/165/g;  s/'\\xc5'/197/g;  s/'\\xe5'/229/g
s/'\\x06'/6/g;   s/'\\x26'/38/g;  s/'\\x46'/70/g;  s/'\\x66'/102/g;  s/'\\x86'/134/g;  s/'\\xa6'/166/g;  s/'\\xc6'/198/g;  s/'\\xe6'/230/g
s/'\\x07'/7/g;   s/'\\x27'/39/g;  s/'\\x47'/71/g;  s/'\\x67'/103/g;  s/'\\x87'/135/g;  s/'\\xa7'/167/g;  s/'\\xc7'/199/g;  s/'\\xe7'/231/g
s/'\\x08'/8/g;   s/'\\x28'/40/g;  s/'\\x48'/72/g;  s/'\\x68'/104/g;  s/'\\x88'/136/g;  s/'\\xa8'/168/g;  s/'\\xc8'/200/g;  s/'\\xe8'/232/g
s/'\\x09'/9/g;   s/'\\x29'/41/g;  s/'\\x49'/73/g;  s/'\\x69'/105/g;  s/'\\x89'/137/g;  s/'\\xa9'/169/g;  s/'\\xc9'/201/g;  s/'\\xe9'/233/g
s/'\\x0a'/10/gi; s/'\\x2a'/42/gi; s/'\\x4a'/74/gi; s/'\\x6a'/106/gi; s/'\\x8a'/138/gi; s/'\\xaa'/170/gi; s/'\\xca'/202/gi; s/'\\xea'/234/gi
s/'\\x0b'/11/gi; s/'\\x2b'/43/gi; s/'\\x4b'/75/gi; s/'\\x6b'/107/gi; s/'\\x8b'/139/gi; s/'\\xab'/171/gi; s/'\\xcb'/203/gi; s/'\\xeb'/235/gi
s/'\\x0c'/12/gi; s/'\\x2c'/44/gi; s/'\\x4c'/76/gi; s/'\\x6c'/108/gi; s/'\\x8c'/140/gi; s/'\\xac'/172/gi; s/'\\xcc'/204/gi; s/'\\xec'/236/gi
s/'\\x0d'/13/gi; s/'\\x2d'/45/gi; s/'\\x4d'/77/gi; s/'\\x6d'/109/gi; s/'\\x8d'/141/gi; s/'\\xad'/173/gi; s/'\\xcd'/205/gi; s/'\\xed'/237/gi
s/'\\x0e'/14/gi; s/'\\x2e'/46/gi; s/'\\x4e'/78/gi; s/'\\x6e'/110/gi; s/'\\x8e'/142/gi; s/'\\xae'/174/gi; s/'\\xce'/206/gi; s/'\\xee'/238/gi
s/'\\x0f'/15/gi; s/'\\x2f'/47/gi; s/'\\x4f'/79/gi; s/'\\x6f'/111/gi; s/'\\x8f'/143/gi; s/'\\xaf'/175/gi; s/'\\xcf'/207/gi; s/'\\xef'/239/gi
s/'\\x10'/16/g;  s/'\\x30'/48/g;  s/'\\x50'/80/g;  s/'\\x70'/112/g;  s/'\\x90'/144/g;  s/'\\xb0'/176/g;  s/'\\xd0'/208/g;  s/'\\xf0'/240/g
s/'\\x11'/17/g;  s/'\\x31'/49/g;  s/'\\x51'/81/g;  s/'\\x71'/113/g;  s/'\\x91'/145/g;  s/'\\xb1'/177/g;  s/'\\xd1'/209/g;  s/'\\xf1'/241/g
s/'\\x12'/18/g;  s/'\\x32'/50/g;  s/'\\x52'/82/g;  s/'\\x72'/114/g;  s/'\\x92'/146/g;  s/'\\xb2'/178/g;  s/'\\xd2'/210/g;  s/'\\xf2'/242/g
s/'\\x13'/19/g;  s/'\\x33'/51/g;  s/'\\x53'/83/g;  s/'\\x73'/115/g;  s/'\\x93'/147/g;  s/'\\xb3'/179/g;  s/'\\xd3'/211/g;  s/'\\xf3'/243/g
s/'\\x14'/20/g;  s/'\\x34'/52/g;  s/'\\x54'/84/g;  s/'\\x74'/116/g;  s/'\\x94'/148/g;  s/'\\xb4'/180/g;  s/'\\xd4'/212/g;  s/'\\xf4'/244/g
s/'\\x15'/21/g;  s/'\\x35'/53/g;  s/'\\x55'/85/g;  s/'\\x75'/117/g;  s/'\\x95'/149/g;  s/'\\xb5'/181/g;  s/'\\xd5'/213/g;  s/'\\xf5'/245/g
s/'\\x16'/22/g;  s/'\\x36'/54/g;  s/'\\x56'/86/g;  s/'\\x76'/118/g;  s/'\\x96'/150/g;  s/'\\xb6'/182/g;  s/'\\xd6'/214/g;  s/'\\xf6'/246/g
s/'\\x17'/23/g;  s/'\\x37'/55/g;  s/'\\x57'/87/g;  s/'\\x77'/119/g;  s/'\\x97'/151/g;  s/'\\xb7'/183/g;  s/'\\xd7'/215/g;  s/'\\xf7'/247/g
s/'\\x18'/24/g;  s/'\\x38'/56/g;  s/'\\x58'/88/g;  s/'\\x78'/120/g;  s/'\\x98'/152/g;  s/'\\xb8'/184/g;  s/'\\xd8'/216/g;  s/'\\xf8'/248/g
s/'\\x19'/25/g;  s/'\\x39'/57/g;  s/'\\x59'/89/g;  s/'\\x79'/121/g;  s/'\\x99'/153/g;  s/'\\xb9'/185/g;  s/'\\xd9'/217/g;  s/'\\xf9'/249/g
s/'\\x1a'/26/gi; s/'\\x3a'/58/gi; s/'\\x5a'/90/gi; s/'\\x7a'/122/gi; s/'\\x9a'/154/gi; s/'\\xba'/186/gi; s/'\\xda'/218/gi; s/'\\xfa'/250/gi
s/'\\x1b'/27/gi; s/'\\x3b'/59/gi; s/'\\x5b'/91/gi; s/'\\x7b'/123/gi; s/'\\x9b'/155/gi; s/'\\xbb'/187/gi; s/'\\xdb'/219/gi; s/'\\xfb'/251/gi
s/'\\x1c'/28/gi; s/'\\x3c'/60/gi; s/'\\x5c'/92/gi; s/'\\x7c'/124/gi; s/'\\x9c'/156/gi; s/'\\xbc'/188/gi; s/'\\xdc'/220/gi; s/'\\xfc'/252/gi
s/'\\x1d'/29/gi; s/'\\x3d'/61/gi; s/'\\x5d'/93/gi; s/'\\x7d'/125/gi; s/'\\x9d'/157/gi; s/'\\xbd'/189/gi; s/'\\xdd'/221/gi; s/'\\xfd'/253/gi
s/'\\x1e'/30/gi; s/'\\x3e'/62/gi; s/'\\x5e'/94/gi; s/'\\x7e'/126/gi; s/'\\x9e'/158/gi; s/'\\xbe'/190/gi; s/'\\xde'/222/gi; s/'\\xfe'/254/gi
s/'\\x1f'/31/gi; s/'\\x3f'/63/gi; s/'\\x5f'/95/gi; s/'\\x7f'/127/gi; s/'\\x9f'/159/gi; s/'\\xbf'/191/gi; s/'\\xdf'/223/gi; s/'\\xff'/255/gi

s/\b(-?)0x00\b/\10/g;   s/\b(-?)0x20\b/\132/g;  s/\b(-?)0x40\b/\164/g;  s/\b(-?)0x60\b/\196/g;   s/\b(-?)0x80\b/\1128/g;  s/\b(-?)0xa0\b/\1160/g;  s/\b(-?)0xc0\b/\1192/g;  s/\b(-?)0xe0\b/\1224/g
s/\b(-?)0x01\b/\11/g;   s/\b(-?)0x21\b/\133/g;  s/\b(-?)0x41\b/\165/g;  s/\b(-?)0x61\b/\197/g;   s/\b(-?)0x81\b/\1129/g;  s/\b(-?)0xa1\b/\1161/g;  s/\b(-?)0xc1\b/\1193/g;  s/\b(-?)0xe1\b/\1225/g
s/\b(-?)0x02\b/\12/g;   s/\b(-?)0x22\b/\134/g;  s/\b(-?)0x42\b/\166/g;  s/\b(-?)0x62\b/\198/g;   s/\b(-?)0x82\b/\1130/g;  s/\b(-?)0xa2\b/\1162/g;  s/\b(-?)0xc2\b/\1194/g;  s/\b(-?)0xe2\b/\1226/g
s/\b(-?)0x03\b/\13/g;   s/\b(-?)0x23\b/\135/g;  s/\b(-?)0x43\b/\167/g;  s/\b(-?)0x63\b/\199/g;   s/\b(-?)0x83\b/\1131/g;  s/\b(-?)0xa3\b/\1163/g;  s/\b(-?)0xc3\b/\1195/g;  s/\b(-?)0xe3\b/\1227/g
s/\b(-?)0x04\b/\14/g;   s/\b(-?)0x24\b/\136/g;  s/\b(-?)0x44\b/\168/g;  s/\b(-?)0x64\b/\1100/g;  s/\b(-?)0x84\b/\1132/g;  s/\b(-?)0xa4\b/\1164/g;  s/\b(-?)0xc4\b/\1196/g;  s/\b(-?)0xe4\b/\1228/g
s/\b(-?)0x05\b/\15/g;   s/\b(-?)0x25\b/\137/g;  s/\b(-?)0x45\b/\169/g;  s/\b(-?)0x65\b/\1101/g;  s/\b(-?)0x85\b/\1133/g;  s/\b(-?)0xa5\b/\1165/g;  s/\b(-?)0xc5\b/\1197/g;  s/\b(-?)0xe5\b/\1229/g
s/\b(-?)0x06\b/\16/g;   s/\b(-?)0x26\b/\138/g;  s/\b(-?)0x46\b/\170/g;  s/\b(-?)0x66\b/\1102/g;  s/\b(-?)0x86\b/\1134/g;  s/\b(-?)0xa6\b/\1166/g;  s/\b(-?)0xc6\b/\1198/g;  s/\b(-?)0xe6\b/\1230/g
s/\b(-?)0x07\b/\17/g;   s/\b(-?)0x27\b/\139/g;  s/\b(-?)0x47\b/\171/g;  s/\b(-?)0x67\b/\1103/g;  s/\b(-?)0x87\b/\1135/g;  s/\b(-?)0xa7\b/\1167/g;  s/\b(-?)0xc7\b/\1199/g;  s/\b(-?)0xe7\b/\1231/g
s/\b(-?)0x08\b/\18/g;   s/\b(-?)0x28\b/\140/g;  s/\b(-?)0x48\b/\172/g;  s/\b(-?)0x68\b/\1104/g;  s/\b(-?)0x88\b/\1136/g;  s/\b(-?)0xa8\b/\1168/g;  s/\b(-?)0xc8\b/\1200/g;  s/\b(-?)0xe8\b/\1232/g
s/\b(-?)0x09\b/\19/g;   s/\b(-?)0x29\b/\141/g;  s/\b(-?)0x49\b/\173/g;  s/\b(-?)0x69\b/\1105/g;  s/\b(-?)0x89\b/\1137/g;  s/\b(-?)0xa9\b/\1169/g;  s/\b(-?)0xc9\b/\1201/g;  s/\b(-?)0xe9\b/\1233/g
s/\b(-?)0x0a\b/\110/gi; s/\b(-?)0x2a\b/\142/gi; s/\b(-?)0x4a\b/\174/gi; s/\b(-?)0x6a\b/\1106/gi; s/\b(-?)0x8a\b/\1138/gi; s/\b(-?)0xaa\b/\1170/gi; s/\b(-?)0xca\b/\1202/gi; s/\b(-?)0xea\b/\1234/gi
s/\b(-?)0x0b\b/\111/gi; s/\b(-?)0x2b\b/\143/gi; s/\b(-?)0x4b\b/\175/gi; s/\b(-?)0x6b\b/\1107/gi; s/\b(-?)0x8b\b/\1139/gi; s/\b(-?)0xab\b/\1171/gi; s/\b(-?)0xcb\b/\1203/gi; s/\b(-?)0xeb\b/\1235/gi
s/\b(-?)0x0c\b/\112/gi; s/\b(-?)0x2c\b/\144/gi; s/\b(-?)0x4c\b/\176/gi; s/\b(-?)0x6c\b/\1108/gi; s/\b(-?)0x8c\b/\1140/gi; s/\b(-?)0xac\b/\1172/gi; s/\b(-?)0xcc\b/\1204/gi; s/\b(-?)0xec\b/\1236/gi
s/\b(-?)0x0d\b/\113/gi; s/\b(-?)0x2d\b/\145/gi; s/\b(-?)0x4d\b/\177/gi; s/\b(-?)0x6d\b/\1109/gi; s/\b(-?)0x8d\b/\1141/gi; s/\b(-?)0xad\b/\1173/gi; s/\b(-?)0xcd\b/\1205/gi; s/\b(-?)0xed\b/\1237/gi
s/\b(-?)0x0e\b/\114/gi; s/\b(-?)0x2e\b/\146/gi; s/\b(-?)0x4e\b/\178/gi; s/\b(-?)0x6e\b/\1110/gi; s/\b(-?)0x8e\b/\1142/gi; s/\b(-?)0xae\b/\1174/gi; s/\b(-?)0xce\b/\1206/gi; s/\b(-?)0xee\b/\1238/gi
s/\b(-?)0x0f\b/\115/gi; s/\b(-?)0x2f\b/\147/gi; s/\b(-?)0x4f\b/\179/gi; s/\b(-?)0x6f\b/\1111/gi; s/\b(-?)0x8f\b/\1143/gi; s/\b(-?)0xaf\b/\1175/gi; s/\b(-?)0xcf\b/\1207/gi; s/\b(-?)0xef\b/\1239/gi
s/\b(-?)0x10\b/\116/g;  s/\b(-?)0x30\b/\148/g;  s/\b(-?)0x50\b/\180/g;  s/\b(-?)0x70\b/\1112/g;  s/\b(-?)0x90\b/\1144/g;  s/\b(-?)0xb0\b/\1176/g;  s/\b(-?)0xd0\b/\1208/g;  s/\b(-?)0xf0\b/\1240/g
s/\b(-?)0x11\b/\117/g;  s/\b(-?)0x31\b/\149/g;  s/\b(-?)0x51\b/\181/g;  s/\b(-?)0x71\b/\1113/g;  s/\b(-?)0x91\b/\1145/g;  s/\b(-?)0xb1\b/\1177/g;  s/\b(-?)0xd1\b/\1209/g;  s/\b(-?)0xf1\b/\1241/g
s/\b(-?)0x12\b/\118/g;  s/\b(-?)0x32\b/\150/g;  s/\b(-?)0x52\b/\182/g;  s/\b(-?)0x72\b/\1114/g;  s/\b(-?)0x92\b/\1146/g;  s/\b(-?)0xb2\b/\1178/g;  s/\b(-?)0xd2\b/\1210/g;  s/\b(-?)0xf2\b/\1242/g
s/\b(-?)0x13\b/\119/g;  s/\b(-?)0x33\b/\151/g;  s/\b(-?)0x53\b/\183/g;  s/\b(-?)0x73\b/\1115/g;  s/\b(-?)0x93\b/\1147/g;  s/\b(-?)0xb3\b/\1179/g;  s/\b(-?)0xd3\b/\1211/g;  s/\b(-?)0xf3\b/\1243/g
s/\b(-?)0x14\b/\120/g;  s/\b(-?)0x34\b/\152/g;  s/\b(-?)0x54\b/\184/g;  s/\b(-?)0x74\b/\1116/g;  s/\b(-?)0x94\b/\1148/g;  s/\b(-?)0xb4\b/\1180/g;  s/\b(-?)0xd4\b/\1212/g;  s/\b(-?)0xf4\b/\1244/g
s/\b(-?)0x15\b/\121/g;  s/\b(-?)0x35\b/\153/g;  s/\b(-?)0x55\b/\185/g;  s/\b(-?)0x75\b/\1117/g;  s/\b(-?)0x95\b/\1149/g;  s/\b(-?)0xb5\b/\1181/g;  s/\b(-?)0xd5\b/\1213/g;  s/\b(-?)0xf5\b/\1245/g
s/\b(-?)0x16\b/\122/g;  s/\b(-?)0x36\b/\154/g;  s/\b(-?)0x56\b/\186/g;  s/\b(-?)0x76\b/\1118/g;  s/\b(-?)0x96\b/\1150/g;  s/\b(-?)0xb6\b/\1182/g;  s/\b(-?)0xd6\b/\1214/g;  s/\b(-?)0xf6\b/\1246/g
s/\b(-?)0x17\b/\123/g;  s/\b(-?)0x37\b/\155/g;  s/\b(-?)0x57\b/\187/g;  s/\b(-?)0x77\b/\1119/g;  s/\b(-?)0x97\b/\1151/g;  s/\b(-?)0xb7\b/\1183/g;  s/\b(-?)0xd7\b/\1215/g;  s/\b(-?)0xf7\b/\1247/g
s/\b(-?)0x18\b/\124/g;  s/\b(-?)0x38\b/\156/g;  s/\b(-?)0x58\b/\188/g;  s/\b(-?)0x78\b/\1120/g;  s/\b(-?)0x98\b/\1152/g;  s/\b(-?)0xb8\b/\1184/g;  s/\b(-?)0xd8\b/\1216/g;  s/\b(-?)0xf8\b/\1248/g
s/\b(-?)0x19\b/\125/g;  s/\b(-?)0x39\b/\157/g;  s/\b(-?)0x59\b/\189/g;  s/\b(-?)0x79\b/\1121/g;  s/\b(-?)0x99\b/\1153/g;  s/\b(-?)0xb9\b/\1185/g;  s/\b(-?)0xd9\b/\1217/g;  s/\b(-?)0xf9\b/\1249/g
s/\b(-?)0x1a\b/\126/gi; s/\b(-?)0x3a\b/\158/gi; s/\b(-?)0x5a\b/\190/gi; s/\b(-?)0x7a\b/\1122/gi; s/\b(-?)0x9a\b/\1154/gi; s/\b(-?)0xba\b/\1186/gi; s/\b(-?)0xda\b/\1218/gi; s/\b(-?)0xfa\b/\1250/gi
s/\b(-?)0x1b\b/\127/gi; s/\b(-?)0x3b\b/\159/gi; s/\b(-?)0x5b\b/\191/gi; s/\b(-?)0x7b\b/\1123/gi; s/\b(-?)0x9b\b/\1155/gi; s/\b(-?)0xbb\b/\1187/gi; s/\b(-?)0xdb\b/\1219/gi; s/\b(-?)0xfb\b/\1251/gi
s/\b(-?)0x1c\b/\128/gi; s/\b(-?)0x3c\b/\160/gi; s/\b(-?)0x5c\b/\192/gi; s/\b(-?)0x7c\b/\1124/gi; s/\b(-?)0x9c\b/\1156/gi; s/\b(-?)0xbc\b/\1188/gi; s/\b(-?)0xdc\b/\1220/gi; s/\b(-?)0xfc\b/\1252/gi
s/\b(-?)0x1d\b/\129/gi; s/\b(-?)0x3d\b/\161/gi; s/\b(-?)0x5d\b/\193/gi; s/\b(-?)0x7d\b/\1125/gi; s/\b(-?)0x9d\b/\1157/gi; s/\b(-?)0xbd\b/\1189/gi; s/\b(-?)0xdd\b/\1221/gi; s/\b(-?)0xfd\b/\1253/gi
s/\b(-?)0x1e\b/\130/gi; s/\b(-?)0x3e\b/\162/gi; s/\b(-?)0x5e\b/\194/gi; s/\b(-?)0x7e\b/\1126/gi; s/\b(-?)0x9e\b/\1158/gi; s/\b(-?)0xbe\b/\1190/gi; s/\b(-?)0xde\b/\1222/gi; s/\b(-?)0xfe\b/\1254/gi
s/\b(-?)0x1f\b/\131/gi; s/\b(-?)0x3f\b/\163/gi; s/\b(-?)0x5f\b/\195/gi; s/\b(-?)0x7f\b/\1127/gi; s/\b(-?)0x9f\b/\1159/gi; s/\b(-?)0xbf\b/\1191/gi; s/\b(-?)0xdf\b/\1223/gi; s/\b(-?)0xff\b/\1255/gi

s/\bjeof\b/jz/g

s/\^( |$)/^0\1/g
s/\b(call|jmp) \*\^(-?[0-9]+)\b/copy \2 retrieve \1/g
s/\b(call|jmp) \*(-?[0-9]+)\b/push \2 retrieve \1/g
s/\b(call|jmp) \*( |$)/retrieve \1\2/g
s/\b(call|jmp) \^(-?[0-9]+)\b/copy \2 \1/g
s/\b(call|jmp) (-?[0-9]+)\b/push \2 \1/g
s/\b(call|jmp) \*\^(-?[0-9]+)\b/copy \2 retrieve \1/g
s/\b(call|jmp) \*(-?[0-9]+)\b/push \2 retrieve \1/g
s/\b(call|jmp) \*( |$)/retrieve \1\2/g
s/\b(call|jmp) \^(-?[0-9]+)\b/copy \2 \1/g
s/\b(call|jmp) (-?[0-9]+)\b/push \2 \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \*\^(-?[0-9]+)\b/copy \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \*(-?[0-9]+)\b/push \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \*( |$)/retrieve \1\2/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|jz|jn|printc|printi|readc|readi) \^(-?[0-9]+)\b/copy \2 \1/g
s/\b(add|sub|mul|div|mod|store|retrieve|call|jmp|printc|printi|readc|readi) (-?[0-9]+)\b/push \2 \1/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \*\^(-?[0-9]+)\b/copy \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \*(-?[0-9]+)\b/push \2 retrieve \1/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \*( |$)/retrieve \1\2/g
s/\b(add|sub|mul|div|mod|store|call|jmp) \^(-?[0-9]+)\b/copy \2 \1/g
s/\b(add|sub|mul|div|mod|store) (-?[0-9]+)\b/push \2 \1/g
s/\bcopy 0\b/dup/g
s/\bdrop 1\b/drop/g
s/\bdrop 2\b/drop drop/g
s/\bdrop 3\b/drop drop drop/g
s/\bdrop 4\b/slide 3 drop/g
s/\bdrop 5\b/slide 4 drop/g
s/\bdrop 6\b/slide 5 drop/g
s/\bdrop 7\b/slide 6 drop/g
s/\bdrop 8\b/slide 7 drop/g
s/\bdrop 9\b/slide 8 drop/g
s/\bdrop 10\b/slide 9 drop/g

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
