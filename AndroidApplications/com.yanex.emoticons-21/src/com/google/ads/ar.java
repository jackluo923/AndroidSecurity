package com.google.ads;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

final class ar implements Runnable {
    final /* synthetic */ Context a;

    ar(Context context) {
        this.a = context;
    }

    public final void run() {
        Editor edit = PreferenceManager.getDefaultSharedPreferences(this.a.getApplicationContext()).edit();
        edit.putString("drt", "");
        edit.putLong("drt_ts", 0);
        edit.commit();
    }
}