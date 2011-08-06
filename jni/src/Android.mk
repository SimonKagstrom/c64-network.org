LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL

PREFIX=/
exec_prefix = ${PREFIX}
bindir = ${exec_prefix}/bin
datadir = ${PREFIX}/share

LOCAL_CFLAGS = -DFRODO_SC -DHAVE_CONFIG_H -DDATADIR=\"$(datadir)/frodo/\" -DBINDIR=\"$(bindir)/\" -DHAVE_SDL


LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include \
	$(LOCAL_PATH)/../SDL_ttf \
	$(LOCAL_PATH)/../SDL_image \
	$(LOCAL_PATH)/../png \

# Add your application source files here...
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.cpp \
	\
	1541d64.cpp \
	1541fs.cpp \
	1541job.cpp \
	1541t64.cpp \
	C64_SC.cpp \
	CIA_SC.cpp \
	CPU1541_SC.cpp \
	CPUC64_SC.cpp \
	CPU_common.cpp \
	Display.cpp \
	IEC.cpp \
	Network.cpp \
	Prefs.cpp \
	REU.cpp \
	SAM.cpp \
	SID.cpp \
	VIC_SC.cpp \
	d64-read.c \
	data_store.cpp \
	main.cpp \
	timer.cpp \
	utils.cpp \
	\
	gui/dialogue_box.cpp \
	gui/file_browser.cpp \
	gui/game_info.cpp \
	gui/gui.cpp \
	gui/listener.cpp \
	gui/menu.cpp \
	gui/menu_messages.c \
	gui/network_server_messages.cpp \
	gui/status_bar.cpp \
	gui/virtual_keyboard.cpp \
	gui/widget.cpp \

LOCAL_SHARED_LIBRARIES := SDL SDL_image SDL_ttf
LOCAL_STATIC_LIBRARIES := png freetype

LOCAL_LDLIBS := -lz -lm -lc -llog

include $(BUILD_SHARED_LIBRARY)
