package com.chartboost.sdk.impl;

import java.io.Serializable;

public class be implements Serializable {
    private final String a;

    public String a() {
        return this.a;
    }

    public boolean equals(be beVar) {
        if (this == beVar) {
            return true;
        }
        if (beVar == null) {
            return false;
        }
        if (beVar instanceof be) {
            Object obj = beVar.a;
        } else if (!(beVar instanceof String)) {
            return false;
        } else {
            String str = (String) beVar;
        }
        if (this.a != null) {
            if (this.a.equals(obj)) {
                return true;
            }
        } else if (obj == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a != null ? this.a.hashCode() : 0;
    }

    public String toString() {
        return this.a;
    }
}