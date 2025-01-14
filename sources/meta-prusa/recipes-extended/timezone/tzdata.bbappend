do_install_append () {
	# Remove unnneded zones (keep universal, UTC)
	rm -rf ${D}/${datadir}/zoneinfo/CET
	rm -rf ${D}/${datadir}/zoneinfo/CST6CDT
	rm -rf ${D}/${datadir}/zoneinfo/EET
	rm -rf ${D}/${datadir}/zoneinfo/EST
	rm -rf ${D}/${datadir}/zoneinfo/EST5EDT
	rm -rf ${D}/${datadir}/zoneinfo/GB
	rm -rf ${D}/${datadir}/zoneinfo/GMT
	rm -rf ${D}/${datadir}/zoneinfo/GMT+0
	rm -rf ${D}/${datadir}/zoneinfo/GMT-0
	rm -rf ${D}/${datadir}/zoneinfo/GMT0
	rm -rf ${D}/${datadir}/zoneinfo/Greenwich
	rm -rf ${D}/${datadir}/zoneinfo/HST
	rm -rf ${D}/${datadir}/zoneinfo/MET
	rm -rf ${D}/${datadir}/zoneinfo/MST
	rm -rf ${D}/${datadir}/zoneinfo/MST7MDT
	rm -rf ${D}/${datadir}/zoneinfo/NZ
	rm -rf ${D}/${datadir}/zoneinfo/NZ-CHAT
	rm -rf ${D}/${datadir}/zoneinfo/PRC
	rm -rf ${D}/${datadir}/zoneinfo/PST8PDT
	rm -rf ${D}/${datadir}/zoneinfo/ROC
	rm -rf ${D}/${datadir}/zoneinfo/ROK
	rm -rf ${D}/${datadir}/zoneinfo/UCT
	rm -rf ${D}/${datadir}/zoneinfo/W-SU
	rm -rf ${D}/${datadir}/zoneinfo/WET
	rm -rf ${D}/${datadir}/zoneinfo/Zulu
	rm -rf ${D}/${datadir}/zoneinfo/zone.tab
	rm -rf ${D}/${datadir}/zoneinfo/zone1970.tab
	rm -rf ${D}/${datadir}/zoneinfo/iso3166.tab
	rm -rf ${D}/${datadir}/zoneinfo/Etc

	# Flatten zone structure
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Buenos_Aires ${D}/${datadir}/zoneinfo/America/Buenos_Aires
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Catamarca ${D}/${datadir}/zoneinfo/America/Catamarca
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Cordoba ${D}/${datadir}/zoneinfo/America/Cordoba
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Jujuy ${D}/${datadir}/zoneinfo/America/Jujuy
	mv ${D}/${datadir}/zoneinfo/America/Argentina/La_Rioja ${D}/${datadir}/zoneinfo/America/La_Rioja
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Mendoza ${D}/${datadir}/zoneinfo/America/Mendoza
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Rio_Gallegos ${D}/${datadir}/zoneinfo/America/Rio_Gallegos
	mv ${D}/${datadir}/zoneinfo/America/Argentina/San_Juan ${D}/${datadir}/zoneinfo/America/San_Juan
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Tucuman ${D}/${datadir}/zoneinfo/America/Tucuman
	mv ${D}/${datadir}/zoneinfo/America/Argentina/Ushuaia ${D}/${datadir}/zoneinfo/America/Ushuaia
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Indianapolis ${D}/${datadir}/zoneinfo/America/Indianapolis
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Knox ${D}/${datadir}/zoneinfo/America/Knox
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Marengo ${D}/${datadir}/zoneinfo/America/Marengo
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Petersburg ${D}/${datadir}/zoneinfo/America/Petersburg
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Vevay ${D}/${datadir}/zoneinfo/America/Vevay
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Vincennes ${D}/${datadir}/zoneinfo/America/Vincennes
	mv ${D}/${datadir}/zoneinfo/America/Indiana/Winamac ${D}/${datadir}/zoneinfo/America/Winamac
	mv ${D}/${datadir}/zoneinfo/America/Kentucky/Louisville ${D}/${datadir}/zoneinfo/America/Louisville
	mv ${D}/${datadir}/zoneinfo/America/Kentucky/Monticello ${D}/${datadir}/zoneinfo/America/Monticello
	mv ${D}/${datadir}/zoneinfo/America/North_Dakota/Center ${D}/${datadir}/zoneinfo/America/Center
	mv ${D}/${datadir}/zoneinfo/America/North_Dakota/New_Salem ${D}/${datadir}/zoneinfo/America/New_Salem
}

