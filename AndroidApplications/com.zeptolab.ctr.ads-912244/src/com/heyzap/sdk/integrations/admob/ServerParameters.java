package com.heyzap.sdk.integrations.admob;

import com.google.ads.mediation.MediationServerParameters;

public class ServerParameters extends MediationServerParameters {
    @Parameter(name = "publisher_id")
    public String publisherId;
}