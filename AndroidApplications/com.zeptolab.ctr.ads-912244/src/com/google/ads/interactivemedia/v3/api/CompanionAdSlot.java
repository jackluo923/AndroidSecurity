package com.google.ads.interactivemedia.v3.api;

import android.view.ViewGroup;

public interface CompanionAdSlot {
    ViewGroup getContainer();

    int getHeight();

    int getWidth();

    void setContainer(ViewGroup viewGroup);

    void setSize(int i, int i2);
}