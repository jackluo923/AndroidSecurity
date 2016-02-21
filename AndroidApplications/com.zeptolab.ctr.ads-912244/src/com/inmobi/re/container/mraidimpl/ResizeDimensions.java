package com.inmobi.re.container.mraidimpl;

public class ResizeDimensions {
    int a;
    int b;
    int c;
    int d;

    public ResizeDimensions(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public int getHeight() {
        return this.d;
    }

    public int getWidth() {
        return this.c;
    }

    public int getX() {
        return this.a;
    }

    public int getY() {
        return this.b;
    }
}