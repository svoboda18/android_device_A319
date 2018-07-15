LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
             AudioStubs.cpp \
             EGL.cpp \
             GraphicBufferMapper.cpp \
             MediaBufferGroup.cpp \
             MediaSource.cpp \
             Player.cpp \
             RIL.cpp \
	     WVM.cpp \
             SSL.c \
	     SSL2.cpp \
             Icu51.c \
             Icu53.c \
             Icu55.c \
             Xlog.c

LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/        
LOCAL_SHARED_LIBRARIES := libbinder libcutils libutils liblog libicuuc libui libcrypto
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
