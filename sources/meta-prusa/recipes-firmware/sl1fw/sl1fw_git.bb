SUMMARY = "sl1fw - python firmware part running on a64 board" 

LICENSE = "CLOSED"

SRC_URI = "git://git@gitlab.com/prusa3d/sl1/a64-fw.git;protocol=ssh;branch=master"
SRCREV_pn-${PN} = "83264ccaea456b9ae04f53f04fec6d72cca494c2"

PACKAGES = "${PN}-dev ${PN}"

DEPENDS += "python3 gettext-native"

RDEPENDS_${PN} += " \
	python3 \
	rsync \
	bash \
	nginx \
	avrdude \
	socat \
	avahi-daemon \
	avahi-restarter \
	api-keygen \
	udev-usbmount \
	wifi-config \
	fbset \
	python3-websocket-server \
	python3-pygame \
	python3-pyserial \
	python3-numpy \
	python3-six \
	python3-jinja2 \
	python3-gpio \
	python3-lazy-import \
	python3-pydbus \
	python3-misc \
	python3-pygobject \
	python3-systemd \
	python3-bitstring \
	python3-logging \
	python3-future \
	python3-paho-mqtt \
	python3-toml \
	python3-pyalsaaudio \
	python3-dbus \
	python3-pillow \
	python3-distro \
	python3-readerwriterlock \
"

FILES_${PN} += "\
	${libdir}/systemd/system/sl1fw.service\
	${sysconfdir}/systemd/system/multi-user.target.wants/sl1fw.service\
	${sysconfdir}/nginx/sites-available/sl1fw\
	${sysconfdir}/nginx/sites-enabled/sl1fw\
	${libdir}/tmpfiles.d/sl1fw-tmpfiles.conf\
	${sysconfdir}/sl1fw/hardware.cfg\
	/usr/bin/main.py\
	/srv/http/intranet\
	/usr/share/scripts\
	/usr/share/factory/defaults\
	/usr/share/dbus-1/system.d/cz.prusa3d.sl1.printer0.conf\
"
FILES_${PN}_remove = "${sysconfdir}/sl1fw/loggerConfig.json"
FILES_${PN}-dev = "${sysconfdir}/sl1fw/loggerConfig.json"

S="${WORKDIR}/git/firmware"
INTRANET=""

inherit setuptools3

do_install_append () {
	# Enable sl1fw
	install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants	
	ln -s ${libdir}/systemd/system/sl1fw.service ${D}${sysconfdir}/systemd/system/multi-user.target.wants/sl1fw.service
	
	# Enable nginx site
	install -d ${D}${sysconfdir}/nginx/sites-enabled
	ln -s ${sysconfdir}/nginx/sites-available/sl1fw ${D}${sysconfdir}/nginx/sites-enabled/sl1fw
}
