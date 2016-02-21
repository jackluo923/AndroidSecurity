package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONObject;

class ab extends s {
    private static final ab B;
    private String A;
    private String a;
    private String b;
    private boolean c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private b p;
    private double q;
    private double r;
    private List s;
    private List t;
    private List u;
    private Map v;
    private double w;
    private long x;
    private double y;
    private double z;

    class a {
        private int b;
        private List c;
        private int d;
        private String e;
        private List f;
        private List g;
        private Map h;

        a() {
        }

        int a_() {
            return this.b;
        }

        void a_(int i) {
            this.b = i;
        }

        void a_(String str) {
            this.e = str;
        }

        void a_(List list) {
            this.c = list;
        }

        void a_(Map map) {
            this.h = map;
        }

        List b() {
            return this.c;
        }

        void b(int i) {
            this.d = i;
        }

        void b(List list) {
            this.f = list;
        }

        int c() {
            return this.d;
        }

        void c(List list) {
            this.g = list;
        }

        String d() {
            return this.e;
        }

        List e() {
            return this.f;
        }

        List f() {
            return this.g;
        }

        Map g() {
            return this.h;
        }
    }

    class b {
        private List b;
        private d c;

        b() {
        }

        List a() {
            return this.b;
        }

        void a(d dVar) {
            this.c = dVar;
        }

        void a(List list) {
            this.b = list;
        }

        d b_() {
            return this.c;
        }
    }

    static {
        B = new ab(".567ac581-718b-42d4-82d3-0daa55e13da7");
    }

    private ab(String str) {
        super(str);
        this.c = false;
    }

    static ab c() {
        return B;
    }

