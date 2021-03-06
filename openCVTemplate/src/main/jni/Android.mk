LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

  #OPENCV_CAMERA_MODULES:=off
  #OPENCV_INSTALL_MODULES:=off
  #OPENCV_LIB_TYPE:=SHARED
  ifdef OPENCV_ANDROID_SDK
    ifneq ("","$(wildcard $(OPENCV_ANDROID_SDK)/OpenCV.mk)")
      include ${OPENCV_ANDROID_SDK}/OpenCV.mk
    else
      include ${OPENCV_ANDROID_SDK}/sdk/native/jni/OpenCV.mk
    endif
  else
    # not necessary if you properly set 'local.properties'
    include <Your OpenCV SDK Directory>/sdk/native/jni/OpenCV.mk
  endif

  LOCAL_SRC_FILES  := DetectionBasedTracker_jni.cpp
  LOCAL_C_INCLUDES += $(LOCAL_PATH)
  LOCAL_LDLIBS     += -llog -ldl

LOCAL_MODULE     := detection_based_tracker

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

  ifdef OPENCV_ANDROID_SDK
    ifneq ("","$(wildcard $(OPENCV_ANDROID_SDK)/OpenCV.mk)")
      include ${OPENCV_ANDROID_SDK}/OpenCV.mk
    else
      include ${OPENCV_ANDROID_SDK}/sdk/native/jni/OpenCV.mk
    endif
  else
    # not necessary if you properly set 'local.properties'
    include <Your OpenCV SDK Directory>/sdk/native/jni/OpenCV.mk
  endif

  LOCAL_SRC_FILES  := ImageConverter_jni.cpp
  LOCAL_C_INCLUDES += $(LOCAL_PATH)
  LOCAL_LDLIBS     += -llog -ldl

  LOCAL_MODULE     := image_converter

include $(BUILD_SHARED_LIBRARY)