ARCHS = arm64
include $(THEOS)/makefiles/common.mk

TOOL_NAME = arm64hw
arm64hw_FILES = main.mm

include $(THEOS_MAKE_PATH)/tool.mk
