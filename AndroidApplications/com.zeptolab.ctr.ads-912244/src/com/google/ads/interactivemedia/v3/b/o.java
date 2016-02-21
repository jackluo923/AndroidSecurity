package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class o {
    private final List a;

    public o() {
        this.a = new ArrayList(1);
    }

    public final void a(AdErrorListener adErrorListener) {
        this.a.add(adErrorListener);
    }

    public final void a(AdErrorEvent adErrorEvent) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((AdErrorListener) it.next()).onAdError(adErrorEvent);
        }
    }

    public final void b(AdErrorListener adErrorListener) {
        this.a.remove(adErrorListener);
    }
}