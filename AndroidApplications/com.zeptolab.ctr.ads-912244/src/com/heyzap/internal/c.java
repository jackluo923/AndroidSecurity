package com.heyzap.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.heyzap.internal.AdvertisingIdClient.AdInfo;
import java.util.concurrent.Callable;

class c implements Callable {
    private Context a;

    public c(Context context) {
        this.a = context;
    }

    public Boolean a() {
        boolean z = false;
        try {
            String id;
            Boolean valueOf;
            Boolean.valueOf(false);
            try {
                Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a);
                Logger.log("Using Google Play Services...");
                id = advertisingIdInfo.getId();
                valueOf = Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled());
            } catch (Exception e) {
                e.printStackTrace();
                Logger.log("Using Heyzap Google Play Services Client as fallback...");
                AdInfo advertisingIdInfo2 = AdvertisingIdClient.getAdvertisingIdInfo(this.a);
                id = advertisingIdInfo2.getId();
                valueOf = Boolean.valueOf(advertisingIdInfo2.isLimitAdTrackingEnabled());
            }
            Utils.setAdvertisingId(id);
            Utils.setLimitAdTracking(valueOf);
        } catch (Exception e2) {
            e2.printStackTrace();
            Utils.setAdvertisingId(null);
            Utils.setLimitAdTracking(Boolean.valueOf(z));
        }
        return Boolean.valueOf(true);
    }

    public /* synthetic */ Object call() {
        return a();
    }
}