package com.inmobi.commons.thinICE.icedatacollector;

public class ThinICEConfigSettings {
    public static final int CELL_OP_FLAG_DISABLE_CURRENT_DETAILS = 2;
    public static final int CELL_OP_FLAG_DISABLE_SIM_DETAILS = 1;
    public static final int WIFI_FLAG_DISABLE_NOMAP_EXCLUSION = 2;
    public static final int WIFI_FLAG_DISABLE_SSID_COLLECTION = 1;
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private long g;
    private long h;
    private int i;
    private int j;
    private int k;

    public ThinICEConfigSettings() {
        this.a = true;
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = true;
        this.g = 60000;
        this.h = 3000;
        this.i = 50;
        this.j = 0;
        this.k = 0;
    }

    public ThinICEConfigSettings(ThinICEConfigSettings thinICEConfigSettings) {
        this.a = true;
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = true;
        this.g = 60000;
        this.h = 3000;
        this.i = 50;
        this.j = 0;
        this.k = 0;
        this.a = thinICEConfigSettings.a;
        this.b = thinICEConfigSettings.b;
        this.c = thinICEConfigSettings.c;
        this.d = thinICEConfigSettings.d;
        this.e = thinICEConfigSettings.e;
        this.f = thinICEConfigSettings.f;
        this.g = thinICEConfigSettings.g;
        this.h = thinICEConfigSettings.h;
        this.i = thinICEConfigSettings.i;
        this.j = thinICEConfigSettings.j;
        this.k = thinICEConfigSettings.k;
    }

    public static boolean bitTest(int i, int i2) {
        return (i & i2) == i2;
    }

    public int getCellOpFlags() {
        return this.k;
    }

    public int getSampleHistorySize() {
        return this.i;
    }

    public long getSampleInterval() {
        return this.g;
    }

    public long getStopRequestTimeout() {
        return this.h;
    }

    public int getWifiFlags() {
        return this.j;
    }

    public boolean isEnabled() {
        return this.a;
    }

    public boolean isSampleCellEnabled() {
        return this.c;
    }

    public boolean isSampleCellOperatorEnabled() {
        return this.b;
    }

    public boolean isSampleConnectedWifiEnabled() {
        return this.d;
    }

    public boolean isSampleLocationEnabled() {
        return this.e;
    }

    public boolean isSampleVisibleWifiEnabled() {
        return this.f;
    }

    public ThinICEConfigSettings setCellOpFlags(int i) {
        this.k = i;
        return this;
    }

    public ThinICEConfigSettings setEnabled(boolean z) {
        this.a = z;
        return this;
    }

    public ThinICEConfigSettings setSampleCellEnabled(boolean z) {
        this.c = z;
        return this;
    }

    public ThinICEConfigSettings setSampleCellOperatorEnabled(boolean z) {
        this.b = z;
        return this;
    }

    public ThinICEConfigSettings setSampleConnectedWifiEnabled(boolean z) {
        this.d = z;
        return this;
    }

    public ThinICEConfigSettings setSampleHistorySize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Sample history size must be greater than 0");
        }
        this.i = i;
        return this;
    }

    public ThinICEConfigSettings setSampleInterval(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Sample interval must be greater than 0");
        }
        this.g = j;
        return this;
    }

    public ThinICEConfigSettings setSampleLocationEnabled(boolean z) {
        this.e = z;
        return this;
    }

    public ThinICEConfigSettings setSampleVisibleWifiEnabled(boolean z) {
        this.f = z;
        return this;
    }

    public ThinICEConfigSettings setStopRequestTimeout(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Stop request timeout must be greater than 0");
        }
        this.h = j;
        return this;
    }

    public ThinICEConfigSettings setWifiFlags(int i) {
        this.j = i;
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[");
        stringBuilder.append("mEnabled=").append(this.a).append(", ");
        stringBuilder.append("mSampleCellOperatorEnabled=").append(this.b).append(", ");
        stringBuilder.append("mSampleCellEnabled=").append(this.c).append(", ");
        stringBuilder.append("mSampleConnectedWifiEnabled=").append(this.d).append(", ");
        stringBuilder.append("mSampleLocationEnabled=").append(this.e).append(", ");
        stringBuilder.append("mSampleVisibleWifiEnabled=").append(this.f).append(", ");
        stringBuilder.append("mSampleInterval=").append(this.g).append(", ");
        stringBuilder.append("mStopRequestTimeout=").append(this.h).append(", ");
        stringBuilder.append("mWifiFlags=").append(Integer.toBinaryString(this.j)).append(", ");
        stringBuilder.append("mCellOpFlags=").append(Integer.toBinaryString(this.k));
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}