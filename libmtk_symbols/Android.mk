LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
             SSL.c \
             AudioStubs.cpp \
             Bionic.cpp \
             EGL.cpp \
             GraphicBufferMapper.cpp \
             MediaBufferGroup.cpp \
             MediaSource.cpp \
             Player.cpp \
             RIL.cpp \
             WVM.cpp \
             Xlog.cpp \ 
             Icu51.c \
             Icu53.c \
             Icu55.c

LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/        
LOCAL_SHARED_LIBRARIES := libbinder libcutils libutils liblog libicuuc libui libcrypto libc libssl
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
