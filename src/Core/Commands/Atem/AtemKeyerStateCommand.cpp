#include "AtemKeyerStateCommand.h"

#include <QtCore/QXmlStreamWriter>

AtemKeyerStateCommand::AtemKeyerStateCommand(QObject* parent)
    : AbstractCommand(parent)
{
}

const QString& AtemKeyerStateCommand::getMixerStep() const
{
    return this->mixerStep;
}

const QString& AtemKeyerStateCommand::getKeyer() const
{
    return this->keyer;
}

bool AtemKeyerStateCommand::getState() const
{
    return this->state;
}

bool AtemKeyerStateCommand::getTriggerOnNext() const
{
    return this->triggerOnNext;
}

void AtemKeyerStateCommand::setKeyer(const QString& keyer)
{
    this->keyer = keyer;
    emit keyerChanged(this->keyer);
}

void AtemKeyerStateCommand::setState(bool state)
{
    this->state = state;
    emit stateChanged(this->state);
}

void AtemKeyerStateCommand::setTriggerOnNext(bool triggerOnNext)
{
    this->triggerOnNext = triggerOnNext;
    emit triggerOnNextChanged(this->triggerOnNext);
}

void AtemKeyerStateCommand::setMixerStep(const QString& mixerStep)
{
    this->mixerStep = mixerStep;
    emit mixerStepChanged(this->mixerStep);
}

void AtemKeyerStateCommand::readProperties(boost::property_tree::wptree& pt)
{
    AbstractCommand::readProperties(pt);

    setKeyer(QString::fromStdWString(pt.get(L"keyer", Atem::DEFAULT_KEYER.toStdWString())));
    setState(pt.get(L"state", Atem::DEFAULT_KEYER_STATE));
    setTriggerOnNext(pt.get(L"triggeronnext", Atem::DEFAULT_TRIGGER_ON_NEXT));
    setMixerStep(QString::fromStdWString(pt.get(L"mixerstep", Atem::DEFAULT_MIXER_STEP.toStdWString())));
}

void AtemKeyerStateCommand::writeProperties(QXmlStreamWriter& writer)
{
    AbstractCommand::writeProperties(writer);

    writer.writeTextElement("keyer", this->getKeyer());
    writer.writeTextElement("state", (getState() == true) ? "true" : "false");
    writer.writeTextElement("triggeronnext", (getTriggerOnNext() == true) ? "true" : "false");
    writer.writeTextElement("mixerstep", this->getMixerStep());
}
