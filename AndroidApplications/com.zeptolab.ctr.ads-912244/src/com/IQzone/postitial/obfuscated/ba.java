package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.view.WindowManager;
import android.widget.RelativeLayout;

final class ba extends RelativeLayout {
    final /* synthetic */ WindowManager a;
    private /* synthetic */ az b;

    ba(az azVar, Context context, WindowManager windowManager) {
        this.b = azVar;
        this.a = windowManager;
        super(context);
    }

    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        try {
            int intValue = ((Integer) this.b.a.a()).intValue();
            boolean z;
            if (intValue == Integer.MIN_VALUE) {
                z = false;
            } else if (intValue == 0 || intValue == 8) {
                z = true;
            } else {
                z = false;
            }
            if (intValue == 0) {
                int i5 = i;
                i = i2;
                i2 = i5;
            }
            if (!this.b.d) {
                this.b.d = true;
                this.b.b.a(new bg(i2, (byte) 0));
                this.b.c.post(new bb(this, this));
            }
        } catch (om e) {
            throw new RuntimeException("<Overlay><8>, fix your orientation provider");
        }
    }
}