/*
  ==============================================================================

    This file was auto-generated by the Jucer!

    It contains the basic startup code for a Juce application.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
ThePilgrimAudioProcessorEditor::ThePilgrimAudioProcessorEditor (ThePilgrimAudioProcessor* ownerFilter)
    : AudioProcessorEditor (ownerFilter)
{
    // This is where our plugin's editor size is set.
    setSize (443, 300);


	bgImage = ImageFileFormat::loadFrom (BackgroundImage::gui_png, BackgroundImage::gui_pngSize);
	// Sliders
	filterSlider.addListener(this);
	filterSlider.setRange(0.0, 1.0, 0.001);
	filterSlider.setKnobType(Knob::dualFilterType);
	addAndMakeVisible (&filterSlider);

	mixSlider.addListener(this);
	mixSlider.setRange(0.0, 1.0, 0.001);
	mixSlider.setKnobType(Knob::mixType);
	addAndMakeVisible (&mixSlider);

	startTimer (50);
}

ThePilgrimAudioProcessorEditor::~ThePilgrimAudioProcessorEditor()
{
}

//==============================================================================
void ThePilgrimAudioProcessorEditor::paint (Graphics& g)
{
    g.drawImage(bgImage, 0, 0, 443, 300, 0, 0, 443, 300, false);
}

void ThePilgrimAudioProcessorEditor::resized()
{
    filterSlider.setBounds(106,101,90,150);
    mixSlider.setBounds(246,101,90,150);
}

void ThePilgrimAudioProcessorEditor::sliderValueChanged (Slider *slider)
{
    if (slider == &filterSlider)
    {
        getProcessor()->setParameterNotifyingHost (getProcessor()->filterFreqParam,	float (filterSlider.getValue()));
    }
    else if (slider == &mixSlider)
    {
        getProcessor()->setParameterNotifyingHost (getProcessor()->mixParam,		float (mixSlider.getValue()));
    }
}

void ThePilgrimAudioProcessorEditor::timerCallback()
{
    filterSlider.setValue (getProcessor()->filterParameter.getValue(), dontSendNotification);
    mixSlider.setValue (getProcessor()->mixParameter.getValue(), dontSendNotification);
}
