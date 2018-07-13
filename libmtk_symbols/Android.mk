LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
             AudioStubs.cpp \
             Bionic.cpp \
             EGL.cpp \
             GraphicBufferMapper.cpp \
             Icu53.cpp \
             Icu55.cpp \
             MediaBufferGroup.cpp \
             MediaSource.cpp \
             Player.cpp \
             mtk_omx.cpp \
             RIL.cpp \
             SSL.cpp \
             WVM.cpp \
             Xlog.cpp
             
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libbinder libcutils libutils liblog libicuuc libui libcrypto libc libssl libstagefright_foundation
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
