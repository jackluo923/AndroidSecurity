package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class GoogleCloudMessaging {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    static GoogleCloudMessaging Kq = null;
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
    private PendingIntent Kr;
    final BlockingQueue Ks;
    private Handler Kt;
    private Messenger Ku;
    private Context kL;

    class AnonymousClass_1 extends Handler {
        AnonymousClass_1(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            GoogleCloudMessaging.this.Ks.add((Intent) message.obj);
        }
    }

    public GoogleCloudMessaging() {
        this.Ks = new LinkedBlockingQueue();
        this.Kt = new AnonymousClass_1(Looper.getMainLooper());
        this.Ku = new Messenger(this.Kt);
    }

    private void a(String str, String str2, long j, int i, Bundle bundle) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        } else if (str == null) {
            throw new IllegalArgumentException("Missing 'to'");
        } else {
            Intent intent = new Intent("com.google.android.gcm.intent.SEND");
            intent.putExtras(bundle);
            c(intent);
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            intent.putExtra("google.to", str);
            intent.putExtra("google.message_id", str2);
            intent.putExtra("google.ttl", Long.toString(j));
            intent.putExtra("google.delay", Integer.toString(i));
            this.kL.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
        }
    }

    private void c(String... strArr) {
        String d = d(strArr);
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
        intent.putExtra("google.messenger", this.Ku);
        c(intent);
        intent.putExtra("sender", d);
        this.kL.startService(intent);
    }

    public static synchronized GoogleCloudMessaging getInstance(Context context) {
        GoogleCloudMessaging googleCloudMessaging;
        synchronized (GoogleCloudMessaging.class) {
            if (Kq == null) {
                Kq = new GoogleCloudMessaging();
                Kq.kL = context;
            }
            googleCloudMessaging = Kq;
        }
        return googleCloudMessaging;
    }

    private void gg() {
        Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
        this.Ks.clear();
        intent.putExtra("google.messenger", this.Ku);
        c(intent);
        this.kL.startService(intent);
    }

    synchronized void c(Intent intent) {
        if (this.Kr == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.Kr = PendingIntent.getBroadcast(this.kL, 0, intent2, 0);
        }
        intent.putExtra("app", this.Kr);
    }

    public void close() {
        gh();
    }

    String d(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(strArr[0]);
        int i = 1;
        while (i < strArr.length) {
            stringBuilder.append(',').append(strArr[i]);
            i++;
        }
        return stringBuilder.toString();
    }

    public String getMessageType(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            return null;
        }
        String stringExtra = intent.getStringExtra("message_type");
        return stringExtra == null ? MESSAGE_TYPE_MESSAGE : stringExtra;
    }

    synchronized void gh() {
        if (this.Kr != null) {
            this.Kr.cancel();
            this.Kr = null;
        }
    }

    public String register(String... strArr) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        }
        this.Ks.clear();
        c(strArr);
        try {
            Intent intent = (Intent) this.Ks.poll(5000, TimeUnit.MILLISECONDS);
            if (intent == null) {
                throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
            }
            String stringExtra = intent.getStringExtra("registration_id");
            if (stringExtra != null) {
                return stringExtra;
            }
            intent.getStringExtra(ErrorUtil.ERROR);
            String stringExtra2 = intent.getStringExtra(ErrorUtil.ERROR);
            if (stringExtra2 != null) {
                throw new IOException(stringExtra2);
            }
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
        } catch (InterruptedException e) {
            throw new IOException(e.getMessage());
        }
    }

    public void send(String str, String str2, long j, Bundle bundle) {
        a(str, str2, j, -1, bundle);
    }

    public void send(String str, String str2, Bundle bundle) {
        send(str, str2, -1, bundle);
    }

    public void unregister() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        }
        gg();
        try {
            Intent intent = (Intent) this.Ks.poll(5000, TimeUnit.MILLISECONDS);
            if (intent == null) {
                throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
            } else if (intent.getStringExtra("unregistered") == null) {
                String stringExtra = intent.getStringExtra(ErrorUtil.ERROR);
                if (stringExtra != null) {
                    throw new IOException(stringExtra);
                }
                throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
            }
        } catch (InterruptedException e) {
            throw new IOException(e.getMessage());
        }
    }
}