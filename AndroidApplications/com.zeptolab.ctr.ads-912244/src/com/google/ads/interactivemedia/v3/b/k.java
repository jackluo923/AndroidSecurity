package com.google.ads.interactivemedia.v3.b;

import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;

public final class k implements CompanionAdSlot {
    private int a;
    private int b;
    private ViewGroup c;

    public final ViewGroup getContainer() {
        return this.c;
    }

    public final int getHeight() {
        return this.b;
    }

    public final int getWidth() {
        return this.a;
    }

    public final void setContainer(ViewGroup viewGroup) {
        this.c = viewGroup;
    }

    public final void setSize(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}