package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import com.google.android.gms.tagmanager.cr.c;
import com.google.android.gms.tagmanager.cr.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class ba {
    public static c br(String str) {
        a k = k(new JSONObject(str));
        d jI = c.jI();
        int i = 0;
        while (i < k.ga.length) {
            jI.a(cr.a.jE().b(b.cT.toString(), k.ga[i]).b(b.cI.toString(), di.bI(m.iB())).b(m.iC(), k.gb[i]).jH());
            i++;
        }
        return jI.jL();
    }

    private static a k(Object obj) {
        return di.r(l(obj));
    }

    static Object l(Object obj) {
        if (obj instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        } else if (JSONObject.NULL.equals(obj)) {
            throw new RuntimeException("JSON nulls are not supported");
        } else if (!(obj instanceof JSONObject)) {
            return obj;
        } else {
            JSONObject jSONObject = (JSONObject) obj;
            Map hashMap = new HashMap();
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                hashMap.put(str, l(jSONObject.get(str)));
            }
            return hashMap;
        }
    }
}