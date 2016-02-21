package com.amazon.device.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

class GooglePlayServicesAdapter {
    private static final String a;

    static {
        a = GooglePlayServicesAdapter.class.getSimpleName();
    }

    GooglePlayServicesAdapter() {
    }

    protected AdvertisingIdClient a() {
        return new AdvertisingIdClient();
    }

    public AdvertisingInfo getAdvertisingIdentifierInfo() {
        try {
            Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(InternalAdRegistration.getInstance().getApplicationContext());
            Log.v(a, "The Google Play Services Advertising Identifier was successfully retrieved.");
            String id = advertisingIdInfo.getId();
            return new AdvertisingInfo().a(id).a(advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (IllegalStateException e) {
            Log.e(a, "The Google Play Services Advertising Id API was called from a non-background thread.");
            return new AdvertisingInfo();
        } catch (IOException e2) {
            Log.e(a, "Retrieving the Google Play Services Advertising Identifier caused an IOException.");
            return new AdvertisingInfo();
        } catch (GooglePlayServicesNotAvailableException e3) {
            Log.v(a, "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException.");
            return AdvertisingInfo.a();
        } catch (GooglePlayServicesRepairableException e4) {
            Log.v(a, "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException.");
            return new AdvertisingInfo();
        }
    }
}