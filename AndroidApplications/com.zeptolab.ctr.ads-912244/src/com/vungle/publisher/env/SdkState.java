package com.vungle.publisher.env;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.as;
import com.vungle.publisher.aw;
import com.vungle.publisher.cb;
import com.vungle.publisher.cj;
import com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import com.vungle.publisher.inject.annotations.VungleServiceClass;
import com.vungle.publisher.w;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class SdkState {
    @Inject
    AdManager a;
    @Inject
    Context b;
    @Inject
    as c;
    @Inject
    public cj d;
    @Inject
    ExternalStorageStateBroadcastReceiver e;
    @Inject
    public Provider f;
    @VungleServiceClass
    @Inject
    Class g;
    public final a h;
    public final AtomicBoolean i;
    final AtomicLong j;
    @EnvSharedPreferences
    @Inject
    public SharedPreferences k;

    @Singleton
    public static class EndAdEventListener extends aw {
        @Inject
        SdkState a;

        EndAdEventListener() {
        }

        public void onEvent(w wVar) {
            Logger.d(Logger.EVENT_TAG, "SdkState received end ad event");
            d();
            SdkState sdkState = this.a;
            long b = SdkState.b();
            Logger.v(Logger.AD_TAG, new StringBuilder("setting last ad end millis: ").append(b).toString());
            sdkState.k.edit().putLong("VgLastViewedTime", b).apply();
            this.a.i.set(false);
        }
    }

    @Singleton
    public static class SessionEndListener implements com.vungle.publisher.by.a {
        @Inject
        SdkState a;

        public final void a(long j) {
            this.a.j.compareAndSet(j, 0);
        }
    }

    public static class a {
        public cb a;

        a() {
            this.a = new cb(Throwable.class);
        }
    }

    public SdkState() {
        this.h = new a();
        this.i = new AtomicBoolean();
        this.j = new AtomicLong();
    }

    public static long b() {
        return SystemClock.elapsedRealtime();
    }

    public final long a() {
        long j = this.k.getLong("VgLastViewedTime", 0);
        Logger.v(Logger.AD_TAG, new StringBuilder("returning last ad end millis: ").append(j).toString());
        return j;
    }

    public final void c() {
        this.e.a();
        this.c.k();
        if (this.c.h()) {
            Intent intent = new Intent(this.b, this.g);
            intent.setAction(VungleService.SESSION_EVENT_ACTION);
            intent.putExtra(VungleService.ACTIVITY_EVENT_EXTRA_KEY, VungleService.ACTIVITY_RESUME);
            long currentTimeMillis = System.currentTimeMillis();
            if (this.j.compareAndSet(0, currentTimeMillis)) {
                intent.putExtra(VungleService.SESSION_START_MILLIS_EXTRA_KEY, currentTimeMillis);
            }
            this.b.startService(intent);
        }
    }

    public final void d() {
        BroadcastReceiver broadcastReceiver = this.e;
        try {
            broadcastReceiver.b.unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            Logger.d(Logger.DEVICE_TAG, "storage state broadcast receiver not registered");
        }
        Intent intent = new Intent(this.b, this.g);
        intent.setAction(VungleService.SESSION_EVENT_ACTION);
        intent.putExtra(VungleService.ACTIVITY_EVENT_EXTRA_KEY, VungleService.ACTIVITY_PAUSE);
        intent.putExtra(VungleService.SESSION_START_MILLIS_EXTRA_KEY, this.j.get());
        intent.putExtra(VungleService.ACTIVITY_PAUSE_MILLIS_EXTRA_KEY, System.currentTimeMillis());
        this.b.startService(intent);
    }
}