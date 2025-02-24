#
# Copyright (C) 2021 RenesasElectronics, Co, Ltd.
#
DESCRIPTION = "ISP Support Package with kernel for RZ/V2L Evaluation Board Kit PMIC version"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/:"

SRC_URI:append += " \
	file://0001-add-ov5645-raw8-raw10-drivers.patch \
	file://0002-add-simple-isp-library.patch \
	file://0003-add-v4l2-drivers.patch \
"

