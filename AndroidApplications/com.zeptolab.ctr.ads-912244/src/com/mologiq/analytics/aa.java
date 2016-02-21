package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

class aa extends s {
    private static final Map p;
    private static final Map q;
    private static final aa u;
    private static final AtomicBoolean v;
    private long a;
    private long b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private long m;
    private long n;
    private long o;
    private b r;
    private List s;
    private Map t;

    static {
        p = new ConcurrentHashMap();
        q = new ConcurrentHashMap();
        u = new aa(".3ca154f5-9711-475d-819c-7bab4289e4a7");
        v = new AtomicBoolean(false);
    }

    private aa(String str) {
        super(str);
        this.a = 0;
        this.b = 0;
        this.c = "http://a.mologiq.net/mologiq/aea";
        this.d = "http://a.mologiq.net/mologiq/deai";
        this.e = "http://a.mologiq.net/mologiq/dea";
        this.f = "http://a.mologiq.net/mologiq/et";
        this.g = 100;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = false;
        this.m = 600000;
        this.n = 600000;
        this.o = 0;
        this.l = 0;
        this.r = o.a().c();
    }

    @SuppressLint({"UseSparseArrays"})
    private void a(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    JSONObject jSONObject = new JSONObject(str);
                    if (!jSONObject.isNull("adEventsAndroidUrl")) {
                        this.c = jSONObject.getString("adEventsAndroidUrl");
                    }
                    if (!jSONObject.isNull("deviceEventsInitAndroidUrl")) {
                        this.d = jSONObject.getString("deviceEventsInitAndroidUrl");
                    }
                    if (!jSONObject.isNull("deviceEventsAndroidUrl")) {
                        this.e = jSONObject.getString("deviceEventsAndroidUrl");
                    }
                    if (!jSONObject.isNull("targetParamsAndroidUrl")) {
                        this.f = jSONObject.getString("targetParamsAndroidUrl");
                    }
                    if (!jSONObject.isNull("stopForPeriodInMs")) {
                        this.a = jSONObject.getLong("stopForPeriodInMs");
                    }
                    if (!jSONObject.isNull("locationMask")) {
                        this.g = jSONObject.getInt("locationMask");
                    }
                    if (!jSONObject.isNull("ttlEnhancedTargetParamsInMs")) {
                        this.m = jSONObject.getLong("ttlEnhancedTargetParamsInMs");
                    }
                    if (!jSONObject.isNull("ttlDeviceStateInMs")) {
                        this.n = jSONObject.getLong("ttlDeviceStateInMs");
                    }
                    if (!jSONObject.isNull("deviceStateTimestamp")) {
                        this.o = jSONObject.getLong("deviceStateTimestamp");
                    }
                    if (jSONObject.isNull("enableLocation")) {
                        this.h = false;
                    } else {
                        this.h = jSONObject.getBoolean("enableLocation");
                    }
                    if (jSONObject.isNull("enableInstalledApps")) {
                        this.i = false;
                    } else {
                        this.i = jSONObject.getBoolean("enableInstalledApps");
                    }
                    if (jSONObject.isNull("enableNetworkInfo")) {
                        this.j = false;
                    } else {
                        this.j = jSONObject.getBoolean("enableNetworkInfo");
                    }
                    if (jSONObject.isNull("enableDeviceInfo")) {
                        this.k = false;
                    } else {
                        this.k = jSONObject.getBoolean("enableDeviceInfo");
                    }
                    if (jSONObject.isNull("policy")) {
                        this.l = 1;
                    } else {
                        this.l = jSONObject.getInt("policy");
                    }
                    if (!jSONObject.isNull("appfilters")) {
                        List arrayList;
                        int i;
                        int i2;
                        JSONObject jSONObject2 = jSONObject.getJSONObject("appfilters");
                        if (!jSONObject2.isNull("meandata")) {
                            jSONObject = jSONObject2.getJSONObject("meandata");
                            o a = o.a();
                            a.getClass();
                            b bVar = new b();
                            bVar.a(jSONObject.getString("version"));
                            bVar.a(jSONObject.getInt("appcount"));
                            JSONArray jSONArray = jSONObject.getJSONArray("classifications");
                            if (jSONArray != null && jSONArray.length() > 0) {
                                arrayList = new ArrayList();
                                i = 0;
                                while (i < jSONArray.length()) {
                                    o a2 = o.a();
                                    a2.getClass();
                                    a aVar = new a();
                                    jSONObject = jSONArray.getJSONObject(i);
                                    aVar.a(jSONObject.getInt(AnalyticsEvent.EVENT_ID));
                                    aVar.b(jSONObject.getInt("mean"));
                                    JSONArray jSONArray2 = jSONObject.getJSONArray("apps");
                                    List arrayList2 = new ArrayList();
                                    i2 = 0;
                                    while (i2 < jSONArray2.length()) {
                                        arrayList2.add(Integer.valueOf(jSONArray2.getInt(i2)));
                                        i2++;
                                    }
                                    aVar.a(arrayList2);
                                    arrayList.add(aVar);
                                    i++;
                                }
                                bVar.a(arrayList);
                            }
                            this.r = bVar;
                        }
                        if (!jSONObject2.isNull("appinstallcampaigns")) {
                            if (this.s == null) {
                                this.s = new ArrayList();
                            }
                            JSONArray jSONArray3 = jSONObject2.getJSONArray("appinstallcampaigns");
                            i = 0;
                            while (i < jSONArray3.length()) {
                                JSONObject jSONObject3 = jSONArray3.getJSONObject(i);
                                i iVar = new i();
                                iVar.b(Integer.valueOf(jSONObject3.getInt(AnalyticsEvent.EVENT_ID)));
                                iVar.a(Integer.valueOf(jSONObject3.getInt("userid")));
                                if (!jSONObject3.isNull("isnotinstalled")) {
                                    JSONArray jSONArray4 = jSONObject3.getJSONArray("isnotinstalled");
                                    List arrayList3 = new ArrayList();
                                    i2 = 0;
                                    while (i2 < jSONArray4.length()) {
                                        arrayList3.add(Integer.valueOf(jSONArray4.getInt(i2)));
                                        i2++;
                                    }
                                    iVar.a(arrayList3);
                                }
                                if (!jSONObject3.isNull("isinstalled")) {
                                    arrayList = new ArrayList();
                                    JSONArray jSONArray5 = jSONObject3.getJSONArray("isinstalled");
                                    i2 = 0;
                                    while (i2 < jSONArray5.length()) {
                                        arrayList.add(Integer.valueOf(jSONArray5.getInt(i2)));
                                        i2++;
                                    }
                                    iVar.b(arrayList);
                                }
                                if (!jSONObject3.isNull("tp")) {
                                    arrayList = new ArrayList();
                                    JSONArray jSONArray6 = jSONObject3.getJSONArray("tp");
                                    i2 = 0;
                                    while (i2 < jSONArray6.length()) {
                                        JSONObject jSONObject4 = jSONArray6.getJSONObject(i2);
                                        y yVar = new y();
                                        yVar.a(jSONObject4.getString("n"));
                                        yVar.b(jSONObject4.getString("v"));
                                        arrayList.add(yVar);
                                        i2++;
                                    }
                                    iVar.c(arrayList);
                                }
                                this.s.add(iVar);
                                i++;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    static aa d(Context context) {
        if (v.compareAndSet(false, true)) {
            u.a(context);
        }
        return u;
    }

    protected String a() {
        JSONArray jSONArray;
        Iterator it;
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (e() != null) {
            jSONObject2.put("adEventsAndroidUrl", e());
        }
        if (f() != null) {
            jSONObject2.put("deviceEventsAndroidUrl", f());
        }
        if (c() != null) {
            jSONObject2.put("deviceEventsInitAndroidUrl", c());
        }
        if (g() != null) {
            jSONObject2.put("targetParamsAndroidUrl", g());
        }
        jSONObject2.put("stopForPeriodInMs", d());
        jSONObject2.put("locationMask", o());
        jSONObject2.put("ttlEnhancedTargetParamsInMs", l());
        jSONObject2.put("ttlDeviceStateInMs", m());
        jSONObject2.put("deviceStateTimestamp", n());
        jSONObject2.put("enableLocation", h());
        jSONObject2.put("enableInstalledApps", i());
        jSONObject2.put("enableNetworkInfo", j());
        jSONObject2.put("enableDeviceInfo", k());
        jSONObject2.put("policy", this.l);
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("version", this.r.a());
        jSONObject4.put("appcount", this.r.b());
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = this.r.c().iterator();
        while (it2.hasNext()) {
            a aVar = (a) it2.next();
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(AnalyticsEvent.EVENT_ID, aVar.a());
            jSONObject5.put("mean", aVar.b());
            jSONObject5.put("apps", new JSONArray(aVar.c()));
            jSONArray2.put(jSONObject5);
        }
        jSONObject4.put("classifications", jSONArray2);
        jSONObject3.put("meandata", jSONObject4);
        if (this.s != null) {
            jSONArray = new JSONArray();
            it = this.s.iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                jSONObject = new JSONObject();
                jSONObject.put(AnalyticsEvent.EVENT_ID, iVar.b());
                jSONObject.put("userid", iVar.a());
                jSONObject.put("isnotinstalled", new JSONArray(iVar.c()));
                jSONObject.put("isinstalled", new JSONArray(iVar.d()));
                if (iVar.e() != null) {
                    JSONArray jSONArray3 = new JSONArray();
                    Iterator it3 = iVar.e().iterator();
                    while (it3.hasNext()) {
                        y yVar = (y) it3.next();
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.put("n", yVar.a());
                        jSONObject6.put("v", yVar.b());
                        jSONArray3.put(jSONObject6);
                    }
                    jSONObject.put("tp", jSONArray3);
                }
                jSONArray.put(jSONObject);
            }
            jSONObject3.put("appinstallcampaigns", jSONArray);
        }
        if (this.t != null) {
            jSONArray = new JSONArray();
            it = this.t.values().iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                jSONObject = new JSONObject();
                jSONObject.put(AnalyticsEvent.EVENT_ID, kVar.a());
                jSONObject.put(PlusShare.KEY_CALL_TO_ACTION_URL, kVar.b());
                jSONArray.put(jSONObject);
            }
            jSONObject2.put("appurls", jSONArray);
        }
        jSONObject2.put("appfilters", jSONObject3);
        return jSONObject2.toString();
    }

    void a(int i) {
        this.l = i;
    }

    void a(long j) {
        this.o = j;
    }

    void a(h hVar) {
        ac.a("LOADING::: |" + hVar.b() + "|" + hVar.c());
        p.put(Integer.valueOf(hVar.c()), hVar);
        q.put(hVar.b(), hVar);
    }

    protected void a(String str, Context context) {
        if (!b()) {
            this.b = System.currentTimeMillis();
        }
        if (str != null && str.length() > 0) {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("core")) {
                a(jSONObject.getJSONObject("core").toString());
            }
        }
        m mVar = new m(context);
        try {
            Iterator it;
            if (mVar.b() != 0) {
                it = mVar.a().iterator();
                while (it.hasNext()) {
                    a((h) it.next());
                }
            } else if (j.a(context).a() != null) {
                it = j.a(context).a().values().iterator();
                while (it.hasNext()) {
                    u.a((h) it.next());
                }
            }
            if (mVar != null) {
                mVar.close();
            }
        } catch (Throwable th) {
            if (mVar != null) {
                mVar.close();
            }
        }
    }

    @SuppressLint({"UseSparseArrays"})
    protected void b(String str, Context context) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    JSONObject jSONObject;
                    int i;
                    JSONObject jSONObject2;
                    JSONObject jSONObject3 = new JSONObject(str);
                    if (!jSONObject3.isNull("adEventsAndroidUrl")) {
                        this.c = jSONObject3.getString("adEventsAndroidUrl");
                    }
                    if (!jSONObject3.isNull("deviceEventsInitAndroidUrl")) {
                        this.d = jSONObject3.getString("deviceEventsInitAndroidUrl");
                    }
                    if (!jSONObject3.isNull("deviceEventsAndroidUrl")) {
                        this.e = jSONObject3.getString("deviceEventsAndroidUrl");
                    }
                    if (!jSONObject3.isNull("targetParamsAndroidUrl")) {
                        this.f = jSONObject3.getString("targetParamsAndroidUrl");
                    }
                    if (!jSONObject3.isNull("stopForPeriodInMs")) {
                        this.a = jSONObject3.getLong("stopForPeriodInMs");
                    }
                    if (!jSONObject3.isNull("locationMask")) {
                        this.g = jSONObject3.getInt("locationMask");
                    }
                    if (!jSONObject3.isNull("ttlEnhancedTargetParamsInMs")) {
                        this.m = jSONObject3.getLong("ttlEnhancedTargetParamsInMs");
                    }
                    if (!jSONObject3.isNull("ttlDeviceStateInMs")) {
                        this.n = jSONObject3.getLong("ttlDeviceStateInMs");
                    }
                    if (!jSONObject3.isNull("deviceStateTimestamp")) {
                        this.o = jSONObject3.getLong("deviceStateTimestamp");
                    }
                    if (jSONObject3.isNull("enableLocation")) {
                        this.h = false;
                    } else {
                        this.h = jSONObject3.getBoolean("enableLocation");
                    }
                    if (jSONObject3.isNull("enableInstalledApps")) {
                        this.i = false;
                    } else {
                        this.i = jSONObject3.getBoolean("enableInstalledApps");
                    }
                    if (jSONObject3.isNull("enableNetworkInfo")) {
                        this.j = false;
                    } else {
                        this.j = jSONObject3.getBoolean("enableNetworkInfo");
                    }
                    if (jSONObject3.isNull("enableDeviceInfo")) {
                        this.k = false;
                    } else {
                        this.k = jSONObject3.getBoolean("enableDeviceInfo");
                    }
                    if (jSONObject3.isNull("policy")) {
                        this.l = 0;
                    } else {
                        this.l = jSONObject3.getInt("policy");
                    }
                    if (!jSONObject3.isNull("urlpackagesAndroid")) {
                        jSONObject = jSONObject3.getJSONObject("urlpackagesAndroid");
                        if (!jSONObject.isNull("appUrlPackageAndroid")) {
                            JSONArray jSONArray = jSONObject.getJSONArray("appUrlPackageAndroid");
                            if (jSONArray != null && jSONArray.length() > 0) {
                                i = 0;
                                while (i < jSONArray.length()) {
                                    if (this.t == null) {
                                        this.t = new HashMap();
                                    }
                                    jSONObject2 = jSONArray.getJSONObject(i);
                                    k kVar = new k();
                                    kVar.a(jSONObject2.getInt(AnalyticsEvent.EVENT_ID));
                                    kVar.a(jSONObject2.getString(PlusShare.KEY_CALL_TO_ACTION_URL));
                                    this.t.put(Integer.valueOf(kVar.a()), kVar);
                                    i++;
                                }
                            }
                        }
                    }
                    if (!jSONObject3.isNull("appFilters")) {
                        JSONArray jSONArray2;
                        int i2;
                        JSONArray jSONArray3;
                        List arrayList;
                        m mVar = new m(context);
                        jSONObject2 = jSONObject3.getJSONObject("appFilters");
                        if (!jSONObject2.isNull("appList")) {
                            JSONArray jSONArray4 = jSONObject2.getJSONArray("appList");
                            if (jSONArray4 != null && jSONArray4.length() > 0) {
                                i = 0;
                                while (i < jSONArray4.length()) {
                                    JSONObject jSONObject4 = jSONArray4.getJSONObject(i);
                                    h hVar = new h();
                                    if (!jSONObject4.isNull(Fields.NAME)) {
                                        hVar.a(jSONObject4.getString(Fields.NAME));
                                    }
                                    if (!jSONObject4.isNull("classificationid")) {
                                        hVar.a(jSONObject4.getInt("classificationid"));
                                    }
                                    if (!jSONObject4.isNull(AnalyticsEvent.EVENT_ID)) {
                                        hVar.b(jSONObject4.getInt(AnalyticsEvent.EVENT_ID));
                                    }
                                    mVar.a(hVar);
                                    a(hVar);
                                    i++;
                                }
                            }
                        }
                        if (!jSONObject2.isNull("mean")) {
                            jSONObject = jSONObject2.getJSONObject("mean");
                            o a = o.a();
                            a.getClass();
                            b bVar = new b();
                            bVar.a(jSONObject.getString("version"));
                            bVar.a(jSONObject.getInt("appcount"));
                            jSONArray2 = jSONObject.getJSONArray("classifications");
                            if (jSONArray2 != null && jSONArray2.length() > 0) {
                                List arrayList2 = new ArrayList();
                                i2 = 0;
                                while (i2 < jSONArray2.length()) {
                                    o a2 = o.a();
                                    a2.getClass();
                                    a aVar = new a();
                                    jSONObject = jSONArray2.getJSONObject(i2);
                                    aVar.a(jSONObject.getInt(AnalyticsEvent.EVENT_ID));
                                    aVar.b(jSONObject.getInt("mean"));
                                    jSONArray3 = jSONObject.getJSONArray("apps");
                                    arrayList = new ArrayList();
                                    i = 0;
                                    while (i < jSONArray3.length()) {
                                        arrayList.add(Integer.valueOf(jSONArray3.getInt(i)));
                                        i++;
                                    }
                                    aVar.a(arrayList);
                                    arrayList2.add(aVar);
                                    i2++;
                                }
                                bVar.a(arrayList2);
                            }
                            this.r = bVar;
                        }
                        if (!jSONObject2.isNull("campaigns")) {
                            if (this.s == null) {
                                this.s = new ArrayList();
                            }
                            JSONArray jSONArray5 = jSONObject2.getJSONArray("campaigns");
                            int i3 = 0;
                            while (i3 < jSONArray5.length()) {
                                jSONObject = jSONArray5.getJSONObject(i3);
                                if (!jSONObject.isNull(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY)) {
                                    String string = jSONObject.getString(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY);
                                    if (string.equals("add")) {
                                        if (!jSONObject.isNull(i.a)) {
                                            jSONArray2 = jSONObject.getJSONArray(i.a);
                                            i2 = 0;
                                            while (i2 < jSONArray2.length()) {
                                                List arrayList3;
                                                JSONObject jSONObject5 = jSONArray2.getJSONObject(i2);
                                                i iVar = new i();
                                                iVar.b(Integer.valueOf(jSONObject5.getInt(AnalyticsEvent.EVENT_ID)));
                                                iVar.a(Integer.valueOf(jSONObject5.getInt("userid")));
                                                if (!jSONObject5.isNull("notinstall")) {
                                                    jSONArray3 = jSONObject5.getJSONArray("notinstall");
                                                    arrayList = new ArrayList();
                                                    i = 0;
                                                    while (i < jSONArray3.length()) {
                                                        arrayList.add(Integer.valueOf(jSONArray3.getInt(i)));
                                                        i++;
                                                    }
                                                    iVar.a(arrayList);
                                                }
                                                if (!jSONObject5.isNull("install")) {
                                                    arrayList3 = new ArrayList();
                                                    JSONArray jSONArray6 = jSONObject5.getJSONArray("install");
                                                    i = 0;
                                                    while (i < jSONArray6.length()) {
                                                        arrayList3.add(Integer.valueOf(jSONArray6.getInt(i)));
                                                        i++;
                                                    }
                                                    iVar.b(arrayList3);
                                                }
                                                if (!jSONObject5.isNull("tp")) {
                                                    arrayList3 = new ArrayList();
                                                    JSONArray jSONArray7 = jSONObject5.getJSONArray("tp");
                                                    i = 0;
                                                    while (i < jSONArray7.length()) {
                                                        JSONObject jSONObject6 = jSONArray7.getJSONObject(i);
                                                        y yVar = new y();
                                                        yVar.a(jSONObject6.getString("n"));
                                                        yVar.b(jSONObject6.getString("v"));
                                                        arrayList3.add(yVar);
                                                        i++;
                                                    }
                                                    iVar.c(arrayList3);
                                                }
                                                this.s.add(iVar);
                                                i2++;
                                            }
                                        }
                                    } else if (string.equals("delete")) {
                                        Set hashSet = new HashSet();
                                        if (!jSONObject.isNull(i.a)) {
                                            jSONArray2 = jSONObject.getJSONArray(i.a);
                                            i = 0;
                                            while (i < jSONArray2.length()) {
                                                hashSet.add(Integer.valueOf(jSONArray2.getJSONObject(i3).getInt(AnalyticsEvent.EVENT_ID)));
                                                i++;
                                            }
                                            List arrayList4 = new ArrayList();
                                            Iterator it = this.s.iterator();
                                            while (it.hasNext()) {
                                                i iVar2 = (i) it.next();
                                                if (!hashSet.contains(iVar2.b())) {
                                                    arrayList4.add(iVar2);
                                                }
                                            }
                                            this.s = arrayList4;
                                        }
                                    }
                                }
                                i3++;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    boolean b() {
        return this.a == -1 || System.currentTimeMillis() - this.b < this.a;
    }

    String c() {
        return this.d;
    }

    void c(Context context) {
        String str = ac.a(context) + System.getProperty("line.separator") + ".3ca154f5-9711-475d-819c-7bab4289e4a7";
        JSONObject jSONObject = new JSONObject();
        String a = a();
        if (a != null && a.length() > 0) {
            jSONObject.put("core", new JSONObject(a));
        }
        a = w();
        if (a != null && a.length() > 0) {
            jSONObject.put("extra", new JSONObject(a));
        }
        ac.a(str, jSONObject.toString());
    }

    long d() {
        return this.a;
    }

    String e() {
        return this.c;
    }

    String f() {
        return this.e;
    }

    String g() {
        return this.f;
    }

    boolean h() {
        return this.h;
    }

    boolean i() {
        return this.i;
    }

    boolean j() {
        return this.j;
    }

    boolean k() {
        return this.k;
    }

    long l() {
        return this.m;
    }

    long m() {
        return this.n;
    }

    long n() {
        return this.o;
    }

    int o() {
        return this.g;
    }

    long p() {
        return this.b;
    }

    Map q() {
        return this.t;
    }

    Map r() {
        return p;
    }

    public Map s() {
        return q;
    }

    b t() {
        return this.r;
    }

    List u() {
        return this.s;
    }

    int v() {
        return this.l;
    }

    protected String w() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("stopForPeriodTimestamp", p());
        return jSONObject.toString();
    }
}