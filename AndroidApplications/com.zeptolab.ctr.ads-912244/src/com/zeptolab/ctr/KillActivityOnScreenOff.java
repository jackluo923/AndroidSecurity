package com.zeptolab.ctr;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class KillActivityOnScreenOff extends BroadcastReceiver {
    Activity finishme;

    public KillActivityOnScreenOff(Activity activity) {
        this.finishme = null;
        this.finishme = activity;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            Log.i("activity", "finish him!");
            this.finishme.finish();
        }
    }
}