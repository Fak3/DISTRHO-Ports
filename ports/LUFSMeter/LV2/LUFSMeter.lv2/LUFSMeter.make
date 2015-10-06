# C++ Shared Library Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Release
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Release)
  BINDIR := ../../../bin/lv2
  LIBDIR := ../../../bin/lv2
  OBJDIR := intermediate/Release
  OUTDIR := ../../../bin/lv2/LUFSMeter.lv2
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -O2 -Wall -Werror=deprecated-declarations -std=c++0x -O2 -ffast-math -fomit-frame-pointer -fvisibility=hidden -fvisibility-inlines-hidden -fdata-sections -ffunction-sections
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all -L"../../../libs" -ldl -lpthread -lrt -ljuce
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  TARGET := LUFSMeter.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../bin/lv2
  LIBDIR := ../../../bin/lv2
  OBJDIR := intermediate/Debug
  OUTDIR := ../../../bin/lv2/LUFSMeter.lv2
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -g -Wall -Werror=deprecated-declarations -std=c++0x -O0 -ggdb
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` `pkg-config --libs alsa` -L"../../../libs" -ldl -lpthread -lrt -ljuce_debug
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  TARGET := LUFSMeter_debug.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/BinaryData.o \
	$(OBJDIR)/LUFSMeterAudioProcessorEditor.o \
	$(OBJDIR)/Ebu128LoudnessMeter.o \
	$(OBJDIR)/LUFSMeterAudioProcessor.o \
	$(OBJDIR)/SecondOrderIIRFilter.o \
	$(OBJDIR)/BackgroundVerticalLinesAndCaption.o \
	$(OBJDIR)/LoudnessHistoryGroup.o \
	$(OBJDIR)/LoudnessRangeHistory.o \
	$(OBJDIR)/LoudnessBarRangeSlider.o \
	$(OBJDIR)/MultiChannelLoudnessBar.o \
	$(OBJDIR)/LoudnessHistory.o \
	$(OBJDIR)/LoudnessNumeric.o \
	$(OBJDIR)/PreferencesPane.o \
	$(OBJDIR)/BackgroundGridCaption.o \
	$(OBJDIR)/LoudnessRangeBar.o \
	$(OBJDIR)/AnimatedSidePanel.o \
	$(OBJDIR)/LoudnessBar.o \
	$(OBJDIR)/BackgroundGrid.o \
	$(OBJDIR)/JucePluginMain.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking LUFSMeter.lv2/LUFSMeter
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning LUFSMeter.lv2/LUFSMeter
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/BinaryData.o: ../source/BinaryData.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LUFSMeterAudioProcessorEditor.o: ../source/LUFSMeterAudioProcessorEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Ebu128LoudnessMeter.o: ../source/Ebu128LoudnessMeter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LUFSMeterAudioProcessor.o: ../source/LUFSMeterAudioProcessor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/SecondOrderIIRFilter.o: ../source/filters/SecondOrderIIRFilter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/BackgroundVerticalLinesAndCaption.o: ../source/gui/BackgroundVerticalLinesAndCaption.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessHistoryGroup.o: ../source/gui/LoudnessHistoryGroup.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessRangeHistory.o: ../source/gui/LoudnessRangeHistory.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessBarRangeSlider.o: ../source/gui/LoudnessBarRangeSlider.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/MultiChannelLoudnessBar.o: ../source/gui/MultiChannelLoudnessBar.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessHistory.o: ../source/gui/LoudnessHistory.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessNumeric.o: ../source/gui/LoudnessNumeric.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PreferencesPane.o: ../source/gui/PreferencesPane.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/BackgroundGridCaption.o: ../source/gui/BackgroundGridCaption.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessRangeBar.o: ../source/gui/LoudnessRangeBar.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AnimatedSidePanel.o: ../source/gui/AnimatedSidePanel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LoudnessBar.o: ../source/gui/LoudnessBar.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/BackgroundGrid.o: ../source/gui/BackgroundGrid.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/JucePluginMain.o: ../../../libs/juce-plugin/JucePluginMain.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
