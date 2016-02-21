package com.inmobi.commons.internal;

import com.inmobi.commons.metric.Storage.PreProcessor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class b implements PreProcessor {
    b() {
    }

    public JSONObject process(JSONObject jSONObject) {
        Map hashMap = new HashMap();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("payload");
            int i = 0;
            while (i < jSONArray.length()) {
                int i2 = jSONArray.getJSONObject(i).getInt("t");
                Integer num = (Integer) hashMap.get(Integer.valueOf(i2));
                if (num == null) {
                    hashMap.put(Integer.valueOf(i2), Integer.valueOf(1));
                } else {
                    hashMap.put(Integer.valueOf(i2), Integer.valueOf(num.intValue() + 1));
                }
                i++;
            }
            JSONArray jSONArray2 = new JSONArray();
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("t", entry.getKey());
                jSONObject2.put("v", entry.getValue());
                jSONArray2.put(jSONObject2);
            }
            jSONObject.put("payload", jSONArray2);
        } catch (JSONException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to aggregate data. Sending data as-is.");
        }
        return jSONObject;
    }
}