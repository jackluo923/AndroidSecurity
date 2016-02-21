package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Arrays;

public class ay implements Serializable {
    final byte a;
    final byte[] b;

    public byte a() {
        return this.a;
    }

    public byte[] b() {
        return this.b;
    }

    public boolean equals(ay ayVar) {
        if (this == ayVar) {
            return true;
        }
        if (!(ayVar instanceof ay)) {
            return false;
        }
        ayVar = ayVar;
        if (this.a != ayVar.a) {
            return false;
        }
        return Arrays.equals(this.b, ayVar.b);
    }

    public int hashCode() {
        return (this.b != null ? Arrays.hashCode(this.b) : 0) + this.a * 31;
    }
}