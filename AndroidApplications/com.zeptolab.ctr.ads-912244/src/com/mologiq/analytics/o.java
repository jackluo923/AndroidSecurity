package com.mologiq.analytics;

import com.inmobi.commons.analytics.db.AnalyticsEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

class o {
    private static final StringBuilder a;
    private static final o c;
    private static final AtomicBoolean e;
    private c b;
    private b d;

    class a {
        private int b;
        private int c;
        private List d;

        a() {
        }

        int a_() {
            return this.b;
        }

        void a_(int i) {
            this.b = i;
        }

        void a_(List list) {
            this.d = list;
        }

        int b() {
            return this.c;
        }

        void b(int i) {
            this.c = i;
        }

        List c() {
            return this.d;
        }
    }

    class b {
        private String b;
        private int c;
        private List d;

        b() {
        }

        String a() {
            return this.b;
        }

        void a(int i) {
            this.c = i;
        }

        void a(String str) {
            this.b = str;
        }

        void a(List list) {
            this.d = list;
        }

        int b_() {
            return this.c;
        }

        List c() {
            return this.d;
        }
    }

    static {
        a = new StringBuilder("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");
        c = new o();
        e = new AtomicBoolean(false);
    }

    o() {
        this.b = new c();
    }

    static o a() {
        if (e.compareAndSet(false, true)) {
            c.b();
        }
        return c;
    }

    void a(b bVar) {
        this.d = bVar;
    }

    protected void b() {
        try {
            String a = this.b.a("9dJEn8kMhxEAzsQ/Ygqs5w==", a.toString());
            if (a != null && a.length() > 0) {
                JSONObject jSONObject = new JSONObject(a);
                if (jSONObject != null && jSONObject.length() > 0) {
                    b bVar = new b();
                    bVar.a(jSONObject.getString("version"));
                    bVar.a(jSONObject.getInt("appcount"));
                    JSONArray jSONArray = jSONObject.getJSONArray("classifications");
                    if (jSONArray != null && jSONArray.length() > 0) {
                        List arrayList = new ArrayList();
                        int i = 0;
                        while (i < jSONArray.length()) {
                            a aVar = new a();
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            aVar.a(jSONObject2.getInt(AnalyticsEvent.EVENT_ID));
                            aVar.b(jSONObject2.getInt("mean"));
                            JSONArray jSONArray2 = jSONObject2.getJSONArray("apps");
                            List arrayList2 = new ArrayList();
                            int i2 = 0;
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
                    a(bVar);
                }
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }

    b c() {
        return this.d;
    }
}