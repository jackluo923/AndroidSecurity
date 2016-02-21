package com.vungle.publisher.location;

import android.location.Location;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import com.vungle.publisher.bh;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AndroidLocation implements bh {
    @Inject
    bg a;

    public final String a() {
        String str = AdTrackerConstants.BLANK;
        try {
            return Locale.getDefault().getISO3Language();
        } catch (Exception e) {
            Logger.w(Logger.DEVICE_TAG, "error getting ISO 3-letter language code", e);
            return str;
        }
    }

    public final Location b() {
        return this.a.a();
    }

    public final String c() {
        return TimeZone.getDefault().getID();
    }
}