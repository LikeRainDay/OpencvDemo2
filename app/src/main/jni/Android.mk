LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OpenCV_INSTALL_MODULES := on
OpenCV_CAMERA_MODULES := off

OPENCV_LIB_TYPE :=STATIC

ifeq ("$(wildcard $(OPENCV_MK_PATH))","")
include D:\GitHubCode\OpencvDemo2\native\jni\OpenCV.mk
else
include $(OPENCV_MK_PATH)
endif



LOCAL_MODULE := Face
LOCAL_SRC_FILES =: Face.cpp

LOCAL_LDLIBS +=  -lm -llog

include $(BUILD_SHARED_LIBRARY)