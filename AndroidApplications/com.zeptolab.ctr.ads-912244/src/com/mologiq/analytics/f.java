package com.mologiq.analytics;

import com.google.android.gms.games.request.Requests;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class f {
    private String a;
    private String b;
    private String c;
    private boolean d;
    private String e;
    private int f;
    private String g;
    private String h;
    private a i;
    private a j;
    private a k;

    class a {
        private Long b;
        private Long c;
        private String d;
        private String e;
        private String f;
        private List g;

        class a {
            private String b;
            private String c;

            a() {
            }

            String a_() {
                return this.b;
            }

            void a_(String str) {
                this.b = str;
            }

            String b() {
                return this.c;
            }

            void b(String str) {
                this.c = str;
            }
        }

        a() {
        }

        JSONObject a_() {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AdTrackerConstants.TIMESTAMP, this.b);
            jSONObject.put("bid", this.c);
            jSONObject.put(AnalyticsSQLiteHelper.EVENT_LIST_SID, this.d);
            jSONObject.put("pid", this.e);
            jSONObject.put("p", this.f);
            if (this.g != null && this.g.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("n", aVar.a());
                    jSONObject2.put("v", aVar.b());
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("tp", jSONArray);
            }
            return jSONObject;
        }

        void a_(Long l) {
            this.b = l;
        }

        void a_(String str) {
            this.d = str;
        }

        void a_(List list) {
            this.g = list;
        }

        void b(Long l) {
            this.c = l;
        }

        void b(String str) {
            this.f = str;
        }
    }

    f() {
    }

    String a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("androidadvertisingid", this.c);
        jSONObject.put("androidadvertisingidoptout", this.d);
        jSONObject.put("androidid", this.e);
        jSONObject.put("v", this.a);
        jSONObject.put("d", this.b);
        jSONObject.put("p", this.g);
        jSONObject.put("wifi", this.f);
        jSONObject.put("ip", this.h);
        if (this.k != null) {
            jSONObject.put("clicks", this.k.a());
        }
        if (this.i != null) {
            jSONObject.put("impressions", this.i.a());
        }
        if (this.j != null) {
            jSONObject.put(Requests.EXTRA_REQUESTS, this.j.a());
        }
        return jSONObject.toString();
    }

    void a(int i) {
        this.f = i;
    }

    void a(a aVar) {
        this.i = aVar;
    }

    void a(String str) {
        this.a = str;
    }

    void a(boolean z) {
        this.d = z;
    }

    void b(a aVar) {
        this.j = aVar;
    }

    void b(String str) {
        this.b = str;
    }

    void c(a aVar) {
        this.k = aVar;
    }

    void c(String str) {
        this.g = str;
    }

    void d(String str) {
        this.h = str;
    }

    void e(String str) {
        this.c = str;
    }

    void f_(String str) {
        this.e = str;
    }
}