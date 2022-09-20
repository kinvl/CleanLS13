THEOS_DEVICE_IP = 192.168.100.190
TARGET := iphone:clang:14.5:13.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanLS13

CleanLS13_FILES = $(wildcard *.x)
CleanLS13_CFLAGS = -fobjc-arc
CleanLS13_EXTRA_FRAMEWORKS = Cephei

INSTALL_TARGET_PROCESSES = SpringBoard
SUBPROJECTS += cleanls13prefs

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "sbreload"
