package com.google.ads.interactivemedia.v3.b.a;

import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.b.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class d {
    private String adTagUrl;
    private String adsResponse;
    private Map companionSlots;
    private String env;
    private Map extraParameters;
    private String network;
    private ImaSdkSettings settings;

    public d(AdsRequest adsRequest, String str, String str2, ImaSdkSettings imaSdkSettings) {
        this.adTagUrl = adsRequest.getAdTagUrl();
        this.adsResponse = adsRequest.getAdsResponse();
        this.env = str;
        this.network = str2;
        this.extraParameters = adsRequest.getExtraParameters();
        this.settings = imaSdkSettings;
        Map a = ((a) adsRequest.getAdDisplayContainer()).a();
        if (a != null && !a.isEmpty()) {
            this.companionSlots = new HashMap();
            Iterator it = a.keySet().iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                CompanionAdSlot companionAdSlot = (CompanionAdSlot) a.get(str3);
                this.companionSlots.put(str3, companionAdSlot.getWidth() + "x" + companionAdSlot.getHeight());
            }
        }
    }

    public final String toString() {
        String toString = new StringBuilder("adTagUrl=").append(this.adTagUrl).append(", env=").append(this.env).append(", network=").append(this.network).append(", companionSlots=").append(this.companionSlots).append(", extraParameters=").append(this.extraParameters).append(", settings=").append(this.settings).toString();
        if (this.adsResponse != null) {
            toString = toString + ", adsResponse=" + this.adsResponse;
        }
        return new StringBuilder("GsonAdsRequest [").append(toString).append("]").toString();
    }
}