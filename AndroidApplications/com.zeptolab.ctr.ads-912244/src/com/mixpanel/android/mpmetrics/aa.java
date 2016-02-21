package com.mixpanel.android.mpmetrics;

import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aa {
    private final JSONObject a;
    private final int b;
    private final int c;
    private final List d;

    static class a extends Exception {
        private static final long a = 4858739193395706341L;

        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    public class b {
        private final int b;
        private final String c;
        private final String d;
        private final List e;

        private b(JSONObject jSONObject) {
            this.b = jSONObject.getInt(AnalyticsEvent.EVENT_ID);
            this.c = jSONObject.getString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE).intern();
            this.d = jSONObject.getString("prompt");
            List emptyList = Collections.emptyList();
            if (jSONObject.has("extra_data")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("extra_data");
                if (jSONObject2.has("$choices")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("$choices");
                    List arrayList = new ArrayList(jSONArray.length());
                    int i = 0;
                    while (i < jSONArray.length()) {
                        arrayList.add(jSONArray.getString(i));
                        i++;
                    }
                    emptyList = arrayList;
                }
            }
            this.e = Collections.unmodifiableList(emptyList);
            if (d() == com.mixpanel.android.mpmetrics.aa.c.b && this.e.size() == 0) {
                throw new a("Question is multiple choice but has no answers:" + jSONObject.toString());
            }
        }

        public int a() {
            return this.b;
        }

        public String b_() {
            return this.d;
        }

        public List c() {
            return this.e;
        }

        public com.mixpanel.android.mpmetrics.aa.c d() {
            if (com.mixpanel.android.mpmetrics.aa.c.b.toString().equals(this.c)) {
                return com.mixpanel.android.mpmetrics.aa.c.b;
            }
            return com.mixpanel.android.mpmetrics.aa.c.c.toString().equals(this.c) ? com.mixpanel.android.mpmetrics.aa.c.c : com.mixpanel.android.mpmetrics.aa.c.a;
        }
    }

    public enum c {
        UNKNOWN,
        MULTIPLE_CHOICE,
        TEXT;

        static {
            a = new com.mixpanel.android.mpmetrics.aa.c("UNKNOWN", 0);
            b = new com.mixpanel.android.mpmetrics.aa.c("MULTIPLE_CHOICE", 1);
            c = new com.mixpanel.android.mpmetrics.aa.c("TEXT", 2);
            d = new com.mixpanel.android.mpmetrics.aa.c[]{a, b, c};
        }

        public String toString() {
            if (b == this) {
                return "multiple_choice";
            }
            return c == this ? "text" : "*unknown_type*";
        }
    }

    aa(JSONObject jSONObject) {
        int i = 0;
        try {
            this.a = jSONObject;
            this.b = jSONObject.getInt(AnalyticsEvent.EVENT_ID);
            this.c = jSONObject.getJSONArray("collections").getJSONObject(0).getInt(AnalyticsEvent.EVENT_ID);
            JSONArray jSONArray = jSONObject.getJSONArray("questions");
            if (jSONArray.length() == 0) {
                throw new a("Survey has no questions.");
            }
            List arrayList = new ArrayList(jSONArray.length());
            while (i < jSONArray.length()) {
                arrayList.add(new b(jSONArray.getJSONObject(i), null));
                i++;
            }
            this.d = Collections.unmodifiableList(arrayList);
        } catch (JSONException e) {
            throw new a("Survey JSON was unexpected or bad", e);
        }
    }

    String a() {
        return this.a.toString();
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public List d() {
        return this.d;
    }
}