#
# This recipe adds a header file of ISP Library to RZ/V2L SDK environment.
#

DESCRIPTION = "Recipe for header file of ISP Library"
SECTION = "libs"
DEPENDS = ""
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

PACKAGE_ARCH = "${MACHINE_ARCH}"
PACKAGES = "${PN}"
PROVIDES = "${PN}"

PR = "r1"

SRC_URI = "file://renesas-v4l2-controls.h"

# The list of directories or files that are placed in packages.
FILES:${PN} = " \
    ${includedir}/linux/renesas-v4l2-controls.h \
    "

S = "${WORKDIR}"

do_install() {
    install -d ${D}/${includedir}/linux
    install -m 0755 ${S}/renesas-v4l2-controls.h ${D}/${includedir}/linux
}
