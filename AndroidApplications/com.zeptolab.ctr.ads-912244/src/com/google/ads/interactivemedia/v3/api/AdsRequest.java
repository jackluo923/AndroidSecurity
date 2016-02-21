package com.google.ads.interactivemedia.v3.api;

import java.util.Map;

public interface AdsRequest {
    AdDisplayContainer getAdDisplayContainer();

    String getAdTagUrl();

    String getAdsResponse();

    String getExtraParameter(String str);

    Map getExtraParameters();

    Object getUserRequestContext();

    void setAdDisplayContainer(AdDisplayContainer adDisplayContainer);

    void setAdTagUrl(String str);

    void setAdsResponse(String str);

    void setExtraParameter(String str, String str2);

    void setUserRequestContext(Object obj);
}