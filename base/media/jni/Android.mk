LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    android_media_MediaPlayer.cpp \
    android_media_MediaRecorder.cpp \
    android_media_MediaScanner.cpp \
    android_media_MediaMetadataRetriever.cpp \
    android_media_ResampleInputStream.cpp \
    android_media_MediaProfiles.cpp \
    android_media_AmrInputStream.cpp

LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libnativehelper \
    libutils \
    libbinder \
    libmedia \
    libskia \
    libui \
    libcutils \
    libsurfaceflinger_client \
    libstagefright \
    libcamera_client \
	lib_omx_player_arm11_elinux \
	lib_omx_osal_v2_arm11_elinux \
	lib_omx_client_arm11_elinux \
	lib_omx_utils_v2_arm11_elinux \
	lib_omx_core_mgr_v2_arm11_elinux \
	lib_omx_res_mgr_v2_arm11_elinux \
	lib_id3_parser_arm11_elinux


LOCAL_STATIC_LIBRARIES :=

LOCAL_C_INCLUDES += \
    external/tremor/Tremor \
    frameworks/base/core/jni \
    frameworks/base/media/libmedia \
    frameworks/base/media/libstagefright/codecs/amrnb/enc/src \
    frameworks/base/media/libstagefright/codecs/amrnb/common \
    frameworks/base/media/libstagefright/codecs/amrnb/common/include \
    $(PV_INCLUDES) \
    $(JNI_H_INCLUDE) \
    $(call include-path-for, corecg graphics)

LOCAL_CFLAGS +=

LOCAL_LDLIBS := -lpthread

LOCAL_MODULE:= libmedia_jni

include $(BUILD_SHARED_LIBRARY)

# build libsoundpool.so
# build libaudioeffect_jni.so
include $(call all-makefiles-under,$(LOCAL_PATH))
