package com.inmobi.commons.internal;

import android.content.Context;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.internal.ActivityRecognitionSampler.ActivitySample;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UIDUtil;
import com.inmobi.monetization.internal.Constants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONPayloadCreator implements PayloadCreator {
    private JSONObject a(ActivitySample activitySample) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            jSONObject.put(AdTrackerConstants.TIMESTAMP, activitySample.getTimestamp());
            jSONObject.put("a", activitySample.getActivity());
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    private JSONObject a(CellTowerInfo cellTowerInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsEvent.EVENT_ID, cellTowerInfo.id);
            if (cellTowerInfo.signalStrength == 0) {
                return jSONObject;
            }
            jSONObject.put(AnalyticsEvent.TYPE_START_SESSION, cellTowerInfo.signalStrength);
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    private JSONObject a(Sample sample, ThinICEConfig thinICEConfig) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("t", 1);
            if (thinICEConfig.isConnectedWifiEnabled()) {
                jSONObject2.put("c-ap", a(sample.connectedWifiAp));
            }
            if (thinICEConfig.isCellEnabled()) {
                jSONObject2.put("c-sc", a(sample.connectedCellTowerInfo));
            }
            if (thinICEConfig.isVisibleWifiEnabled()) {
                JSONArray jSONArray = new JSONArray();
                if (sample.visibleWifiAp != null) {
                    Iterator it = sample.visibleWifiAp.iterator();
                    while (it.hasNext()) {
                        JSONObject a = a((WifiInfo) it.next());
                        if (a != null) {
                            jSONArray.put(a);
                        }
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject2.put("v-ap", jSONArray);
                }
            }
            if (jSONObject2.length() <= 1) {
                return jSONObject;
            }
            jSONObject2.put(AdTrackerConstants.TIMESTAMP, sample.utc);
            return jSONObject2;
        } catch (JSONException e) {
            return jSONObject;
        }
    }

    private JSONObject a(WifiInfo wifiInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bssid", wifiInfo.bssid);
            jSONObject.put("essid", wifiInfo.ssid);
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    public static String currentLocationStr() {
        StringBuilder stringBuilder = new StringBuilder();
        if (stringBuilder == null || !LocationInfo.isValidGeoInfo()) {
            return AdTrackerConstants.BLANK;
        }
        stringBuilder.append(LocationInfo.getLat());
        stringBuilder.append(",");
        stringBuilder.append(LocationInfo.getLon());
        stringBuilder.append(",");
        stringBuilder.append((int) LocationInfo.getLocAccuracy());
        return stringBuilder.toString();
    }

    public String toPayloadString(List list, List list2, Context context) {
        JSONObject a;
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        ThinICEConfig thinIceConfig = AnalyticsInitializer.getConfigParams().getThinIceConfig();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Sample sample = (Sample) it.next();
            if (sample != null) {
                a = a(sample, thinIceConfig);
                if (a != null) {
                    jSONArray.put(a);
                }
            }
        }
        it = list2.iterator();
        while (it.hasNext()) {
            ActivitySample activitySample = (ActivitySample) it.next();
            if (activitySample != null) {
                a = a(activitySample);
                if (a != null) {
                    jSONArray.put(a);
                }
            }
        }
        try {
            if (jSONArray.length() > 0) {
                jSONObject.put("payload", jSONArray);
            }
            CellOperatorInfo cellNetworkInfo = CellUtil.getCellNetworkInfo(context);
            if (thinIceConfig.isOperatorEnabled()) {
                if (!ThinICEConfigSettings.bitTest(thinIceConfig.getCellOpsFlag(), 1)) {
                    if (!(cellNetworkInfo.simMcc == -1 && cellNetworkInfo.simMnc == -1)) {
                        jSONObject.put("s-ho", cellNetworkInfo.simMcc + "_" + cellNetworkInfo.simMnc);
                    }
                }
                if (!ThinICEConfigSettings.bitTest(thinIceConfig.getCellOpsFlag(), GoogleScorer.CLIENT_PLUS)) {
                    if (!(cellNetworkInfo.currentMcc == -1 && cellNetworkInfo.currentMnc == -1)) {
                        jSONObject.put("s-co", cellNetworkInfo.currentMcc + "_" + cellNetworkInfo.currentMnc);
                    }
                }
            }
            Calendar instance = Calendar.getInstance();
            System.currentTimeMillis();
            jSONObject.put("tz", instance.get(MMException.REQUEST_BAD_RESPONSE) + instance.get(MMException.REQUEST_NOT_PERMITTED));
            jSONObject.put(AdTrackerConstants.TIMESTAMP, instance.getTimeInMillis());
            jSONObject.put(AdTrackerConstants.SDKVER, "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(Constants.MEDIATION_SDK_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE);
            String currentLocationStr = currentLocationStr();
            if (!(currentLocationStr == null || AdTrackerConstants.BLANK.equals(currentLocationStr))) {
                jSONObject.put("u-latlong-accu", currentLocationStr);
            }
            Map map = UIDUtil.getMap(context, null);
            map.remove("ua");
            map.remove("s-ver");
            UIDUtil.bindToEncodedJSON(map, jSONObject);
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to create payload for sending ThinICE params");
            return null;
        }
    }
}