package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.b.r.a;

public final class u {
    private final long a;
    private final a b;

    u(long j, a aVar) {
        this.a = j;
        this.b = aVar;
    }

    public final long a() {
        return this.a;
    }

    public final a b() {
        return this.b;
    }

    public final boolean equals(u uVar) {
        if (this == uVar) {
            return true;
        }
        if (uVar == null) {
            return false;
        }
        if (getClass() != uVar.getClass()) {
            return false;
        }
        uVar = uVar;
        if (this.a != uVar.a) {
            return false;
        }
        return this.b == uVar.b;
    }

    public final int hashCode() {
        return ((int) this.a) * 31 + this.b.hashCode();
    }

    public final String toString() {
        return new StringBuilder("NativeBridgeConfig [adTimeUpdateMs=").append(this.a).append(", adUiStyle=").append(this.b).append("]").toString();
    }
}