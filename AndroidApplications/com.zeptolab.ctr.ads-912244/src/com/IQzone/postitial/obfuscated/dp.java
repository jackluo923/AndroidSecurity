package com.IQzone.postitial.obfuscated;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

final class dp implements OnClickListener {
    final /* synthetic */ Handler a;
    final /* synthetic */ ImageButton b;
    final /* synthetic */ cl c;

    dp(cl clVar, Handler handler, ImageButton imageButton) {
        this.c = clVar;
        this.a = handler;
        this.b = imageButton;
    }

    public final void onClick(View view) {
        if (cl.d(this.c) != null) {
            cl.e(this.c).execute(cl.d(this.c));
        }
        cl.g(this.c).execute(new dq(this));
        cl.b(this.c).seekTo(0);
        cl.b(this.c).start();
    }
}