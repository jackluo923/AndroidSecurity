package com.chartboost.sdk.Libraries;

import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.c.a;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;

public final class d {
    private d() {
    }

    protected static String a() {
        String str = null;
        try {
            Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(Chartboost.sharedChartboost().getContext());
        } catch (IOException e) {
            String str2 = str;
        } catch (GooglePlayServicesRepairableException e2) {
            str2 = str;
        } catch (GooglePlayServicesNotAvailableException e3) {
            str2 = str;
        }
        if (advertisingIdInfo == null) {
            c.a(a.c);
            return str;
        } else {
            if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                c.a(a.e);
            } else {
                c.a(a.d);
            }
            try {
                UUID fromString = UUID.fromString(advertisingIdInfo.getId());
                ByteBuffer wrap = ByteBuffer.wrap(new byte[16]);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                return b.b(wrap.array());
            } catch (IllegalArgumentException e4) {
                CBLogging.a("CBIdentityAdv", "Exception raised retrieveAdvertisingID", e4);
                return advertisingIdInfo.getId().replace("-", AdTrackerConstants.BLANK);
            }
        }
    }
}