#!/bin/bash

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=scorpion
MANUFACTURER=sony

. ../shinano/extract-files.sh

COMMON_FIRMWARE="
	modem.b00
	modem.b01
	modem.b02
	modem.b03
	modem.b06
	modem.b08
	modem.b09
	modem.b11
	modem.b12
	modem.b13
	modem.b14
	modem.b15
	modem.b16
	modem.b17
	modem.b18
	modem.b19
	modem.b22
	modem.b23
	modem.b24
	modem.b25
	modem.mdt
	"
copy_files "$COMMON_FIRMWARE" "system/etc/firmware" "etc/firmware"
