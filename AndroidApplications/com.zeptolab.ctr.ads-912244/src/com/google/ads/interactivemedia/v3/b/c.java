package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType;

public final class c implements AdEvent {
    private AdEventType a;
    private Ad b;

    c(AdEventType adEventType, Ad ad) {
        this.a = adEventType;
        this.b = ad;
    }

    public final boolean equals(c cVar) {
        if (this == cVar) {
            return true;
        }
        if (!(cVar instanceof c)) {
            return false;
        }
        cVar = cVar;
        if (this.b == null) {
            if (cVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(cVar.b)) {
            return false;
        }
        return this.a == cVar.a;
    }

    public final Ad getAd() {
        return this.b;
    }

    public final AdEventType getType() {
        return this.a;
    }

    public final String toString() {
        return String.format("AdEvent[type=%s, ad=%s]", new Object[]{this.a, this.b});
    }
}