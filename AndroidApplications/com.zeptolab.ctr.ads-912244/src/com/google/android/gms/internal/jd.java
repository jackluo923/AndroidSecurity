package com.google.android.gms.internal;

import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.j;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface jd {

    public static final class a extends ka {
        public long Yb;
        public j Yc;
        public f fV;

        public a() {
            kw();
        }

        public static com.google.android.gms.internal.jd.a l(byte[] bArr) {
            return (com.google.android.gms.internal.jd.a) ke.a(new com.google.android.gms.internal.jd.a(), bArr);
        }

        public void a_(jz jzVar) {
            jzVar.b(1, this.Yb);
            if (this.fV != null) {
                jzVar.a((int)GoogleScorer.CLIENT_PLUS, this.fV);
            }
            if (this.Yc != null) {
                jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.Yc);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return n(jyVar);
        }

        public int c() {
            int c = super.c() + jz.d(1, this.Yb);
            if (this.fV != null) {
                c += jz.b((int)GoogleScorer.CLIENT_PLUS, this.fV);
            }
            if (this.Yc != null) {
                c += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.Yc);
            }
            this.DY = c;
            return c;
        }

        public boolean equals(com.google.android.gms.internal.jd.a aVar) {
            if (aVar == this) {
                return true;
            }
            if (!(aVar instanceof com.google.android.gms.internal.jd.a)) {
                return false;
            }
            aVar = aVar;
            if (this.Yb != aVar.Yb) {
                return false;
            }
            if (this.fV == null) {
                if (aVar.fV != null) {
                    return false;
                }
            } else if (!this.fV.equals(aVar.fV)) {
                return false;
            }
            if (this.Yc == null) {
                if (aVar.Yc != null) {
                    return false;
                }
            } else if (!this.Yc.equals(aVar.Yc)) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(aVar.aae);
            }
            return aVar.aae == null || aVar.aae.isEmpty();
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.Yc == null ? 0 : this.Yc.hashCode()) + (((this.fV == null ? 0 : this.fV.hashCode()) + ((((int) (this.Yb ^ (this.Yb >>> 32))) + 527) * 31)) * 31)) * 31;
            if (!(this.aae == null || this.aae.isEmpty())) {
                i = this.aae.hashCode();
            }
            return hashCode + i;
        }

        public com.google.android.gms.internal.jd.a kw() {
            this.Yb = 0;
            this.fV = null;
            this.Yc = null;
            this.aae = null;
            this.DY = -1;
            return this;
        }

        public com.google.android.gms.internal.jd.a n(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        this.Yb = jyVar.kA();
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        if (this.fV == null) {
                            this.fV = new f();
                        }
                        jyVar.a(this.fV);
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        if (this.Yc == null) {
                            this.Yc = new j();
                        }
                        jyVar.a(this.Yc);
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }
    }
}