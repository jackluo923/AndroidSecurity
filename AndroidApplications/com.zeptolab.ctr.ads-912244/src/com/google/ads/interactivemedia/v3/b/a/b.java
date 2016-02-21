package com.google.ads.interactivemedia.v3.b.a;

import com.google.ads.interactivemedia.v3.api.AdPodInfo;

public final class b implements AdPodInfo {
    public int adPosition;
    public boolean isBumper;
    public int totalAds;

    public b() {
        this.totalAds = 1;
        this.adPosition = 1;
        this.isBumper = false;
    }

    public final boolean equals(b bVar) {
        if (this == bVar) {
            return true;
        }
        if (bVar == null) {
            return false;
        }
        if (getClass() != bVar.getClass()) {
            return false;
        }
        bVar = bVar;
        if (this.adPosition != bVar.adPosition) {
            return false;
        }
        if (this.isBumper != bVar.isBumper) {
            return false;
        }
        return this.totalAds == bVar.totalAds;
    }

    public final int getAdPosition() {
        return this.adPosition;
    }

    public final int getTotalAds() {
        return this.totalAds;
    }

    public final int hashCode() {
        return ((this.isBumper ? 1231 : 1237) + ((this.adPosition + 31) * 31)) * 31 + this.totalAds;
    }

    public final boolean isBumper() {
        return this.isBumper;
    }

    public final String toString() {
        return new StringBuilder("AdPodInfo [totalAds=").append(this.totalAds).append(", adPosition=").append(this.adPosition).append(", isBumper=").append(this.isBumper).append("]").toString();
    }
}