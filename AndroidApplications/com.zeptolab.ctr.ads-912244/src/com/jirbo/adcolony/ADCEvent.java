package com.jirbo.adcolony;

abstract class ADCEvent {
    ADCController controller;

    ADCEvent(ADCController aDCController) {
        this(aDCController, true);
    }

    ADCEvent(ADCController aDCController, boolean z) {
        this.controller = aDCController;
        if (z) {
            aDCController.queue_event(this);
        }
    }

    abstract void dispatch();
}