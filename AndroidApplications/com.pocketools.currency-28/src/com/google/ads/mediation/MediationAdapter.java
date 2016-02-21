package com.google.ads.mediation;

public interface MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters> {
    void destroy();

    Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    Class<SERVER_PARAMETERS> getServerParametersType();
}