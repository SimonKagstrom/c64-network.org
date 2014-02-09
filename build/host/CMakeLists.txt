cmake_minimum_required (VERSION 2.6)

# ====================================
# project name and version
# ====================================
project (c64-network.org)

set (CMAKE_MODULE_PATH  ${CMAKE_MODULE_PATH}
                        ${CMAKE_CURRENT_SOURCE_DIR}/../cmake)
set (BASE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/..)

# Dependencies
find_package (PkgConfig REQUIRED)

set (PROJECT_VERSION_MAJOR  1)
set (PROJECT_VERSION_MINOR  0)
set (PROJECT_VERSION_PATCH  0)
set (PROJECT_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

set (CMAKE_MODULE_PATH  ${CMAKE_MODULE_PATH}
                        ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

pkg_check_modules(SDL2 sdl2)

set (CMAKE_CXX_FLAGS "-std=c++0x -Wall -D_GLIBCXX_USE_NANOSLEEP -DFRODO_SC -DHAVE_CONFIG_H")

set (CMAKE_BUILD_TYPE release)

add_executable (c64-network
    ../../jni/src/1541d64.cpp
    ../../jni/src/1541fs.cpp
    ../../jni/src/1541job.cpp
    ../../jni/src/1541t64.cpp
	../../jni/src/C64_SC.cpp
    ../../jni/src/CIA_SC.cpp
    ../../jni/src/CPU1541_SC.cpp
    ../../jni/src/CPUC64_SC.cpp
    ../../jni/src/CPU_common.cpp
	../../jni/src/Display.cpp
    ../../jni/src/IEC.cpp
    ../../jni/src/Network.cpp
	../../jni/src/Prefs.cpp
    ../../jni/src/REU.cpp
	../../jni/src/SID.cpp
    ../../jni/src/VIC_SC.cpp
	../../jni/src/d64-read.c
	../../jni/src/data_store.cpp
    ../../jni/src/gui/dialogue_box.cpp
	../../jni/src/gui/file_browser.cpp
	../../jni/src/gui/game_info.cpp
	../../jni/src/gui/gui.cpp
	../../jni/src/gui/listener.cpp
	../../jni/src/gui/menu.cpp
	../../jni/src/gui/menu_messages.c
	../../jni/src/gui/network_server_messages.cpp
	../../jni/src/gui/status_bar.cpp
	../../jni/src/gui/virtual_keyboard.cpp
    ../../jni/src/gui/widget.cpp
	../../jni/src/main.cpp
	../../jni/src/timer.cpp
	../../jni/src/utils.cpp
)

include_directories(
	../../jni/src/gui
	../../jni/src/
	/home/ska/local/include/SDL2/
	${SDL2_INCLUDE_DIRS}
	)

target_link_libraries(c64-network
	${SDL2_LIBRARIES}
	/home/ska/local/lib/libSDL2_ttf.a
	freetype
	png
	SDL2_image
	)
