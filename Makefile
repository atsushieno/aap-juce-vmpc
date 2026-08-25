PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=vmpc2000xl
APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/vmpc-juce
APP_ICON=$(APP_SRC_DIR)/src/main/resources/icon.png

PATCH_FILE=$(PWD)/aap-juce-support.patch

BUILD_USES_FETCHCONTENT=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
