package com.google.ads.mediation.admob;

import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.MediationServerParameters.Parameter;

public final class AdMobAdapterServerParameters extends MediationServerParameters {
    @Parameter(a = "pubid")
    public String a;
    @Parameter(a = "mad_hac", b = false)
    public String b;

    public AdMobAdapterServerParameters() {
        this.b = null;
    }
}