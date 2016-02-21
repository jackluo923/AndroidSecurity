package com.chartboost.sdk.Libraries;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e {

    public static class a {
        private String a;
        private Object b;

        public a(String str, Object obj) {
            this.a = str;
            this.b = obj;
        }
    }

    public static a a(String str, Object obj) {
        return new a(str, obj);
    }

    public static List a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        List arrayList = new ArrayList();
        int i = 0;
        while (i < jSONArray.length()) {
            try {
                Object obj = jSONArray.get(i);
                if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj);
                } else if (obj.equals(JSONObject.NULL)) {
                    obj = null;
                }
                arrayList.add(obj);
            } catch (Exception e) {
            }
            i++;
        }
        return arrayList;
    }

    public static Map a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Map hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String str = (String) keys.next();
                Object obj = jSONObject.get(str);
                if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj);
                } else if (obj.equals(JSONObject.NULL)) {
                    obj = null;
                }
                hashMap.put(str, obj);
            } catch (Exception e) {
            }
        }
        return hashMap;
    }

    public static JSONArray a(List list) {
        if (list == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        while (i < list.size()) {
            try {
                Object obj = list.get(i);
                if (obj instanceof Map) {
                    obj = a((Map) obj);
                } else if (obj instanceof List) {
                    obj = a((List) obj);
                } else if (obj == null) {
                    obj = JSONObject.NULL;
                }
                jSONArray.put(obj);
            } catch (Exception e) {
            }
            i++;
        }
        return jSONArray;
    }

    public static JSONObject a(Map map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            String toString = entry.getKey().toString();
            Object value = entry.getValue();
            try {
                if (value instanceof Map) {
                    value = a((Map) value);
                } else if (value instanceof List) {
                    value = a((List) value);
                } else if (value == null) {
                    value = JSONObject.NULL;
                }
                jSONObject.put(toString, value);
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }

    public static JSONObject a(a... aVarArr) {
        JSONObject jSONObject = new JSONObject();
        int i = 0;
        while (i < aVarArr.length) {
            try {
                jSONObject.put(aVarArr[i].a, aVarArr[i].b);
            } catch (JSONException e) {
                CBLogging.a("CBJSON", "Error creating JSONObject-based dictionary", e);
            }
            i++;
        }
        return jSONObject;
    }
}