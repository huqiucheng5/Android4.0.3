ifeq ($(BOARD_HAVE_MTK_MT6620),true)
  BOARD_HAVE_MTK_MT6620 := true
  LOCAL_CFLAGS    += -DBOARD_HAVE_MTK_MT6620=1
endif

ifeq ($(BOARD_HAVE_BLUETOOTH),true)
  include $(all-subdir-makefiles)
endif
