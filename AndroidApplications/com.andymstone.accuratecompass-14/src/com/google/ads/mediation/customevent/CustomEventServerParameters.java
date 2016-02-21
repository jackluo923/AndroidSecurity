package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.MediationServerParameters.Parameter;

public class CustomEventServerParameters extends MediationServerParameters {
    @Parameter(a = "label", b = true)
    public String a;
    @Parameter(a = "class_name", b = true)
    public String b;
    @Parameter(a = "parameter", b = false)
    public String c;

    public CustomEventServerParameters() {
        this.c = null;
    }
}