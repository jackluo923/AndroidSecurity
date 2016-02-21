package com.IQzone.postitial.obfuscated;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

final class hc extends BroadcastReceiver {
    private /* synthetic */ hb a;

    hc(hb hbVar) {
        this.a = hbVar;
    }

    public final void onReceive(Context context, Intent intent) {
        try {
            if (intent.getExtras() != null) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getExtras().get("networkInfo");
                if (networkInfo != null && networkInfo.getState() == State.CONNECTED) {
                    gv.i();
                    this.a.a.e();
                }
            }
        } catch (Throwable th) {
            gv.i();
        }
    }
}