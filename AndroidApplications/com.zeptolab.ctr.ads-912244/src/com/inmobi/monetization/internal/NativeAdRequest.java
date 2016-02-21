package com.inmobi.monetization.internal;

import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.AppInfo;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.RequestBuilder;
import com.inmobi.commons.uid.UID;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

public class NativeAdRequest extends RequestBuilder {
    private String a;
    private String b;
    private String c;
    private String d;
    private HashMap e;

    public NativeAdRequest(String str) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        try {
            AppInfo.setAppId(str);
            this.a = str;
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to init Native Ad request", e);
        }
    }

    public String buildPostBody() {
        return super.buildPostBody();
    }

    public String getAdFormatPostBody() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("format=native");
        stringBuilder.append("&mk-ads=" + Initializer.getConfigParams().getNativeSdkConfigParams().getmFetchLimit());
        return stringBuilder.toString();
    }

    public String getAppId() {
        return this.a;
    }

    protected String getPublisherPostBody() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.e != null) {
            Iterator it = this.e.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                stringBuilder.append("&").append(getURLEncoded(((String) entry.getKey()).toString())).append("=").append(getURLEncoded(((String) entry.getValue()).toString()));
            }
        }
        if (!(this.c == null || this.d == null)) {
            stringBuilder.append("&").append(getURLEncoded(this.c)).append("=").append(getURLEncoded(this.d));
        }
        if (this.b != null) {
            stringBuilder.append("&p-keywords=");
            stringBuilder.append(getURLEncoded(this.b));
        }
        String toString = stringBuilder.toString();
        try {
            return toString.charAt(0) == '&' ? toString.substring(1) : toString;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e);
            return toString;
        }
    }

    public String getUidMapPostBody() {
        String str = null;
        Map hashMap = new HashMap();
        try {
            Object lTVId = AnalyticsInitializer.getConfigParams().getLTVId();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "LTVID not available yet in configs");
            uidMapWitoutXOR = str;
        }
        if (lTVId != null) {
            hashMap.put(UID.KEY_LTVID, lTVId + AdTrackerConstants.BLANK);
        }
        String uidMapWitoutXOR2 = Initializer.getConfigParams().getUID().getUidMapWitoutXOR(UserInfo.getInstance().getDeviceIDMask(), Integer.toString(new Random().nextInt()), hashMap);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("u-id-adt=");
        if (InternalSDKUtil.isLimitAdTrackingEnabled()) {
            stringBuilder.append(1);
        } else {
            stringBuilder.append(0);
        }
        if (uidMapWitoutXOR2 == null) {
            return str;
        }
        stringBuilder.append("&u-id-map=");
        stringBuilder.append(getURLEncoded(uidMapWitoutXOR2));
        str = stringBuilder.toString();
        try {
            return str.charAt(0) == '&' ? str.substring(1) : str;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e2);
            return str;
        }
    }

    public void setKeywords(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str)) {
            this.b = str;
        }
    }

    public void setRefTagParam(String str, String str2) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str) && str2 != null && !AdTrackerConstants.BLANK.equals(str2)) {
            this.c = str;
            this.d = str2;
        }
    }

    public void setRequestParams(Map map) {
        if (map != null && !map.isEmpty()) {
            if (this.e == null) {
                this.e = new HashMap();
            }
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                this.e.put(str, map.get(str));
            }
        }
    }
}