package com.amazon.device.ads;

import android.content.Context;
import java.io.File;

class InternalAdRegistration implements IInternalAdRegistration {
    public static final String LOG_TAG;
    private static IInternalAdRegistration l;
    protected Context a;
    private AppInfo b;
    private DeviceInfo c;
    private RegistrationInfo d;
    private SISRegistration e;
    private boolean f;
    private boolean g;
    private int h;
    private long i;
    private boolean j;
    private File k;

    static {
        LOG_TAG = InternalAdRegistration.class.getSimpleName();
        l = new InternalAdRegistration();
    }

    protected InternalAdRegistration() {
        this.j = false;
        DebugProperties.readDebugProperties();
        Version.getSDKVersion();
        this.d = new RegistrationInfo();
    }

    protected static void a(IInternalAdRegistration iInternalAdRegistration) {
        l = iInternalAdRegistration;
    }

    public static IInternalAdRegistration getInstance() {
        return l;
    }

    protected void a() {
        this.e = new SISRegistration();
    }

    protected void a(Context context) {
        this.k = context.getFilesDir();
    }

    protected SISRegistration b() {
        return this.e;
    }

    protected void b(Context context) {
        this.b = new AppInfo(context);
    }

    protected void c(Context context) {
        this.c = new DeviceInfo(context);
    }

    public synchronized void contextReceived(Context context) {
        if (!this.f) {
            this.f = true;
            d(context);
            a(context);
            Settings.getInstance().contextReceived(context);
            b(context);
            c(context);
            a();
        }
    }

    protected void d(Context context) {
        this.a = context.getApplicationContext();
    }

    public AppInfo getAppInfo() {
        return this.b;
    }

    public Context getApplicationContext() {
        return this.a;
    }

    public DeviceInfo getDeviceInfo() {
        return this.c;
    }

    public File getFilesDir() {
        return this.k;
    }

    public boolean getIsAppDisabled() {
        return this.j;
    }

    public int getNoRetryTtlRemainingMillis() {
        if (this.h == 0 || this.i == 0) {
            return 0;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < this.i) {
            return (int) (this.i - currentTimeMillis);
        }
        this.h = 0;
        this.i = 0;
        return 0;
    }

    public RegistrationInfo getRegistrationInfo() {
        return this.d;
    }

    public boolean isContextReceived() {
        return this.f;
    }

    public boolean isRegistered() {
        return this.g;
    }

    public void register() {
        b().registerApp();
        this.g = true;
    }

    public void setIsAppDisabled(boolean z) {
        this.j = z;
    }

    public void setNoRetryTtl(int i) {
        int maxNoRetryTtl = Configuration.getMaxNoRetryTtl();
        if (maxNoRetryTtl < i) {
            i = maxNoRetryTtl;
        }
        if (i == 0) {
            this.h = 0;
            this.i = 0;
        } else {
            this.h = i * 1000;
            this.i = System.currentTimeMillis() + ((long) this.h);
        }
    }
}