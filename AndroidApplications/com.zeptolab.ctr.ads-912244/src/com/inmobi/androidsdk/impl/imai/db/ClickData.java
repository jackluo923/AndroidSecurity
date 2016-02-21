package com.inmobi.androidsdk.impl.imai.db;

import com.inmobi.androidsdk.impl.imai.IMAICore;

public class ClickData {
    private long a;
    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private long f;

    public ClickData(String str, boolean z, boolean z2, int i) {
        setClickId((long) IMAICore.getRandomNumber());
        setClickUrl(str);
        setFollowRedirect(z);
        setPingWv(z2);
        setRetryCount(i);
        setTimestamp(System.currentTimeMillis());
    }

    public long getClickId() {
        return this.a;
    }

    public String getClickUrl() {
        return this.b;
    }

    public int getRetryCount() {
        return this.d;
    }

    public long getTimestamp() {
        return this.f;
    }

    public boolean isFollowRedirects() {
        return this.e;
    }

    public boolean isPingWv() {
        return this.c;
    }

    public void setClickId(long j) {
        this.a = j;
    }

    public void setClickUrl(String str) {
        this.b = str;
    }

    public void setFollowRedirect(boolean z) {
        this.e = z;
    }

    public void setPingWv(boolean z) {
        this.c = z;
    }

    public void setRetryCount(int i) {
        this.d = i;
    }

    public void setTimestamp(long j) {
        this.f = j;
    }
}