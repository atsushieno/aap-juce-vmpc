PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=vmpc2000xl
APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/vmpc-juce
JUCE_DIR=$(APP_SRC_DIR)/editables/JUCE
APP_ICON=$(APP_SRC_DIR)/src/main/resources/icon.png

PATCH_FILE=$(PWD)/aap-juce-support.patch

# JUCE is vendored by the VMPC FetchContent checkout.  Apply the AAP JUCE
# Android support patches to that checkout before configuring the app.
JUCE_PATCHES= \
	$(AAP_JUCE_DIR)/juce-patches/7.0.6/support-plugin-ui.patch \
	$(AAP_JUCE_DIR)/juce-patches/7.0.6/disable-detach-current-thread.patch \
	$(AAP_JUCE_DIR)/juce-patches/7.0.11/juce-component-peer-view-touch.patch \
	$(AAP_JUCE_DIR)/juce-patches/8.0.12/standalone-aap-factory-weak-fallback.patch

JUCE_PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
