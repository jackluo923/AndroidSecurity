package com.IQzone.postitial.obfuscated;

import android.view.View;
import android.view.View.OnClickListener;

final class ds implements OnClickListener {
    private /* synthetic */ cl a;

    ds(cl clVar) {
        this.a = clVar;
    }

    public final void onClick(View view) {
        if (cl.d(this.a) != null) {
            cl.e(this.a).execute(cl.d(this.a));
        }
        boolean isPlaying = cl.b(this.a).isPlaying();
        cl.b(this.a).seekTo(cl.b(this.a).getCurrentPosition() + 5000);
        if (isPlaying) {
            cl.b(this.a).start();
        }
    }
}