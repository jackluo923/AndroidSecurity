package com.inmobi.commons.uid;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.net.AnalyticsCommon;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

public class UIDUtil {
    private static Random a;

    static {
        a = new Random();
    }

    static String a(String str) {
        if (str == null) {
            return AdTrackerConstants.BLANK;
        }
        try {
            return URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException(e);
        }
    }

    public static void bindToConnection(Map map, URLConnection uRLConnection) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            uRLConnection.addRequestProperty(str, (String) map.get(str));
        }
    }

    public static void bindToEncodedJSON(Map map, JSONObject jSONObject) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                jSONObject.put(AnalyticsCommon.getURLEncoded(str), AnalyticsCommon.getURLEncoded((String) map.get(str)));
            } catch (JSONException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "UIDUtil: Unable to bind to JSON for key " + str);
            }
        }
    }

    public static String bindToGetParam(Map map) {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append(String.format("%s=%s", new Object[]{a(str), a((String) map.get(str))}));
        }
        return stringBuilder.toString();
    }

    public static void bindToJSON(Map map, JSONObject jSONObject) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                jSONObject.put(str, map.get(str));
            } catch (JSONException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "UIDUtil: Unable to bind to JSON for key " + str);
            }
        }
    }

    public static String getEncryptedJSON(Map map) {
        JSONObject jSONObject = new JSONObject();
        bindToJSON(map, jSONObject);
        return UIDHelper.encryptRSA(jSONObject.toString());
    }

    public static String getEncryptedUid(String str) {
        return UID.getCommonsUid().getDefaultUidMap(1, str, null);
    }

    public static String getJSON(Map map) {
        JSONObject jSONObject = new JSONObject();
        bindToJSON(map, jSONObject);
        return jSONObject.toString();
    }

    public static Map getMap(Context context, UID uid) {
        Map uid2 = getUid(uid);
        String packageName = context.getPackageName();
        Object obj = AdTrackerConstants.BLANK;
        try {
            obj = Integer.valueOf(context.getPackageManager().getPackageInfo(packageName, 0).versionCode).toString();
        } catch (NameNotFoundException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to get app version", e);
        }
        uid2.put("u-appbid", packageName);
        uid2.put(AdTrackerConstants.APPVER, obj);
        obj = InMobi.getAppId();
        if (obj == null) {
            obj = AdTrackerConstants.BLANK;
        }
        uid2.put(AdTrackerConstants.APP_ID, obj);
        uid2.put(AdTrackerConstants.SDKVER, "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(Constants.MEDIATION_SDK_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE);
        uid2.put("ua", InternalSDKUtil.getSavedUserAgent());
        return uid2;
    }

    public static Map getUid(UID uid) {
        Map hashMap = new HashMap();
        String toString = Integer.toString(a.nextInt());
        hashMap.put(AdTrackerConstants.UIDKEY, toString);
        hashMap.put(AdTrackerConstants.UKEYVER, UIDHelper.getRSAKeyVersion());
        if (uid == null) {
            hashMap.put(AdTrackerConstants.UIDMAP, UID.getCommonsUid().getDefaultUidMap(1, toString, null));
        } else {
            hashMap.put(AdTrackerConstants.UIDMAP, uid.getUidMap(1, toString, null));
        }
        return hashMap;
    }
}