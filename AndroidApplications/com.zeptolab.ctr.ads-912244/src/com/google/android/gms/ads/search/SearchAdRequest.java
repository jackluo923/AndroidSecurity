package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.aj.a;

public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final aj kA;
    private final int qA;
    private final int qB;
    private final String qC;
    private final int qD;
    private final String qE;
    private final int qF;
    private final int qG;
    private final String qH;
    private final int qu;
    private final int qv;
    private final int qw;
    private final int qx;
    private final int qy;
    private final int qz;

    public static final class Builder {
        private final a kB;
        private int qA;
        private int qB;
        private String qC;
        private int qD;
        private String qE;
        private int qF;
        private int qG;
        private String qH;
        private int qu;
        private int qv;
        private int qw;
        private int qx;
        private int qy;
        private int qz;

        public Builder() {
            this.kB = new a();
            this.qA = 0;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.kB.a(networkExtras);
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder addTestDevice(String str) {
            this.kB.h(str);
            return this;
        }

        public SearchAdRequest build() {
            return new SearchAdRequest(null);
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setAnchorTextColor(int i) {
            this.qu = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setBackgroundColor(int i) {
            this.qv = i;
            this.qw = Color.argb(ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR);
            this.qx = Color.argb(ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR);
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setBackgroundGradient(int i, int i2) {
            this.qv = Color.argb(ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR, ERROR_CODE_INTERNAL_ERROR);
            this.qw = i2;
            this.qx = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setBorderColor(int i) {
            this.qy = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setBorderThickness(int i) {
            this.qz = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setBorderType(int i) {
            this.qA = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setCallButtonColor(int i) {
            this.qB = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setCustomChannels(String str) {
            this.qC = str;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setDescriptionTextColor(int i) {
            this.qD = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setFontFace(String str) {
            this.qE = str;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setHeaderTextColor(int i) {
            this.qF = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setHeaderTextSize(int i) {
            this.qG = i;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setLocation(Location location) {
            this.kB.a(location);
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder setQuery(String str) {
            this.qH = str;
            return this;
        }

        public com.google.android.gms.ads.search.SearchAdRequest.Builder tagForChildDirectedTreatment(boolean z) {
            this.kB.e(z);
            return this;
        }
    }

    static {
        DEVICE_ID_EMULATOR = aj.DEVICE_ID_EMULATOR;
    }

    private SearchAdRequest(Builder builder) {
        this.qu = builder.qu;
        this.qv = builder.qv;
        this.qw = builder.qw;
        this.qx = builder.qx;
        this.qy = builder.qy;
        this.qz = builder.qz;
        this.qA = builder.qA;
        this.qB = builder.qB;
        this.qC = builder.qC;
        this.qD = builder.qD;
        this.qE = builder.qE;
        this.qF = builder.qF;
        this.qG = builder.qG;
        this.qH = builder.qH;
        this.kA = new aj(builder.kB, this);
    }

    aj N() {
        return this.kA;
    }

    public int getAnchorTextColor() {
        return this.qu;
    }

    public int getBackgroundColor() {
        return this.qv;
    }

    public int getBackgroundGradientBottom() {
        return this.qw;
    }

    public int getBackgroundGradientTop() {
        return this.qx;
    }

    public int getBorderColor() {
        return this.qy;
    }

    public int getBorderThickness() {
        return this.qz;
    }

    public int getBorderType() {
        return this.qA;
    }

    public int getCallButtonColor() {
        return this.qB;
    }

    public String getCustomChannels() {
        return this.qC;
    }

    public int getDescriptionTextColor() {
        return this.qD;
    }

    public String getFontFace() {
        return this.qE;
    }

    public int getHeaderTextColor() {
        return this.qF;
    }

    public int getHeaderTextSize() {
        return this.qG;
    }

    public Location getLocation() {
        return this.kA.getLocation();
    }

    public NetworkExtras getNetworkExtras(Class cls) {
        return this.kA.getNetworkExtras(cls);
    }

    public String getQuery() {
        return this.qH;
    }

    public boolean isTestDevice(Context context) {
        return this.kA.isTestDevice(context);
    }
}