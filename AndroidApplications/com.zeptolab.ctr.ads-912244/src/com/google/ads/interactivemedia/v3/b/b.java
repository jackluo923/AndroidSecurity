package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;

public final class b implements AdErrorEvent {
    private final AdError a;
    private final Object b;

    b(AdError adError) {
        this.a = adError;
        this.b = null;
    }

    b(AdError adError, Object obj) {
        this.a = adError;
        this.b = obj;
    }

    public final AdError getError() {
        return this.a;
    }

    public final Object getUserRequestContext() {
        return this.b;
    }
}