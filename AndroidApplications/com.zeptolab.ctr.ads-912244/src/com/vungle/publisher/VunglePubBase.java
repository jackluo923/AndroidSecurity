package com.vungle.publisher;

import android.content.Intent;
import com.google.android.gms.cast.Cast;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.ad.AdManager.AnonymousClass_1;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.async.ScheduledPriorityExecutor.b;
import com.vungle.publisher.db.DatabaseBroadcastReceiver;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.env.SdkState.EndAdEventListener;
import com.vungle.publisher.event.ClientEventListenerAdapter;
import com.vungle.publisher.file.CacheManager;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.reporting.AdReportManager;
import javax.inject.Inject;
import javax.inject.Singleton;

abstract class VunglePubBase {
    public static final String VERSION = "3.2.0";
    @Inject
    AdManager a;
    @Inject
    AsyncInitEventListener b;
    @Inject
    CacheManager c;
    @Inject
    DatabaseBroadcastReceiver d;
    @Inject
    DatabaseHelper e;
    @Inject
    Demographic f;
    @Inject
    protected as g;
    @Inject
    cj h;
    @Inject
    ExternalStorageStateBroadcastReceiver i;
    @Inject
    AdConfig j;
    @Inject
    SafeBundleAdConfigFactory k;
    @Inject
    SdkConfig l;
    @Inject
    SdkState m;
    private boolean n;
    private boolean o;

    @Singleton
    static class AsyncInitEventListener extends aw {
        @Inject
        AdManager a;
        @Inject
        ScheduledPriorityExecutor b;
        @Inject
        ProtocolHttpGateway c;
        @Inject
        AdReportManager d;
        @Inject
        SdkState e;
        private final ce g;

        AsyncInitEventListener() {
            this.g = new ce();
        }

        private void a() {
            d();
            this.b.a(new Runnable() {
                public final void run() {
                    AdReportManager adReportManager = AsyncInitEventListener.this.d;
                    if (adReportManager.e.k.getBoolean("IsVgAppInstalled", false)) {
                        Logger.v(Logger.REPORT_TAG, "install already reported");
                    } else {
                        Logger.d(Logger.REPORT_TAG, "reporting install");
                        ProtocolHttpGateway protocolHttpGateway = adReportManager.d;
                        protocolHttpGateway.a((HttpTransaction) protocolHttpGateway.l.get());
                    }
                    AsyncInitEventListener.this.e.c();
                    AsyncInitEventListener.this.c.c();
                    AsyncInitEventListener.this.d.a();
                    AdManager adManager = AsyncInitEventListener.this;
                    adManager.g.d();
                    adManager.m.c();
                    if (AsyncInitEventListener.this.a() != null) {
                        AsyncInitEventListener.this.f.c(new p());
                    }
                }
            }, b.j, 2000);
        }

        public void onEvent(aj ajVar) {
            Logger.d(Logger.DATABASE_TAG, "on database ready");
            if (this.g.a(0) == 3) {
                a();
            }
        }

        public void onEvent(au auVar) {
            Logger.d(Logger.DEVICE_TAG, "device ID available");
            if (this.g.a(1) == 3) {
                a();
            }
        }
    }

    protected VunglePubBase() {
    }

    private boolean a(boolean z, String str) {
        boolean z2 = this.o;
        if (z2) {
            Logger.v(Logger.VUNGLE_TAG, "VunglePub was initialized");
        } else if (z) {
            Logger.w(Logger.VUNGLE_TAG, new StringBuilder("Please call VunglePub.init() before ").append(str).toString());
        }
        return z2;
    }

    private boolean c() {
        boolean z = this.n;
        if (!z) {
            Logger.d(Logger.VUNGLE_TAG, "VunglePub not injected");
        }
        return z;
    }

    protected boolean a() {
        SdkConfig sdkConfig = this.l;
        String[] strArr = new String[]{"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WRITE_EXTERNAL_STORAGE"};
        int i = 0;
        boolean z = true;
        while (i < 3) {
            String str = strArr[i];
            if (sdkConfig.f.checkCallingOrSelfPermission(str) != 0) {
                Logger.w(Logger.CONFIG_TAG, new StringBuilder("Missing permission - did you remember to add <uses-permission android:name=\"").append(str).append("\"/> to your AndroidManifest.xml?").toString());
                z = false;
            }
            i++;
        }
        int i2;
        if (i2 == 0) {
            return false;
        }
        i2 = !sdkConfig.f.getPackageManager().queryIntentServices(new Intent(sdkConfig.f, sdkConfig.g), Cast.MAX_MESSAGE_LENGTH).isEmpty();
        if (i2 == 0) {
            Logger.w(Logger.CONFIG_TAG, new StringBuilder("Missing service - did you remember to add <service android:name=\"").append(sdkConfig.g.getName()).append("\" android:exported=\"false\"/> to your AndroidManifest.xml?").toString());
        }
        return i2 != 0;
    }

