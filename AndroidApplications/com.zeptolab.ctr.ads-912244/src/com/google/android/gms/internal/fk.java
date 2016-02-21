package com.google.android.gms.internal;

import android.util.Base64;
import com.zeptolab.ctr.ads.R;

public final class fk {
    public static String d(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(bArr, 0);
    }

    public static String e(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(bArr, R.styleable.MapAttrs_uiZoomControls);
    }
}