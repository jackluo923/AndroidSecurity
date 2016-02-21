package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Date;

public class ax implements Serializable, Comparable {
    static final boolean a;
    final int b;
    final Date c;

    static {
        a = Boolean.getBoolean("DEBUG.DBTIMESTAMP");
    }

    public ax() {
        this.b = 0;
        this.c = null;
    }

    public int a() {
        return this.c == null ? 0 : (int) (this.c.getTime() / 1000);
    }

    public int a(ax axVar) {
        return a() != axVar.a() ? a() - axVar.a() : b() - axVar.b();
    }

    public int b() {
        return this.b;
    }

    public /* synthetic */ int compareTo(Object obj) {
        return a((ax) obj);
    }

    public boolean equals(ax axVar) {
        if (axVar == this) {
            return true;
        }
        if (!(axVar instanceof ax)) {
            return false;
        }
        axVar = axVar;
        return a() == axVar.a() && b() == axVar.b();
    }

    public int hashCode() {
        return (this.b + 31) * 31 + a();
    }

    public String toString() {
        return "TS time:" + this.c + " inc:" + this.b;
    }
}