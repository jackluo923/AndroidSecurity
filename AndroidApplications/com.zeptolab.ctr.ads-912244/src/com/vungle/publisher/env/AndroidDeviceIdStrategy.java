package com.vungle.publisher.env;

import android.content.Context;
import android.provider.Settings.Secure;
import com.vungle.log.Logger;
import com.vungle.publisher.au;
import com.vungle.publisher.cj;
import com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AndroidDeviceIdStrategy extends DeviceIdStrategy {
    @Inject
    Context a;
    @Inject
    cj b;

    protected final void a(AndroidDevice androidDevice) {
        String str = androidDevice.b;
        if (str == null) {
            str = Secure.getString(this.a.getContentResolver(), "android_id");
            Logger.d(Logger.DEVICE_TAG, new StringBuilder("android ID ").append(str).toString());
            androidDevice.b = str;
            this.b.b(new au());
        } else {
            Logger.v(Logger.DEVICE_TAG, new StringBuilder("android ID ").append(str).toString());
        }
    }
}