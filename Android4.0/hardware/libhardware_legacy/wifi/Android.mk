# Copyright 2006 The Android Open Source Project

LOCAL_CFLAGS += -DCONFIG_CTRL_IFACE_CLIENT_DIR=\"/data/misc/wifi/sockets\"
LOCAL_CFLAGS += -DCONFIG_CTRL_IFACE_CLIENT_PREFIX=\"wpa_ctrl_\"

ifdef WIFI_DRIVER_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_PATH=\"$(WIFI_DRIVER_MODULE_PATH)\"
endif
ifdef WIFI_DRIVER_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_ARG=\"$(WIFI_DRIVER_MODULE_ARG)\"
endif
ifdef WIFI_DRIVER_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_NAME=\"$(WIFI_DRIVER_MODULE_NAME)\"
endif

ifdef WIFI_SDIO_IF_DRIVER_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_SDIO_IF_DRIVER_MODULE_PATH=\"$(WIFI_SDIO_IF_DRIVER_MODULE_PATH)\"
endif
ifdef WIFI_SDIO_IF_DRIVER_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_SDIO_IF_DRIVER_MODULE_ARG=\"$(WIFI_SDIO_IF_DRIVER_MODULE_ARG)\"
endif
ifdef WIFI_SDIO_IF_DRIVER_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_SDIO_IF_DRIVER_MODULE_NAME=\"$(WIFI_SDIO_IF_DRIVER_MODULE_NAME)\"
endif

ifdef WIFI_FIRMWARE_LOADER
LOCAL_CFLAGS += -DWIFI_FIRMWARE_LOADER=\"$(WIFI_FIRMWARE_LOADER)\"
endif
ifdef WIFI_DRIVER_FW_PATH_STA
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_STA=\"$(WIFI_DRIVER_FW_PATH_STA)\"
endif
ifdef WIFI_DRIVER_FW_PATH_AP
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_AP=\"$(WIFI_DRIVER_FW_PATH_AP)\"
endif
ifdef WIFI_DRIVER_FW_PATH_P2P
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_P2P=\"$(WIFI_DRIVER_FW_PATH_P2P)\"
endif
ifdef WIFI_DRIVER_FW_PATH_PARAM
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_PARAM=\"$(WIFI_DRIVER_FW_PATH_PARAM)\"
endif

ifeq ($(BOARD_HAVE_MTK_MT6620),true)
#Support Legacy Wi-Fi, hotspot and p2p, non concurrent
LOCAL_SRC_FILES += wifi/wifi_mtk.c wifi/wifi_common.c
LOCAL_SRC_FILES += wifi/wifi_direct.c wifi/wifi_hotspot.c

# For Concurrent Network Support
#LOCAL_SHARED_LIBRARIES += libp2p_client
#LOCAL_CFLAGS += -DCFG_SUPPORT_CONCURRENT_NETWORK
else
LOCAL_SRC_FILES += wifi/wifi.c
endif

LOCAL_SHARED_LIBRARIES += libnetutils