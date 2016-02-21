package com.millennialmedia.android;

class DTOResizeParameters {
    int a;
    int b;
    String c;
    int d;
    int e;
    boolean f;
    int g;
    int h;

    DTOResizeParameters(float f, int i, int i2, String str, int i3, int i4, boolean z, int i5, int i6) {
        this.a = (int) (((float) i) * f);
        this.b = (int) (((float) i2) * f);
        this.c = str;
        this.d = (int) (((float) i3) * f);
        this.e = (int) (((float) i4) * f);
        this.f = z;
        this.g = i5;
        this.h = i6;
    }

    public String toString() {
        return String.format("width[%d] height[%d] offsetX[%d] offsetY[%d] allowOffScreen[%b] customClosePosition[%s] maxX[%d] maxY[%d]", new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.d), Integer.valueOf(this.e), Boolean.valueOf(this.f), this.c, Integer.valueOf(this.g), Integer.valueOf(this.h)});
    }
}