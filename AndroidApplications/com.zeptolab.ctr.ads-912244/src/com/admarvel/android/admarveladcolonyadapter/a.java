package com.admarvel.android.admarveladcolonyadapter;

import android.app.Activity;
import com.admarvel.android.util.Logging;
import com.jirbo.adcolony.AdColony;

class a implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ AdMarvelAdColonyAdapter e;

    a(AdMarvelAdColonyAdapter adMarvelAdColonyAdapter, Activity activity, String str, String str2, String str3) {
        this.e = adMarvelAdColonyAdapter;
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public void run() {
        AdColony.configure(this.a, this.b, this.c, new String[]{this.d});
        Logging.log("Initializing AdColony: appVersion: " + this.b + "; appId: " + this.c + "; zoneId: " + this.d);
        AdMarvelAdColonyAdapter.access$002(this.e, true);
    }
}