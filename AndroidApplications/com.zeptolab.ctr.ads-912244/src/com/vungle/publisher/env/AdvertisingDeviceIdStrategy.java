package com.vungle.publisher.env;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.vungle.log.Logger;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.au;
import com.vungle.publisher.cj;
import com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class AdvertisingDeviceIdStrategy extends DeviceIdStrategy {
    @Inject
    Factory a;
    @Inject
    ScheduledPriorityExecutor b;

    static class FetchAdvertisingPreferencesRunnable implements Runnable {
        AndroidDevice a;
        @Inject
        Context b;
        @Inject
        cj c;

        @Singleton
        static class Factory {
            @Inject
            Provider a;

            Factory() {
            }
        }

        FetchAdvertisingPreferencesRunnable() {
        }

        public void run() {
            try {
                Logger.d(Logger.DEVICE_TAG, "fetching advertising ID and ad tracking preference");
                Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.b);
                String id = advertisingIdInfo.getId();
                boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                Logger.d(Logger.DEVICE_TAG, new StringBuilder("advertising ID ").append(id).append("; ad tracking diabled ").append(isLimitAdTrackingEnabled).toString());
                String str = this.a.a;
                this.a.a = id;
                this.a.c = isLimitAdTrackingEnabled;
                if (str == null) {
                    this.c.b(new au());
                }
            } catch (Exception e) {
                Logger.w(Logger.DEVICE_TAG, e);
            }
        }
    }

    protected final void a(AndroidDevice androidDevice) {
        if (androidDevice.a(Logger.DEVICE_TAG)) {
            ScheduledPriorityExecutor scheduledPriorityExecutor = this.b;
            Runnable runnable = (FetchAdvertisingPreferencesRunnable) this.a.a.get();
            runnable.a = androidDevice;
            scheduledPriorityExecutor.a(runnable);
        }
    }
}