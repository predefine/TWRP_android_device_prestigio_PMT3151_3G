ifneq ($(filter pmt3151,$(TARGET_DEVICE)),)

LOCAL_PATH := device/prestigio/pmt3151

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

