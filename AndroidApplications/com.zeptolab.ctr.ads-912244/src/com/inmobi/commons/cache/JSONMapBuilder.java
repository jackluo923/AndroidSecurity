package com.inmobi.commons.cache;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONMapBuilder implements MapBuilder {
    private void a(JSONObject jSONObject, Map map) {
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            try {
                Object obj = jSONObject.get(str);
                if (obj instanceof JSONObject) {
                    Map hashMap = new HashMap();
                    map.put(str, hashMap);
                    a((JSONObject) obj, hashMap);
                } else {
                    map.put(str, obj);
                }
            } catch (JSONException e) {
            }
        }
    }

    public Map buildMap(String str) {
        JSONObject jSONObject = new JSONObject(str);
        Map hashMap = new HashMap();
        a(jSONObject, hashMap);
        return hashMap;
    }
}