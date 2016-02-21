package com.chartboost.sdk.impl;

public class ba extends az {
    final ao b;

    public ao b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ba)) {
            return false;
        }
        ba baVar = (ba) obj;
        return this.a.equals(baVar.a) && this.b.equals(baVar.b);
    }

    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }
}