package com.vungle.publisher;

import com.facebook.ads.internal.AdWebViewUtils;

final class co {
    private cn a;
    private cn b;

    co() {
    }

    final synchronized cn a() {
        cn cnVar;
        cnVar = this.a;
        if (this.a != null) {
            this.a = this.a.c;
            if (this.a == null) {
                this.b = null;
            }
        }
        return cnVar;
    }

    final synchronized void a(cn cnVar) {
        if (cnVar == null) {
            throw new NullPointerException("null cannot be enqueued");
        }
        if (this.b != null) {
            this.b.c = cnVar;
            this.b = cnVar;
        } else if (this.a == null) {
            this.b = cnVar;
            this.a = cnVar;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    final synchronized cn b() {
        if (this.a == null) {
            wait(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        }
        return a();
    }
}