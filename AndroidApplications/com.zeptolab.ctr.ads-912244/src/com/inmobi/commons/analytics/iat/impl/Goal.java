package com.inmobi.commons.analytics.iat.impl;

import java.io.Serializable;

public class Goal implements Serializable {
    private int a;
    private String b;
    private long c;
    private int d;
    private boolean e;

    public Goal() {
        setGoalCount(0);
        setGoalName(null);
        setRetryTime(0);
        setRetryCount(0);
        setDuplicateGoal(false);
    }

    public Goal(String str, int i, long j, int i2, boolean z) {
        if (i < 0) {
            setGoalCount(0);
        } else {
            setGoalCount(i);
        }
        if (j < 0) {
            setRetryTime(0);
        } else {
            setRetryTime(j);
        }
        if (i2 < 0) {
            setRetryCount(0);
        } else {
            setRetryCount(i2);
        }
        setGoalName(str);
        setDuplicateGoal(z);
    }

    public int getGoalCount() {
        return this.a;
    }

    public String getGoalName() {
        return this.b;
    }

    public int getRetryCount() {
        return this.d;
    }

    public long getRetryTime() {
        return this.c;
    }

    public boolean isDuplicateGoal() {
        return this.e;
    }

    public final void setDuplicateGoal(boolean z) {
        this.e = z;
    }

    public final void setGoalCount(int i) {
        this.a = i;
    }

    public final void setGoalName(String str) {
        this.b = str;
    }

    public final void setRetryCount(int i) {
        this.d = i;
    }

    public final void setRetryTime(long j) {
        this.c = j;
    }
}