package com.andymstone.compasslib;

public class aa {
    private boolean[] a;

    public aa() {
        this.a = new boolean[3];
    }

    public boolean a(int i) {
        return this.a[i];
    }

    public void b(int i) {
        this.a[i] = true;
    }

    public void c(int i) {
        this.a[i] = false;
    }
}