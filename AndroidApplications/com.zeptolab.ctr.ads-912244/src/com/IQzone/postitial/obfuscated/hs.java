package com.IQzone.postitial.obfuscated;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

final class hs implements Runnable {
    private final pw a;
    private final Context b;

    public hs(Context context, pw pwVar) {
        this.a = pwVar;
        this.b = context;
    }

    public final void run() {
        try {
            this.b.registerReceiver((BroadcastReceiver) this.a.a(), new IntentFilter(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION));
        } catch (om e) {
            gv.i();
        }
    }
}