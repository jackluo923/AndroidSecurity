package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public class GCMReceiver extends BroadcastReceiver {
    String a;

    public GCMReceiver() {
        this.a = "MPGCMReceiver";
    }

    @TargetApi(8)
    private void a(Context context, PendingIntent pendingIntent, int i, CharSequence charSequence, CharSequence charSequence2) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        Notification notification = new Notification(i, charSequence2, System.currentTimeMillis());
        notification.flags |= 16;
        notification.setLatestEventInfo(context, charSequence, charSequence2, pendingIntent);
        notificationManager.notify(0, notification);
    }

    private void a(Context context, Intent intent) {
        CharSequence string = intent.getExtras().getString("mp_message");
        if (string != null) {
            PackageManager packageManager = context.getPackageManager();
            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(context.getPackageName());
            CharSequence charSequence = AdTrackerConstants.BLANK;
            int i = 17301651;
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                charSequence = packageManager.getApplicationLabel(applicationInfo);
                i = applicationInfo.icon;
            } catch (NameNotFoundException e) {
            }
            PendingIntent activity = PendingIntent.getActivity(context.getApplicationContext(), 0, launchIntentForPackage, 134217728);
            if (VERSION.SDK_INT < 11) {
                a(context, activity, i, charSequence, string);
            } else {
                b(context, activity, i, charSequence, string);
            }
        }
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra("registration_id");
        if (intent.getStringExtra(ErrorUtil.ERROR) != null) {
            Log.e(this.a, "Error when registering for GCM: " + intent.getStringExtra(ErrorUtil.ERROR));
        } else if (stringExtra != null) {
            j.a(new f(this, stringExtra));
        } else if (intent.getStringExtra("unregistered") != null) {
            j.a(new g(this));
        }
    }

    private void b(Context context, PendingIntent pendingIntent, int i, CharSequence charSequence, CharSequence charSequence2) {
        Notification notification;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        Builder contentIntent = new Builder(context).setSmallIcon(i).setTicker(charSequence2).setWhen(System.currentTimeMillis()).setContentTitle(charSequence).setContentText(charSequence2).setContentIntent(pendingIntent);
        notification = VERSION.SDK_INT < 16 ? contentIntent.getNotification() : contentIntent.build();
        notification.flags |= 16;
        notificationManager.notify(0, notification);
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            a(intent);
        } else if ("com.google.android.c2dm.intent.RECEIVE".equals(action)) {
            a(context, intent);
        }
    }
}