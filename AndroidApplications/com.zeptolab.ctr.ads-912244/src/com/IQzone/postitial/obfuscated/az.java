package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;

final class az implements Runnable {
    final /* synthetic */ px a;
    final /* synthetic */ mx b;
    final /* synthetic */ Handler c;
    private boolean d;
    private /* synthetic */ Context e;

    az(Context context, px pxVar, mx mxVar, Handler handler) {
        this.e = context;
        this.a = pxVar;
        this.b = mxVar;
        this.c = handler;
    }

    public final void run() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new RuntimeException("<Overlay><7>, You must getScreenSize with main thread handler.");
        }
        WindowManager windowManager = (WindowManager) this.e.getSystemService("window");
        View baVar = new ba(this, this.e, windowManager);
        LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.type = 2002;
        layoutParams.flags = (layoutParams.flags | 8) | 16;
        try {
            Integer num = (Integer) this.a.a();
            if (num.intValue() != Integer.MIN_VALUE) {
                layoutParams.screenOrientation = num.intValue();
            }
            try {
                windowManager.addView(baVar, layoutParams);
            } catch (Throwable th) {
                ap.a;
            }
        } catch (om e) {
            throw new RuntimeException("<Overlay><10>, fix your orientation provider");
        }
    }
}