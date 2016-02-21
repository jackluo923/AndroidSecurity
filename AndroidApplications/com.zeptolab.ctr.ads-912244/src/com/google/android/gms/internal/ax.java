package com.google.android.gms.internal;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class ax {
    public final String adJson;
    public final String mm;
    public final List mn;
    public final String mo;
    public final List mp;
    public final String mq;

    public ax(JSONObject jSONObject) {
        String str = null;
        this.mm = jSONObject.getString(AnalyticsEvent.EVENT_ID);
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        List arrayList = new ArrayList(jSONArray.length());
        int i = 0;
        while (i < jSONArray.length()) {
            arrayList.add(jSONArray.getString(i));
            i++;
        }
        this.mn = Collections.unmodifiableList(arrayList);
        this.mo = jSONObject.optString("allocation_id", null);
        this.mp = bd.a(jSONObject, "imp_urls");
        JSONObject optJSONObject = jSONObject.optJSONObject(AdDatabaseHelper.TABLE_AD);
        this.adJson = optJSONObject != null ? optJSONObject.toString() : null;
        optJSONObject = jSONObject.optJSONObject(i.a);
        if (optJSONObject != null) {
            str = optJSONObject.toString();
        }
        this.mq = str;
    }
}