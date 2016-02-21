package com.heyzap.house.request;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventType;
import com.brightcove.player.media.MediaService;
import com.heyzap.house.handler.InterstitialFetchHandler;
import com.heyzap.house.handler.NativeFetchHandler;
import com.heyzap.house.impl.AbstractFetchHandler;
import com.heyzap.house.model.AdModel;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Connectivity;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.sdk.ads.HeyzapAds;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

public class FetchRequest {
    private int adUnit;
    private Map additionalParams;
    private Integer campaignId;
    private Integer creativeId;
    private ArrayList creativeTypes;
    private Boolean debugEnabled;
    private String endpoint;
    private String host;
    private int maxCount;
    private Boolean randomStrategyEnabled;
    private String rejectedImpressionId;
    private int remainingTries;
    private JSONObject response;
    private OnFetchResponse responseHandler;
    private Boolean secure;
    private String tag;

    public static interface OnFetchResponse {
        void onFetchResponse(List list, FetchRequest fetchRequest, Throwable th);
    }

    public FetchRequest(int i, String str, ArrayList arrayList) {
        this.response = null;
        this.remainingTries = 3;
        this.host = APIClient.DOMAIN;
        this.endpoint = "/in_game_api/ads/fetch_ad";
        this.secure = Boolean.valueOf(false);
        this.rejectedImpressionId = null;
        this.additionalParams = new HashMap();
        this.creativeId = Integer.valueOf(0);
        this.campaignId = Integer.valueOf(0);
        this.maxCount = 1;
        this.debugEnabled = Boolean.valueOf(false);
        this.randomStrategyEnabled = Boolean.valueOf(false);
        this.adUnit = i;
        this.tag = str;
        this.creativeTypes = arrayList;
    }

    public void execute(Context context) {
        if (isValid().booleanValue()) {
            AbstractFetchHandler interstitialFetchHandler;
            incrementTries();
            switch (getAdUnit()) {
                case GoogleScorer.CLIENT_GAMES:
                case GoogleScorer.CLIENT_PLUS:
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    interstitialFetchHandler = new InterstitialFetchHandler(context, this);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    interstitialFetchHandler = new NativeFetchHandler(context, this);
                    break;
                default:
                    if (this.responseHandler != null) {
                        this.responseHandler.onFetchResponse(null, this, new Throwable("bad_request"));
                        return;
                    } else {
                        return;
                    }
            }
            interstitialFetchHandler.setCallback(this.responseHandler);
            ExecutorPool.getInstance().execute(new a(this, context, interstitialFetchHandler));
        } else if (this.responseHandler != null) {
            this.responseHandler.onFetchResponse(null, this, new Throwable("bad_request"));
        }
    }

    public int getAdUnit() {
        return this.adUnit;
    }

    public Integer getCampaignId() {
        return this.campaignId;
    }

    public Integer getCreativeId() {
        return this.creativeId;
    }

    public Boolean getDebugEnabled() {
        return this.debugEnabled;
    }

    public Integer getMaxCount() {
        return Integer.valueOf(this.maxCount);
    }

    public RequestParams getParams(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context is NULL.");
        }
        int i;
        RequestParams requestParams = new RequestParams(this.additionalParams);
        if (HeyzapAds.mediator != null) {
            requestParams.put("sdk_mediator", HeyzapAds.mediator);
        }
        if (HeyzapAds.framework != null) {
            requestParams.put("sdk_framework", HeyzapAds.framework);
        }
        switch (this.adUnit) {
            case GoogleScorer.CLIENT_PLUS:
                requestParams.put("ad_unit", "incentivized");
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                requestParams.put("ad_unit", Event.VIDEO);
                break;
            default:
                requestParams.put("ad_unit", "interstitial");
                break;
        }
        requestParams.put("creative_type", TextUtils.join(",", this.creativeTypes));
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        requestParams.put("connection_type", Connectivity.connectionType(context));
        requestParams.put("device_dpi", Float.toString(displayMetrics.density));
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            requestParams.put("device_free_bytes", Long.toString(((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())));
        } catch (Exception e) {
            requestParams.put("device_free_bytes", "0");
        }
        int i2 = displayMetrics.heightPixels;
        int i3 = displayMetrics.widthPixels;
        if (requestParams.containsKey("orientation").booleanValue()) {
            boolean z;
            String str = requestParams.get("orientation");
            z = (str.equals(DeviceInfo.ORIENTATION_LANDSCAPE) && i2 > i3) || (str.equals(DeviceInfo.ORIENTATION_PORTRAIT) && i3 > i2);
            if (Boolean.valueOf(z).booleanValue()) {
                i = displayMetrics.heightPixels;
                i3 = displayMetrics.widthPixels;
            } else {
                i = i3;
                i3 = i2;
            }
        } else {
            requestParams.put("orientation", displayMetrics.widthPixels > displayMetrics.heightPixels ? DeviceInfo.ORIENTATION_LANDSCAPE : DeviceInfo.ORIENTATION_PORTRAIT);
            i = i3;
            i3 = i2;
        }
        requestParams.put("device_width", String.valueOf(i));
        requestParams.put("device_height", String.valueOf(i3));
        requestParams.put("supported_features", "chromeless,js_visibility_callback");
        if (this.tag != null) {
            requestParams.put("tag", AdModel.normalizeTag(this.tag));
        } else {
            requestParams.put("tag", AdModel.DEFAULT_TAG_NAME);
        }
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            requestParams.put("locale_country", locale.getCountry().toLowerCase(Locale.US));
            requestParams.put("locale_lang", locale.getLanguage().toLowerCase(Locale.US));
        }
        if (this.rejectedImpressionId != null) {
            requestParams.put("rejected_impression_id", this.rejectedImpressionId);
        }
        if (this.maxCount > 1) {
            requestParams.put("max_count", Integer.valueOf(this.maxCount));
        }
        if (this.creativeId.intValue() > 0) {
            requestParams.put("creative_id", this.creativeId);
        }
        if (this.campaignId.intValue() > 0) {
            requestParams.put("campaign_id", this.campaignId);
        }
        if (this.debugEnabled.booleanValue()) {
            requestParams.put(EventType.DEBUG, "1");
        }
        if (this.randomStrategyEnabled.booleanValue()) {
            requestParams.put("use_random_strategy_v2", "1");
        }
        return requestParams;
    }

    public Boolean getRandomStrategyEnabled() {
        return this.randomStrategyEnabled;
    }

    public String getTag() {
        return this.tag;
    }

    public String getUrl() {
        String str;
        str = this.secure.booleanValue() ? "https" : MediaService.DEFAULT_MEDIA_DELIVERY;
        return String.format("%s://%s%s", new Object[]{str, this.host, this.endpoint});
    }

    public void incrementTries() {
        this.remainingTries--;
    }

    public Boolean isValid() {
        return Boolean.valueOf(this.remainingTries > 0);
    }

    public void setAdditionalParams(Map map) {
        this.additionalParams = map;
    }

    public void setCampaignId(Integer num) {
        this.campaignId = num;
    }

    public void setCreativeId(Integer num) {
        this.creativeId = num;
    }

    public void setDebugEnabled(Boolean bool) {
        this.debugEnabled = bool;
    }

    public void setMaxCount(int i) {
        this.maxCount = i;
    }

    public void setRandomStrategyEnabled(Boolean bool) {
        this.randomStrategyEnabled = bool;
    }

    public void setRejectedImpressionId(String str) {
        this.rejectedImpressionId = str;
    }

    public void setResponseHandler(OnFetchResponse onFetchResponse) {
        this.responseHandler = onFetchResponse;
    }
}