#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

include device/samsung/bcm21553-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_PLATFORM 				:= bcm21553
TARGET_BOOTLOADER_BOARD_NAME 			:= luisa

# Kernel
#TARGET_KERNEL_CONFIG				:= cyanogenmod_luisa_defconfig
TARGET_PREBUILT_KERNEL				:= device/samsung/luisa/prebuilt/kernel
BOARD_KERNEL_BASE				:= 0x81600000
BOARD_KERNEL_PAGESIZE				:= 4096
BOARD_NAND_PAGE_SIZE				:= 4096 -s 128
BOARD_PAGE_SIZE					:= 0x00001000

# Recovery
BOARD_LDPI_RECOVERY				:= true
BOARD_CUSTOM_RECOVERY_KEYMAPPING		:= ../../device/samsung/luisa/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS				:= ../../../device/samsung/luisa/recovery/graphics.c
TARGET_RECOVERY_FSTAB				:= device/samsung/luisa/recovery.fstab
