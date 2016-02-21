package com.inmobi.androidsdk.carb;

import com.brightcove.player.media.MediaService;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class CarbConfigParams {
    boolean a;
    String b;
    String c;
    long d;
    int e;
    long f;
    long g;
    UID h;

    public CarbConfigParams() {
        this.a = false;
        this.b = "http://dock.inmobi.com/carb/v1/i";
        this.c = "http://dock.inmobi.com/carb/v1/o";
        this.d = 86400;
        this.e = 3;
        this.f = 60;
        this.g = 60;
        this.h = new UID();
    }

    public String getCarbEndpoint() {
        return this.b;
    }

    public String getCarbPostpoint() {
        return this.c;
    }

    public long getRetreiveFrequncy() {
        return this.d * 1000;
    }

    public int getRetryCount() {
        return this.e;
    }

    public long getRetryInterval() {
        return this.f;
    }

    public long getTimeoutInterval() {
        return this.g;
    }

    public UID getUID() {
        return this.h;
    }

    public boolean isCarbEnabled() {
        return this.a;
    }

    public void setFromMap(Map map) {
        long j = ThinICEConfig.SAMPLE_INTERVAL_DEFAULT;
        boolean z = false;
        try {
            this.h.setFromMap((Map) map.get("ids"));
            this.a = InternalSDKUtil.getBooleanFromMap(map, "enabled");
            this.b = InternalSDKUtil.getStringFromMap(map, "gep");
            if (this.b.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY) || this.b.startsWith("https")) {
                this.c = InternalSDKUtil.getStringFromMap(map, "pep");
                if (this.c.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY) || this.c.startsWith("https")) {
                    this.d = InternalSDKUtil.getLongFromMap(map, "fq_s", 1, Long.MAX_VALUE);
                    this.e = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
                    this.f = InternalSDKUtil.getLongFromMap(map, "ri", 1, Long.MAX_VALUE);
                    this.g = InternalSDKUtil.getLongFromMap(map, "to", 1, Long.MAX_VALUE);
                } else {
                    throw new IllegalArgumentException("URL wrong");
                }
            } else {
                throw new IllegalArgumentException("URL wrong");
            }
        } catch (IllegalArgumentException e) {
            Log.internal("CarbConfigParams", "Invalid value");
            this.h = new UID();
            this.a = z;
            this.b = "http://dock.inmobi.com/carb/v1/i";
            this.c = "http://dock.inmobi.com/carb/v1/o";
            this.d = 86400;
            this.e = 3;
            this.f = j;
            this.g = j;
            throw new IllegalArgumentException();
        }
    }
}