inherit populate_sdk_qt5
IMAGE_INSTALL = "\
	packagegroup-core-boot \
	packagegroup-base \
	packagegroup-prusa-base \
	packagegroup-prusa-tools \
	packagegroup-prusa-devel \
	packagegroup-prusa-sla \
	packagegroup-prusa-framebuffer \
"

IMAGE_FEATURES += "\
	package-management \
	ssh-server-openssh \
	tools-debug tools-sdk \
	dev-pkgs \
	allow-empty-password \
	empty-root-password \
	post-install-logging \
"

IMAGE_LINGUAS = "en-us"

SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs doc-pkgs staticdev-pkgs qt-pkgs\
"

TOOLCHAIN_HOST_TASK_append = "\
	nativesdk-qtdeclarative \
"

LICENSE = "MIT"

inherit core-image