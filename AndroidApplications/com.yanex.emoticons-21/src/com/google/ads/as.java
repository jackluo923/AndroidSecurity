package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.util.g;
import java.lang.ref.WeakReference;
import java.util.Date;

final class as implements Runnable {
    private final WeakReference a;
    private final Editor b;

    public as(Activity activity) {
        this(activity, (byte) 0);
    }

    private as(Activity activity, byte b) {
        this.a = new WeakReference(activity);
        this.b = null;
    }

    public final void run() {
        try {
            Context context = (Activity) this.a.get();
            if (context == null) {
                g.a("Activity was null while making a doritos cookie request.");
            } else {
                Object obj;
                Editor edit;
                Cursor query = context.getContentResolver().query(ap.a, ap.b, null, null, null);
                if (query == null || !query.moveToFirst() || query.getColumnNames().length <= 0) {
                    g.a("Google+ app not installed, not storing doritos cookie");
                    obj = null;
                } else {
                    String str = query.getString(query.getColumnIndex(query.getColumnName(0)));
                }
                edit = this.b == null ? PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).edit() : this.b;
                if (TextUtils.isEmpty(obj)) {
                    edit.putString("drt", "");
                    edit.putLong("drt_ts", 0);
                } else {
                    edit.putString("drt", obj);
                    edit.putLong("drt_ts", new Date().getTime());
                }
                edit.commit();
            }
        } catch (Throwable th) {
            g.d("An unknown error occurred while sending a doritos request.", th);
        }
    }
}