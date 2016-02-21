package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface c {

    public static final class a extends ka {
        public int eP;
        public int eQ;
        public int level;

        public a() {
            b();
        }

        public com.google.android.gms.internal.c.a a_(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        ky = jyVar.kB();
                        switch (ky) {
                            case GoogleScorer.CLIENT_GAMES:
                            case GoogleScorer.CLIENT_PLUS:
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                this.level = ky;
                                break;
                            default:
                                break;
                        }
                    case MMException.REQUEST_NOT_PERMITTED:
                        this.eP = jyVar.kB();
                        break;
                    case MMException.DISPLAY_AD_NOT_PERMITTED:
                        this.eQ = jyVar.kB();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public void a_(jz jzVar) {
            if (this.level != 1) {
                jzVar.f(1, this.level);
            }
            if (this.eP != 0) {
                jzVar.f(GoogleScorer.CLIENT_PLUS, this.eP);
            }
            if (this.eQ != 0) {
                jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.eQ);
            }
            super.a(jzVar);
        }

        public com.google.android.gms.internal.c.a b() {
            this.level = 1;
            this.eP = 0;
            this.eQ = 0;
            this.aae = null;
            this.DY = -1;
            return this;
        }

        public /* synthetic */ ke b(jy jyVar) {
            return a(jyVar);
        }

        public int c() {
            int c = super.c();
            if (this.level != 1) {
                c += jz.g(1, this.level);
            }
            if (this.eP != 0) {
                c += jz.g((int)GoogleScorer.CLIENT_PLUS, this.eP);
            }
            if (this.eQ != 0) {
                c += jz.g((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.eQ);
            }
            this.DY = c;
            return c;
        }

        public boolean equals(com.google.android.gms.internal.c.a aVar) {
            if (aVar == this) {
                return true;
            }
            if (!(aVar instanceof com.google.android.gms.internal.c.a)) {
                return false;
            }
            aVar = aVar;
            if (this.level != aVar.level || this.eP != aVar.eP || this.eQ != aVar.eQ) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(aVar.aae);
            }
            return aVar.aae == null || aVar.aae.isEmpty();
        }

        public int hashCode() {
            int hashCode;
            int i = (((((this.level + 527) * 31) + this.eP) * 31) + this.eQ) * 31;
            hashCode = (this.aae == null || this.aae.isEmpty()) ? 0 : this.aae.hashCode();
            return hashCode + i;
        }
    }

    public static final class b extends ka {
        private static volatile com.google.android.gms.internal.c.b[] eR;
        public int[] eS;
        public int eT;
        public boolean eU;
        public boolean eV;
        public int name;

        public b() {
            e();
        }

        public static com.google.android.gms.internal.c.b[] d() {
            if (eR == null) {
                synchronized (kc.aah) {
                    if (eR == null) {
                        eR = new com.google.android.gms.internal.c.b[0];
                    }
                }
            }
            return eR;
        }

        public void a(jz jzVar) {
            if (this.eV) {
                jzVar.a(1, this.eV);
            }
            jzVar.f(GoogleScorer.CLIENT_PLUS, this.eT);
            if (this.eS != null && this.eS.length > 0) {
                int i = 0;
                while (i < this.eS.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.eS[i]);
                    i++;
                }
            }
            if (this.name != 0) {
                jzVar.f(GoogleScorer.CLIENT_APPSTATE, this.name);
            }
            if (this.eU) {
                jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.eU);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b_(jy jyVar) {
            return c(jyVar);
        }

        public int c() {
            int i = 0;
            int c = super.c();
            if (this.eV) {
                c += jz.b(1, this.eV);
            }
            int g = jz.g((int)GoogleScorer.CLIENT_PLUS, this.eT) + c;
            if (this.eS == null || this.eS.length <= 0) {
                c = g;
            } else {
                c = 0;
                while (c < this.eS.length) {
                    i += jz.cC(this.eS[c]);
                    c++;
                }
                c = g + i + this.eS.length * 1;
            }
            if (this.name != 0) {
                c += jz.g((int)GoogleScorer.CLIENT_APPSTATE, this.name);
            }
            if (this.eU) {
                c += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.eU);
            }
            this.DY = c;
            return c;
        }

        public com.google.android.gms.internal.c.b c(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                int c;
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        this.eV = jyVar.kC();
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                        this.eT = jyVar.kB();
                        break;
                    case MMException.DISPLAY_AD_NOT_PERMITTED:
                        c = kh.c(jyVar, MMException.DISPLAY_AD_NOT_PERMITTED);
                        ky = this.eS == null ? 0 : this.eS.length;
                        Object obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.eS, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.eS = obj;
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        int cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.eS == null ? 0 : this.eS.length;
                        Object obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.eS, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.eS = obj2;
                        jyVar.cx(cw);
                        break;
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                        this.name = jyVar.kB();
                        break;
                    case ApiEventType.API_MRAID_HIDE_VIDEO:
                        this.eU = jyVar.kC();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public com.google.android.gms.internal.c.b e() {
            this.eS = kh.aaj;
            this.eT = 0;
            this.name = 0;
            this.eU = false;
            this.eV = false;
            this.aae = null;
            this.DY = -1;
            return this;
        }

        public boolean equals(com.google.android.gms.internal.c.b bVar) {
            if (bVar == this) {
                return true;
            }
            if (!(bVar instanceof com.google.android.gms.internal.c.b)) {
                return false;
            }
            bVar = bVar;
            if (!kc.equals(this.eS, bVar.eS) || this.eT != bVar.eT || this.name != bVar.name || this.eU != bVar.eU || this.eV != bVar.eV) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(bVar.aae);
            }
            return bVar.aae == null || bVar.aae.isEmpty();
        }

        public int hashCode() {
            int i = 1231;
            int hashCode = ((this.eU ? 1231 : 1237) + ((((((kc.hashCode(this.eS) + 527) * 31) + this.eT) * 31) + this.name) * 31)) * 31;
            if (!this.eV) {
                i = 1237;
            }
            i = (hashCode + i) * 31;
            hashCode = (this.aae == null || this.aae.isEmpty()) ? 0 : this.aae.hashCode();
            return hashCode + i;
        }
    }

    public static final class c extends ka {
        private static volatile com.google.android.gms.internal.c.c[] eW;
        public String eX;
        public long eY;
        public long eZ;
        public boolean fa;
        public long fb;

        public c() {
            g();
        }

        public static com.google.android.gms.internal.c.c[] f() {
            if (eW == null) {
                synchronized (kc.aah) {
                    if (eW == null) {
                        eW = new com.google.android.gms.internal.c.c[0];
                    }
                }
            }
            return eW;
        }

        public void a(jz jzVar) {
            if (!this.eX.equals(AdTrackerConstants.BLANK)) {
                jzVar.b(1, this.eX);
            }
            if (this.eY != 0) {
                jzVar.b((int)GoogleScorer.CLIENT_PLUS, this.eY);
            }
            if (this.eZ != 2147483647L) {
                jzVar.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.eZ);
            }
            if (this.fa) {
                jzVar.a((int)GoogleScorer.CLIENT_APPSTATE, this.fa);
            }
            if (this.fb != 0) {
                jzVar.b((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, this.fb);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return d(jyVar);
        }

        public int c_() {
            int c = super.c();
            if (!this.eX.equals(AdTrackerConstants.BLANK)) {
                c += jz.g(1, this.eX);
            }
            if (this.eY != 0) {
                c += jz.d(GoogleScorer.CLIENT_PLUS, this.eY);
            }
            if (this.eZ != 2147483647L) {
                c += jz.d(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.eZ);
            }
            if (this.fa) {
                c += jz.b((int)GoogleScorer.CLIENT_APPSTATE, this.fa);
            }
            if (this.fb != 0) {
                c += jz.d(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, this.fb);
            }
            this.DY = c;
            return c;
        }

        public com.google.android.gms.internal.c.c d(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case R.styleable.MapAttrs_uiZoomControls:
                        this.eX = jyVar.readString();
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                        this.eY = jyVar.kA();
                        break;
                    case MMException.DISPLAY_AD_NOT_PERMITTED:
                        this.eZ = jyVar.kA();
                        break;
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                        this.fa = jyVar.kC();
                        break;
                    case ApiEventType.API_MRAID_PLAY_VIDEO:
                        this.fb = jyVar.kA();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public boolean equals(com.google.android.gms.internal.c.c cVar) {
            if (cVar == this) {
                return true;
            }
            if (!(cVar instanceof com.google.android.gms.internal.c.c)) {
                return false;
            }
            cVar = cVar;
            if (this.eX == null) {
                if (cVar.eX != null) {
                    return false;
                }
            } else if (!this.eX.equals(cVar.eX)) {
                return false;
            }
            if (this.eY != cVar.eY || this.eZ != cVar.eZ || this.fa != cVar.fa || this.fb != cVar.fb) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(cVar.aae);
            }
            return cVar.aae == null || cVar.aae.isEmpty();
        }

        public com.google.android.gms.internal.c.c g() {
            this.eX = AdTrackerConstants.BLANK;
            this.eY = 0;
            this.eZ = 2147483647L;
            this.fa = false;
            this.fb = 0;
            this.aae = null;
            this.DY = -1;
            return this;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.fa ? 1231 : 1237) + (((((((this.eX == null ? 0 : this.eX.hashCode()) + 527) * 31) + ((int) (this.eY ^ (this.eY >>> 32)))) * 31) + ((int) (this.eZ ^ (this.eZ >>> 32)))) * 31)) * 31) + ((int) (this.fb ^ (this.fb >>> 32)))) * 31;
            if (!(this.aae == null || this.aae.isEmpty())) {
                i = this.aae.hashCode();
            }
            return hashCode + i;
        }
    }

    public static final class d extends ka {
        public com.google.android.gms.internal.d.a[] fc;
        public com.google.android.gms.internal.d.a[] fd;
        public com.google.android.gms.internal.c.c[] fe;

        public d() {
            h();
        }

        public void a(jz jzVar) {
            int i;
            ke keVar;
            int i2 = 0;
            if (this.fc != null && this.fc.length > 0) {
                i = 0;
                while (i < this.fc.length) {
                    keVar = this.fc[i];
                    if (keVar != null) {
                        jzVar.a(1, keVar);
                    }
                    i++;
                }
            }
            if (this.fd != null && this.fd.length > 0) {
                i = 0;
                while (i < this.fd.length) {
                    keVar = this.fd[i];
                    if (keVar != null) {
                        jzVar.a((int)GoogleScorer.CLIENT_PLUS, keVar);
                    }
                    i++;
                }
            }
            if (this.fe != null && this.fe.length > 0) {
                while (i2 < this.fe.length) {
                    ke keVar2 = this.fe[i2];
                    if (keVar2 != null) {
                        jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, keVar2);
                    }
                    i2++;
                }
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return e(jyVar);
        }

        public int c() {
            int i;
            ke keVar;
            int i2 = 0;
            int c = super.c();
            if (this.fc != null && this.fc.length > 0) {
                i = c;
                c = 0;
                while (c < this.fc.length) {
                    keVar = this.fc[c];
                    if (keVar != null) {
                        i += jz.b(1, keVar);
                    }
                    c++;
                }
                c = i;
            }
            if (this.fd != null && this.fd.length > 0) {
                i = c;
                c = 0;
                while (c < this.fd.length) {
                    keVar = this.fd[c];
                    if (keVar != null) {
                        i += jz.b((int)GoogleScorer.CLIENT_PLUS, keVar);
                    }
                    c++;
                }
                c = i;
            }
            if (this.fe != null && this.fe.length > 0) {
                while (i2 < this.fe.length) {
                    ke keVar2 = this.fe[i2];
                    if (keVar2 != null) {
                        c += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, keVar2);
                    }
                    i2++;
                }
            }
            this.DY = c;
            return c;
        }

        public com.google.android.gms.internal.c.d e(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                int c;
                Object obj;
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case R.styleable.MapAttrs_uiZoomControls:
                        c = kh.c(jyVar, R.styleable.MapAttrs_uiZoomControls);
                        ky = this.fc == null ? 0 : this.fc.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fc, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.fc = obj;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_GET_CURRENT_POSITION);
                        ky = this.fd == null ? 0 : this.fd.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fd, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.fd = obj;
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        c = kh.c(jyVar, MMException.AD_NO_ACTIVITY);
                        ky = this.fe == null ? 0 : this.fe.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fe, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.c();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.c();
                        jyVar.a(obj[ky]);
                        this.fe = obj;
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public boolean equals(com.google.android.gms.internal.c.d dVar) {
            if (dVar == this) {
                return true;
            }
            if (!(dVar instanceof com.google.android.gms.internal.c.d)) {
                return false;
            }
            dVar = dVar;
            if (!kc.equals(this.fc, dVar.fc) || !kc.equals(this.fd, dVar.fd) || !kc.equals(this.fe, dVar.fe)) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(dVar.aae);
            }
            return dVar.aae == null || dVar.aae.isEmpty();
        }

        public com.google.android.gms.internal.c.d h() {
            this.fc = com.google.android.gms.internal.d.a.r();
            this.fd = com.google.android.gms.internal.d.a.r();
            this.fe = com.google.android.gms.internal.c.c.f();
            this.aae = null;
            this.DY = -1;
            return this;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = (((((kc.hashCode(this.fc) + 527) * 31) + kc.hashCode(this.fd)) * 31) + kc.hashCode(this.fe)) * 31;
            hashCode = (this.aae == null || this.aae.isEmpty()) ? 0 : this.aae.hashCode();
            return hashCode + hashCode2;
        }
    }

    public static final class e extends ka {
        private static volatile com.google.android.gms.internal.c.e[] ff;
        public int key;
        public int value;

        public e() {
            j();
        }

        public static com.google.android.gms.internal.c.e[] i() {
            if (ff == null) {
                synchronized (kc.aah) {
                    if (ff == null) {
                        ff = new com.google.android.gms.internal.c.e[0];
                    }
                }
            }
            return ff;
        }

        public void a(jz jzVar) {
            jzVar.f(1, this.key);
            jzVar.f(GoogleScorer.CLIENT_PLUS, this.value);
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return f(jyVar);
        }

        public int c() {
            int c = super.c() + jz.g(1, this.key) + jz.g((int)GoogleScorer.CLIENT_PLUS, this.value);
            this.DY = c;
            return c;
        }

        public boolean equals(com.google.android.gms.internal.c.e eVar) {
            if (eVar == this) {
                return true;
            }
            if (!(eVar instanceof com.google.android.gms.internal.c.e)) {
                return false;
            }
            eVar = eVar;
            if (this.key != eVar.key || this.value != eVar.value) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(eVar.aae);
            }
            return eVar.aae == null || eVar.aae.isEmpty();
        }

        public com.google.android.gms.internal.c.e f(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        this.key = jyVar.kB();
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                        this.value = jyVar.kB();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public int hashCode() {
            int hashCode;
            int i = (((this.key + 527) * 31) + this.value) * 31;
            hashCode = (this.aae == null || this.aae.isEmpty()) ? 0 : this.aae.hashCode();
            return hashCode + i;
        }

        public com.google.android.gms.internal.c.e j() {
            this.key = 0;
            this.value = 0;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }

    public static final class f extends ka {
        public String[] fg;
        public String[] fh;
        public com.google.android.gms.internal.d.a[] fi;
        public com.google.android.gms.internal.c.e[] fj;
        public com.google.android.gms.internal.c.b[] fk;
        public com.google.android.gms.internal.c.b[] fl;
        public com.google.android.gms.internal.c.b[] fm;
        public com.google.android.gms.internal.c.g[] fn;
        public String fo;
        public String fp;
        public String fq;
        public String fr;
        public com.google.android.gms.internal.c.a fs;
        public float ft;
        public boolean fu;
        public String[] fv;
        public int fw;

        public f() {
            k();
        }

        public static com.google.android.gms.internal.c.f a(byte[] bArr) {
            return (com.google.android.gms.internal.c.f) ke.a(new com.google.android.gms.internal.c.f(), bArr);
        }

        public void a(jz jzVar) {
            int i;
            String str;
            ke keVar;
            int i2 = 0;
            if (this.fh != null && this.fh.length > 0) {
                i = 0;
                while (i < this.fh.length) {
                    str = this.fh[i];
                    if (str != null) {
                        jzVar.b(1, str);
                    }
                    i++;
                }
            }
            if (this.fi != null && this.fi.length > 0) {
                i = 0;
                while (i < this.fi.length) {
                    keVar = this.fi[i];
                    if (keVar != null) {
                        jzVar.a((int)GoogleScorer.CLIENT_PLUS, keVar);
                    }
                    i++;
                }
            }
            if (this.fj != null && this.fj.length > 0) {
                i = 0;
                while (i < this.fj.length) {
                    keVar = this.fj[i];
                    if (keVar != null) {
                        jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, keVar);
                    }
                    i++;
                }
            }
            if (this.fk != null && this.fk.length > 0) {
                i = 0;
                while (i < this.fk.length) {
                    keVar = this.fk[i];
                    if (keVar != null) {
                        jzVar.a((int)GoogleScorer.CLIENT_APPSTATE, keVar);
                    }
                    i++;
                }
            }
            if (this.fl != null && this.fl.length > 0) {
                i = 0;
                while (i < this.fl.length) {
                    keVar = this.fl[i];
                    if (keVar != null) {
                        jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, keVar);
                    }
                    i++;
                }
            }
            if (this.fm != null && this.fm.length > 0) {
                i = 0;
                while (i < this.fm.length) {
                    keVar = this.fm[i];
                    if (keVar != null) {
                        jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, keVar);
                    }
                    i++;
                }
            }
            if (this.fn != null && this.fn.length > 0) {
                i = 0;
                while (i < this.fn.length) {
                    keVar = this.fn[i];
                    if (keVar != null) {
                        jzVar.a((int)GoogleScorer.CLIENT_ALL, keVar);
                    }
                    i++;
                }
            }
            if (!this.fo.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)ZBuildConfig.$minsdk, this.fo);
            }
            if (!this.fp.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)R.styleable.MapAttrs_uiZoomControls, this.fp);
            }
            if (!this.fq.equals("0")) {
                jzVar.b((int)R.styleable.MapAttrs_useViewLifecycle, this.fq);
            }
            if (!this.fr.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)R.styleable.MapAttrs_zOrderOnTop, this.fr);
            }
            if (this.fs != null) {
                jzVar.a((int)MMException.REQUEST_NOT_FILLED, this.fs);
            }
            if (Float.floatToIntBits(this.ft) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
                jzVar.a((int)MMException.REQUEST_BAD_RESPONSE, this.ft);
            }
            if (this.fv != null && this.fv.length > 0) {
                i = 0;
                while (i < this.fv.length) {
                    str = this.fv[i];
                    if (str != null) {
                        jzVar.b((int)MMException.REQUEST_NOT_PERMITTED, str);
                    }
                    i++;
                }
            }
            if (this.fw != 0) {
                jzVar.f(ZBuildConfig.$targetsdk, this.fw);
            }
            if (this.fu) {
                jzVar.a((int)ApiEventType.API_MRAID_GET_CURRENT_POSITION, this.fu);
            }
            if (this.fg != null && this.fg.length > 0) {
                while (i2 < this.fg.length) {
                    String str2 = this.fg[i2];
                    if (str2 != null) {
                        jzVar.b((int)ApiEventType.API_MRAID_GET_DEFAULT_POSITION, str2);
                    }
                    i2++;
                }
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return g(jyVar);
        }

        public int c() {
            int i;
            int i2;
            int i3;
            String str;
            ke keVar;
            int i4 = 0;
            int c = super.c();
            if (this.fh == null || this.fh.length <= 0) {
                i = c;
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
                while (i < this.fh.length) {
                    str = this.fh[i];
                    if (str != null) {
                        i3++;
                        i2 += jz.bQ(str);
                    }
                    i++;
                }
                i = c + i2 + i3 * 1;
            }
            if (this.fi != null && this.fi.length > 0) {
                i2 = i;
                i = 0;
                while (i < this.fi.length) {
                    keVar = this.fi[i];
                    if (keVar != null) {
                        i2 += jz.b((int)GoogleScorer.CLIENT_PLUS, keVar);
                    }
                    i++;
                }
                i = i2;
            }
            if (this.fj != null && this.fj.length > 0) {
                i2 = i;
                i = 0;
                while (i < this.fj.length) {
                    keVar = this.fj[i];
                    if (keVar != null) {
                        i2 += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, keVar);
                    }
                    i++;
                }
                i = i2;
            }
            if (this.fk != null && this.fk.length > 0) {
                i2 = i;
                i = 0;
                while (i < this.fk.length) {
                    keVar = this.fk[i];
                    if (keVar != null) {
                        i2 += jz.b((int)GoogleScorer.CLIENT_APPSTATE, keVar);
                    }
                    i++;
                }
                i = i2;
            }
            if (this.fl != null && this.fl.length > 0) {
                i2 = i;
                i = 0;
                while (i < this.fl.length) {
                    keVar = this.fl[i];
                    if (keVar != null) {
                        i2 += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, keVar);
                    }
                    i++;
                }
                i = i2;
            }
            if (this.fm != null && this.fm.length > 0) {
                i2 = i;
                i = 0;
                while (i < this.fm.length) {
                    keVar = this.fm[i];
                    if (keVar != null) {
                        i2 += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, keVar);
                    }
                    i++;
                }
                i = i2;
            }
            if (this.fn != null && this.fn.length > 0) {
                i2 = i;
                i = 0;
                while (i < this.fn.length) {
                    keVar = this.fn[i];
                    if (keVar != null) {
                        i2 += jz.b((int)GoogleScorer.CLIENT_ALL, keVar);
                    }
                    i++;
                }
                i = i2;
            }
            if (!this.fo.equals(AdTrackerConstants.BLANK)) {
                i += jz.g((int)ZBuildConfig.$minsdk, this.fo);
            }
            if (!this.fp.equals(AdTrackerConstants.BLANK)) {
                i += jz.g((int)R.styleable.MapAttrs_uiZoomControls, this.fp);
            }
            if (!this.fq.equals("0")) {
                i += jz.g((int)R.styleable.MapAttrs_useViewLifecycle, this.fq);
            }
            if (!this.fr.equals(AdTrackerConstants.BLANK)) {
                i += jz.g((int)R.styleable.MapAttrs_zOrderOnTop, this.fr);
            }
            if (this.fs != null) {
                i += jz.b((int)MMException.REQUEST_NOT_FILLED, this.fs);
            }
            if (Float.floatToIntBits(this.ft) != Float.floatToIntBits(BitmapDescriptorFactory.HUE_RED)) {
                i += jz.b((int)MMException.REQUEST_BAD_RESPONSE, this.ft);
            }
            if (this.fv != null && this.fv.length > 0) {
                i2 = 0;
                i3 = 0;
                c = 0;
                while (i2 < this.fv.length) {
                    str = this.fv[i2];
                    if (str != null) {
                        c++;
                        i3 += jz.bQ(str);
                    }
                    i2++;
                }
                i = i + i3 + c * 2;
            }
            if (this.fw != 0) {
                i += jz.g((int)ZBuildConfig.$targetsdk, this.fw);
            }
            if (this.fu) {
                i += jz.b((int)ApiEventType.API_MRAID_GET_CURRENT_POSITION, this.fu);
            }
            if (this.fg != null && this.fg.length > 0) {
                i2 = 0;
                i3 = 0;
                while (i4 < this.fg.length) {
                    String str2 = this.fg[i4];
                    if (str2 != null) {
                        i3++;
                        i2 += jz.bQ(str2);
                    }
                    i4++;
                }
                i = i + i2 + i3 * 2;
            }
            this.DY = i;
            return i;
        }

        public boolean equals(com.google.android.gms.internal.c.f fVar) {
            if (fVar == this) {
                return true;
            }
            if (!(fVar instanceof com.google.android.gms.internal.c.f)) {
                return false;
            }
            fVar = fVar;
            if (!kc.equals(this.fg, fVar.fg) || !kc.equals(this.fh, fVar.fh) || !kc.equals(this.fi, fVar.fi) || !kc.equals(this.fj, fVar.fj) || !kc.equals(this.fk, fVar.fk) || !kc.equals(this.fl, fVar.fl) || !kc.equals(this.fm, fVar.fm) || !kc.equals(this.fn, fVar.fn)) {
                return false;
            }
            if (this.fo == null) {
                if (fVar.fo != null) {
                    return false;
                }
            } else if (!this.fo.equals(fVar.fo)) {
                return false;
            }
            if (this.fp == null) {
                if (fVar.fp != null) {
                    return false;
                }
            } else if (!this.fp.equals(fVar.fp)) {
                return false;
            }
            if (this.fq == null) {
                if (fVar.fq != null) {
                    return false;
                }
            } else if (!this.fq.equals(fVar.fq)) {
                return false;
            }
            if (this.fr == null) {
                if (fVar.fr != null) {
                    return false;
                }
            } else if (!this.fr.equals(fVar.fr)) {
                return false;
            }
            if (this.fs == null) {
                if (fVar.fs != null) {
                    return false;
                }
            } else if (!this.fs.equals(fVar.fs)) {
                return false;
            }
            if (Float.floatToIntBits(this.ft) != Float.floatToIntBits(fVar.ft) || this.fu != fVar.fu || !kc.equals(this.fv, fVar.fv) || this.fw != fVar.fw) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(fVar.aae);
            }
            return fVar.aae == null || fVar.aae.isEmpty();
        }

        public com.google.android.gms.internal.c.f g(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                int c;
                Object obj;
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case R.styleable.MapAttrs_uiZoomControls:
                        c = kh.c(jyVar, R.styleable.MapAttrs_uiZoomControls);
                        ky = this.fh == null ? 0 : this.fh.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fh, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.readString();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.readString();
                        this.fh = obj;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_GET_CURRENT_POSITION);
                        ky = this.fi == null ? 0 : this.fi.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fi, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.fi = obj;
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        c = kh.c(jyVar, MMException.AD_NO_ACTIVITY);
                        ky = this.fj == null ? 0 : this.fj.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fj, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.e();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.e();
                        jyVar.a(obj[ky]);
                        this.fj = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_UNMUTE_AUDIO);
                        ky = this.fk == null ? 0 : this.fk.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fk, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.b();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.b();
                        jyVar.a(obj[ky]);
                        this.fk = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_UNMUTE_VIDEO);
                        ky = this.fl == null ? 0 : this.fl.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fl, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.b();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.b();
                        jyVar.a(obj[ky]);
                        this.fl = obj;
                        break;
                    case ApiEventType.API_MRAID_CLOSE_VIDEO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_CLOSE_VIDEO);
                        ky = this.fm == null ? 0 : this.fm.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fm, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.b();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.b();
                        jyVar.a(obj[ky]);
                        this.fm = obj;
                        break;
                    case 58:
                        c = kh.c(jyVar, 58);
                        ky = this.fn == null ? 0 : this.fn.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fn, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.g();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.g();
                        jyVar.a(obj[ky]);
                        this.fn = obj;
                        break;
                    case 74:
                        this.fo = jyVar.readString();
                        break;
                    case 82:
                        this.fp = jyVar.readString();
                        break;
                    case 98:
                        this.fq = jyVar.readString();
                        break;
                    case 106:
                        this.fr = jyVar.readString();
                        break;
                    case 114:
                        if (this.fs == null) {
                            this.fs = new com.google.android.gms.internal.c.a();
                        }
                        jyVar.a(this.fs);
                        break;
                    case 125:
                        this.ft = jyVar.readFloat();
                        break;
                    case TransportMediator.KEYCODE_MEDIA_RECORD:
                        c = kh.c(jyVar, TransportMediator.KEYCODE_MEDIA_RECORD);
                        ky = this.fv == null ? 0 : this.fv.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fv, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.readString();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.readString();
                        this.fv = obj;
                        break;
                    case 136:
                        this.fw = jyVar.kB();
                        break;
                    case 144:
                        this.fu = jyVar.kC();
                        break;
                    case 154:
                        c = kh.c(jyVar, 154);
                        ky = this.fg == null ? 0 : this.fg.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fg, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.readString();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.readString();
                        this.fg = obj;
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((this.fu ? 1231 : 1237) + (((((this.fs == null ? 0 : this.fs.hashCode()) + (((this.fr == null ? 0 : this.fr.hashCode()) + (((this.fq == null ? 0 : this.fq.hashCode()) + (((this.fp == null ? 0 : this.fp.hashCode()) + (((this.fo == null ? 0 : this.fo.hashCode()) + ((((((((((((((((kc.hashCode(this.fg) + 527) * 31) + kc.hashCode(this.fh)) * 31) + kc.hashCode(this.fi)) * 31) + kc.hashCode(this.fj)) * 31) + kc.hashCode(this.fk)) * 31) + kc.hashCode(this.fl)) * 31) + kc.hashCode(this.fm)) * 31) + kc.hashCode(this.fn)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + Float.floatToIntBits(this.ft)) * 31)) * 31) + kc.hashCode(this.fv)) * 31) + this.fw) * 31;
            if (!(this.aae == null || this.aae.isEmpty())) {
                i = this.aae.hashCode();
            }
            return hashCode + i;
        }

        public com.google.android.gms.internal.c.f k() {
            this.fg = kh.aao;
            this.fh = kh.aao;
            this.fi = com.google.android.gms.internal.d.a.r();
            this.fj = com.google.android.gms.internal.c.e.i();
            this.fk = com.google.android.gms.internal.c.b.d();
            this.fl = com.google.android.gms.internal.c.b.d();
            this.fm = com.google.android.gms.internal.c.b.d();
            this.fn = com.google.android.gms.internal.c.g.l();
            this.fo = AdTrackerConstants.BLANK;
            this.fp = AdTrackerConstants.BLANK;
            this.fq = "0";
            this.fr = AdTrackerConstants.BLANK;
            this.fs = null;
            this.ft = 0.0f;
            this.fu = false;
            this.fv = kh.aao;
            this.fw = 0;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }

    public static final class g extends ka {
        private static volatile com.google.android.gms.internal.c.g[] fx;
        public int[] fA;
        public int[] fB;
        public int[] fC;
        public int[] fD;
        public int[] fE;
        public int[] fF;
        public int[] fG;
        public int[] fH;
        public int[] fy;
        public int[] fz;

        public g() {
            m();
        }

        public static com.google.android.gms.internal.c.g[] l() {
            if (fx == null) {
                synchronized (kc.aah) {
                    if (fx == null) {
                        fx = new com.google.android.gms.internal.c.g[0];
                    }
                }
            }
            return fx;
        }

        public void a(jz jzVar) {
            int i;
            int i2 = 0;
            if (this.fy != null && this.fy.length > 0) {
                i = 0;
                while (i < this.fy.length) {
                    jzVar.f(1, this.fy[i]);
                    i++;
                }
            }
            if (this.fz != null && this.fz.length > 0) {
                i = 0;
                while (i < this.fz.length) {
                    jzVar.f(GoogleScorer.CLIENT_PLUS, this.fz[i]);
                    i++;
                }
            }
            if (this.fA != null && this.fA.length > 0) {
                i = 0;
                while (i < this.fA.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.fA[i]);
                    i++;
                }
            }
            if (this.fB != null && this.fB.length > 0) {
                i = 0;
                while (i < this.fB.length) {
                    jzVar.f(GoogleScorer.CLIENT_APPSTATE, this.fB[i]);
                    i++;
                }
            }
            if (this.fC != null && this.fC.length > 0) {
                i = 0;
                while (i < this.fC.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, this.fC[i]);
                    i++;
                }
            }
            if (this.fD != null && this.fD.length > 0) {
                i = 0;
                while (i < this.fD.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.fD[i]);
                    i++;
                }
            }
            if (this.fE != null && this.fE.length > 0) {
                i = 0;
                while (i < this.fE.length) {
                    jzVar.f(GoogleScorer.CLIENT_ALL, this.fE[i]);
                    i++;
                }
            }
            if (this.fF != null && this.fF.length > 0) {
                i = 0;
                while (i < this.fF.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, this.fF[i]);
                    i++;
                }
            }
            if (this.fG != null && this.fG.length > 0) {
                i = 0;
                while (i < this.fG.length) {
                    jzVar.f(ZBuildConfig.$minsdk, this.fG[i]);
                    i++;
                }
            }
            if (this.fH != null && this.fH.length > 0) {
                while (i2 < this.fH.length) {
                    jzVar.f(R.styleable.MapAttrs_uiZoomControls, this.fH[i2]);
                    i2++;
                }
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return h(jyVar);
        }

        public int c() {
            int i;
            int i2;
            int i3 = 0;
            int c = super.c();
            if (this.fy == null || this.fy.length <= 0) {
                i = c;
            } else {
                i = 0;
                i2 = 0;
                while (i < this.fy.length) {
                    i2 += jz.cC(this.fy[i]);
                    i++;
                }
                i = c + i2 + this.fy.length * 1;
            }
            if (this.fz != null && this.fz.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fz.length) {
                    c += jz.cC(this.fz[i2]);
                    i2++;
                }
                i = i + c + this.fz.length * 1;
            }
            if (this.fA != null && this.fA.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fA.length) {
                    c += jz.cC(this.fA[i2]);
                    i2++;
                }
                i = i + c + this.fA.length * 1;
            }
            if (this.fB != null && this.fB.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fB.length) {
                    c += jz.cC(this.fB[i2]);
                    i2++;
                }
                i = i + c + this.fB.length * 1;
            }
            if (this.fC != null && this.fC.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fC.length) {
                    c += jz.cC(this.fC[i2]);
                    i2++;
                }
                i = i + c + this.fC.length * 1;
            }
            if (this.fD != null && this.fD.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fD.length) {
                    c += jz.cC(this.fD[i2]);
                    i2++;
                }
                i = i + c + this.fD.length * 1;
            }
            if (this.fE != null && this.fE.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fE.length) {
                    c += jz.cC(this.fE[i2]);
                    i2++;
                }
                i = i + c + this.fE.length * 1;
            }
            if (this.fF != null && this.fF.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fF.length) {
                    c += jz.cC(this.fF[i2]);
                    i2++;
                }
                i = i + c + this.fF.length * 1;
            }
            if (this.fG != null && this.fG.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fG.length) {
                    c += jz.cC(this.fG[i2]);
                    i2++;
                }
                i = i + c + this.fG.length * 1;
            }
            if (this.fH != null && this.fH.length > 0) {
                i2 = 0;
                while (i3 < this.fH.length) {
                    i2 += jz.cC(this.fH[i3]);
                    i3++;
                }
                i = i + i2 + this.fH.length * 1;
            }
            this.DY = i;
            return i;
        }

        public boolean equals(com.google.android.gms.internal.c.g gVar) {
            if (gVar == this) {
                return true;
            }
            if (!(gVar instanceof com.google.android.gms.internal.c.g)) {
                return false;
            }
            gVar = gVar;
            if (!kc.equals(this.fy, gVar.fy) || !kc.equals(this.fz, gVar.fz) || !kc.equals(this.fA, gVar.fA) || !kc.equals(this.fB, gVar.fB) || !kc.equals(this.fC, gVar.fC) || !kc.equals(this.fD, gVar.fD) || !kc.equals(this.fE, gVar.fE) || !kc.equals(this.fF, gVar.fF) || !kc.equals(this.fG, gVar.fG) || !kc.equals(this.fH, gVar.fH)) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(gVar.aae);
            }
            return gVar.aae == null || gVar.aae.isEmpty();
        }

        public com.google.android.gms.internal.c.g h(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                int c;
                Object obj;
                int cw;
                Object obj2;
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        c = kh.c(jyVar, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                        ky = this.fy == null ? 0 : this.fy.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fy, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fy = obj;
                        break;
                    case R.styleable.MapAttrs_uiZoomControls:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fy == null ? 0 : this.fy.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fy, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fy = obj2;
                        jyVar.cx(cw);
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                        c = kh.c(jyVar, MMException.REQUEST_NOT_PERMITTED);
                        ky = this.fz == null ? 0 : this.fz.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fz, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fz = obj;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fz == null ? 0 : this.fz.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fz, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fz = obj2;
                        jyVar.cx(cw);
                        break;
                    case MMException.DISPLAY_AD_NOT_PERMITTED:
                        c = kh.c(jyVar, MMException.DISPLAY_AD_NOT_PERMITTED);
                        ky = this.fA == null ? 0 : this.fA.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fA, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fA = obj;
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fA == null ? 0 : this.fA.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fA, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fA = obj2;
                        jyVar.cx(cw);
                        break;
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_PLAY_AUDIO);
                        ky = this.fB == null ? 0 : this.fB.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fB, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fB = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fB == null ? 0 : this.fB.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fB, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fB = obj2;
                        jyVar.cx(cw);
                        break;
                    case ApiEventType.API_MRAID_PLAY_VIDEO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_PLAY_VIDEO);
                        ky = this.fC == null ? 0 : this.fC.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fC, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fC = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fC == null ? 0 : this.fC.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fC, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fC = obj2;
                        jyVar.cx(cw);
                        break;
                    case ApiEventType.API_MRAID_HIDE_VIDEO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_HIDE_VIDEO);
                        ky = this.fD == null ? 0 : this.fD.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fD, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fD = obj;
                        break;
                    case ApiEventType.API_MRAID_CLOSE_VIDEO:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fD == null ? 0 : this.fD.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fD, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fD = obj2;
                        jyVar.cx(cw);
                        break;
                    case 56:
                        c = kh.c(jyVar, 56);
                        ky = this.fE == null ? 0 : this.fE.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fE, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fE = obj;
                        break;
                    case 58:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fE == null ? 0 : this.fE.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fE, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fE = obj2;
                        jyVar.cx(cw);
                        break;
                    case AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS:
                        c = kh.c(jyVar, AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS);
                        ky = this.fF == null ? 0 : this.fF.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fF, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fF = obj;
                        break;
                    case 66:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fF == null ? 0 : this.fF.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fF, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fF = obj2;
                        jyVar.cx(cw);
                        break;
                    case 72:
                        c = kh.c(jyVar, 72);
                        ky = this.fG == null ? 0 : this.fG.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fG, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fG = obj;
                        break;
                    case 74:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fG == null ? 0 : this.fG.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fG, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fG = obj2;
                        jyVar.cx(cw);
                        break;
                    case 80:
                        c = kh.c(jyVar, 80);
                        ky = this.fH == null ? 0 : this.fH.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fH, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fH = obj;
                        break;
                    case 82:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fH == null ? 0 : this.fH.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fH, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fH = obj2;
                        jyVar.cx(cw);
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = (((((((((((((((((((kc.hashCode(this.fy) + 527) * 31) + kc.hashCode(this.fz)) * 31) + kc.hashCode(this.fA)) * 31) + kc.hashCode(this.fB)) * 31) + kc.hashCode(this.fC)) * 31) + kc.hashCode(this.fD)) * 31) + kc.hashCode(this.fE)) * 31) + kc.hashCode(this.fF)) * 31) + kc.hashCode(this.fG)) * 31) + kc.hashCode(this.fH)) * 31;
            hashCode = (this.aae == null || this.aae.isEmpty()) ? 0 : this.aae.hashCode();
            return hashCode + hashCode2;
        }

        public com.google.android.gms.internal.c.g m() {
            this.fy = kh.aaj;
            this.fz = kh.aaj;
            this.fA = kh.aaj;
            this.fB = kh.aaj;
            this.fC = kh.aaj;
            this.fD = kh.aaj;
            this.fE = kh.aaj;
            this.fF = kh.aaj;
            this.fG = kh.aaj;
            this.fH = kh.aaj;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }

    public static final class h extends ka {
        public static final kb fI;
        private static final com.google.android.gms.internal.c.h[] fJ;
        public int[] fK;
        public int[] fL;
        public int[] fM;
        public int fN;
        public int[] fO;
        public int fP;
        public int fQ;

        static {
            fI = kb.a(R.styleable.MapAttrs_uiZoomGestures, com.google.android.gms.internal.c.h.class, 810);
            fJ = new com.google.android.gms.internal.c.h[0];
        }

        public h() {
            n();
        }

        public void a(jz jzVar) {
            int i;
            int i2 = 0;
            if (this.fK != null && this.fK.length > 0) {
                i = 0;
                while (i < this.fK.length) {
                    jzVar.f(1, this.fK[i]);
                    i++;
                }
            }
            if (this.fL != null && this.fL.length > 0) {
                i = 0;
                while (i < this.fL.length) {
                    jzVar.f(GoogleScorer.CLIENT_PLUS, this.fL[i]);
                    i++;
                }
            }
            if (this.fM != null && this.fM.length > 0) {
                i = 0;
                while (i < this.fM.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.fM[i]);
                    i++;
                }
            }
            if (this.fN != 0) {
                jzVar.f(GoogleScorer.CLIENT_APPSTATE, this.fN);
            }
            if (this.fO != null && this.fO.length > 0) {
                while (i2 < this.fO.length) {
                    jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, this.fO[i2]);
                    i2++;
                }
            }
            if (this.fP != 0) {
                jzVar.f(IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.fP);
            }
            if (this.fQ != 0) {
                jzVar.f(GoogleScorer.CLIENT_ALL, this.fQ);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return i(jyVar);
        }

        public int c() {
            int i;
            int i2;
            int i3 = 0;
            int c = super.c();
            if (this.fK == null || this.fK.length <= 0) {
                i = c;
            } else {
                i = 0;
                i2 = 0;
                while (i < this.fK.length) {
                    i2 += jz.cC(this.fK[i]);
                    i++;
                }
                i = c + i2 + this.fK.length * 1;
            }
            if (this.fL != null && this.fL.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fL.length) {
                    c += jz.cC(this.fL[i2]);
                    i2++;
                }
                i = i + c + this.fL.length * 1;
            }
            if (this.fM != null && this.fM.length > 0) {
                i2 = 0;
                c = 0;
                while (i2 < this.fM.length) {
                    c += jz.cC(this.fM[i2]);
                    i2++;
                }
                i = i + c + this.fM.length * 1;
            }
            if (this.fN != 0) {
                i += jz.g((int)GoogleScorer.CLIENT_APPSTATE, this.fN);
            }
            if (this.fO != null && this.fO.length > 0) {
                i2 = 0;
                while (i3 < this.fO.length) {
                    i2 += jz.cC(this.fO[i3]);
                    i3++;
                }
                i = i + i2 + this.fO.length * 1;
            }
            if (this.fP != 0) {
                i += jz.g((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.fP);
            }
            if (this.fQ != 0) {
                i += jz.g((int)GoogleScorer.CLIENT_ALL, this.fQ);
            }
            this.DY = i;
            return i;
        }

        public boolean equals(com.google.android.gms.internal.c.h hVar) {
            if (hVar == this) {
                return true;
            }
            if (!(hVar instanceof com.google.android.gms.internal.c.h)) {
                return false;
            }
            hVar = hVar;
            if (!kc.equals(this.fK, hVar.fK) || !kc.equals(this.fL, hVar.fL) || !kc.equals(this.fM, hVar.fM) || this.fN != hVar.fN || !kc.equals(this.fO, hVar.fO) || this.fP != hVar.fP || this.fQ != hVar.fQ) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(hVar.aae);
            }
            return hVar.aae == null || hVar.aae.isEmpty();
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = (((((((((((((kc.hashCode(this.fK) + 527) * 31) + kc.hashCode(this.fL)) * 31) + kc.hashCode(this.fM)) * 31) + this.fN) * 31) + kc.hashCode(this.fO)) * 31) + this.fP) * 31) + this.fQ) * 31;
            hashCode = (this.aae == null || this.aae.isEmpty()) ? 0 : this.aae.hashCode();
            return hashCode + hashCode2;
        }

        public com.google.android.gms.internal.c.h i(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                int c;
                Object obj;
                int cw;
                Object obj2;
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        c = kh.c(jyVar, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                        ky = this.fK == null ? 0 : this.fK.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fK, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fK = obj;
                        break;
                    case R.styleable.MapAttrs_uiZoomControls:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fK == null ? 0 : this.fK.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fK, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fK = obj2;
                        jyVar.cx(cw);
                        break;
                    case MMException.REQUEST_NOT_PERMITTED:
                        c = kh.c(jyVar, MMException.REQUEST_NOT_PERMITTED);
                        ky = this.fL == null ? 0 : this.fL.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fL, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fL = obj;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fL == null ? 0 : this.fL.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fL, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fL = obj2;
                        jyVar.cx(cw);
                        break;
                    case MMException.DISPLAY_AD_NOT_PERMITTED:
                        c = kh.c(jyVar, MMException.DISPLAY_AD_NOT_PERMITTED);
                        ky = this.fM == null ? 0 : this.fM.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fM, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fM = obj;
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fM == null ? 0 : this.fM.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fM, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fM = obj2;
                        jyVar.cx(cw);
                        break;
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                        this.fN = jyVar.kB();
                        break;
                    case ApiEventType.API_MRAID_PLAY_VIDEO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_PLAY_VIDEO);
                        ky = this.fO == null ? 0 : this.fO.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fO, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = jyVar.kB();
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = jyVar.kB();
                        this.fO = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        cw = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            jyVar.kB();
                            ky++;
                        }
                        jyVar.cy(c);
                        c = this.fO == null ? 0 : this.fO.length;
                        obj2 = new Object[(ky + c)];
                        if (c != 0) {
                            System.arraycopy(this.fO, 0, obj2, 0, c);
                        }
                        while (c < obj2.length) {
                            obj2[c] = jyVar.kB();
                            c++;
                        }
                        this.fO = obj2;
                        jyVar.cx(cw);
                        break;
                    case ApiEventType.API_MRAID_HIDE_VIDEO:
                        this.fP = jyVar.kB();
                        break;
                    case 56:
                        this.fQ = jyVar.kB();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public com.google.android.gms.internal.c.h n() {
            this.fK = kh.aaj;
            this.fL = kh.aaj;
            this.fM = kh.aaj;
            this.fN = 0;
            this.fO = kh.aaj;
            this.fP = 0;
            this.fQ = 0;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }

    public static final class i extends ka {
        private static volatile com.google.android.gms.internal.c.i[] fR;
        public com.google.android.gms.internal.d.a fS;
        public com.google.android.gms.internal.c.d fT;
        public String name;

        public i() {
            p();
        }

        public static com.google.android.gms.internal.c.i[] o() {
            if (fR == null) {
                synchronized (kc.aah) {
                    if (fR == null) {
                        fR = new com.google.android.gms.internal.c.i[0];
                    }
                }
            }
            return fR;
        }

        public void a(jz jzVar) {
            if (!this.name.equals(AdTrackerConstants.BLANK)) {
                jzVar.b(1, this.name);
            }
            if (this.fS != null) {
                jzVar.a((int)GoogleScorer.CLIENT_PLUS, this.fS);
            }
            if (this.fT != null) {
                jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.fT);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return j(jyVar);
        }

        public int c() {
            int c = super.c();
            if (!this.name.equals(AdTrackerConstants.BLANK)) {
                c += jz.g(1, this.name);
            }
            if (this.fS != null) {
                c += jz.b((int)GoogleScorer.CLIENT_PLUS, this.fS);
            }
            if (this.fT != null) {
                c += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.fT);
            }
            this.DY = c;
            return c;
        }

        public boolean equals(com.google.android.gms.internal.c.i iVar) {
            if (iVar == this) {
                return true;
            }
            if (!(iVar instanceof com.google.android.gms.internal.c.i)) {
                return false;
            }
            iVar = iVar;
            if (this.name == null) {
                if (iVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(iVar.name)) {
                return false;
            }
            if (this.fS == null) {
                if (iVar.fS != null) {
                    return false;
                }
            } else if (!this.fS.equals(iVar.fS)) {
                return false;
            }
            if (this.fT == null) {
                if (iVar.fT != null) {
                    return false;
                }
            } else if (!this.fT.equals(iVar.fT)) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(iVar.aae);
            }
            return iVar.aae == null || iVar.aae.isEmpty();
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.fT == null ? 0 : this.fT.hashCode()) + (((this.fS == null ? 0 : this.fS.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + 527) * 31)) * 31)) * 31;
            if (!(this.aae == null || this.aae.isEmpty())) {
                i = this.aae.hashCode();
            }
            return hashCode + i;
        }

        public com.google.android.gms.internal.c.i j(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case R.styleable.MapAttrs_uiZoomControls:
                        this.name = jyVar.readString();
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        if (this.fS == null) {
                            this.fS = new com.google.android.gms.internal.d.a();
                        }
                        jyVar.a(this.fS);
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        if (this.fT == null) {
                            this.fT = new com.google.android.gms.internal.c.d();
                        }
                        jyVar.a(this.fT);
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public com.google.android.gms.internal.c.i p() {
            this.name = AdTrackerConstants.BLANK;
            this.fS = null;
            this.fT = null;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }

    public static final class j extends ka {
        public com.google.android.gms.internal.c.i[] fU;
        public com.google.android.gms.internal.c.f fV;
        public String fW;

        public j() {
            q();
        }

        public static com.google.android.gms.internal.c.j b(byte[] bArr) {
            return (com.google.android.gms.internal.c.j) ke.a(new com.google.android.gms.internal.c.j(), bArr);
        }

        public void a(jz jzVar) {
            if (this.fU != null && this.fU.length > 0) {
                int i = 0;
                while (i < this.fU.length) {
                    ke keVar = this.fU[i];
                    if (keVar != null) {
                        jzVar.a(1, keVar);
                    }
                    i++;
                }
            }
            if (this.fV != null) {
                jzVar.a((int)GoogleScorer.CLIENT_PLUS, this.fV);
            }
            if (!this.fW.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.fW);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return k(jyVar);
        }

        public int c() {
            int c = super.c();
            if (this.fU != null && this.fU.length > 0) {
                int i = 0;
                while (i < this.fU.length) {
                    ke keVar = this.fU[i];
                    if (keVar != null) {
                        c += jz.b(1, keVar);
                    }
                    i++;
                }
            }
            if (this.fV != null) {
                c += jz.b((int)GoogleScorer.CLIENT_PLUS, this.fV);
            }
            if (!this.fW.equals(AdTrackerConstants.BLANK)) {
                c += jz.g((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.fW);
            }
            this.DY = c;
            return c;
        }

        public boolean equals(com.google.android.gms.internal.c.j jVar) {
            if (jVar == this) {
                return true;
            }
            if (!(jVar instanceof com.google.android.gms.internal.c.j)) {
                return false;
            }
            jVar = jVar;
            if (!kc.equals(this.fU, jVar.fU)) {
                return false;
            }
            if (this.fV == null) {
                if (jVar.fV != null) {
                    return false;
                }
            } else if (!this.fV.equals(jVar.fV)) {
                return false;
            }
            if (this.fW == null) {
                if (jVar.fW != null) {
                    return false;
                }
            } else if (!this.fW.equals(jVar.fW)) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(jVar.aae);
            }
            return jVar.aae == null || jVar.aae.isEmpty();
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.fW == null ? 0 : this.fW.hashCode()) + (((this.fV == null ? 0 : this.fV.hashCode()) + ((kc.hashCode(this.fU) + 527) * 31)) * 31)) * 31;
            if (!(this.aae == null || this.aae.isEmpty())) {
                i = this.aae.hashCode();
            }
            return hashCode + i;
        }

        public com.google.android.gms.internal.c.j k(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case R.styleable.MapAttrs_uiZoomControls:
                        int c = kh.c(jyVar, R.styleable.MapAttrs_uiZoomControls);
                        ky = this.fU == null ? 0 : this.fU.length;
                        Object obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fU, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.c.i();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.c.i();
                        jyVar.a(obj[ky]);
                        this.fU = obj;
                        break;
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        if (this.fV == null) {
                            this.fV = new com.google.android.gms.internal.c.f();
                        }
                        jyVar.a(this.fV);
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        this.fW = jyVar.readString();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public com.google.android.gms.internal.c.j q() {
            this.fU = com.google.android.gms.internal.c.i.o();
            this.fV = null;
            this.fW = AdTrackerConstants.BLANK;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }
}