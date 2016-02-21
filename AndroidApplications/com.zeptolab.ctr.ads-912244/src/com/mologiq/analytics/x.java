package com.mologiq.analytics;

import android.content.Context;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class x extends s {
    private static final x c;
    private List a;
    private long b;

    public class a {
        private String b;
        private String c;

        public String a_() {
            return this.b;
        }

        public void a_(String str) {
            this.b = str;
        }

        public String b() {
            return this.c;
        }

        public void b(String str) {
            this.c = str;
        }
    }

    static {
        c = new x(".f4532369-bca8-4847-bd88-d1779ee05f8f");
    }

    private x(String str) {
        super(str);
        this.a = new ArrayList();
        this.b = 0;
    }

    static x b() {
        return c;
    }

    protected String a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AdDatabaseHelper.COLUMN_TIMESTAMP, this.b);
        if (this.a != null && this.a.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("n", aVar.a());
                jSONObject2.put("v", aVar.b());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("tp", jSONArray);
        }
        return jSONObject.toString();
    }

    void a(long j) {
        this.b = j;
    }

    protected void a(String str, Context context) {
        JSONObject jSONObject = new JSONObject(str);
        if (!jSONObject.isNull("core")) {
            jSONObject = jSONObject.getJSONObject("core");
            a(jSONObject.getLong(AdDatabaseHelper.COLUMN_TIMESTAMP));
            if (!jSONObject.isNull("tp")) {
                JSONArray jSONArray = jSONObject.getJSONArray("tp");
                if (jSONArray != null && jSONArray.length() > 0) {
                    this.a = new ArrayList();
                    int i = 0;
                    while (i < jSONArray.length()) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        a aVar = new a();
                        aVar.a(jSONObject2.getString("n"));
                        aVar.b(jSONObject2.getString("v"));
                        this.a.add(aVar);
                        i++;
                    }
                }
            }
        }
    }

    protected void b(String str, Context context) {
        if (str != null && str.length() > 0) {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("tp")) {
                JSONArray jSONArray = jSONObject.getJSONArray("tp");
                if (jSONArray != null && jSONArray.length() > 0) {
                    this.a = new ArrayList();
                    int i = 0;
                    while (i < jSONArray.length()) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        a aVar = new a();
                        aVar.a(jSONObject2.getString("n"));
                        aVar.b(jSONObject2.getString("v"));
                        this.a.add(aVar);
                        i++;
                    }
                }
            }
        }
    }

    public Map c() {
        if (this.a == null || this.a.size() <= 0) {
            return null;
        }
        Map hashMap = new HashMap();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            hashMap.put(aVar.a(), aVar.b());
        }
        return hashMap;
    }

    public void c(Context context) {
        String str = ac.a(context) + System.getProperty("line.separator") + ".f4532369-bca8-4847-bd88-d1779ee05f8f";
        JSONObject jSONObject = new JSONObject();
        String a = a();
        if (a != null && a.length() > 0) {
            jSONObject.put("core", new JSONObject(a));
        }
        a = e();
        if (a != null && a.length() > 0) {
            jSONObject.put("extra", new JSONObject(a));
        }
        ac.a(str, jSONObject.toString());
    }

    long d() {
        return this.b;
    }

    protected String e() {
        return AdTrackerConstants.BLANK;
    }
}