    private int e(Context context) {
        Map r = aa.d(context).r();
        if (r == null) {
            return 0;
        }
        Iterator it = r.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            Integer valueOf = Integer.valueOf(((h) it.next()).c());
            i = valueOf.intValue() > i ? valueOf.intValue() : i;
        }
        return i;
    }

    private List f(Context context) {
        List u = aa.d(context).u();
        List arrayList = new ArrayList();
        if (u != null) {
            Iterator it = u.iterator();
            while (it.hasNext()) {
                arrayList.add(((i) it.next()).b());
            }
        }
        return arrayList;
    }

    List A() {
        return this.s;
    }

    List B() {
        return this.t;
    }

    String C() {
        return this.o;
    }

    protected String a() {
        JSONArray jSONArray;
        Iterator it;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("product", e());
        jSONObject2.put("androidadvertisingid", n());
        jSONObject2.put("androidadvertisingoptout", o());
        jSONObject2.put("androidid", p());
        if (this.s != null && this.s.size() > 0) {
            jSONObject2.put("installedapps", new JSONArray(this.s));
        }
        if (this.u != null && this.u.size() > 0) {
            jSONArray = new JSONArray();
            it = this.u.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(AnalyticsEvent.EVENT_ID, kVar.a());
                jSONObject3.put(PlusShare.KEY_CALL_TO_ACTION_URL, kVar.b());
                jSONArray.put(jSONObject3);
            }
            jSONObject2.put("appurls", jSONArray);
        }
        if (this.v != null && this.v.size() > 0) {
            jSONArray = new JSONArray();
            it = this.v.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                jSONObject3 = new JSONObject();
                jSONObject3.put("classificationid", num);
                jSONObject3.put("count", this.v.get(num));
                jSONArray.put(jSONObject3);
            }
            jSONObject2.put("classifications", jSONArray);
        }
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("os", f());
        jSONObject4.put("model", g());
        jSONObject4.put("device", h());
        jSONObject4.put("manufacturer", q());
        jSONObject4.put("brand", j());
        jSONObject4.put("timezone", r());
        jSONObject4.put("timezoneId", s());
        jSONObject4.put("country_code", t());
        jSONObject4.put("device_resolution", u());
        jSONObject4.put("language", k());
        jSONObject4.put("carrier", C());
        jSONObject2.put("DeviceInfo", jSONObject4);
        jSONObject.put("DeviceEvent", jSONObject2);
        jSONObject4 = new JSONObject();
        jSONObject4.put("latitude", l());
        jSONObject4.put("longitude", m());
        jSONObject2.put("LocationInfo", jSONObject4);
        return jSONObject.toString();
    }

    void a(double d) {
        this.q = d;
    }

    void a(long j) {
        this.x = j;
    }

    void a(b bVar) {
        this.p = bVar;
    }

    void a(String str) {
        this.a = str;
    }

    @SuppressLint({"UseSparseArrays"})
    protected void a(String str, Context context) {
        int i = 0;
        if (str != null && str.length() > 0) {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("core")) {
                jSONObject = jSONObject.getJSONObject("core");
                if (!jSONObject.isNull("DeviceEvent")) {
                    JSONArray jSONArray;
                    List arrayList;
                    int i2;
                    JSONObject jSONObject2;
                    JSONObject jSONObject3 = jSONObject.getJSONObject("DeviceEvent");
                    if (!jSONObject3.isNull("product")) {
                        a(jSONObject3.getString("product"));
                    }
                    if (!jSONObject3.isNull("androidadvertisingid")) {
                        h(jSONObject3.getString("androidadvertisingid"));
                    }
                    if (!jSONObject3.isNull("androidadvertisingidout")) {
                        a(jSONObject3.getBoolean("androidadvertisingidoptout"));
                    }
                    if (!jSONObject3.isNull("androidid")) {
                        i(jSONObject3.getString("androidid"));
                    }
                    if (!jSONObject3.isNull("installedapps")) {
                        jSONArray = jSONObject3.getJSONArray("installedapps");
                        arrayList = new ArrayList();
                        i2 = 0;
                        while (i2 < jSONArray.length()) {
                            arrayList.add(Integer.valueOf(jSONArray.getInt(i2)));
                            i2++;
                        }
                        this.s = arrayList;
                    }
                    if (!jSONObject3.isNull("appurls")) {
                        jSONArray = jSONObject3.getJSONArray("appurls");
                        arrayList = new ArrayList();
                        i2 = 0;
                        while (i2 < jSONArray.length()) {
                            jSONObject2 = jSONArray.getJSONObject(i2);
                            k kVar = new k();
                            kVar.a(jSONObject2.getInt(AnalyticsEvent.EVENT_ID));
                            kVar.a(jSONObject2.getString(PlusShare.KEY_CALL_TO_ACTION_URL));
                            arrayList.add(kVar);
                            i2++;
                        }
                        this.u = arrayList;
                    }
                    if (!jSONObject3.isNull("classifications")) {
                        jSONArray = jSONObject3.getJSONArray("classifications");
                        Map hashMap = new HashMap();
                        i2 = 0;
                        while (i2 < jSONArray.length()) {
                            jSONObject2 = jSONArray.getJSONObject(i2);
                            hashMap.put(Integer.valueOf(jSONObject2.getInt("classificationid")), Integer.valueOf(jSONObject2.getInt("count")));
                            i2++;
                        }
                        this.v = hashMap;
                    }
                    if (!jSONObject3.isNull("DeviceInfo")) {
                        jSONObject = jSONObject3.getJSONObject("DeviceInfo");
                        if (!jSONObject.isNull("os")) {
                            b(jSONObject.getString("os"));
                        }
                        if (!jSONObject.isNull("model")) {
                            c(jSONObject.getString("model"));
                        }
                        if (!jSONObject.isNull("device")) {
                            d(jSONObject.getString("device"));
                        }
                        if (!jSONObject.isNull("manufacturer")) {
                            j(jSONObject.getString("manufacturer"));
                        }
                        if (!jSONObject.isNull("brand")) {
                            f(jSONObject.getString("brand"));
                        }
                        if (!jSONObject.isNull("timezone")) {
                            k(jSONObject.getString("timezone"));
                        }
                        if (!jSONObject.isNull("timezoneId")) {
                            l(jSONObject.getString("timezoneId"));
                        }
                        if (!jSONObject.isNull("country_code")) {
                            m(jSONObject.getString("country_code"));
                        }
                        if (!jSONObject.isNull("device_resolution")) {
                            n(jSONObject.getString("device_resolution"));
                        }
                        if (!jSONObject.isNull("language")) {
                            g(jSONObject.getString("language"));
                        }
                        if (!jSONObject.isNull("carrier")) {
                            o(jSONObject.getString("carrier"));
                        }
                    }
                    if (!jSONObject3.isNull("LocationInfo")) {
                        jSONObject = jSONObject3.getJSONObject("LocationInfo");
                        if (!jSONObject.isNull("latitude")) {
                            a(jSONObject.getDouble("latitude"));
                        }
                        if (!jSONObject.isNull("longitude")) {
                            b(jSONObject.getDouble("longitude"));
                        }
                        if (!jSONObject.isNull("locationAltitude")) {
                            c(jSONObject.getDouble("locationAltitude"));
                        }
                        if (!jSONObject.isNull("locationTimestamp")) {
                            a(jSONObject.getLong("locationTimestamp"));
                        }
                        if (!jSONObject.isNull("locationAccuracy")) {
                            d(jSONObject.getDouble("locationAccuracy"));
                        }
                        if (!jSONObject.isNull("locationSpeed")) {
                            e(jSONObject.getDouble("locationSpeed"));
                        }
                    }
                    if (!jSONObject3.isNull("NetworkInfo")) {
                        jSONObject = jSONObject3.getJSONObject("NetworkInfo");
                        b bVar = new b();
                        if (!jSONObject.isNull("wificurrent")) {
                            JSONObject jSONObject4 = jSONObject.getJSONObject("wificurrent");
                            d dVar = new d();
                            dVar.a(jSONObject4.getString("ssid"));
                            bVar.a(dVar);
                        }
                        if (!jSONObject.isNull("wifilist")) {
                            JSONArray jSONArray2 = jSONObject.getJSONArray("wifilist");
                            if (jSONArray2 != null && jSONArray2.length() > 0) {
                                List arrayList2 = new ArrayList();
                                while (i < jSONArray2.length()) {
                                    JSONObject jSONObject5 = jSONArray2.getJSONObject(i);
                                    d dVar2 = new d();
                                    dVar2.a(jSONObject5.getString("ssid"));
                                    arrayList2.add(dVar2);
                                    i++;
                                }
                                bVar.a(arrayList2);
                            }
                        }
                        a(bVar);
                    }
                }
            }
        }
    }

    void a(List list) {
        this.s = list;
    }

    void a(Map map) {
        this.v = map;
    }

    void a(boolean z) {
        this.c = z;
    }

    protected String b() {
        JSONObject jSONObject = new JSONObject();
        if (v() != null) {
            b v = v();
            JSONObject jSONObject2 = new JSONObject();
            if (v.b() != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("ssid", v.b().a());
                jSONObject2.put("wificurrent", jSONObject3);
            }
            if (v.a() != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = v.a().iterator();
                while (it.hasNext()) {
                    d dVar = (d) it.next();
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("ssid", dVar.a());
                    jSONArray.put(jSONObject4);
                }
                jSONObject2.put("wifilist", jSONArray);
            }
            jSONObject.put("NetworkInfo", jSONObject2);
        }
        return jSONObject.toString();
    }

    void b(double d) {
        this.r = d;
    }

    void b(String str) {
        this.e = str;
    }

    void b(List list) {
        this.t = list;
    }

    void c(double d) {
        this.w = d;
    }

    void c(Context context) {
        String str = ac.a(context) + System.getProperty("line.separator") + ".567ac581-718b-42d4-82d3-0daa55e13da7";
        JSONObject jSONObject = new JSONObject();
        String a = a();
        if (a != null && a.length() > 0) {
            jSONObject.put("core", new JSONObject(a));
        }
        a = b();
        if (a != null && a.length() > 0) {
            jSONObject.put("extra", new JSONObject(a));
        }
        ac.a(str, jSONObject.toString());
    }

    void c(String str) {
        this.f = str;
    }

    @SuppressLint({"UseSparseArrays"})
    a d(Context context) {
        aa d = aa.d(context);
        a aVar = new a();
        aVar.a(d.v());
        if (d.v() > 1) {
            aVar.b(f(context));
            aVar.b(e(context));
            b t = d.t();
            if (!(t == null || this.v == null)) {
                aVar.a(t.a());
                Map hashMap = new HashMap();
                Iterator it = t.c().iterator();
                while (it.hasNext()) {
                    a aVar2 = (a) it.next();
                    int a = aVar2.a();
                    if (this.v.containsKey(Integer.valueOf(a))) {
                        hashMap.put(Integer.valueOf(a), Integer.valueOf(((Integer) this.v.get(Integer.valueOf(aVar2.a()))).intValue() - aVar2.b()));
                    }
                }
                Map a2 = ac.a(hashMap, ac.b);
                List arrayList = new ArrayList();
                Iterator it2 = a2.entrySet().iterator();
                while (it2.hasNext()) {
                    arrayList.add(((Entry) it2.next()).getKey());
                }
                aVar.a(arrayList);
            }
        }
        if (d.v() == 3) {
            aVar.a(this.v);
        }
        if (d.v() >= 4) {
            aVar.c(this.s);
        }
        return aVar;
    }

    String d() {
        return this.q + "," + this.r;
    }

    void d(double d) {
        this.y = d;
    }

    void d(String str) {
        this.g = str;
    }

    String e() {
        return this.a;
    }

    void e(double d) {
        this.z = d;
    }

    void e(String str) {
        this.A = str;
    }

    String f() {
        return this.e;
    }

    void f(String str) {
        this.i = str;
    }

    String g() {
        return this.f;
    }

    void g(String str) {
        this.n = str;
    }

    String h() {
        return this.g;
    }

    void h(String str) {
        this.b = str;
    }

    String i() {
        return this.A;
    }

    void i(String str) {
        this.d = str;
    }

    String j() {
        return this.i;
    }

    void j(String str) {
        this.h = str;
    }

    String k() {
        return this.n;
    }

    void k(String str) {
        this.j = str;
    }

    double l() {
        return this.q;
    }

    void l(String str) {
        this.k = str;
    }

    double m() {
        return this.r;
    }

    void m(String str) {
        this.l = str;
    }

    String n() {
        return this.b;
    }

    void n(String str) {
        this.m = str;
    }

    void o(String str) {
        this.o = str;
    }

    boolean o() {
        return this.c;
    }

    String p() {
        return this.d;
    }

    String q() {
        return this.h;
    }

    String r() {
        return this.j;
    }

    String s() {
        return this.k;
    }

    String t() {
        return this.l;
    }

    String u() {
        return this.m;
    }

    b v() {
        return this.p;
    }

    double w() {
        return this.w;
    }

    long x() {
        return this.x;
    }

    double y() {
        return this.y;
    }

    double z() {
        return this.z;
    }
}