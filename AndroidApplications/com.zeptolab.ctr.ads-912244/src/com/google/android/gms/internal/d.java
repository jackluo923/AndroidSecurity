package com.google.android.gms.internal;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.ads.AdSize;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface d {

    public static final class a extends ka {
        private static volatile com.google.android.gms.internal.d.a[] fX;
        public String fY;
        public com.google.android.gms.internal.d.a[] fZ;
        public com.google.android.gms.internal.d.a[] ga;
        public com.google.android.gms.internal.d.a[] gb;
        public String gc;
        public String gd;
        public long ge;
        public boolean gf;
        public com.google.android.gms.internal.d.a[] gg;
        public int[] gh;
        public boolean gi;
        public int type;

        public a() {
            s();
        }

        public static com.google.android.gms.internal.d.a[] r() {
            if (fX == null) {
                synchronized (kc.aah) {
                    if (fX == null) {
                        fX = new com.google.android.gms.internal.d.a[0];
                    }
                }
            }
            return fX;
        }

        public void a_(jz jzVar) {
            int i;
            ke keVar;
            int i2 = 0;
            jzVar.f(1, this.type);
            if (!this.fY.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)GoogleScorer.CLIENT_PLUS, this.fY);
            }
            if (this.fZ != null && this.fZ.length > 0) {
                i = 0;
                while (i < this.fZ.length) {
                    keVar = this.fZ[i];
                    if (keVar != null) {
                        jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, keVar);
                    }
                    i++;
                }
            }
            if (this.ga != null && this.ga.length > 0) {
                i = 0;
                while (i < this.ga.length) {
                    keVar = this.ga[i];
                    if (keVar != null) {
                        jzVar.a((int)GoogleScorer.CLIENT_APPSTATE, keVar);
                    }
                    i++;
                }
            }
            if (this.gb != null && this.gb.length > 0) {
                i = 0;
                while (i < this.gb.length) {
                    keVar = this.gb[i];
                    if (keVar != null) {
                        jzVar.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, keVar);
                    }
                    i++;
                }
            }
            if (!this.gc.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.gc);
            }
            if (!this.gd.equals(AdTrackerConstants.BLANK)) {
                jzVar.b((int)GoogleScorer.CLIENT_ALL, this.gd);
            }
            if (this.ge != 0) {
                jzVar.b((int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, this.ge);
            }
            if (this.gi) {
                jzVar.a((int)ZBuildConfig.$minsdk, this.gi);
            }
            if (this.gh != null && this.gh.length > 0) {
                i = 0;
                while (i < this.gh.length) {
                    jzVar.f(R.styleable.MapAttrs_uiZoomControls, this.gh[i]);
                    i++;
                }
            }
            if (this.gg != null && this.gg.length > 0) {
                while (i2 < this.gg.length) {
                    ke keVar2 = this.gg[i2];
                    if (keVar2 != null) {
                        jzVar.a((int)R.styleable.MapAttrs_uiZoomGestures, keVar2);
                    }
                    i2++;
                }
            }
            if (this.gf) {
                jzVar.a((int)R.styleable.MapAttrs_useViewLifecycle, this.gf);
            }
            super.a(jzVar);
        }

        public /* synthetic */ ke b(jy jyVar) {
            return l(jyVar);
        }

        public int c() {
            int i;
            ke keVar;
            int i2 = 0;
            int c = super.c() + jz.g(1, this.type);
            if (!this.fY.equals(AdTrackerConstants.BLANK)) {
                c += jz.g((int)GoogleScorer.CLIENT_PLUS, this.fY);
            }
            if (this.fZ != null && this.fZ.length > 0) {
                i = c;
                c = 0;
                while (c < this.fZ.length) {
                    keVar = this.fZ[c];
                    if (keVar != null) {
                        i += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, keVar);
                    }
                    c++;
                }
                c = i;
            }
            if (this.ga != null && this.ga.length > 0) {
                i = c;
                c = 0;
                while (c < this.ga.length) {
                    keVar = this.ga[c];
                    if (keVar != null) {
                        i += jz.b((int)GoogleScorer.CLIENT_APPSTATE, keVar);
                    }
                    c++;
                }
                c = i;
            }
            if (this.gb != null && this.gb.length > 0) {
                i = c;
                c = 0;
                while (c < this.gb.length) {
                    keVar = this.gb[c];
                    if (keVar != null) {
                        i += jz.b((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, keVar);
                    }
                    c++;
                }
                c = i;
            }
            if (!this.gc.equals(AdTrackerConstants.BLANK)) {
                c += jz.g((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.gc);
            }
            if (!this.gd.equals(AdTrackerConstants.BLANK)) {
                c += jz.g((int)GoogleScorer.CLIENT_ALL, this.gd);
            }
            if (this.ge != 0) {
                c += jz.d(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, this.ge);
            }
            if (this.gi) {
                c += jz.b((int)ZBuildConfig.$minsdk, this.gi);
            }
            if (this.gh != null && this.gh.length > 0) {
                i = 0;
                int i3 = 0;
                while (i < this.gh.length) {
                    i3 += jz.cC(this.gh[i]);
                    i++;
                }
                c = c + i3 + this.gh.length * 1;
            }
            if (this.gg != null && this.gg.length > 0) {
                while (i2 < this.gg.length) {
                    ke keVar2 = this.gg[i2];
                    if (keVar2 != null) {
                        c += jz.b((int)R.styleable.MapAttrs_uiZoomGestures, keVar2);
                    }
                    i2++;
                }
            }
            if (this.gf) {
                c += jz.b((int)R.styleable.MapAttrs_useViewLifecycle, this.gf);
            }
            this.DY = c;
            return c;
        }

        public boolean equals(com.google.android.gms.internal.d.a aVar) {
            if (aVar == this) {
                return true;
            }
            if (!(aVar instanceof com.google.android.gms.internal.d.a)) {
                return false;
            }
            aVar = aVar;
            if (this.type != aVar.type) {
                return false;
            }
            if (this.fY == null) {
                if (aVar.fY != null) {
                    return false;
                }
            } else if (!this.fY.equals(aVar.fY)) {
                return false;
            }
            if (!kc.equals(this.fZ, aVar.fZ) || !kc.equals(this.ga, aVar.ga) || !kc.equals(this.gb, aVar.gb)) {
                return false;
            }
            if (this.gc == null) {
                if (aVar.gc != null) {
                    return false;
                }
            } else if (!this.gc.equals(aVar.gc)) {
                return false;
            }
            if (this.gd == null) {
                if (aVar.gd != null) {
                    return false;
                }
            } else if (!this.gd.equals(aVar.gd)) {
                return false;
            }
            if (this.ge != aVar.ge || this.gf != aVar.gf || !kc.equals(this.gg, aVar.gg) || !kc.equals(this.gh, aVar.gh) || this.gi != aVar.gi) {
                return false;
            }
            if (this.aae != null && !this.aae.isEmpty()) {
                return this.aae.equals(aVar.aae);
            }
            return aVar.aae == null || aVar.aae.isEmpty();
        }

        public int hashCode() {
            int i = 1231;
            int i2 = 0;
            int hashCode = ((((((this.gf ? 1231 : 1237) + (((((this.gd == null ? 0 : this.gd.hashCode()) + (((this.gc == null ? 0 : this.gc.hashCode()) + (((((((((this.fY == null ? 0 : this.fY.hashCode()) + ((this.type + 527) * 31)) * 31) + kc.hashCode(this.fZ)) * 31) + kc.hashCode(this.ga)) * 31) + kc.hashCode(this.gb)) * 31)) * 31)) * 31) + ((int) (this.ge ^ (this.ge >>> 32)))) * 31)) * 31) + kc.hashCode(this.gg)) * 31) + kc.hashCode(this.gh)) * 31;
            if (!this.gi) {
                i = 1237;
            }
            hashCode = (hashCode + i) * 31;
            if (!(this.aae == null || this.aae.isEmpty())) {
                i2 = this.aae.hashCode();
            }
            return hashCode + i2;
        }

        public com.google.android.gms.internal.d.a l(jy jyVar) {
            while (true) {
                int ky = jyVar.ky();
                int c;
                Object obj;
                int i;
                switch (ky) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        return this;
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        ky = jyVar.kB();
                        switch (ky) {
                            case GoogleScorer.CLIENT_GAMES:
                            case GoogleScorer.CLIENT_PLUS:
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                            case GoogleScorer.CLIENT_APPSTATE:
                            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                            case GoogleScorer.CLIENT_ALL:
                            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                                this.type = ky;
                                break;
                            default:
                                break;
                        }
                    case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                        this.fY = jyVar.readString();
                        break;
                    case MMException.AD_NO_ACTIVITY:
                        c = kh.c(jyVar, MMException.AD_NO_ACTIVITY);
                        ky = this.fZ == null ? 0 : this.fZ.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.fZ, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.fZ = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_UNMUTE_AUDIO);
                        ky = this.ga == null ? 0 : this.ga.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.ga, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.ga = obj;
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        c = kh.c(jyVar, ApiEventType.API_MRAID_UNMUTE_VIDEO);
                        ky = this.gb == null ? 0 : this.gb.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.gb, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.gb = obj;
                        break;
                    case ApiEventType.API_MRAID_CLOSE_VIDEO:
                        this.gc = jyVar.readString();
                        break;
                    case 58:
                        this.gd = jyVar.readString();
                        break;
                    case AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS:
                        this.ge = jyVar.kA();
                        break;
                    case 72:
                        this.gi = jyVar.kC();
                        break;
                    case 80:
                        int c2 = kh.c(jyVar, 80);
                        Object obj2 = new Object[c2];
                        i = 0;
                        c = 0;
                        while (i < c2) {
                            if (i != 0) {
                                jyVar.ky();
                            }
                            int kB = jyVar.kB();
                            switch (kB) {
                                case GoogleScorer.CLIENT_GAMES:
                                case GoogleScorer.CLIENT_PLUS:
                                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                case GoogleScorer.CLIENT_APPSTATE:
                                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                                case GoogleScorer.CLIENT_ALL:
                                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                                case ZBuildConfig.$minsdk:
                                case R.styleable.MapAttrs_uiZoomControls:
                                case R.styleable.MapAttrs_uiZoomGestures:
                                case R.styleable.MapAttrs_useViewLifecycle:
                                case R.styleable.MapAttrs_zOrderOnTop:
                                case MMException.REQUEST_NOT_FILLED:
                                case MMException.REQUEST_BAD_RESPONSE:
                                case MMException.REQUEST_NOT_PERMITTED:
                                case ZBuildConfig.$targetsdk:
                                    ky = c + 1;
                                    obj2[c] = kB;
                                    break;
                                default:
                                    ky = c;
                                    break;
                            }
                            i++;
                            c = ky;
                        }
                        if (c != 0) {
                            ky = this.gh == null ? 0 : this.gh.length;
                            if (ky == 0 && c == obj2.length) {
                                this.gh = obj2;
                            } else {
                                Object obj3 = new Object[(ky + c)];
                                if (ky != 0) {
                                    System.arraycopy(this.gh, 0, obj3, 0, ky);
                                }
                                System.arraycopy(obj2, 0, obj3, ky, c);
                                this.gh = obj3;
                            }
                        }
                        break;
                    case 82:
                        i = jyVar.cw(jyVar.kE());
                        c = jyVar.getPosition();
                        ky = 0;
                        while (jyVar.kJ() > 0) {
                            switch (jyVar.kB()) {
                                case GoogleScorer.CLIENT_GAMES:
                                case GoogleScorer.CLIENT_PLUS:
                                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                case GoogleScorer.CLIENT_APPSTATE:
                                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                                case GoogleScorer.CLIENT_ALL:
                                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                                case ZBuildConfig.$minsdk:
                                case R.styleable.MapAttrs_uiZoomControls:
                                case R.styleable.MapAttrs_uiZoomGestures:
                                case R.styleable.MapAttrs_useViewLifecycle:
                                case R.styleable.MapAttrs_zOrderOnTop:
                                case MMException.REQUEST_NOT_FILLED:
                                case MMException.REQUEST_BAD_RESPONSE:
                                case MMException.REQUEST_NOT_PERMITTED:
                                case ZBuildConfig.$targetsdk:
                                    ky++;
                                    break;
                                default:
                                    break;
                            }
                        }
                        if (ky != 0) {
                            jyVar.cy(c);
                            c = this.gh == null ? 0 : this.gh.length;
                            Object obj4 = new Object[(ky + c)];
                            if (c != 0) {
                                System.arraycopy(this.gh, 0, obj4, 0, c);
                            }
                            while (jyVar.kJ() > 0) {
                                int kB2 = jyVar.kB();
                                switch (kB2) {
                                    case GoogleScorer.CLIENT_GAMES:
                                    case GoogleScorer.CLIENT_PLUS:
                                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                    case GoogleScorer.CLIENT_APPSTATE:
                                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                                    case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                                    case GoogleScorer.CLIENT_ALL:
                                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                                    case ZBuildConfig.$minsdk:
                                    case R.styleable.MapAttrs_uiZoomControls:
                                    case R.styleable.MapAttrs_uiZoomGestures:
                                    case R.styleable.MapAttrs_useViewLifecycle:
                                    case R.styleable.MapAttrs_zOrderOnTop:
                                    case MMException.REQUEST_NOT_FILLED:
                                    case MMException.REQUEST_BAD_RESPONSE:
                                    case MMException.REQUEST_NOT_PERMITTED:
                                    case ZBuildConfig.$targetsdk:
                                        ky = c + 1;
                                        obj4[c] = kB2;
                                        c = ky;
                                        break;
                                    default:
                                        break;
                                }
                            }
                            this.gh = obj4;
                        }
                        jyVar.cx(i);
                        break;
                    case AdSize.LARGE_AD_HEIGHT:
                        c = kh.c(jyVar, AdSize.LARGE_AD_HEIGHT);
                        ky = this.gg == null ? 0 : this.gg.length;
                        obj = new Object[(c + ky)];
                        if (ky != 0) {
                            System.arraycopy(this.gg, 0, obj, 0, ky);
                        }
                        while (ky < obj.length - 1) {
                            obj[ky] = new com.google.android.gms.internal.d.a();
                            jyVar.a(obj[ky]);
                            jyVar.ky();
                            ky++;
                        }
                        obj[ky] = new com.google.android.gms.internal.d.a();
                        jyVar.a(obj[ky]);
                        this.gg = obj;
                        break;
                    case 96:
                        this.gf = jyVar.kC();
                        break;
                    default:
                        if (!a(jyVar, ky)) {
                            return this;
                        }
                }
            }
        }

        public com.google.android.gms.internal.d.a s() {
            this.type = 1;
            this.fY = AdTrackerConstants.BLANK;
            this.fZ = r();
            this.ga = r();
            this.gb = r();
            this.gc = AdTrackerConstants.BLANK;
            this.gd = AdTrackerConstants.BLANK;
            this.ge = 0;
            this.gf = false;
            this.gg = r();
            this.gh = kh.aaj;
            this.gi = false;
            this.aae = null;
            this.DY = -1;
            return this;
        }
    }
}