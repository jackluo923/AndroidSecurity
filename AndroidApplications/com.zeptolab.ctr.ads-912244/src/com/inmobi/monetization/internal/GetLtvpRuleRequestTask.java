package com.inmobi.monetization.internal;

import com.brightcove.player.event.EventType;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.abstraction.IGetLtvpRuleRequestListener;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public class GetLtvpRuleRequestTask implements Runnable {
    private GetLtvpRulesRequest a;
    private IGetLtvpRuleRequestListener b;
    private final int c;
    private final int d;

    GetLtvpRuleRequestTask(GetLtvpRulesRequest getLtvpRulesRequest, IGetLtvpRuleRequestListener iGetLtvpRuleRequestListener) {
        this.c = 60000;
        this.d = -1;
        this.a = getLtvpRulesRequest;
        this.b = iGetLtvpRuleRequestListener;
    }

    public void run() {
        try {
            URL url = new URL(AnalyticsInitializer.getConfigParams().getEndPoints().getRulesUrl());
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            String str = url + "?" + this.a.getEncodedRequestParams();
            Log.debug(Constants.LOG_TAG, "Getting LTVP rule: " + str);
            HttpUriRequest httpGet = new HttpGet(str);
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 60000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 60000);
            defaultHttpClient.setParams(basicHttpParams);
            HttpResponse execute = defaultHttpClient.execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                JSONObject jSONObject = new JSONObject(EntityUtils.toString(execute.getEntity()));
                if (jSONObject.getBoolean("success")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(EventType.RESPONSE);
                    Log.debug(Constants.LOG_TAG, "Received LTVP rule fetch success: " + jSONObject2.toString());
                    GetLtvpRulesResponse getLtvpRulesResponse = new GetLtvpRulesResponse();
                    String string = jSONObject2.getString("rule_id");
                    long j = jSONObject2.getLong(AdTrackerConstants.TIMESTAMP);
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("exp");
                    long j2 = jSONObject3.getLong("se");
                    long j3 = jSONObject3.getLong("he");
                    HashMap hashMap = new HashMap();
                    JSONObject jSONObject4 = jSONObject2.getJSONObject("rules");
                    Iterator keys = jSONObject4.keys();
                    while (keys.hasNext()) {
                        str = (String) keys.next();
                        hashMap.put(str, Integer.valueOf(jSONObject4.getInt(String.valueOf(str))));
                    }
                    getLtvpRulesResponse.setRuleId(string);
                    getLtvpRulesResponse.setTimeStamp(j);
                    getLtvpRulesResponse.setSoftExpiry(j2);
                    getLtvpRulesResponse.setHardExpiry(j3);
                    getLtvpRulesResponse.setRules(hashMap);
                    if (this.b != null) {
                        this.b.onLtvpGetRuleSucceeded(this.a, getLtvpRulesResponse);
                    }
                } else {
                    int i = jSONObject.getInt("error_code");
                    String string2 = jSONObject.getString("error_message");
                    Log.debug(Constants.LOG_TAG, "Received LTVP rule fetch failure: " + i + " : " + string2);
                    if (this.b != null) {
                        this.b.onLtvpGetRuleFailed(this.a, new LtvpErrorCode(i, string2));
                    }
                }
            }
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Received LTVP rule fetch exception", e);
            if (this.b != null) {
                this.b.onLtvpGetRuleFailed(this.a, new LtvpErrorCode(-1, "Ltvp rule server unreachable"));
            }
        }
    }
}