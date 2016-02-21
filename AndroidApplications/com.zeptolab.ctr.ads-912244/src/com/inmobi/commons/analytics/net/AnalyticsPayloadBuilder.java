package com.inmobi.commons.analytics.net;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE;
import com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thirdparty.Base62;
import com.inmobi.monetization.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AnalyticsPayloadBuilder {
    private JSONArray a(List list) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AnalyticsEvent analyticsEvent = (AnalyticsEvent) it.next();
            JSONObject jSONObject = new JSONObject();
            try {
                String fromBase10 = Base62.fromBase10(analyticsEvent.getEventId());
                if (fromBase10 != null) {
                    jSONObject.put("eid", fromBase10);
                }
                jSONObject.put("t", analyticsEvent.getEventType());
                jSONObject.put(AdTrackerConstants.TIMESTAMP, analyticsEvent.getEventTimeStamp());
                jSONObject.put("ld", analyticsEvent.getEventLevelId());
                jSONObject.put("ls", analyticsEvent.getEventLevelStatus());
                jSONObject.put("ln", analyticsEvent.getEventLevelName());
                if (analyticsEvent.getEventAttributeMap() != null) {
                    try {
                        jSONObject.put(AnalyticsSQLiteHelper.EVENT_LIST_AM, new JSONObject(analyticsEvent.getEventAttributeMap()));
                    } catch (Exception e) {
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Events attribute map is incorrect. Not sending custom event map.");
                    }
                }
                jSONObject.put("tt", analyticsEvent.getEventTimeTaken());
                if (analyticsEvent.getEventAttemptCount() != null) {
                    jSONObject.put("ac", 1);
                }
                jSONObject.put("at", analyticsEvent.getEventAttemptTime());
                jSONObject.put("en", analyticsEvent.getEventCustomName());
                if (AnalyticsEvent.TYPE_TAG_TRANSACTION.equals(analyticsEvent.getEventType())) {
                    jSONObject.put("in", analyticsEvent.getTransactionItemName());
                    int transactionItemCount = analyticsEvent.getTransactionItemCount();
                    if (transactionItemCount > 0) {
                        jSONObject.put("n", transactionItemCount);
                    }
                    jSONObject.put(AnalyticsEvent.EVENT_ID, analyticsEvent.getTransactionItemDescription());
                    jSONObject.put("ip", analyticsEvent.getTransactionItemPrice());
                    jSONObject.put("c", analyticsEvent.getTransactionCurrencyCode());
                    jSONObject.put(AnalyticsEvent.TYPE_TAG_TRANSACTION, analyticsEvent.getTransactionProductId());
                    jSONObject.put("ti", analyticsEvent.getTransactionId());
                    transactionItemCount = analyticsEvent.getTransactionItemType();
                    if (TRANSACTION_ITEM_TYPE.INVALID.getValue() != transactionItemCount) {
                        jSONObject.put("it", transactionItemCount);
                    }
                    int transactionStatus = analyticsEvent.getTransactionStatus();
                    if (TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue() != transactionStatus) {
                        jSONObject.put("tp", transactionStatus);
                    }
                }
            } catch (Exception e2) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Creation of events json object failed", e2);
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private JSONObject a(String str, long j, Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ft", SessionInfo.getFirstTime());
            jSONObject.put("a", context.getPackageName());
            jSONObject.put("an", AnalyticsUtils.getApplicationName(context));
            jSONObject.put("av", AnalyticsUtils.getAppVersion(context));
            jSONObject.put("p", "android");
            jSONObject.put("pv", VERSION.RELEASE);
            jSONObject.put("ca", InternalSDKUtil.getConnectivityType(context));
            jSONObject.put("ma", Build.MANUFACTURER);
            jSONObject.put("mo", Build.MODEL);
            jSONObject.put(AnalyticsEvent.TYPE_START_SESSION, str);
            jSONObject.put("sts", j);
            jSONObject.put("sv", Constants.MEDIATION_SDK_VERSION);
            jSONObject.put("co", AnalyticsUtils.getCountryISO(context));
        } catch (JSONException e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Creation of session object failed", e);
        }
        return jSONObject;
    }

    private JSONObject a(JSONObject jSONObject, JSONArray jSONArray) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("session", jSONObject);
        } catch (JSONException e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Session addition to payload failed");
        }
        try {
            jSONObject2.put("events", jSONArray);
        } catch (JSONException e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Events addition to payload failed");
        }
        return jSONObject2;
    }

    public AnalyticsPayload getPayloadList(List list, Context context) {
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "PayloadBuilder->getPayloadList:");
        JSONArray jSONArray = new JSONArray();
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        int i = 0;
        while (i < list.size()) {
            arrayList.clear();
            AnalyticsEvent analyticsEvent = (AnalyticsEvent) list.get(i);
            String eventSessionId = analyticsEvent.getEventSessionId();
            int i2 = i;
            while (i2 < list.size() && eventSessionId.equals(((AnalyticsEvent) list.get(i2)).getEventSessionId())) {
                arrayList2.add(Long.valueOf(((AnalyticsEvent) list.get(i2)).getEventTableId()));
                arrayList.add(list.get(i2));
                i2++;
            }
            jSONArray.put(a(a(eventSessionId, analyticsEvent.getEventSessionTimeStamp(), context), a(arrayList)));
            i = i2;
        }
        AnalyticsPayload analyticsPayload = new AnalyticsPayload(null, (ArrayList) arrayList2);
        if (jSONArray.length() != 0) {
            analyticsPayload.setCompletePayload(jSONArray.toString());
            analyticsPayload.setPayloadSize(list.size());
        }
        return analyticsPayload;
    }
}