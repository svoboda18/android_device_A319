LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
             AudioStubs.cpp \
             Bionic.cpp \
             EGL.cpp \
             GraphicBufferMapper.cpp \
             Icu51.c \
             Icu53.c \
             Icu55.c \
             MediaBufferGroup.cpp \
             MediaSource.cpp \
             Player.cpp \
             RIL.cpp \
             SSL.cpp \
             WVM.cpp \
             Xlog.c
        
LOCAL_SHARED_LIBRARIES := libbinder libcutils libutils liblog libicuuc libui libcrypto libc libssl
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
