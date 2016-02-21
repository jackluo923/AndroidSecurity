package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.view.OrientationEventListener;
import com.inmobi.commons.cache.ProductCacheConfig;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;

final class au extends OrientationEventListener {
    private /* synthetic */ Context a;
    private /* synthetic */ boolean b;
    private /* synthetic */ String c;
    private /* synthetic */ ap d;

    au(ap apVar, Context context, Context context2, boolean z, String str) {
        this.d = apVar;
        this.a = context2;
        this.b = z;
        this.c = str;
        super(context);
    }

    public final void onOrientationChanged(int i) {
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        int i6;
        boolean z3;
        boolean z4;
        int i7;
        boolean z5;
        boolean z6;
        boolean z7;
        int i8;
        boolean z8 = 330;
        int i9 = 0;
        try {
            if (System.getInt(this.a.getContentResolver(), "accelerometer_rotation") == 0) {
                boolean z9 = true;
            } else {
                i2 = i9;
            }
            try {
                if (!this.b && z) {
                    return;
                }
            } catch (SettingNotFoundException e) {
                ap.a;
                if (ap.h(this.d)) {
                    i -= 90;
                    if (i < 0) {
                        i += 360;
                    }
                }
                if (this.d.k != bc.a) {
                    i3 = 260;
                    z = true;
                    i4 = 350;
                    i5 = 80;
                    z2 = true;
                    z8 = true;
                    i6 = 170;
                    z3 = true;
                } else if (this.d.k == bc.b) {
                    z2 = 160;
                    z3 = 70;
                    z4 = true;
                    i7 = 200;
                    z5 = true;
                    z6 = true;
                    z7 = true;
                } else {
                    z = 240;
                    z2 = 120;
                    z3 = ProductCacheConfig.DEFAULT_INTERVAL;
                    z6 = ADCNetwork.timeout_seconds;
                    z4 = 210;
                    z7 = 150;
                    z5 = true;
                    i8 = 300;
                }
                i2 = 1;
                if (this.d.i == i2) {
                    this.d.i = i2;
                    this.d.j.a();
                }
            }
        } catch (SettingNotFoundException e2) {
            i2 = i9;
            ap.a;
            if (ap.h(this.d)) {
                i -= 90;
                if (i < 0) {
                    i += 360;
                }
            }
            if (this.d.k != bc.a) {
                i3 = 260;
                z = true;
                i4 = 350;
                i5 = 80;
                z2 = true;
                z8 = true;
                i6 = 170;
                z3 = true;
            } else if (this.d.k == bc.b) {
                z = 240;
                z2 = 120;
                z3 = ProductCacheConfig.DEFAULT_INTERVAL;
                z6 = ADCNetwork.timeout_seconds;
                z4 = 210;
                z7 = 150;
                z5 = true;
                i8 = 300;
            } else {
                z2 = 160;
                z3 = 70;
                z4 = true;
                i7 = 200;
                z5 = true;
                z6 = true;
                z7 = true;
            }
            i2 = 1;
            if (this.d.i == i2) {
                this.d.i = i2;
                this.d.j.a();
            }
        }
        if (ap.h(this.d)) {
            i -= 90;
            if (i < 0) {
                i += 360;
            }
        }
        if (this.d.k != bc.a) {
            i3 = 260;
            z = true;
            i4 = 350;
            i5 = 80;
            z2 = true;
            z8 = true;
            i6 = 170;
            z3 = true;
        } else if (this.d.k == bc.b) {
            z2 = 160;
            z3 = 70;
            z4 = true;
            i7 = 200;
            z5 = true;
            z6 = true;
            z7 = true;
        } else {
            z = 240;
            z2 = 120;
            z3 = ProductCacheConfig.DEFAULT_INTERVAL;
            z6 = ADCNetwork.timeout_seconds;
            z4 = 210;
            z7 = 150;
            z5 = true;
            i8 = 300;
        }
        if ((i >= i4 || i <= i) && i != Integer.MIN_VALUE) {
            i2 = 1;
        } else if (i < i || i >= i) {
            if (i >= i6 && i < i) {
                ap.a;
                new StringBuilder("orientationLocked ").append(z9).toString();
                if ((VERSION.SDK_INT >= 14 || ap.h(this.d)) && !z9) {
                    ap.a;
                    i2 = ZBuildConfig.$minsdk;
                } else {
                    ap.a;
                }
            } else if (i >= i7 && i < i) {
                if (this.c.toLowerCase().equals("gt-p3113")) {
                    ap.a;
                    i2 = i9;
                } else if (ap.h(this.d)) {
                    i2 = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
                } else if (this.c.toLowerCase().equals("kfthwi")) {
                    ap.a;
                    i2 = 8;
                } else {
                    i2 = i9;
                }
            }
            i2 = this.d.i;
        } else {
            ap.a;
            new StringBuilder("phone model = ").append(this.c).toString();
            if (this.c.toLowerCase().equals("kfthwi")) {
                ap.a;
                i2 = i9;
            } else {
                i2 = 8;
            }
        }
        if (this.d.i == i2) {
            this.d.i = i2;
            this.d.j.a();
        }
    }
}