#!/bin/sh

ndk-build APP_STL=stlport_static $* && ant debug
