package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import com.google.ads.b.w;
import com.google.ads.b.x;
import com.google.ads.util.g;

public final class b {
    public static void a(w wVar, x xVar) {
        synchronized (AdActivity.b) {
            if (AdActivity.d == null) {
                AdActivity.d = wVar;
            } else if (AdActivity.d != wVar) {
                g.b("Tried to launch a new AdActivity with a different AdManager.");
                return;
            }
            Activity activity = (Activity) wVar.g().c.a();
            if (activity == null) {
                g.e("activity was null while launching an AdActivity.");
            } else {
                Intent intent = new Intent(activity.getApplicationContext(), AdActivity.class);
                intent.putExtra("com.google.ads.AdOpener", xVar.a());
                try {
                    g.a("Launching AdActivity.");
                    activity.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    g.b("Activity not found.", e);
                }
            }
        }
    }

    public static boolean a() {
        boolean z;
        synchronized (AdActivity.b) {
            z = AdActivity.e != null;
        }
        return z;
    }

    public static boolean b_() {
        boolean z;
        synchronized (AdActivity.b) {
            z = AdActivity.c != null;
        }
        return z;
    }
}