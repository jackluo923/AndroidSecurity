package com.google.android.gms.internal;

import android.util.Base64;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;

class e implements n {
    e() {
    }

    public String a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, z ? R.styleable.MapAttrs_uiZoomGestures : GoogleScorer.CLIENT_PLUS);
    }

    public byte[] a(String str, boolean z) {
        return Base64.decode(str, z ? R.styleable.MapAttrs_uiZoomGestures : GoogleScorer.CLIENT_PLUS);
    }
}