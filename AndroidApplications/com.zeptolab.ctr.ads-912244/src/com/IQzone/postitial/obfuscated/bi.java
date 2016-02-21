package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.widget.ImageButton;

public class bi implements Runnable {
    private static final ql a;
    private final ImageButton b;
    private final Context c;
    private final Handler d;

    static {
        a = new ql();
    }

    public bi(Context context, ImageButton imageButton, Handler handler) {
        this.d = handler;
        this.b = imageButton;
        this.c = context;
    }

    public void run() {
        ql qlVar = a;
        qlVar = a;
        new StringBuilder("close ").append(this.b).toString();
        if (this.b == null) {
            return;
        }
        if (this.b.getDrawable() == null || (this.b.getDrawable() instanceof BitmapDrawable && ((BitmapDrawable) this.b.getDrawable()).getBitmap() == null)) {
            try {
                mg.a(new bj(this, (BitmapDrawable) new bk(this.c).c.a()), this.d);
            } catch (om e) {
                throw new RuntimeException("<LoadXRunnable><1>, this shouldn't happen");
            }
        }
    }
}