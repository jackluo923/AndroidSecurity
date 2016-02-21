package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class az extends aj {
    private static final String ID;
    private static final String US;
    private static final String Vo;
    private static final String Vp;
    private static final String Vq;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] Vr;

        static {
            Vr = new int[a.values().length];
            try {
                Vr[a.Vt.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                Vr[a.Vu.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            Vr[a.Vs.ordinal()] = 3;
        }
    }

    private enum a {
        NONE,
        URL,
        BACKSLASH;

        static {
            Vs = new a("NONE", 0);
            Vt = new a("URL", 1);
            Vu = new a("BACKSLASH", 2);
            Vv = new a[]{Vs, Vt, Vu};
        }
    }

    static {
        ID = com.google.android.gms.internal.a.an.toString();
        US = b.bt.toString();
        Vo = b.cW.toString();
        Vp = b.cZ.toString();
        Vq = b.cz.toString();
    }

    public az() {
        super(ID, new String[]{US});
    }

    private String a(String str, a aVar, Set set) {
        switch (AnonymousClass_1.Vr[aVar.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                try {
                    return dl.bO(str);
                } catch (UnsupportedEncodingException e) {
                    bh.c("Joiner: unsupported encoding", e);
                    return str;
                }
            case GoogleScorer.CLIENT_PLUS:
                String replace = str.replace("\\", "\\\\");
                Iterator it = set.iterator();
                String str2 = replace;
                while (it.hasNext()) {
                    CharSequence toString = ((Character) it.next()).toString();
                    str2 = str2.replace(toString, "\\" + toString);
                }
                return str2;
            default:
                return str;
        }
    }

    private void a(StringBuilder stringBuilder, String str, a aVar, Set set) {
        stringBuilder.append(a(str, aVar, set));
    }

    private void a(Set set, String str) {
        int i = 0;
        while (i < str.length()) {
            set.add(Character.valueOf(str.charAt(i)));
            i++;
        }
    }

    public boolean iy() {
        return true;
    }

    public com.google.android.gms.internal.d.a u(Map map) {
        com.google.android.gms.internal.d.a aVar = (com.google.android.gms.internal.d.a) map.get(US);
        if (aVar == null) {
            return di.ku();
        }
        a aVar2;
        Set set;
        com.google.android.gms.internal.d.a aVar3 = (com.google.android.gms.internal.d.a) map.get(Vo);
        String j = aVar3 != null ? di.j(aVar3) : AdTrackerConstants.BLANK;
        aVar3 = (com.google.android.gms.internal.d.a) map.get(Vp);
        String j2 = aVar3 != null ? di.j(aVar3) : "=";
        a aVar4 = a.Vs;
        aVar3 = (com.google.android.gms.internal.d.a) map.get(Vq);
        if (aVar3 != null) {
            String j3 = di.j(aVar3);
            if (PlusShare.KEY_CALL_TO_ACTION_URL.equals(j3)) {
                aVar2 = a.Vt;
                set = null;
            } else if ("backslash".equals(j3)) {
                aVar2 = a.Vu;
                set = new HashSet();
                a(set, j);
                a(set, j2);
                set.remove(Character.valueOf('\\'));
            } else {
                bh.t("Joiner: unsupported escape type: " + j3);
                return di.ku();
            }
        } else {
            set = null;
            aVar2 = aVar4;
        }
        StringBuilder stringBuilder = new StringBuilder();
        switch (aVar.type) {
            case GoogleScorer.CLIENT_PLUS:
                boolean z = 1;
                com.google.android.gms.internal.d.a[] aVarArr = aVar.fZ;
                int length = aVarArr.length;
                int i = 0;
                while (i < length) {
                    com.google.android.gms.internal.d.a aVar5 = aVarArr[i];
                    if (i == 0) {
                        stringBuilder.append(j);
                    }
                    a(stringBuilder, di.j(aVar5), aVar2, set);
                    i++;
                    z = false;
                }
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                int i2 = 0;
                while (i2 < aVar.ga.length) {
                    if (i2 > 0) {
                        stringBuilder.append(j);
                    }
                    String j4 = di.j(aVar.ga[i2]);
                    String j5 = di.j(aVar.gb[i2]);
                    a(stringBuilder, j4, aVar2, set);
                    stringBuilder.append(j2);
                    a(stringBuilder, j5, aVar2, set);
                    i2++;
                }
                break;
            default:
                a(stringBuilder, di.j(aVar), aVar2, set);
                break;
        }
        return di.r(stringBuilder.toString());
    }
}