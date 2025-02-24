#
# Copyright (C) 2021 RenesasElectronics, Co, Ltd.
#
DESCRIPTION = "ISP Support Package with kernel for RZ/V2L Evaluation Board Kit PMIC version"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/:"

SRC_URI:append = " \
	file://0000-arm64-dts-renesas-r9a07g054l2-dev-smarc-update-memor.patch
	file://0001-add-ov5645-raw8-raw10-drivers.patch \
	file://0002-add-simple-isp-library.patch \
	file://0003-add-v4l2-drivers.patch \
"

