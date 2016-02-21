package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import java.util.HashMap;
import java.util.Map;

public final class j implements AdsRequest {
    private String a;
    private AdDisplayContainer b;
    private Map c;
    private String d;
    private transient Object e;

    public final AdDisplayContainer getAdDisplayContainer() {
        return this.b;
    }

    public final String getAdTagUrl() {
        return this.a;
    }

    public final String getAdsResponse() {
        return this.d;
    }

    public final String getExtraParameter(String str) {
        return this.c == null ? null : (String) this.c.get(str);
    }

    public final Map getExtraParameters() {
        return this.c;
    }

    public final Object getUserRequestContext() {
        return this.e;
    }

    public final void setAdDisplayContainer(AdDisplayContainer adDisplayContainer) {
        this.b = adDisplayContainer;
    }

    public final void setAdTagUrl(String str) {
        this.a = str;
    }

    public final void setAdsResponse(String str) {
        this.d = str;
    }

    public final void setExtraParameter(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        this.c.put(str, str2);
    }

    public final void setUserRequestContext(Object obj) {
        this.e = obj;
    }
}