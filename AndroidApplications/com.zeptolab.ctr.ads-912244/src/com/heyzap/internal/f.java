package com.heyzap.internal;

import android.content.Context;
import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

final class f implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ Context b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;
    final /* synthetic */ int e;
    final /* synthetic */ int f;
    final /* synthetic */ View g;

    f(View view, Context context, int i, int i2, int i3, int i4, View view2) {
        this.a = view;
        this.b = context;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = view2;
    }

    public void run() {
        Rect rect = new Rect();
        this.a.getHitRect(rect);
        rect.top -= Utils.getScaledSize(this.b, this.c);
        rect.right += Utils.getScaledSize(this.b, this.d);
        rect.bottom += Utils.getScaledSize(this.b, this.e);
        rect.left -= Utils.getScaledSize(this.b, this.f);
        this.a.setTouchDelegate(new TouchDelegate(rect, this.g));
    }
}