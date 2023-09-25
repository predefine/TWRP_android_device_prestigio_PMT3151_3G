ifneq ($(filter PMT3151_3G_3G,$(TARGET_DEVICE)),)

LOCAL_PATH := device/prestigio/PMT3151_3G_3G

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

