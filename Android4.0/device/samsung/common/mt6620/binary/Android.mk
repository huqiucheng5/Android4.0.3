LOCAL_PATH := $(call my-dir)

SRCS := $(shell find $(LOCAL_PATH)/../external -type d -name "combo_tool")

ifeq ($(SRCS),)
# applied to MT6620
ifeq ($(BOARD_HAVE_MTK_MT6620),true)

# Common
	include $(CLEAR_VARS)
	LOCAL_MODULE := 6620_launcher
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := 6620_wmt_lpbk
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := WMT.cfg
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := mt6620_patch_e3_0_hdr.bin
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := mt6620_patch_e3_1_hdr.bin
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := mt6620_patch_e3_2_hdr.bin
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := mt6620_patch_e3_3_hdr.bin
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)



# BT
	include $(CLEAR_VARS)
	LOCAL_MODULE := libbluetooth_mtk
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := eng
	LOCAL_PRELINK_MODULE := false
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := libbluetoothem_ex
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := autobt
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

# GPS
	include $(CLEAR_VARS)
	LOCAL_MODULE := libmnlp
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := mnld
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := gps.default
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_PRELINK_MODULE := false
	LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

#add by cym 20130410
#	include $(CLEAR_VARS)
#	LOCAL_MODULE := gps.exynos4
#	LOCAL_MODULE_SUFFIX := .so
#	LOCAL_PRELINK_MODULE := false
#	LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
#	LOCAL_MODULE_TAGS := optional
#	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
#	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := mnl.prop
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT)/../root/sbin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)
#end add

# FM
	include $(CLEAR_VARS)
	LOCAL_MODULE := libfmcust
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := optional
	LOCAL_PRELINK_MODULE := false
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := libfmjni
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_PRELINK_MODULE := false
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := libfmmt6620
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

#	include $(CLEAR_VARS)
#	LOCAL_MODULE := FMRadio
#	LOCAL_MODULE_CLASS := APPS
#	LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#	LOCAL_CERTIFICATE := PRESIGNED
#	LOCAL_MODULE_TAGS := optional
#	LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
#	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := fmtest
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_PRELINK_MODULE := yes
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

# WLAN
	include $(CLEAR_VARS)
	LOCAL_MODULE := hald
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := hdc
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := libwifitest
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := eng
	LOCAL_PRELINK_MODULE := false
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := wifitest
	LOCAL_MODULE_TAGS := eng
	LOCAL_SHARED_LIBRARIES := libwifitest
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := wpa_supplicant
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := wpa_supplicant.conf
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wifi
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE = libwpa_client
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	WPA_CLIENT_HEADER_PATH := $(TARGET_OUT_HEADERS)/libwpa_client
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := p2p_supplicant
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := p2p_supplicant.conf
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wifi
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE = libp2p_client
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := WIFI_RAM_CODE
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := WIFI_RAM_CODE_E6
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/firmware
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := WIFI
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT)/nvram/APCFG/APRDEB
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := WIFI_CUSTOM
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := ETC
	LOCAL_MODULE_PATH := $(TARGET_OUT)/nvram/APCFG/APRDEB
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

# HW test tool
	include $(CLEAR_VARS)
	LOCAL_MODULE := wcntest
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := wcntestd
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := wcnem
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
	LOCAL_SRC_FILES := $(LOCAL_MODULE)
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := libfmr
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

	include $(CLEAR_VARS)
	LOCAL_MODULE := libautogps
	LOCAL_MODULE_SUFFIX := .so
	LOCAL_MODULE_TAGS := eng
	LOCAL_MODULE_CLASS := SHARED_LIBRARIES
	LOCAL_SRC_FILES := $(LOCAL_MODULE).so
	include $(BUILD_PREBUILT)

$(shell test ! -d $(TARGET_OUT_HEADERS) && mkdir $(TARGET_OUT_HEADERS) )
$(shell test ! -d $(WPA_CLIENT_HEADER_PATH) && mkdir $(WPA_CLIENT_HEADER_PATH) )
$(shell test ! -f $(WPA_CLIENT_HEADER_PATH)/wpa_ctrl.h && cp $(LOCAL_PATH)/wpa_ctrl.h $(WPA_CLIENT_HEADER_PATH))

endif
endif
