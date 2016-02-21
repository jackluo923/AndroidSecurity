package com.heyzap.house.model;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.AttributionHandler;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.http.Base64;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public abstract class AdModel {
    public static String DEFAULT_TAG_NAME;
    public static String FORMAT;
    public String actionUrl;
    private int adUnit;
    private Map additionalEventParams;
    private Integer creativeId;
    protected String creativeType;
    private long fetchTime;
    private String gamePackage;
    private String htmlData;
    protected String impressionId;
    private Boolean isReady;
    protected int requiredOrientation;
    private Boolean sentClick;
    private Boolean sentImpression;
    private Boolean sentIncentiveComplete;
    private String strategy;
    private String tag;
    private long ttl;
    public String userIdentifier;

    public static interface ModelPostFetchCompleteListener {
        void onComplete(AdModel adModel, Throwable th);
    }

    public static class HtmlAssetFetcher {
        public static void fetch(AdModel adModel, GenericCallback genericCallback) {
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
            Object htmlData = adModel.getHtmlData();
            List arrayList = new ArrayList();
            List arrayList2 = new ArrayList();
            Map hashMap = new HashMap();
            Map hashMap2 = new HashMap();
            Matcher matcher = Pattern.compile("url\\((\"[^\"]+\")\\)").matcher(htmlData);
            while (matcher.find()) {
                String group = matcher.group(1);
                arrayList.add(group.substring(1, group.length() - 1));
            }
            matcher = Pattern.compile("img.*src=\"([^\"]+)\"").matcher(adModel.getHtmlData());
            while (matcher.find()) {
                arrayList.add(matcher.group(1));
            }
            new d(arrayList, hashMap, arrayList2, hashMap2, htmlData, adModel, genericCallback).execute(new Void[0]);
        }

        private static String getBase64FromUrl(String str) {
            URL url = new URL(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream openStream = url.openStream();
            byte[] bArr = new byte[65536];
            while (true) {
                int read = openStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            String str2 = new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0));
            if (openStream != null) {
                try {
                    openStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return str2;
        }
    }

    static {
        FORMAT = null;
        DEFAULT_TAG_NAME = "default";
    }

    public AdModel(JSONObject jSONObject) {
        this.sentImpression = Boolean.valueOf(false);
        this.sentIncentiveComplete = Boolean.valueOf(false);
        this.sentClick = Boolean.valueOf(false);
        this.ttl = 0;
        this.fetchTime = System.currentTimeMillis();
        this.requiredOrientation = 0;
        this.additionalEventParams = new HashMap();
        this.isReady = Boolean.valueOf(false);
        this.strategy = jSONObject.optString("ad_strategy", this.strategy);
        this.gamePackage = jSONObject.optString("promoted_game_package", AdTrackerConstants.BLANK);
        this.impressionId = jSONObject.getString(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY);
        this.actionUrl = jSONObject.optString("click_url", null);
        this.ttl = jSONObject.optLong("refresh_time", 0) * 1000;
        this.creativeId = Integer.valueOf(jSONObject.optInt("creative_id", 0));
    }

    public static String normalizeTag(String str) {
        if (str == null || str.trim().equals(AdTrackerConstants.BLANK)) {
            str = DEFAULT_TAG_NAME;
        }
        return str.trim();
    }

    public static void onManyImpressions(Context context, List list) {
        if (list.size() != 0) {
            int adUnit;
            Iterable arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdModel adModel = (AdModel) it.next();
                if (!adModel.sentImpression.booleanValue()) {
                    arrayList.add(adModel.getImpressionId());
                }
            }
            try {
                adUnit = ((AdModel) list.get(0)).getAdUnit();
            } catch (Exception e) {
                adUnit = 0;
            }
            String adUnitName = Manager.adUnitName(adUnit);
            if (arrayList.size() == 0) {
                Logger.log("Already sent impression(s)");
            } else {
                RequestParams requestParams = new RequestParams();
                requestParams.put("impression_ids", TextUtils.join(",", arrayList));
                requestParams.put("ad_unit", adUnitName);
                APIClient.post(context, Manager.AD_SERVER + "/register_impression", requestParams, new c(list));
            }
        }
    }

    public abstract void cleanup(Context context);

    public abstract void doPostFetchActions(Context context, ModelPostFetchCompleteListener modelPostFetchCompleteListener);

    public int getAdUnit() {
        return this.adUnit;
    }

    public Map getAdditionalEventParams() {
        return this.additionalEventParams;
    }

    public int getCreativeId() {
        return this.creativeId.intValue();
    }

    public String getCreativeType() {
        return this.creativeType;
    }

    protected RequestParams getEventRequestParams() {
        RequestParams requestParams;
        requestParams = this.additionalEventParams != null ? new RequestParams(this.additionalEventParams) : new RequestParams();
        requestParams.put(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY, getImpressionId());
        requestParams.put("promoted_game_package", getGamePackage());
        if (this.tag != null) {
            requestParams.put("tag", normalizeTag(this.tag));
        }
        return requestParams;
    }

    public String getFormat() {
        return this.creativeType;
    }

    public String getGamePackage() {
        return this.gamePackage;
    }

    public String getHtmlData() {
        return this.htmlData;
    }

    public String getImpressionId() {
        return this.impressionId;
    }

    public int getRequiredOrientation() {
        return this.requiredOrientation;
    }

    public String getTag() {
        return this.tag;
    }

    public Boolean hasSentImpression() {
        return this.sentImpression;
    }

    public Boolean isExpired() {
        boolean z = false;
        if (this.ttl <= 0) {
            return Boolean.valueOf(false);
        }
        if (System.currentTimeMillis() > this.fetchTime + this.ttl) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public Boolean isInstalled(Context context) {
        return Boolean.valueOf(Utils.packageIsInstalled(this.gamePackage, context.getApplicationContext()));
    }

    public Boolean isReady() {
        return this.isReady;
    }

    public Boolean onClick(Context context, String str) {
        if (this.sentClick.booleanValue()) {
            Logger.log("Already sent click successfully.");
            return Boolean.valueOf(true);
        } else if (System.currentTimeMillis() - Manager.getInstance().lastClickedTime < Manager.maxClickDifference) {
            return Boolean.valueOf(false);
        } else {
            RequestParams eventRequestParams = getEventRequestParams();
            if (str != null) {
                eventRequestParams.put("custom_game_package", str);
            }
            APIClient.post(context.getApplicationContext(), Manager.AD_SERVER + "/register_click", eventRequestParams, new a(this));
            return Boolean.valueOf(true);
        }
    }

    public void onClick(Context context) {
        onClick(context, null);
    }

    public void onImpression(Context context) {
        if (this.sentImpression.booleanValue()) {
            Logger.log("Already sent impression successfully.");
        } else {
            AttributionHandler.getInstance().didImpression(this);
            APIClient.post(context.getApplicationContext(), Manager.AD_SERVER + "/register_impression", getEventRequestParams(), new b(this));
        }
    }

    public Boolean sentImpression() {
        return this.sentImpression;
    }

    public void setAdUnit(int i) {
        this.adUnit = i;
    }

    public void setAdditionalEventParams(Map map) {
        this.additionalEventParams = map;
    }

    public void setHtmlData(String str) {
        this.htmlData = str;
    }

    public void setImpressionId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Invalid impression ID");
        }
        this.impressionId = str;
    }

    public void setIsReady(Boolean bool) {
        this.isReady = bool;
    }

    public void setSentImpression(Boolean bool) {
        this.sentImpression = bool;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public Boolean supportsCurrentOrientation(Context context) {
        boolean z;
        z = this.requiredOrientation == 0 || context.getResources().getConfiguration().orientation == this.requiredOrientation;
        return Boolean.valueOf(z);
    }

    public String toString() {
        return String.format("<%s T:%s I:%s CID: %s>", new Object[]{getClass().getName(), getCreativeType(), getImpressionId(), String.valueOf(this.creativeId)});
    }
}