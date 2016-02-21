package com.zeptolab.ctr.pushes;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat.Builder;
import android.util.Log;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.zeptolab.ctr.CtrApp;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZR;
import java.util.Date;
import java.util.Iterator;

public class GcmIntentService extends IntentService {
    private static final String TAG = "CTR";
    private static final Integer m_hashLength;

    static {
        m_hashLength = Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
    }

    public GcmIntentService() {
        super("GcmIntentService");
    }

    private void displayNotification(Intent intent) {
        Context applicationContext = getApplicationContext();
        Bundle extras = intent.getExtras();
        CharSequence applicationName = getApplicationName(applicationContext);
        CharSequence messageText = getMessageText(extras);
        NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService("notification");
        long currentTimeMillis = System.currentTimeMillis();
        Intent intent2 = new Intent(applicationContext, CtrApp.class);
        intent2.putExtras(intent.getExtras());
        int time = (int) new Date().getTime();
        PendingIntent activity = PendingIntent.getActivity(applicationContext, time, intent2, 134217728);
        Builder builder = new Builder(applicationContext.getApplicationContext());
        drawable com_zeptolab_ctr_ads_R_drawable = ZR.drawable;
        builder.setSmallIcon(R.drawable.icon);
        builder.setContentIntent(activity);
        builder.setTicker(messageText);
        builder.setContentText(messageText);
        builder.setContentTitle(applicationName);
        builder.setWhen(currentTimeMillis);
        builder.setAutoCancel(true);
        builder.setDefaults(GoogleScorer.CLIENT_ALL);
        notificationManager.notify(time, builder.build());
    }

    private String getApplicationName(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)");
    }

    private CharSequence getMessageText(Bundle bundle) {
        String str = "null";
        try {
            Iterator it = bundle.keySet().iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2.compareToIgnoreCase("p") == 0 && bundle.getString(str2).length() > m_hashLength.intValue()) {
                    bundle.getString(str2);
                } else if (str2.compareToIgnoreCase("payload") == 0 && bundle.getString(str2).length() > 0) {
                    str = bundle.getString(str2);
                }
                Log.d(TAG, String.format("onMessage: %s=%s", new Object[]{str2, bundle.getString(str2)}));
            }
            return str;
        } catch (NullPointerException e) {
            return "no key=msg has been provided.";
        }
    }

    private void sendNotification(String str, Bundle bundle) {
        Log.i(TAG, str);
    }

    protected void onHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        String messageType = GoogleCloudMessaging.getInstance(this).getMessageType(intent);
        if (!extras.isEmpty()) {
            if (GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR.equals(messageType)) {
                sendNotification("Send error", extras);
            } else if (GoogleCloudMessaging.MESSAGE_TYPE_DELETED.equals(messageType)) {
                sendNotification("Deleted messages on server", extras);
            } else if (GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE.equals(messageType)) {
                displayNotification(intent);
                Log.i(TAG, "Received: " + extras.toString());
            }
        }
        GcmBroadcastReceiver.completeWakefulIntent(intent);
    }
}