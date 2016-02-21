package com.mologiq.analytics;

import android.content.Context;
import org.json.JSONObject;

abstract class s {
    private final String a;

    s(String str) {
        this.a = str;
    }

    protected abstract String a();

    void a(Context context) {
        try {
            a(ac.b(ac.a(context) + System.getProperty("line.separator") + this.a), context);
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }

    protected abstract void a(String str, Context context);

    boolean b(Context context) {
        String b = ac.b(ac.a(context) + System.getProperty("line.separator") + this.a);
        boolean z = true;
        if (b != null && b.length() > 0) {
            JSONObject jSONObject = new JSONObject(b).getJSONObject("core");
            if (jSONObject != null && jSONObject.toString().equals(a())) {
                z = false;
            }
        }
        if (z) {
            c(context);
        }
        return z;
    }

    abstract void c(Context context);
}