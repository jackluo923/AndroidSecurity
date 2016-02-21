package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.fb.a;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class fh extends fb implements SafeParcelable {
    public static final fi CREATOR;
    private final fe CC;
    private final Parcel CJ;
    private final int CK;
    private int CL;
    private int CM;
    private final String mClassName;
    private final int wj;

    static {
        CREATOR = new fi();
    }

    fh(int i, Parcel parcel, fe feVar) {
        this.wj = i;
        this.CJ = (Parcel) er.f(parcel);
        this.CK = 2;
        this.CC = feVar;
        if (this.CC == null) {
            this.mClassName = null;
        } else {
            this.mClassName = this.CC.eD();
        }
        this.CL = 2;
    }

    private fh(SafeParcelable safeParcelable, fe feVar, String str) {
        this.wj = 1;
        this.CJ = Parcel.obtain();
        safeParcelable.writeToParcel(this.CJ, 0);
        this.CK = 1;
        this.CC = (fe) er.f(feVar);
        this.mClassName = (String) er.f(str);
        this.CL = 2;
    }

    public static fh a(fb fbVar) {
        String canonicalName = fbVar.getClass().getCanonicalName();
        return new fh((SafeParcelable) fbVar, b(fbVar), canonicalName);
    }

    private static void a(fe feVar, fb fbVar) {
        Class cls = fbVar.getClass();
        if (!feVar.b(cls)) {
            HashMap en = fbVar.en();
            feVar.a(cls, fbVar.en());
            Iterator it = en.keySet().iterator();
            while (it.hasNext()) {
                a aVar = (a) en.get((String) it.next());
                Class ev = aVar.ev();
                if (ev != null) {
                    try {
                        a(feVar, (fb) ev.newInstance());
                    } catch (InstantiationException e) {
                        throw new IllegalStateException("Could not instantiate an object of type " + aVar.ev().getCanonicalName(), e);
                    } catch (IllegalAccessException e2) {
                        throw new IllegalStateException("Could not access object of type " + aVar.ev().getCanonicalName(), e2);
                    }
                }
            }
        }
    }

    private void a(StringBuilder stringBuilder, int i, Object obj) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                stringBuilder.append(obj);
            case GoogleScorer.CLIENT_ALL:
                stringBuilder.append("\"").append(fp.ap(obj.toString())).append("\"");
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                stringBuilder.append("\"").append(fk.d((byte[]) obj)).append("\"");
            case ZBuildConfig.$minsdk:
                stringBuilder.append("\"").append(fk.e((byte[]) obj));
                stringBuilder.append("\"");
            case R.styleable.MapAttrs_uiZoomControls:
                fq.a(stringBuilder, (HashMap) obj);
            case R.styleable.MapAttrs_uiZoomGestures:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i);
        }
    }

    private void a(StringBuilder stringBuilder, a aVar, Parcel parcel, int i) {
        switch (aVar.em()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                b(stringBuilder, aVar, a(aVar, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.a.g(parcel, i))));
            case GoogleScorer.CLIENT_GAMES:
                b(stringBuilder, aVar, a(aVar, com.google.android.gms.common.internal.safeparcel.a.i(parcel, i)));
            case GoogleScorer.CLIENT_PLUS:
                b(stringBuilder, aVar, a(aVar, Long.valueOf(com.google.android.gms.common.internal.safeparcel.a.h(parcel, i))));
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                b(stringBuilder, aVar, a(aVar, Float.valueOf(com.google.android.gms.common.internal.safeparcel.a.j(parcel, i))));
            case GoogleScorer.CLIENT_APPSTATE:
                b(stringBuilder, aVar, a(aVar, Double.valueOf(com.google.android.gms.common.internal.safeparcel.a.k(parcel, i))));
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                b(stringBuilder, aVar, a(aVar, com.google.android.gms.common.internal.safeparcel.a.l(parcel, i)));
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                b(stringBuilder, aVar, a(aVar, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.a.c(parcel, i))));
            case GoogleScorer.CLIENT_ALL:
                b(stringBuilder, aVar, a(aVar, com.google.android.gms.common.internal.safeparcel.a.m(parcel, i)));
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
            case ZBuildConfig.$minsdk:
                b(stringBuilder, aVar, a(aVar, com.google.android.gms.common.internal.safeparcel.a.p(parcel, i)));
            case R.styleable.MapAttrs_uiZoomControls:
                b(stringBuilder, aVar, a(aVar, c(com.google.android.gms.common.internal.safeparcel.a.o(parcel, i))));
            case R.styleable.MapAttrs_uiZoomGestures:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown field out type = " + aVar.em());
        }
    }

    private void a(StringBuilder stringBuilder, String str, a aVar, Parcel parcel, int i) {
        stringBuilder.append("\"").append(str).append("\":");
        if (aVar.ex()) {
            a(stringBuilder, aVar, parcel, i);
        } else {
            b(stringBuilder, aVar, parcel, i);
        }
    }

    private void a(StringBuilder stringBuilder, HashMap hashMap, Parcel parcel) {
        HashMap c = c(hashMap);
        stringBuilder.append('{');
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            Entry entry = (Entry) c.get(Integer.valueOf(com.google.android.gms.common.internal.safeparcel.a.S(n)));
            if (entry != null) {
                if (i != 0) {
                    stringBuilder.append(",");
                }
                a(stringBuilder, (String) entry.getKey(), (a) entry.getValue(), parcel, n);
                i = 1;
            }
        }
        if (parcel.dataPosition() != o) {
            throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
        }
        stringBuilder.append('}');
    }

    private static fe b(fb fbVar) {
        fe feVar = new fe(fbVar.getClass());
        a(feVar, fbVar);
        feVar.eB();
        feVar.eA();
        return feVar;
    }

    private void b(StringBuilder stringBuilder, a aVar, Parcel parcel, int i) {
        if (aVar.es()) {
            stringBuilder.append("[");
            switch (aVar.em()) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.r(parcel, i));
                    break;
                case GoogleScorer.CLIENT_GAMES:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.t(parcel, i));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.s(parcel, i));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.u(parcel, i));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.v(parcel, i));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.w(parcel, i));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.q(parcel, i));
                    break;
                case GoogleScorer.CLIENT_ALL:
                    fj.a(stringBuilder, com.google.android.gms.common.internal.safeparcel.a.x(parcel, i));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                case ZBuildConfig.$minsdk:
                case R.styleable.MapAttrs_uiZoomControls:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case R.styleable.MapAttrs_uiZoomGestures:
                    Parcel[] A = com.google.android.gms.common.internal.safeparcel.a.A(parcel, i);
                    int length = A.length;
                    int i2 = 0;
                    while (i2 < length) {
                        if (i2 > 0) {
                            stringBuilder.append(",");
                        }
                        A[i2].setDataPosition(0);
                        a(stringBuilder, aVar.ez(), A[i2]);
                        i2++;
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            stringBuilder.append("]");
        } else {
            switch (aVar.em()) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.g(parcel, i));
                case GoogleScorer.CLIENT_GAMES:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.i(parcel, i));
                case GoogleScorer.CLIENT_PLUS:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.h(parcel, i));
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.j(parcel, i));
                case GoogleScorer.CLIENT_APPSTATE:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.k(parcel, i));
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.l(parcel, i));
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    stringBuilder.append(com.google.android.gms.common.internal.safeparcel.a.c(parcel, i));
                case GoogleScorer.CLIENT_ALL:
                    stringBuilder.append("\"").append(fp.ap(com.google.android.gms.common.internal.safeparcel.a.m(parcel, i))).append("\"");
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    stringBuilder.append("\"").append(fk.d(com.google.android.gms.common.internal.safeparcel.a.p(parcel, i))).append("\"");
                case ZBuildConfig.$minsdk:
                    stringBuilder.append("\"").append(fk.e(com.google.android.gms.common.internal.safeparcel.a.p(parcel, i)));
                    stringBuilder.append("\"");
                case R.styleable.MapAttrs_uiZoomControls:
                    Bundle o = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i);
                    Set keySet = o.keySet();
                    keySet.size();
                    stringBuilder.append("{");
                    Iterator it = keySet.iterator();
                    int i3 = 1;
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (i3 == 0) {
                            stringBuilder.append(",");
                        }
                        stringBuilder.append("\"").append(str).append("\"");
                        stringBuilder.append(":");
                        stringBuilder.append("\"").append(fp.ap(o.getString(str))).append("\"");
                        boolean z = false;
                    }
                    stringBuilder.append("}");
                case R.styleable.MapAttrs_uiZoomGestures:
                    Parcel z2 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, i);
                    z2.setDataPosition(0);
                    a(stringBuilder, aVar.ez(), z2);
                default:
                    throw new IllegalStateException("Unknown field type out");
            }
        }
    }

    private void b(StringBuilder stringBuilder, a aVar, Object obj) {
        if (aVar.er()) {
            b(stringBuilder, aVar, (ArrayList) obj);
        } else {
            a(stringBuilder, aVar.el(), obj);
        }
    }

    private void b(StringBuilder stringBuilder, a aVar, ArrayList arrayList) {
        stringBuilder.append("[");
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            a(stringBuilder, aVar.el(), arrayList.get(i));
            i++;
        }
        stringBuilder.append("]");
    }

    public static HashMap c(Bundle bundle) {
        HashMap hashMap = new HashMap();
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    private static HashMap c(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            hashMap2.put(Integer.valueOf(((a) entry.getValue()).eu()), entry);
        }
        return hashMap2;
    }

    protected Object ak(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    protected boolean al(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public int describeContents() {
        fi fiVar = CREATOR;
        return 0;
    }

    public Parcel eF() {
        switch (this.CL) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                this.CM = b.p(this.CJ);
                b.D(this.CJ, this.CM);
                this.CL = 2;
                break;
            case GoogleScorer.CLIENT_GAMES:
                b.D(this.CJ, this.CM);
                this.CL = 2;
                break;
        }
        return this.CJ;
    }

    fe eG() {
        switch (this.CK) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return null;
            case GoogleScorer.CLIENT_GAMES:
                return this.CC;
            case GoogleScorer.CLIENT_PLUS:
                return this.CC;
            default:
                throw new IllegalStateException("Invalid creation type: " + this.CK);
        }
    }

    public HashMap en() {
        return this.CC == null ? null : this.CC.ao(this.mClassName);
    }

    public int getVersionCode() {
        return this.wj;
    }

    public String toString() {
        er.b(this.CC, (Object)"Cannot convert to JSON on client side.");
        Parcel eF = eF();
        eF.setDataPosition(0);
        StringBuilder stringBuilder = new StringBuilder(100);
        a(stringBuilder, this.CC.ao(this.mClassName), eF);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        fi fiVar = CREATOR;
        fi.a(this, parcel, i);
    }
}