# Include chosen zones in main tzdata package
FILES_${PN} = " \
	${sysconfdir}/localtime \
	${sysconfdir}/timezone \
	\
	${datadir}/zoneinfo/UTC \
	${datadir}/zoneinfo/Universal \
	\
	${datadir}/zoneinfo/Africa/Abidjan \
	${datadir}/zoneinfo/Africa/Accra \
	${datadir}/zoneinfo/Africa/Addis_Ababa \
	${datadir}/zoneinfo/Africa/Algiers \
	${datadir}/zoneinfo/Africa/Asmara \
	${datadir}/zoneinfo/Africa/Bamako \
	${datadir}/zoneinfo/Africa/Bangui \
	${datadir}/zoneinfo/Africa/Banjul \
	${datadir}/zoneinfo/Africa/Bissau \
	${datadir}/zoneinfo/Africa/Blantyre \
	${datadir}/zoneinfo/Africa/Brazzaville \
	${datadir}/zoneinfo/Africa/Bujumbura \
	${datadir}/zoneinfo/Africa/Cairo \
	${datadir}/zoneinfo/Africa/Casablanca \
	${datadir}/zoneinfo/Africa/Ceuta \
	${datadir}/zoneinfo/Africa/Conakry \
	${datadir}/zoneinfo/Africa/Dakar \
	${datadir}/zoneinfo/Africa/Dar_es_Salaam \
	${datadir}/zoneinfo/Africa/Djibouti \
	${datadir}/zoneinfo/Africa/Douala \
	${datadir}/zoneinfo/Africa/El_Aaiun \
	${datadir}/zoneinfo/Africa/Freetown \
	${datadir}/zoneinfo/Africa/Gaborone \
	${datadir}/zoneinfo/Africa/Harare \
	${datadir}/zoneinfo/Africa/Johannesburg \
	${datadir}/zoneinfo/Africa/Kampala \
	${datadir}/zoneinfo/Africa/Khartoum \
	${datadir}/zoneinfo/Africa/Kigali \
	${datadir}/zoneinfo/Africa/Kinshasa \
	${datadir}/zoneinfo/Africa/Lagos \
	${datadir}/zoneinfo/Africa/Libreville \
	${datadir}/zoneinfo/Africa/Lome \
	${datadir}/zoneinfo/Africa/Luanda \
	${datadir}/zoneinfo/Africa/Lubumbashi \
	${datadir}/zoneinfo/Africa/Lusaka \
	${datadir}/zoneinfo/Africa/Malabo \
	${datadir}/zoneinfo/Africa/Maputo \
	${datadir}/zoneinfo/Africa/Maseru \
	${datadir}/zoneinfo/Africa/Mbabane \
	${datadir}/zoneinfo/Africa/Mogadishu \
	${datadir}/zoneinfo/Africa/Monrovia \
	${datadir}/zoneinfo/Africa/Nairobi \
	${datadir}/zoneinfo/Africa/Ndjamena \
	${datadir}/zoneinfo/Africa/Niamey \
	${datadir}/zoneinfo/Africa/Nouakchott \
	${datadir}/zoneinfo/Africa/Ouagadougou \
	${datadir}/zoneinfo/Africa/Porto-Novo \
	${datadir}/zoneinfo/Africa/Sao_Tome \
	${datadir}/zoneinfo/Africa/Tripoli \
	${datadir}/zoneinfo/Africa/Tunis \
	${datadir}/zoneinfo/Africa/Windhoek \
	${datadir}/zoneinfo/America/Adak \
	${datadir}/zoneinfo/America/Anchorage \
	${datadir}/zoneinfo/America/Anguilla \
	${datadir}/zoneinfo/America/Antigua \
	${datadir}/zoneinfo/America/Araguaina \
	${datadir}/zoneinfo/America/Argentina/Buenos_Aires \
	${datadir}/zoneinfo/America/Argentina/Catamarca \
	${datadir}/zoneinfo/America/Argentina/Cordoba \
	${datadir}/zoneinfo/America/Argentina/Jujuy \
	${datadir}/zoneinfo/America/Argentina/La_Rioja \
	${datadir}/zoneinfo/America/Argentina/Mendoza \
	${datadir}/zoneinfo/America/Argentina/Rio_Gallegos \
	${datadir}/zoneinfo/America/Argentina/San_Juan \
	${datadir}/zoneinfo/America/Argentina/Tucuman \
	${datadir}/zoneinfo/America/Argentina/Ushuaia \
	${datadir}/zoneinfo/America/Aruba \
	${datadir}/zoneinfo/America/Asuncion \
	${datadir}/zoneinfo/America/Atikokan \
	${datadir}/zoneinfo/America/Bahia \
	${datadir}/zoneinfo/America/Barbados \
	${datadir}/zoneinfo/America/Belem \
	${datadir}/zoneinfo/America/Belize \
	${datadir}/zoneinfo/America/Blanc-Sablon \
	${datadir}/zoneinfo/America/Boa_Vista \
	${datadir}/zoneinfo/America/Bogota \
	${datadir}/zoneinfo/America/Boise \
	${datadir}/zoneinfo/America/Cambridge_Bay \
	${datadir}/zoneinfo/America/Campo_Grande \
	${datadir}/zoneinfo/America/Cancun \
	${datadir}/zoneinfo/America/Caracas \
	${datadir}/zoneinfo/America/Cayenne \
	${datadir}/zoneinfo/America/Cayman \
	${datadir}/zoneinfo/America/Chicago \
	${datadir}/zoneinfo/America/Chihuahua \
	${datadir}/zoneinfo/America/Costa_Rica \
	${datadir}/zoneinfo/America/Cuiaba \
	${datadir}/zoneinfo/America/Curacao \
	${datadir}/zoneinfo/America/Danmarkshavn \
	${datadir}/zoneinfo/America/Dawson \
	${datadir}/zoneinfo/America/Dawson_Creek \
	${datadir}/zoneinfo/America/Denver \
	${datadir}/zoneinfo/America/Detroit \
	${datadir}/zoneinfo/America/Dominica \
	${datadir}/zoneinfo/America/Edmonton \
	${datadir}/zoneinfo/America/Eirunepe \
	${datadir}/zoneinfo/America/El_Salvador \
	${datadir}/zoneinfo/America/Fortaleza \
	${datadir}/zoneinfo/America/Glace_Bay \
	${datadir}/zoneinfo/America/Godthab \
	${datadir}/zoneinfo/America/Goose_Bay \
	${datadir}/zoneinfo/America/Grand_Turk \
	${datadir}/zoneinfo/America/Grenada \
	${datadir}/zoneinfo/America/Guadeloupe \
	${datadir}/zoneinfo/America/Guatemala \
	${datadir}/zoneinfo/America/Guayaquil \
	${datadir}/zoneinfo/America/Guyana \
	${datadir}/zoneinfo/America/Halifax \
	${datadir}/zoneinfo/America/Havana \
	${datadir}/zoneinfo/America/Hermosillo \
	${datadir}/zoneinfo/America/Indiana/Indianapolis \
	${datadir}/zoneinfo/America/Indiana/Knox \
	${datadir}/zoneinfo/America/Indiana/Marengo \
	${datadir}/zoneinfo/America/Indiana/Petersburg \
	${datadir}/zoneinfo/America/Indiana/Vevay \
	${datadir}/zoneinfo/America/Indiana/Vincennes \
	${datadir}/zoneinfo/America/Indiana/Winamac \
	${datadir}/zoneinfo/America/Inuvik \
	${datadir}/zoneinfo/America/Iqaluit \
	${datadir}/zoneinfo/America/Jamaica \
	${datadir}/zoneinfo/America/Juneau \
	${datadir}/zoneinfo/America/Kentucky/Louisville \
	${datadir}/zoneinfo/America/Kentucky/Monticello \
	${datadir}/zoneinfo/America/La_Paz \
	${datadir}/zoneinfo/America/Lima \
	${datadir}/zoneinfo/America/Los_Angeles \
	${datadir}/zoneinfo/America/Maceio \
	${datadir}/zoneinfo/America/Managua \
	${datadir}/zoneinfo/America/Manaus \
	${datadir}/zoneinfo/America/Martinique \
	${datadir}/zoneinfo/America/Mazatlan \
	${datadir}/zoneinfo/America/Menominee \
	${datadir}/zoneinfo/America/Merida \
	${datadir}/zoneinfo/America/Mexico_City \
	${datadir}/zoneinfo/America/Miquelon \
	${datadir}/zoneinfo/America/Moncton \
	${datadir}/zoneinfo/America/Monterrey \
	${datadir}/zoneinfo/America/Montevideo \
	${datadir}/zoneinfo/America/Montreal \
	${datadir}/zoneinfo/America/Montserrat \
	${datadir}/zoneinfo/America/Nassau \
	${datadir}/zoneinfo/America/New_York \
	${datadir}/zoneinfo/America/Nipigon \
	${datadir}/zoneinfo/America/Nome \
	${datadir}/zoneinfo/America/Noronha \
	${datadir}/zoneinfo/America/North_Dakota/Center \
	${datadir}/zoneinfo/America/North_Dakota/New_Salem \
	${datadir}/zoneinfo/America/Panama \
	${datadir}/zoneinfo/America/Pangnirtung \
	${datadir}/zoneinfo/America/Paramaribo \
	${datadir}/zoneinfo/America/Phoenix \
	${datadir}/zoneinfo/America/Port-au-Prince \
	${datadir}/zoneinfo/America/Port_of_Spain \
	${datadir}/zoneinfo/America/Porto_Velho \
	${datadir}/zoneinfo/America/Puerto_Rico \
	${datadir}/zoneinfo/America/Rainy_River \
	${datadir}/zoneinfo/America/Rankin_Inlet \
	${datadir}/zoneinfo/America/Recife \
	${datadir}/zoneinfo/America/Regina \
	${datadir}/zoneinfo/America/Resolute \
	${datadir}/zoneinfo/America/Rio_Branco \
	${datadir}/zoneinfo/America/Santiago \
	${datadir}/zoneinfo/America/Santo_Domingo \
	${datadir}/zoneinfo/America/Sao_Paulo \
	${datadir}/zoneinfo/America/Scoresbysund \
	${datadir}/zoneinfo/America/Shiprock \
	${datadir}/zoneinfo/America/St_Johns \
	${datadir}/zoneinfo/America/St_Kitts \
	${datadir}/zoneinfo/America/St_Lucia \
	${datadir}/zoneinfo/America/St_Thomas \
	${datadir}/zoneinfo/America/St_Vincent \
	${datadir}/zoneinfo/America/Swift_Current \
	${datadir}/zoneinfo/America/Tegucigalpa \
	${datadir}/zoneinfo/America/Thule \
	${datadir}/zoneinfo/America/Thunder_Bay \
	${datadir}/zoneinfo/America/Tijuana \
	${datadir}/zoneinfo/America/Toronto \
	${datadir}/zoneinfo/America/Tortola \
	${datadir}/zoneinfo/America/Vancouver \
	${datadir}/zoneinfo/America/Whitehorse \
	${datadir}/zoneinfo/America/Winnipeg \
	${datadir}/zoneinfo/America/Yakutat \
	${datadir}/zoneinfo/America/Yellowknife \
	${datadir}/zoneinfo/Antarctica/Casey \
	${datadir}/zoneinfo/Antarctica/Davis \
	${datadir}/zoneinfo/Antarctica/DumontDUrville \
	${datadir}/zoneinfo/Antarctica/Mawson \
	${datadir}/zoneinfo/Antarctica/McMurdo \
	${datadir}/zoneinfo/Antarctica/Palmer \
	${datadir}/zoneinfo/Antarctica/Rothera \
	${datadir}/zoneinfo/Antarctica/South_Pole \
	${datadir}/zoneinfo/Antarctica/Syowa \
	${datadir}/zoneinfo/Antarctica/Vostok \
	${datadir}/zoneinfo/Arctic/Longyearbyen \
	${datadir}/zoneinfo/Asia/Aden \
	${datadir}/zoneinfo/Asia/Almaty \
	${datadir}/zoneinfo/Asia/Amman \
	${datadir}/zoneinfo/Asia/Anadyr \
	${datadir}/zoneinfo/Asia/Aqtau \
	${datadir}/zoneinfo/Asia/Aqtobe \
	${datadir}/zoneinfo/Asia/Ashgabat \
	${datadir}/zoneinfo/Asia/Baghdad \
	${datadir}/zoneinfo/Asia/Bahrain \
	${datadir}/zoneinfo/Asia/Baku \
	${datadir}/zoneinfo/Asia/Bangkok \
	${datadir}/zoneinfo/Asia/Beirut \
	${datadir}/zoneinfo/Asia/Bishkek \
	${datadir}/zoneinfo/Asia/Brunei \
	${datadir}/zoneinfo/Asia/Calcutta \
	${datadir}/zoneinfo/Asia/Choibalsan \
	${datadir}/zoneinfo/Asia/Chongqing \
	${datadir}/zoneinfo/Asia/Colombo \
	${datadir}/zoneinfo/Asia/Damascus \
	${datadir}/zoneinfo/Asia/Dhaka \
	${datadir}/zoneinfo/Asia/Dili \
	${datadir}/zoneinfo/Asia/Dubai \
	${datadir}/zoneinfo/Asia/Dushanbe \
	${datadir}/zoneinfo/Asia/Gaza \
	${datadir}/zoneinfo/Asia/Harbin \
	${datadir}/zoneinfo/Asia/Hong_Kong \
	${datadir}/zoneinfo/Asia/Hovd \
	${datadir}/zoneinfo/Asia/Irkutsk \
	${datadir}/zoneinfo/Asia/Jakarta \
	${datadir}/zoneinfo/Asia/Jayapura \
	${datadir}/zoneinfo/Asia/Jerusalem \
	${datadir}/zoneinfo/Asia/Kabul \
	${datadir}/zoneinfo/Asia/Kamchatka \
	${datadir}/zoneinfo/Asia/Karachi \
	${datadir}/zoneinfo/Asia/Kashgar \
	${datadir}/zoneinfo/Asia/Katmandu \
	${datadir}/zoneinfo/Asia/Krasnoyarsk \
	${datadir}/zoneinfo/Asia/Kuala_Lumpur \
	${datadir}/zoneinfo/Asia/Kuching \
	${datadir}/zoneinfo/Asia/Kuwait \
	${datadir}/zoneinfo/Asia/Macau \
	${datadir}/zoneinfo/Asia/Magadan \
	${datadir}/zoneinfo/Asia/Makassar \
	${datadir}/zoneinfo/Asia/Manila \
	${datadir}/zoneinfo/Asia/Muscat \
	${datadir}/zoneinfo/Asia/Nicosia \
	${datadir}/zoneinfo/Asia/Novosibirsk \
	${datadir}/zoneinfo/Asia/Omsk \
	${datadir}/zoneinfo/Asia/Oral \
	${datadir}/zoneinfo/Asia/Phnom_Penh \
	${datadir}/zoneinfo/Asia/Pontianak \
	${datadir}/zoneinfo/Asia/Pyongyang \
	${datadir}/zoneinfo/Asia/Qatar \
	${datadir}/zoneinfo/Asia/Qyzylorda \
	${datadir}/zoneinfo/Asia/Rangoon \
	${datadir}/zoneinfo/Asia/Riyadh \
	${datadir}/zoneinfo/Asia/Saigon \
	${datadir}/zoneinfo/Asia/Sakhalin \
	${datadir}/zoneinfo/Asia/Samarkand \
	${datadir}/zoneinfo/Asia/Seoul \
	${datadir}/zoneinfo/Asia/Shanghai \
	${datadir}/zoneinfo/Asia/Singapore \
	${datadir}/zoneinfo/Asia/Taipei \
	${datadir}/zoneinfo/Asia/Tashkent \
	${datadir}/zoneinfo/Asia/Tbilisi \
	${datadir}/zoneinfo/Asia/Tehran \
	${datadir}/zoneinfo/Asia/Thimphu \
	${datadir}/zoneinfo/Asia/Tokyo \
	${datadir}/zoneinfo/Asia/Ulaanbaatar \
	${datadir}/zoneinfo/Asia/Urumqi \
	${datadir}/zoneinfo/Asia/Vientiane \
	${datadir}/zoneinfo/Asia/Vladivostok \
	${datadir}/zoneinfo/Asia/Yakutsk \
	${datadir}/zoneinfo/Asia/Yekaterinburg \
	${datadir}/zoneinfo/Asia/Yerevan \
	${datadir}/zoneinfo/Atlantic/Azores \
	${datadir}/zoneinfo/Atlantic/Bermuda \
	${datadir}/zoneinfo/Atlantic/Canary \
	${datadir}/zoneinfo/Atlantic/Cape_Verde \
	${datadir}/zoneinfo/Atlantic/Faroe \
	${datadir}/zoneinfo/Atlantic/Madeira \
	${datadir}/zoneinfo/Atlantic/Reykjavik \
	${datadir}/zoneinfo/Atlantic/South_Georgia \
	${datadir}/zoneinfo/Atlantic/Stanley \
	${datadir}/zoneinfo/Atlantic/St_Helena \
	${datadir}/zoneinfo/Australia/Adelaide \
	${datadir}/zoneinfo/Australia/Brisbane \
	${datadir}/zoneinfo/Australia/Broken_Hill \
	${datadir}/zoneinfo/Australia/Currie \
	${datadir}/zoneinfo/Australia/Darwin \
	${datadir}/zoneinfo/Australia/Eucla \
	${datadir}/zoneinfo/Australia/Hobart \
	${datadir}/zoneinfo/Australia/Lindeman \
	${datadir}/zoneinfo/Australia/Lord_Howe \
	${datadir}/zoneinfo/Australia/Melbourne \
	${datadir}/zoneinfo/Australia/Perth \
	${datadir}/zoneinfo/Australia/Sydney \
	${datadir}/zoneinfo/Europe/Amsterdam \
	${datadir}/zoneinfo/Europe/Andorra \
	${datadir}/zoneinfo/Europe/Athens \
	${datadir}/zoneinfo/Europe/Belgrade \
	${datadir}/zoneinfo/Europe/Berlin \
	${datadir}/zoneinfo/Europe/Bratislava \
	${datadir}/zoneinfo/Europe/Brussels \
	${datadir}/zoneinfo/Europe/Bucharest \
	${datadir}/zoneinfo/Europe/Budapest \
	${datadir}/zoneinfo/Europe/Chisinau \
	${datadir}/zoneinfo/Europe/Copenhagen \
	${datadir}/zoneinfo/Europe/Dublin \
	${datadir}/zoneinfo/Europe/Gibraltar \
	${datadir}/zoneinfo/Europe/Guernsey \
	${datadir}/zoneinfo/Europe/Helsinki \
	${datadir}/zoneinfo/Europe/Isle_of_Man \
	${datadir}/zoneinfo/Europe/Istanbul \
	${datadir}/zoneinfo/Europe/Jersey \
	${datadir}/zoneinfo/Europe/Kaliningrad \
	${datadir}/zoneinfo/Europe/Kiev \
	${datadir}/zoneinfo/Europe/Lisbon \
	${datadir}/zoneinfo/Europe/Ljubljana \
	${datadir}/zoneinfo/Europe/London \
	${datadir}/zoneinfo/Europe/Luxembourg \
	${datadir}/zoneinfo/Europe/Madrid \
	${datadir}/zoneinfo/Europe/Malta \
	${datadir}/zoneinfo/Europe/Mariehamn \
	${datadir}/zoneinfo/Europe/Minsk \
	${datadir}/zoneinfo/Europe/Monaco \
	${datadir}/zoneinfo/Europe/Moscow \
	${datadir}/zoneinfo/Europe/Oslo \
	${datadir}/zoneinfo/Europe/Paris \
	${datadir}/zoneinfo/Europe/Podgorica \
	${datadir}/zoneinfo/Europe/Prague \
	${datadir}/zoneinfo/Europe/Riga \
	${datadir}/zoneinfo/Europe/Rome \
	${datadir}/zoneinfo/Europe/Samara \
	${datadir}/zoneinfo/Europe/San_Marino \
	${datadir}/zoneinfo/Europe/Sarajevo \
	${datadir}/zoneinfo/Europe/Simferopol \
	${datadir}/zoneinfo/Europe/Skopje \
	${datadir}/zoneinfo/Europe/Sofia \
	${datadir}/zoneinfo/Europe/Stockholm \
	${datadir}/zoneinfo/Europe/Tallinn \
	${datadir}/zoneinfo/Europe/Tirane \
	${datadir}/zoneinfo/Europe/Uzhgorod \
	${datadir}/zoneinfo/Europe/Vaduz \
	${datadir}/zoneinfo/Europe/Vatican \
	${datadir}/zoneinfo/Europe/Vienna \
	${datadir}/zoneinfo/Europe/Vilnius \
	${datadir}/zoneinfo/Europe/Volgograd \
	${datadir}/zoneinfo/Europe/Warsaw \
	${datadir}/zoneinfo/Europe/Zagreb \
	${datadir}/zoneinfo/Europe/Zaporozhye \
	${datadir}/zoneinfo/Europe/Zurich \
	${datadir}/zoneinfo/Indian/Antananarivo \
	${datadir}/zoneinfo/Indian/Chagos \
	${datadir}/zoneinfo/Indian/Christmas \
	${datadir}/zoneinfo/Indian/Cocos \
	${datadir}/zoneinfo/Indian/Comoro \
	${datadir}/zoneinfo/Indian/Kerguelen \
	${datadir}/zoneinfo/Indian/Mahe \
	${datadir}/zoneinfo/Indian/Maldives \
	${datadir}/zoneinfo/Indian/Mauritius \
	${datadir}/zoneinfo/Indian/Mayotte \
	${datadir}/zoneinfo/Indian/Reunion \
	${datadir}/zoneinfo/Pacific/Apia \
	${datadir}/zoneinfo/Pacific/Auckland \
	${datadir}/zoneinfo/Pacific/Chatham \
	${datadir}/zoneinfo/Pacific/Easter \
	${datadir}/zoneinfo/Pacific/Efate \
	${datadir}/zoneinfo/Pacific/Enderbury \
	${datadir}/zoneinfo/Pacific/Fakaofo \
	${datadir}/zoneinfo/Pacific/Fiji \
	${datadir}/zoneinfo/Pacific/Funafuti \
	${datadir}/zoneinfo/Pacific/Galapagos \
	${datadir}/zoneinfo/Pacific/Gambier \
	${datadir}/zoneinfo/Pacific/Guadalcanal \
	${datadir}/zoneinfo/Pacific/Guam \
	${datadir}/zoneinfo/Pacific/Honolulu \
	${datadir}/zoneinfo/Pacific/Johnston \
	${datadir}/zoneinfo/Pacific/Kiritimati \
	${datadir}/zoneinfo/Pacific/Kosrae \
	${datadir}/zoneinfo/Pacific/Kwajalein \
	${datadir}/zoneinfo/Pacific/Majuro \
	${datadir}/zoneinfo/Pacific/Marquesas \
	${datadir}/zoneinfo/Pacific/Midway \
	${datadir}/zoneinfo/Pacific/Nauru \
	${datadir}/zoneinfo/Pacific/Niue \
	${datadir}/zoneinfo/Pacific/Norfolk \
	${datadir}/zoneinfo/Pacific/Noumea \
	${datadir}/zoneinfo/Pacific/Pago_Pago \
	${datadir}/zoneinfo/Pacific/Palau \
	${datadir}/zoneinfo/Pacific/Pitcairn \
	${datadir}/zoneinfo/Pacific/Ponape \
	${datadir}/zoneinfo/Pacific/Port_Moresby \
	${datadir}/zoneinfo/Pacific/Rarotonga \
	${datadir}/zoneinfo/Pacific/Saipan \
	${datadir}/zoneinfo/Pacific/Tahiti \
	${datadir}/zoneinfo/Pacific/Tarawa \
	${datadir}/zoneinfo/Pacific/Tongatapu \
	${datadir}/zoneinfo/Pacific/Truk \
	${datadir}/zoneinfo/Pacific/Wake \
	${datadir}/zoneinfo/Pacific/Wallis \
"