    protected boolean b() {
        if (a(true, "playAd()")) {
            int i;
            SdkState sdkState = this.m;
            long b = SdkState.b();
            long a = sdkState.a();
            int b2 = (int) ((SdkState.b() - sdkState.a()) / 1000);
            if (b2 < 0) {
                Logger.d(Logger.AD_TAG, new StringBuilder("negative adDelayElapsedSeconds ").append(b2).append(", currentTimestampMillis ").append(b).append(", lastAdEndMillis ").append(a).toString());
                boolean z = true;
            } else {
                int i2 = sdkState.k.getInt("VgAdDelayDuration", 0);
                i = b2 >= i2;
                if (i != 0) {
                    Logger.v(Logger.AD_TAG, b2 + " / " + i2 + " ad delay seconds elapsed");
                } else {
                    Logger.d(Logger.AD_TAG, b2 + " / " + i2 + " ad delay seconds elapsed");
                    sdkState.d.b(new ac(b2, i2));
                }
            }
            if (i == 0) {
                return false;
            }
            if (sdkState.i.compareAndSet(false, true)) {
                ((EndAdEventListener) sdkState.f.get()).b();
                return true;
            } else {
                Logger.d(Logger.AD_TAG, "ad already playing");
                sdkState.d.b(new y());
                return false;
            }
        } else if (!this.n) {
            return false;
        } else {
            this.h.b(new ab());
            return false;
        }
    }

    public Demographic getDemographic() {
        Demographic demographic = null;
        try {
            return c() ? this.f : demographic;
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error getting demographic info");
            return demographic;
        }
    }

