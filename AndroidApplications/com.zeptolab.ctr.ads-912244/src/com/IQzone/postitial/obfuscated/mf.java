package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.OrientationEventListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Locale;

final class mf extends OrientationEventListener {
    private /* synthetic */ me a;

    mf(me meVar, Context context) {
        this.a = meVar;
        super(context);
    }

    public final void onOrientationChanged(int i) {
        int i2 = 0;
        if (me.a(this.a)) {
            i -= 90;
            if (i < 0) {
                i += 360;
            }
        }
        String toLowerCase = Build.MODEL.toLowerCase(Locale.getDefault());
        if (i >= 330 || i <= 30) {
            i2 = 1;
        } else if (i < 60 || i >= 120) {
            if (i < 150 || i >= 210) {
                if (i < 240 || i >= 300) {
                    i2 = me.b(this.a);
                } else if (me.a(this.a)) {
                    i2 = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
                } else if (toLowerCase.toLowerCase().equals("kfthwi")) {
                    i2 = 8;
                }
            } else if (VERSION.SDK_INT >= 14 || me.a(this.a)) {
                i2 = ZBuildConfig.$minsdk;
            } else {
                i2 = me.b(this.a);
            }
        } else if (!toLowerCase.toLowerCase().equals("kfthwi")) {
            i2 = 8;
        }
        if (me.b(this.a) != i2) {
            me.a(this.a, i2);
        }
    }
}