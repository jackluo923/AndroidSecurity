package com.mopub.mobileads;

public class TaskTracker {
    private long a;
    private long b;

    public TaskTracker() {
        this.a = -1;
    }

    public long a() {
        return this.a;
    }

    public void a(long j) {
        if (j > this.b) {
            this.b = j;
        }
    }

    public void b() {
        this.a++;
    }

    public boolean b(long j) {
        return j >= this.b;
    }
}