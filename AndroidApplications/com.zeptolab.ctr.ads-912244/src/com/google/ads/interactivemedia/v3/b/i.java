package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import java.util.List;

public final class i implements AdsRenderingSettings {
    private int a;
    private List b;

    public i() {
        this.a = -1;
        this.b = null;
    }

    public final int getBitrateKbps() {
        return this.a;
    }

    public final List getMimeTypes() {
        return this.b;
    }

    public final void setBitrateKbps(int i) {
        this.a = i;
    }

    public final void setMimeTypes(List list) {
        this.b = list;
    }

    public final String toString() {
        return new StringBuilder("AdsRenderingSettings [bitrate=").append(this.a).append(", mimeTypes=").append(this.b).append("]").toString();
    }
}