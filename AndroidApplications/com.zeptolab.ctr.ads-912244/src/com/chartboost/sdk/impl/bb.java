package com.chartboost.sdk.impl;

import java.io.Serializable;

public class bb implements Serializable {
    public boolean equals(Object obj) {
        return obj instanceof bb;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "MaxKey";
    }
}