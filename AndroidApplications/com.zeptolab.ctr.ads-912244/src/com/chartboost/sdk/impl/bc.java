package com.chartboost.sdk.impl;

import java.io.Serializable;

public class bc implements Serializable {
    public boolean equals(Object obj) {
        return obj instanceof bc;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "MinKey";
    }
}