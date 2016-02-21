package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.jy;
import com.google.android.gms.internal.jz;
import com.google.android.gms.internal.ke;
import com.google.android.gms.internal.kh;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class y extends ke {
    public static final y[] DU;
    public String DV;
    public long DW;
    public long DX;
    private int DY;
    public int versionCode;

    static {
        DU = new y[0];
    }

    public y() {
        this.versionCode = 1;
        this.DV = AdTrackerConstants.BLANK;
        this.DW = -1;
        this.DX = -1;
        this.DY = -1;
    }

    public static y g(byte[] bArr) {
        return (y) ke.a(new y(), bArr);
    }

    public void a(jz jzVar) {
        jzVar.f(1, this.versionCode);
        jzVar.b((int)GoogleScorer.CLIENT_PLUS, this.DV);
        jzVar.c(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.DW);
        jzVar.c(GoogleScorer.CLIENT_APPSTATE, this.DX);
    }

    public /* synthetic */ ke b(jy jyVar) {
        return m(jyVar);
    }

    public int c() {
        int g = 0 + jz.g(1, this.versionCode) + jz.g((int)GoogleScorer.CLIENT_PLUS, this.DV) + jz.e(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.DW) + jz.e(GoogleScorer.CLIENT_APPSTATE, this.DX);
        this.DY = g;
        return g;
    }

    public int eW() {
        if (this.DY < 0) {
            c();
        }
        return this.DY;
    }

    public y m(jy jyVar) {
        while (true) {
            int ky = jyVar.ky();
            switch (ky) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return this;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    this.versionCode = jyVar.kB();
                    break;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    this.DV = jyVar.readString();
                    break;
                case MMException.DISPLAY_AD_NOT_PERMITTED:
                    this.DW = jyVar.kD();
                    break;
                case ApiEventType.API_MRAID_PLAY_AUDIO:
                    this.DX = jyVar.kD();
                    break;
                default:
                    if (!kh.b(jyVar, ky)) {
                        return this;
                    }
            }
        }
    }
}