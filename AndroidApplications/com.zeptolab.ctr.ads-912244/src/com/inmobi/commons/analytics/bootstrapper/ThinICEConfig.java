package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class ThinICEConfig {
    public static final int CELL_OP_FLAGS_DEFAULT = 0;
    public static final boolean ENABLED_DEFAULT = true;
    public static final String END_POINT_DEFAULT = "https://sdkm.w.inmobi.com/user/e.asm";
    public static final long MAX_RETRY_DEFAULT = 3;
    public static final long RETRY_INTERVAL = 3;
    public static final boolean SAMPLE_CELL_CONNECTED_WIFI_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_OPERATOR_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_VISIBLE_WIFI_ENABLED_DEFAULT = true;
    public static final int SAMPLE_HISTORY_SIZE_DEFAULT = 50;
    public static final long SAMPLE_INTERVAL_DEFAULT = 60;
    public static final long STOP_REQUEST_TIMEOUT_DEFAULT = 3;
    public static final int WIFI_FLAGS_DEFAULT = 0;
    private long a;
    private long b;
    private long c;
    private long d;
    private int e;
    private int f;
    private int g;
    private String h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private long o;
    private long p;

    public ThinICEConfig() {
        this.a = 60;
        this.b = 3;
        this.c = 3;
        this.d = 3;
        this.e = 50;
        this.f = 0;
        this.g = 0;
        this.h = END_POINT_DEFAULT;
        this.i = true;
        this.j = true;
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = false;
        this.o = 180;
        this.p = 50;
    }

    public long getActivityDetectionInterval() {
        return this.o * 1000;
    }

    public long getActivityDetectionMaxSize() {
        return this.p;
    }

    public int getCellOpsFlag() {
        return this.g;
    }

    public String getEndpointUrl() {
        return this.h;
    }

    public long getMaxRetry() {
        return this.d;
    }

    public long getRetryInterval() {
        return this.c;
    }

    public int getSampleHistorySize() {
        return this.e;
    }

    public long getSampleInterval() {
        return this.a;
    }

    public long getStopRequestTimeout() {
        return this.b;
    }

    public int getWifiFlags() {
        return this.f;
    }

    public boolean isActivityDetectionEnabled() {
        return this.n;
    }

    public boolean isCellEnabled() {
        return this.k;
    }

    public boolean isConnectedWifiEnabled() {
        return this.l;
    }

    public boolean isEnabled() {
        return this.i;
    }

    public boolean isOperatorEnabled() {
        return this.j;
    }

    public boolean isVisibleWifiEnabled() {
        return this.m;
    }

    public final void setFromMap(Map map) {
        this.a = InternalSDKUtil.getLongFromMap(map, "si", 1, Long.MAX_VALUE);
        this.b = InternalSDKUtil.getLongFromMap(map, "srt", 1, Long.MAX_VALUE);
        this.e = InternalSDKUtil.getIntFromMap(map, "shs", 1, 2147483647L);
        this.f = InternalSDKUtil.getIntFromMap(map, "wfd", CELL_OP_FLAGS_DEFAULT, 15);
        this.g = InternalSDKUtil.getIntFromMap(map, "cof", CELL_OP_FLAGS_DEFAULT, 15);
        this.i = InternalSDKUtil.getBooleanFromMap(map, "e");
        this.l = InternalSDKUtil.getBooleanFromMap(map, "sccw");
        this.k = InternalSDKUtil.getBooleanFromMap(map, "sced");
        this.j = InternalSDKUtil.getBooleanFromMap(map, "scoe");
        this.m = InternalSDKUtil.getBooleanFromMap(map, "scvw");
        this.h = InternalSDKUtil.getStringFromMap(map, "ep");
        this.d = InternalSDKUtil.getLongFromMap(map, "mr", 0, Long.MAX_VALUE);
        this.c = InternalSDKUtil.getLongFromMap(map, "ri", 1, Long.MAX_VALUE);
        this.n = InternalSDKUtil.getBooleanFromMap(map, "as");
        this.o = InternalSDKUtil.getLongFromMap(map, "assi", 1, Long.MAX_VALUE);
        this.p = InternalSDKUtil.getLongFromMap(map, "asm", 1, Long.MAX_VALUE);
    }
}