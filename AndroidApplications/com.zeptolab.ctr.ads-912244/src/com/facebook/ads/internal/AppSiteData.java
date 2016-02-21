package com.facebook.ads.internal;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class AppSiteData {
    private final String appLinkUri;
    private final String className;
    private final String fallbackUrl;
    private final List keyHashes;
    private final String marketUri;
    private final String packageName;

    private AppSiteData(String str, String str2, String str3, List list, String str4, String str5) {
        this.packageName = str;
        this.className = str2;
        this.appLinkUri = str3;
        this.keyHashes = list;
        this.marketUri = str4;
        this.fallbackUrl = str5;
    }

    public static AppSiteData fromJSONObject(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("package");
        String optString2 = jSONObject.optString("appsite");
        String optString3 = jSONObject.optString("appsite_url");
        JSONArray optJSONArray = jSONObject.optJSONArray("key_hashes");
        List arrayList = new ArrayList();
        if (optJSONArray != null) {
            int i = 0;
            while (i < optJSONArray.length()) {
                arrayList.add(optJSONArray.optString(i));
                i++;
            }
        }
        return new AppSiteData(optString, optString2, optString3, arrayList, jSONObject.optString("market_uri"), jSONObject.optString("fallback_url"));
    }

    public String getAppLinkUri() {
        return this.appLinkUri;
    }

    public String getClassName() {
        return this.className;
    }

    public String getFallbackUrl() {
        return this.fallbackUrl;
    }

    public List getKeyHashes() {
        return this.keyHashes;
    }

    public String getMarketUri() {
        return this.marketUri;
    }

    public String getPackageName() {
        return this.packageName;
    }
}