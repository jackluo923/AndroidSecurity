package com.yanex.emoticons;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.preference.PreferenceManager;

public class OnBootReceiver extends BroadcastReceiver {
    private Context a;

    public void onReceive(Context context, Intent intent) {
        this.a = context;
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction()) && PreferenceManager.getDefaultSharedPreferences(context).getBoolean("notification", true)) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Notification notification = new Notification(PreferenceManager.getDefaultSharedPreferences(this.a).getBoolean("old_icon", false) ? 2130837660 : 2130837661, context.getString(2131427341), 0);
            Context applicationContext = context.getApplicationContext();
            CharSequence string = context.getString(2131427341);
            CharSequence string2 = context.getString(2131427342);
            PendingIntent activity = PendingIntent.getActivity(context, 0, new Intent(context, MainActivity.class), 0);
            notification.flags |= 32;
            notification.setLatestEventInfo(applicationContext, string, string2, activity);
            notificationManager.notify(1, notification);
        }
    }
}