package com.IQzone.postitial.obfuscated;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

final class cn implements OnClickListener {
    final /* synthetic */ Handler a;
    final /* synthetic */ ImageButton b;
    final /* synthetic */ cl c;

    cn(cl clVar, Handler handler, ImageButton imageButton) {
        this.c = clVar;
        this.a = handler;
        this.b = imageButton;
    }

    public final void onClick(View view) {
        if (cl.b(this.c).isPlaying()) {
            cl.e(this.c).execute(new co(this));
            cl.b(this.c).pause();
            cl.g(this.c).execute(new cp(this));
        } else {
            if (cl.d(this.c) != null) {
                cl.e(this.c).execute(cl.d(this.c));
            }
            cl.g(this.c).execute(new cr(this));
            cl.b(this.c).start();
        }
    }
}