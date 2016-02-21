package com.inmobi.re.controller;

import com.inmobi.re.container.mraidimpl.AudioTriggerCallback;

class d implements AudioTriggerCallback {
    final /* synthetic */ JSUtilityController a;

    d(JSUtilityController jSUtilityController) {
        this.a = jSUtilityController;
    }

    public void audioLevel(double d) {
        this.a.imWebView.raiseMicEvent(d);
    }
}