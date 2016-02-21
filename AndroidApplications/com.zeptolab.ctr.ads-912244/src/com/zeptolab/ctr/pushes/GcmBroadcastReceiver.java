package com.zeptolab.ctr.pushes;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import com.otherlevels.android.library.OlAndroidLibrary;

public class GcmBroadcastReceiver extends WakefulBroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Log.i("CTR", "Received GCM intent");
        OlAndroidLibrary.getInstance().registerIntent(context, intent);
        startWakefulService(context, intent.setComponent(new ComponentName(context.getPackageName(), GcmIntentService.class.getName())));
        setResultCode(-1);
    }
}