package com.IQzone.postitial.obfuscated;

import android.graphics.drawable.BitmapDrawable;

final class bj implements Runnable {
    private /* synthetic */ BitmapDrawable a;
    private /* synthetic */ bi b;

    bj(bi biVar, BitmapDrawable bitmapDrawable) {
        this.b = biVar;
        this.a = bitmapDrawable;
    }

    public final void run() {
        bi.a();
        new StringBuilder("running close ").append(this.a).toString();
        if (this.a != null && this.a.getBitmap() != null) {
            bi.a(this.b).setImageDrawable(this.a);
            bi.a(this.b).invalidate();
        }
    }
}