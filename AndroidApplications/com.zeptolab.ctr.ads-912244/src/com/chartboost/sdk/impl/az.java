package com.chartboost.sdk.impl;

import java.io.Serializable;

public class az implements Serializable {
    final String a;

    public String a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof az)) {
            return false;
        }
        return this.a.equals(((az) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return a();
    }
}