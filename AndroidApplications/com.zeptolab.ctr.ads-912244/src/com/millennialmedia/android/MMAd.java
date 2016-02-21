package com.millennialmedia.android;

public interface MMAd {
    String getApid();

    boolean getIgnoresDensityScaling();

    RequestListener getListener();

    MMRequest getMMRequest();

    void setApid(String str);

    void setIgnoresDensityScaling(boolean z);

    void setListener(RequestListener requestListener);

    void setMMRequest(MMRequest mMRequest);
}