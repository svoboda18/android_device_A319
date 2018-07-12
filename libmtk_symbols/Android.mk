LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  SSL.cpp \
  WVM.cpp \
  Xlog.cpp \
  AudioStubs.cpp \
  Bionic.cpp \
  EGL.cpp \
  GraphicBufferMapper.cpp \
  MediaBufferGroup.cpp \
  MediaSource.cpp \
  Player.cpp \
  RIL.cpp \
  Icu51.cpp \
  Icu53.cpp \
  Icu55.cpp

LOCAL_SHARED_LIBRARIES := libbinder libcutils libutils liblog libicuuc libui libcrypto libc libssl
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