    public AdConfig getGlobalAdConfig() {
        return c() ? this.j : null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean init(android.content.Context r8, java.lang.String r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.publisher.VunglePubBase.init(android.content.Context, java.lang.String):boolean");
        /*
        r7 = this;
        r2 = 1;
        r1 = r7.o;
        if (r1 == 0) goto L_0x000e;
    L_0x0005:
        r0 = "Vungle";
        r2 = "already initialized";
        com.vungle.log.Logger.d(r0, r2);	 Catch:{ Exception -> 0x00ca }
        r0 = r1;
    L_0x000d:
        return r0;
    L_0x000e:
        r3 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x00ca }
        r0 = 9;
        if (r3 < r0) goto L_0x00ab;
    L_0x0014:
        r0 = r2;
    L_0x0015:
        if (r0 == 0) goto L_0x00ae;
    L_0x0017:
        r4 = "VungleDevice";
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00ca }
        r6 = "Device Android API level ";
        r5.<init>(r6);	 Catch:{ Exception -> 0x00ca }
        r3 = r5.append(r3);	 Catch:{ Exception -> 0x00ca }
        r3 = r3.toString();	 Catch:{ Exception -> 0x00ca }
        com.vungle.log.Logger.d(r4, r3);	 Catch:{ Exception -> 0x00ca }
    L_0x002b:
        if (r0 == 0) goto L_0x00f4;
    L_0x002d:
        r0 = r7.n;	 Catch:{ Exception -> 0x00ca }
        if (r0 == 0) goto L_0x00d5;
    L_0x0031:
        r0 = "Vungle";
        r3 = "already injected";
        com.vungle.log.Logger.d(r0, r3);	 Catch:{ Exception -> 0x00ca }
    L_0x0038:
        r0 = r7.a();	 Catch:{ Exception -> 0x00ca }
        if (r0 == 0) goto L_0x00ed;
    L_0x003e:
        r0 = "Vungle";
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00ca }
        r4 = "3.2.0 init(";
        r3.<init>(r4);	 Catch:{ Exception -> 0x00ca }
        r3 = r3.append(r9);	 Catch:{ Exception -> 0x00ca }
        r4 = ")";
        r3 = r3.append(r4);	 Catch:{ Exception -> 0x00ca }
        r3 = r3.toString();	 Catch:{ Exception -> 0x00ca }
        com.vungle.log.Logger.i(r0, r3);	 Catch:{ Exception -> 0x00ca }
        r0 = r7.i;	 Catch:{ Exception -> 0x00ca }
        r0.a();	 Catch:{ Exception -> 0x00ca }
        r0 = r7.c;	 Catch:{ Exception -> 0x00ca }
        r3 = "VungleFile";
        r4 = "deleting old ad temp directory";
        com.vungle.log.Logger.d(r3, r4);	 Catch:{ Exception -> 0x00ca }
        r0 = r0.b;	 Catch:{ Exception -> 0x00ca }
        r0 = r0.get();	 Catch:{ Exception -> 0x00ca }
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x00ca }
        com.vungle.publisher.file.CacheManager.a(r0);	 Catch:{ Exception -> 0x00ca }
        r0 = r7.b;	 Catch:{ Exception -> 0x00ca }
        r0.b();	 Catch:{ Exception -> 0x00ca }
        r0 = r7.e;	 Catch:{ Exception -> 0x00ca }
        r3 = r0.d;	 Catch:{ Exception -> 0x00ca }
        r4 = new com.vungle.publisher.db.DatabaseHelper$1;	 Catch:{ Exception -> 0x00ca }
        r4.<init>(r0);	 Catch:{ Exception -> 0x00ca }
        r0 = com.vungle.publisher.async.ScheduledPriorityExecutor.b.a;	 Catch:{ Exception -> 0x00ca }
        r3.a(r4, r0);	 Catch:{ Exception -> 0x00ca }
        r0 = r7.g;	 Catch:{ Exception -> 0x00ca }
        r0.k();	 Catch:{ Exception -> 0x00ca }
        r0 = r7.d;	 Catch:{ Exception -> 0x00ca }
        r3 = r0.a;	 Catch:{ Exception -> 0x00ca }
        if (r3 != 0) goto L_0x009e;
    L_0x008f:
        r3 = r0.b;	 Catch:{ Exception -> 0x00ca }
        r4 = new android.content.IntentFilter;	 Catch:{ Exception -> 0x00ca }
        r5 = "com.vungle.publisher.db.DUMP_TABLES";
        r4.<init>(r5);	 Catch:{ Exception -> 0x00ca }
        r3.registerReceiver(r0, r4);	 Catch:{ Exception -> 0x00ca }
        r3 = 1;
        r0.a = r3;	 Catch:{ Exception -> 0x00ca }
    L_0x009e:
        r0 = "Vungle";
        r3 = "initialization successful";
        com.vungle.log.Logger.v(r0, r3);	 Catch:{ Exception -> 0x00ca }
        r0 = 1;
        r7.o = r0;	 Catch:{ Exception -> 0x00ca }
        r0 = r2;
        goto L_0x000d;
    L_0x00ab:
        r0 = 0;
        goto L_0x0015;
    L_0x00ae:
        r4 = "VungleDevice";
        r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00ca }
        r6 = "Device Android API level ";
        r5.<init>(r6);	 Catch:{ Exception -> 0x00ca }
        r3 = r5.append(r3);	 Catch:{ Exception -> 0x00ca }
        r5 = " does not meet required minimum 9";
        r3 = r3.append(r5);	 Catch:{ Exception -> 0x00ca }
        r3 = r3.toString();	 Catch:{ Exception -> 0x00ca }
        com.vungle.log.Logger.w(r4, r3);	 Catch:{ Exception -> 0x00ca }
        goto L_0x002b;
    L_0x00ca:
        r0 = move-exception;
        r2 = "Vungle";
        r3 = "VunglePub initialization failed";
        com.vungle.log.Logger.e(r2, r3, r0);
        r0 = r1;
        goto L_0x000d;
    L_0x00d5:
        r0 = com.vungle.publisher.inject.Injector.getInstance();	 Catch:{ Exception -> 0x00ca }
        r0.a(r8, r9);	 Catch:{ Exception -> 0x00ca }
        r0 = r0.a;	 Catch:{ Exception -> 0x00ca }
        r0.a(r7);	 Catch:{ Exception -> 0x00ca }
        r0 = "Vungle";
        r3 = "injection successful";
        com.vungle.log.Logger.d(r0, r3);	 Catch:{ Exception -> 0x00ca }
        r0 = 1;
        r7.n = r0;	 Catch:{ Exception -> 0x00ca }
        goto L_0x0038;
    L_0x00ed:
        r0 = "Vungle";
        r2 = "initialization failed";
        com.vungle.log.Logger.w(r0, r2);	 Catch:{ Exception -> 0x00ca }
    L_0x00f4:
        r0 = r1;
        goto L_0x000d;
        */
    }

    public boolean isCachedAdAvailable() {
        boolean z = false;
        try {
            return this.a.a() != null ? true : z;
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error checking if cached ad is available");
            return z;
        }
    }

    public void onPause() {
        try {
            if (a(false, "onPause()")) {
                this.m.d();
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error onPause()", e);
        }
    }

    public void onResume() {
        try {
            if (a(false, "onResume()")) {
                this.m.c();
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error onResume()", e);
        }
    }

    public void playAd() {
        playAd(null);
    }

    public void playAd(AdConfig adConfig) {
        try {
            Logger.d(Logger.AD_TAG, "VunglePub.playAd()");
            if (b()) {
                AdManager adManager = this.a;
                c merge = this.k.merge(new AdConfig[]{this.j, adConfig});
                Logger.d(Logger.AD_TAG, "AdManager.playAd()");
                adManager.f.a(new AnonymousClass_1(merge));
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error playing ad", e);
            if (this.n) {
                this.h.b(new aa());
            }
        }
    }

    public void setEventListener(EventListener eventListener) {
        try {
            if (c()) {
                SdkConfig sdkConfig = this.l;
                Logger.d(Logger.EVENT_TAG, new StringBuilder("setting event listener ").append(eventListener).toString());
                ay ayVar = sdkConfig.a;
                if (ayVar != null) {
                    Logger.v(Logger.EVENT_TAG, "unregistering previous event listener");
                    ayVar.d();
                }
                if (eventListener == null) {
                    sdkConfig.a = null;
                } else {
                    ClientEventListenerAdapter clientEventListenerAdapter = (ClientEventListenerAdapter) sdkConfig.e.a.get();
                    clientEventListenerAdapter.a = eventListener;
                    sdkConfig.a = clientEventListenerAdapter;
                    clientEventListenerAdapter.c();
                }
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, new StringBuilder("error setting event listener ").append(eventListener).toString());
        }
    }
}