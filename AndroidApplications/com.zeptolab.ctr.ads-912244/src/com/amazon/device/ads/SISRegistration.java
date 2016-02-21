package com.amazon.device.ads;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

class SISRegistration {
    protected static final long a = 86400000;
    private static final String b;
    private static final String c = "amzn-ad-sis-last-checkin";
    private static final ExecutorService d;

    class AnonymousClass_2 implements ConfigurationListener {
        final /* synthetic */ AtomicBoolean a;
        final /* synthetic */ CountDownLatch b;

        AnonymousClass_2(AtomicBoolean atomicBoolean, CountDownLatch countDownLatch) {
            this.a = atomicBoolean;
            this.b = countDownLatch;
        }

        public void onConfigurationFailure() {
            Log.w(b, "Configuration fetching failed so device registration will not proceed.");
            this.b.countDown();
        }

        public void onConfigurationReady() {
            this.a.set(true);
            this.b.countDown();
        }
    }

    protected static class RegisterEventsSISRequestorCallback implements SISRequestorCallback {
        private final SISRegistration a;

        public RegisterEventsSISRequestorCallback(SISRegistration sISRegistration) {
            this.a = sISRegistration;
        }

        public void onSISCallComplete() {
            this.a.f();
        }
    }

    static {
        b = SISRegistration.class.getSimpleName();
        d = Executors.newSingleThreadExecutor();
    }

    SISRegistration() {
    }

    private void c(long j) {
        Settings.getInstance().putLong(c, j);
    }

    protected Info a() {
        return new AdvertisingIdentifier().b();
    }

    protected void a(Info info) {
        SISDeviceRequest advertisingIdentifierInfo = new SISGenerateDIDRequest().setAdvertisingIdentifierInfo(info);
        new SISRequestor(new RegisterEventsSISRequestorCallback(this), new SISRequest[]{advertisingIdentifierInfo}).startCallSIS();
    }

    protected boolean a(long j) {
        RegistrationInfo registrationInfo = InternalAdRegistration.getInstance().getRegistrationInfo();
        return b(j) || registrationInfo.shouldGetNewSISDeviceIdentifer() || registrationInfo.shouldGetNewSISRegistration() || DebugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_SHOULD_REGISTER_SIS, false);
    }

    protected void b(Info info) {
        SISDeviceRequest advertisingIdentifierInfo = new SISUpdateDeviceInfoRequest().setAdvertisingIdentifierInfo(info);
        new SISRequestor(new RegisterEventsSISRequestorCallback(this), new SISRequest[]{advertisingIdentifierInfo}).startCallSIS();
    }

    protected boolean b() {
        return InternalAdRegistration.getInstance().getRegistrationInfo().isRegisteredWithSIS();
    }

    protected boolean b(long j) {
        return j - e() > 86400000;
    }

    void c() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Configuration.getInstance().queueConfigurationListener(new AnonymousClass_2(atomicBoolean, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
        }
        if (atomicBoolean.get()) {
            d();
        }
    }

    void d() {
        long currentTimeMillis = System.currentTimeMillis();
        Info a = a();
        if (a.a() && a(currentTimeMillis)) {
            c(currentTimeMillis);
            if (b()) {
                b(a);
            } else {
                a(a);
            }
        }
    }

    protected long e() {
        return Settings.getInstance().getLong(c, 0);
    }

    protected void f() {
        if (ThreadUtils.isOnMainThread()) {
            Log.e(b, "Registering events must be done on a background thread.");
        } else {
            Info b = new AdvertisingIdentifier().b();
            if (b.f()) {
                JSONArray appEventsJSONArray = AppEventRegistrationHandler.getInstance().getAppEventsJSONArray();
                if (appEventsJSONArray != null) {
                    SISRegisterEventRequest sISRegisterEventRequest = new SISRegisterEventRequest(b, appEventsJSONArray);
                    new SISRequestor(new SISRequest[]{sISRegisterEventRequest}).startCallSIS();
                }
            }
        }
    }

    public void registerApp() {
        d.submit(new Runnable() {
            public void run() {
                SISRegistration.this.c();
            }
        });
    }
}