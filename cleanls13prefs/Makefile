TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = cleanls13prefs

cleanls13prefs_FILES = CPBRootListController.m
cleanls13prefs_FRAMEWORKS = UIKit
cleanls13prefs_PRIVATE_FRAMEWORKS = Preferences
cleanls13prefs_EXTRA_FRAMEWORKS += Cephei
cleanls13prefs_INSTALL_PATH = /Library/PreferenceBundles
cleanls13prefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
