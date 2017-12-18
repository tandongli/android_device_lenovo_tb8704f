LOCAL_PATH:= $(call my-dir)

ifneq ($(filter tb8704f,$(TARGET_DEVICE)),)
ifneq ($(TARGET_PREBUILT_KERNEL),)

TARGET_KERNEL_HEADEDS := $(LOCAL_PATH)/include
TARGET_KERNEL_USR := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

HAVE_TARGET_KERNEL_USR := $(shell test -d $(TARGET_KERNEL_USR) && echo yes)
ifneq ($(HAVE_TARGET_KERNEL_USR),yes)
$(shell mkdir -p $(TARGET_KERNEL_USR))
endif

HAVE_TARGET_KERNEL_USR_INCLUDE := $(shell test -d $(TARGET_KERNEL_USR)/include && echo yes)
ifneq ($(HAVE_TARGET_KERNEL_USR_INCLUDE),yes)
$(shell cp -r $(LOCAL_PATH)/include $(TARGET_KERNEL_USR))
endif

endif
endif