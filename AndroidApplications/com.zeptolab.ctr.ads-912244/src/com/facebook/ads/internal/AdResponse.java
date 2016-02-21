package com.facebook.ads.internal;

import android.content.Context;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.media.ErrorFields;
import com.facebook.ads.AdError;
import com.inmobi.monetization.internal.NativeAdResponse;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class AdResponse {
    private static final int DEFAULT_REFRESH_INTERVAL_SECONDS = 0;
    private static final int DEFAULT_REFRESH_THRESHOLD_SECONDS = 20;
    private final List dataModels;
    private final AdError error;
    private final int refreshIntervalMillis;
    private final int refreshThresholdMillis;

    private AdResponse(int i, int i2, List list, AdError adError) {
        this.refreshIntervalMillis = i;
        this.refreshThresholdMillis = i2;
        this.dataModels = list;
        this.error = adError;
    }

    public static AdResponse parseResponse(Context context, JSONObject jSONObject) {
        AdError adError;
        int i = DEFAULT_REFRESH_INTERVAL_SECONDS;
        int optInt = jSONObject.optInt("refresh", DEFAULT_REFRESH_INTERVAL_SECONDS) * 1000;
        int optInt2 = jSONObject.optInt("refresh_threshold", DEFAULT_REFRESH_THRESHOLD_SECONDS) * 1000;
        JSONObject optJSONObject = jSONObject.optJSONObject("reason");
        adError = optJSONObject != null ? new AdError(optJSONObject.optInt("code"), optJSONObject.optString(ErrorFields.MESSAGE)) : null;
        int optInt3 = jSONObject.optInt("ad_type");
        List arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray(NativeAdResponse.KEY_ADS);
        if (optJSONArray != null && optJSONArray.length() > 0) {
            while (i < optJSONArray.length()) {
                optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    AdDataModel fromJSONObject;
                    if (optInt3 == AdType.HTML.getValue()) {
                        fromJSONObject = HtmlAdDataModel.fromJSONObject(optJSONObject.optJSONObject(i.a));
                    } else if (optInt3 == AdType.NATIVE.getValue()) {
                        fromJSONObject = NativeAdDataModel.fromJSONObject(optJSONObject.optJSONObject(Constants.NATIVE_AD_METADATA_ELEMENT));
                    } else {
                        fromJSONObject = null;
                    }
                    if (!(fromJSONObject == null || AdInvalidationUtils.shouldInvalidate(context, fromJSONObject))) {
                        arrayList.add(fromJSONObject);
                    }
                }
                i++;
            }
            if (arrayList.isEmpty()) {
                adError = AdError.NO_FILL;
            }
        }
        return new AdResponse(optInt, optInt2, arrayList, adError);
    }

    public AdDataModel getDataModel() {
        return (this.dataModels == null || this.dataModels.isEmpty()) ? null : (AdDataModel) this.dataModels.get(DEFAULT_REFRESH_INTERVAL_SECONDS);
    }

    public AdError getError() {
        return this.error;
    }

    public int getRefreshIntervalMillis() {
        return this.refreshIntervalMillis;
    }

    public int getRefreshThresholdMillis() {
        return this.refreshThresholdMillis;
    }
}