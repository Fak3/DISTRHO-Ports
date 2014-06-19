/*
  ==============================================================================

    This file was auto-generated by the Jucer!

    It contains the basic startup code for a Juce application.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"


//==============================================================================
TheFunctionAudioProcessorEditor::TheFunctionAudioProcessorEditor (TheFunctionAudioProcessor* ownerFilter)
    : AudioProcessorEditor (ownerFilter)
{
    // This is where our plugin's editor size is set.
    setSize (250, 300);

// Gain Slider
	addAndMakeVisible (&gainSlider);
    gainSlider.setSliderStyle (Slider::RotaryVerticalDrag);
    gainSlider.addListener (this);
    gainSlider.setRange (0.0, 1.0, 0.001);
	gainSlider.setTextBoxStyle(Slider::NoTextBox, false, 0, 0);

	//gainSlider.setPopupDisplayEnabled(true,0);
	gainSlider.setReadoutType("gain");

// Gain L Slider
	addAndMakeVisible (&gainLSlider);
    gainLSlider.setSliderStyle (Slider::RotaryVerticalDrag);
    gainLSlider.addListener (this);
    gainLSlider.setRange (0.0, 1.0, 0.001);
	gainLSlider.setTextBoxStyle(Slider::NoTextBox, false, 0, 0);

	gainLSlider.setPopupDisplayEnabled(true,0);
	gainLSlider.setReadoutType("gain");

// Pan L Slider
	addAndMakeVisible (&panLSlider);
    panLSlider.setSliderStyle (Slider::RotaryVerticalDrag);
    panLSlider.addListener (this);
    panLSlider.setRange (0.0, 1.0, 0.001);
	panLSlider.setTextBoxStyle(Slider::NoTextBox, false, 0, 0);

	panLSlider.setPopupDisplayEnabled(true,0);
	panLSlider.setReadoutType("pan");

// Pan R Slider
	addAndMakeVisible (&panRSlider);
    panRSlider.setSliderStyle (Slider::RotaryVerticalDrag);
    panRSlider.addListener (this);
    panRSlider.setRange (0.0, 1.0, 0.001);
	panRSlider.setTextBoxStyle(Slider::NoTextBox, false, 0, 0);

	panRSlider.setPopupDisplayEnabled(true,0);
	panRSlider.setReadoutType("pan");

// Gain R Slider
	addAndMakeVisible (&gainRSlider);
    gainRSlider.setSliderStyle (Slider::RotaryVerticalDrag);
    gainRSlider.addListener (this);
    gainRSlider.setRange (0.0, 1.0, 0.001);
	gainRSlider.setTextBoxStyle(Slider::NoTextBox, false, 0, 0);

	gainRSlider.setPopupDisplayEnabled(true,0);
	gainRSlider.setReadoutType("gain");

// Phase Button
	addAndMakeVisible (&phaseButtonL);
    phaseButtonL.addListener (this);
	phaseButtonL.setClickingTogglesState(true);
	phaseButtonL.setConnectedEdges(15);

	addAndMakeVisible (&phaseButtonR);
	phaseButtonR.addListener (this);
	phaseButtonR.setClickingTogglesState(true);
	phaseButtonR.setConnectedEdges(15);

// Initialisations
	startTimer (50);
	backgroundGUI = ImageFileFormat::loadFrom (TheFunctionBackground::thefunctiongui_png, TheFunctionBackground::thefunctiongui_pngSize);


}

TheFunctionAudioProcessorEditor::~TheFunctionAudioProcessorEditor()
{
	gainSlider.removeListener(this);
	gainLSlider.removeListener(this);
	gainRSlider.removeListener(this);
	panLSlider.removeListener(this);
	panRSlider.removeListener(this);
	phaseButtonL.removeListener(this);
	phaseButtonR.removeListener(this);
	removeAllChildren();
}

//==============================================================================
void TheFunctionAudioProcessorEditor::paint (Graphics& g)
{
    g.fillAll (Colours::white);
    g.setColour (Colours::black);
    g.setFont (15.0f);
	g.drawImage(backgroundGUI,0,0,475,275,0,0,475,275,false);
}


void TheFunctionAudioProcessorEditor::resized()
{

	gainSlider.setBounds (75, 235, 40, 40);

	panLSlider.setBounds (115, 84 , 40, 40);
	panRSlider.setBounds (115, 174 , 40, 40);

    gainLSlider.setBounds (175, 84 , 40, 40);
    gainRSlider.setBounds (175, 174 , 40, 40);

	phaseButtonL.setBounds (80,94 ,20,20);
	phaseButtonR.setBounds (80,184 ,20,20);

}

void TheFunctionAudioProcessorEditor::sliderValueChanged (Slider* slider)
{
	    // It's vital to use setParameterNotifyingHost to change any parameters that are automatable
        // by the host, rather than just modifying them directly, otherwise the host won't know
        // that they've changed.

    if (slider == &gainSlider)
    {
         getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::gainParam,
                                                   (float) gainSlider.getValue());
    }
	if (slider == &gainLSlider)
    {
         getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::gainLParam,
                                                   (float) gainLSlider.getValue());
    }
	if (slider == &gainRSlider)
    {
         getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::gainRParam,
                                                   (float) gainRSlider.getValue());
    }
	if (slider == &panLSlider)
    {
         getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::panLParam,
                                                   (float) panLSlider.getValue());
    }
	if (slider == &panRSlider)
    {
         getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::panRParam,
                                                   (float) panRSlider.getValue());
    }

}

void TheFunctionAudioProcessorEditor::buttonClicked (Button* button)
{
     // It's vital to use setParameterNotifyingHost to change any parameters that are automatable
     // by the host, rather than just modifying them directly, otherwise the host won't know
     // that they've changed.

    if (button == &phaseButtonL)
    {
        getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::phaseLParam, phaseButtonL.getToggleState() ? 1.0 : 0.0);
    }
    else if (button == &phaseButtonR)
    {
        getProcessor()->setParameterNotifyingHost (TheFunctionAudioProcessor::phaseRParam, phaseButtonR.getToggleState() ? 1.0 : 0.0);
    }
}

void TheFunctionAudioProcessorEditor::timerCallback()
{
    TheFunctionAudioProcessor* ourProcessor = getProcessor();

    gainSlider.setValue (ourProcessor->gain, dontSendNotification);
    gainLSlider.setValue (ourProcessor->gainL, dontSendNotification);
    gainRSlider.setValue (ourProcessor->gainR, dontSendNotification);
    panLSlider.setValue (ourProcessor->panL, dontSendNotification);
    panRSlider.setValue (ourProcessor->panR, dontSendNotification);

    phaseButtonL.setToggleState(ourProcessor->phaseL >= 0.5, dontSendNotification);
    phaseButtonR.setToggleState(ourProcessor->phaseR >= 0.5, dontSendNotification);
}
