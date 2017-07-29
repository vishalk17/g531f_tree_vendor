LOCAL_PATH := $(call my-dir)

$(info copying DPRW proprietary blobs)

include $(CLEAR_VARS)
LOCAL_MODULE = libdprw
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_OWNER = mrvl
LOCAL_MODULE_SUFFIX = .so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = proprietary/lib/libdprw.so
include $(BUILD_PREBUILT)

