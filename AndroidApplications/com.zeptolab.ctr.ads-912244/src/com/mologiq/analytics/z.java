package com.mologiq.analytics;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class z {
    private String a;
    private boolean b;
    private String c;
    private String d;
    private String e;
    private List f;
    private String g;
    private String h;

    public String a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("androidadvertisingid", this.a);
        jSONObject.put("androidadvertisingidoptout", this.b);
        jSONObject.put("androidid", this.c);
        jSONObject.put("v", this.d);
        jSONObject.put("d", this.e);
        jSONObject.put("siteid", this.g);
        jSONObject.put("p", this.h);
        if (this.f != null && this.f.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                y yVar = (y) it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("n", yVar.a());
                jSONObject2.put("v", yVar.b());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("tp", jSONArray);
        }
        return jSONObject.toString();
    }

    public void a(String str) {
        this.h = str;
    }

    public void a(List list) {
        this.f = list;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void b(String str) {
        this.d = str;
    }

    public void c(String str) {
        this.e = str;
    }

    public void d(String str) {
        this.g = str;
    }

    public void e(String str) {
        this.a = str;
    }

    public void f(String str) {
        this.c = str;
    }
}