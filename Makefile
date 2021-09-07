THEOS_DEVICE_IP = 192.168.100.190
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanLS13

CleanLS13_FILES = Tweak.x
CleanLS13_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
