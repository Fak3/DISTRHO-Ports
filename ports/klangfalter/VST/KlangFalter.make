# C++ Shared Library Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Release
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Release)
  BINDIR := ../../../bin/vst
  LIBDIR := ../../../bin/vst
  OBJDIR := intermediate/Release
  OUTDIR := ../../../bin/vst
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -O2 -Wall -Werror=deprecated-declarations -std=c++0x -Wno-multichar -Wno-write-strings -O2 -ffast-math -fomit-frame-pointer -fvisibility=hidden -fvisibility-inlines-hidden -fdata-sections -ffunction-sections
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all -L"../../../libs" -ldl -lpthread -lrt -ljuce
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4"
  TARGET := KlangFalter.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../bin/vst
  LIBDIR := ../../../bin/vst
  OBJDIR := intermediate/Debug
  OUTDIR := ../../../bin/vst
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -g -Wall -Werror=deprecated-declarations -std=c++0x -Wno-multichar -Wno-write-strings -O0 -ggdb
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` `pkg-config --libs alsa` -L"../../../libs" -ldl -lpthread -lrt -ljuce_debug
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4"
  TARGET := KlangFalter_debug.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/BinaryData.o \
	$(OBJDIR)/IRAgent.o \
	$(OBJDIR)/Convolver.o \
	$(OBJDIR)/Envelope.o \
	$(OBJDIR)/Persistence.o \
	$(OBJDIR)/ChangeNotifier.o \
	$(OBJDIR)/LevelMeasurement.o \
	$(OBJDIR)/Processor.o \
	$(OBJDIR)/Parameters.o \
	$(OBJDIR)/CookbookEq.o \
	$(OBJDIR)/IRCalculation.o \
	$(OBJDIR)/StereoWidth.o \
	$(OBJDIR)/Settings.o \
	$(OBJDIR)/FFTConvolver.o \
	$(OBJDIR)/TwoStageFFTConvolver.o \
	$(OBJDIR)/AudioFFT.o \
	$(OBJDIR)/Utilities.o \
	$(OBJDIR)/WaveformComponent.o \
	$(OBJDIR)/KlangFalterEditor.o \
	$(OBJDIR)/LevelMeter.o \
	$(OBJDIR)/IRComponent.o \
	$(OBJDIR)/IRBrowserComponent.o \
	$(OBJDIR)/SettingsDialogComponent.o \
	$(OBJDIR)/CustomLookAndFeel.o \
	$(OBJDIR)/DecibelScale.o \
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
	@echo Linking KlangFalter
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning KlangFalter
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

$(OBJDIR)/IRAgent.o: ../source/IRAgent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Convolver.o: ../source/Convolver.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Envelope.o: ../source/Envelope.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Persistence.o: ../source/Persistence.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/ChangeNotifier.o: ../source/ChangeNotifier.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LevelMeasurement.o: ../source/LevelMeasurement.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Processor.o: ../source/Processor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Parameters.o: ../source/Parameters.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/CookbookEq.o: ../source/CookbookEq.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/IRCalculation.o: ../source/IRCalculation.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/StereoWidth.o: ../source/StereoWidth.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Settings.o: ../source/Settings.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/FFTConvolver.o: ../source/FFTConvolver/FFTConvolver.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TwoStageFFTConvolver.o: ../source/FFTConvolver/TwoStageFFTConvolver.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioFFT.o: ../source/FFTConvolver/AudioFFT.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Utilities.o: ../source/FFTConvolver/Utilities.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/WaveformComponent.o: ../source/UI/WaveformComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/KlangFalterEditor.o: ../source/UI/KlangFalterEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/LevelMeter.o: ../source/UI/LevelMeter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/IRComponent.o: ../source/UI/IRComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/IRBrowserComponent.o: ../source/UI/IRBrowserComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/SettingsDialogComponent.o: ../source/UI/SettingsDialogComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/CustomLookAndFeel.o: ../source/UI/CustomLookAndFeel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/DecibelScale.o: ../source/UI/DecibelScale.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/JucePluginMain.o: ../../../libs/juce-plugin/JucePluginMain.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
