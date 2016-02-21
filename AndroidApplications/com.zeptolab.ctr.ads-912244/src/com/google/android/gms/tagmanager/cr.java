package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.c.h;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cr {

    public static class a {
        private final Map Ws;
        private final com.google.android.gms.internal.d.a Wt;

        private a(Map map, com.google.android.gms.internal.d.a aVar) {
            this.Ws = map;
            this.Wt = aVar;
        }

        public static com.google.android.gms.tagmanager.cr.b jE() {
            return new com.google.android.gms.tagmanager.cr.b();
        }

        public void a_(String str, com.google.android.gms.internal.d.a aVar) {
            this.Ws.put(str, aVar);
        }

        public Map jF() {
            return Collections.unmodifiableMap(this.Ws);
        }

        public com.google.android.gms.internal.d.a jG() {
            return this.Wt;
        }

        public String toString() {
            return "Properties: " + jF() + " pushAfterEvaluate: " + this.Wt;
        }
    }

    public static class b {
        private final Map Ws;
        private com.google.android.gms.internal.d.a Wt;

        private b() {
            this.Ws = new HashMap();
        }

        public com.google.android.gms.tagmanager.cr.b b_(String str, com.google.android.gms.internal.d.a aVar) {
            this.Ws.put(str, aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.b i(com.google.android.gms.internal.d.a aVar) {
            this.Wt = aVar;
            return this;
        }

        public com.google.android.gms.tagmanager.cr.a jH() {
            return new com.google.android.gms.tagmanager.cr.a(this.Wt, null);
        }
    }

    public static class c {
        private final String Un;
        private final List Wu;
        private final Map Wv;
        private final int Ww;

        private c(List list, Map map, String str, int i) {
            this.Wu = Collections.unmodifiableList(list);
            this.Wv = Collections.unmodifiableMap(map);
            this.Un = str;
            this.Ww = i;
        }

        public static com.google.android.gms.tagmanager.cr.d jI() {
            return new com.google.android.gms.tagmanager.cr.d();
        }

        public String getVersion() {
            return this.Un;
        }

        public List jJ() {
            return this.Wu;
        }

        public Map jK() {
            return this.Wv;
        }

        public String toString() {
            return "Rules: " + jJ() + "  Macros: " + this.Wv;
        }
    }

    public static class d {
        private String Un;
        private final List Wu;
        private final Map Wv;
        private int Ww;

        private d() {
            this.Wu = new ArrayList();
            this.Wv = new HashMap();
            this.Un = AdTrackerConstants.BLANK;
            this.Ww = 0;
        }

        public com.google.android.gms.tagmanager.cr.d a(com.google.android.gms.tagmanager.cr.a aVar) {
            String j = di.j((com.google.android.gms.internal.d.a) aVar.jF().get(com.google.android.gms.internal.b.cT.toString()));
            List list = (List) this.Wv.get(j);
            if (list == null) {
                list = new ArrayList();
                this.Wv.put(j, list);
            }
            list.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.d a(com.google.android.gms.tagmanager.cr.e eVar) {
            this.Wu.add(eVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.d bW(int i) {
            this.Ww = i;
            return this;
        }

        public com.google.android.gms.tagmanager.cr.d bx(String str) {
            this.Un = str;
            return this;
        }

        public com.google.android.gms.tagmanager.cr.c jL() {
            return new com.google.android.gms.tagmanager.cr.c(this.Wv, this.Un, this.Ww, null);
        }
    }

    public static class e {
        private final List WA;
        private final List WB;
        private final List WC;
        private final List WD;
        private final List WE;
        private final List WF;
        private final List WG;
        private final List Wx;
        private final List Wy;
        private final List Wz;

        private e(List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, List list10) {
            this.Wx = Collections.unmodifiableList(list);
            this.Wy = Collections.unmodifiableList(list2);
            this.Wz = Collections.unmodifiableList(list3);
            this.WA = Collections.unmodifiableList(list4);
            this.WB = Collections.unmodifiableList(list5);
            this.WC = Collections.unmodifiableList(list6);
            this.WD = Collections.unmodifiableList(list7);
            this.WE = Collections.unmodifiableList(list8);
            this.WF = Collections.unmodifiableList(list9);
            this.WG = Collections.unmodifiableList(list10);
        }

        public static com.google.android.gms.tagmanager.cr.f jM() {
            return new com.google.android.gms.tagmanager.cr.f();
        }

        public List jN() {
            return this.Wx;
        }

        public List jO() {
            return this.Wy;
        }

        public List jP() {
            return this.Wz;
        }

        public List jQ() {
            return this.WA;
        }

        public List jR() {
            return this.WB;
        }

        public List jS() {
            return this.WD;
        }

        public List jT() {
            return this.WE;
        }

        public List jU() {
            return this.WF;
        }

        public List jV() {
            return this.WG;
        }

        public List jW() {
            return this.WC;
        }

        public String toString() {
            return "Positive predicates: " + jN() + "  Negative predicates: " + jO() + "  Add tags: " + jP() + "  Remove tags: " + jQ() + "  Add macros: " + jR() + "  Remove macros: " + jW();
        }
    }

    public static class f {
        private final List WA;
        private final List WB;
        private final List WC;
        private final List WD;
        private final List WE;
        private final List WF;
        private final List WG;
        private final List Wx;
        private final List Wy;
        private final List Wz;

        private f() {
            this.Wx = new ArrayList();
            this.Wy = new ArrayList();
            this.Wz = new ArrayList();
            this.WA = new ArrayList();
            this.WB = new ArrayList();
            this.WC = new ArrayList();
            this.WD = new ArrayList();
            this.WE = new ArrayList();
            this.WF = new ArrayList();
            this.WG = new ArrayList();
        }

        public com.google.android.gms.tagmanager.cr.f b(com.google.android.gms.tagmanager.cr.a aVar) {
            this.Wx.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f bA(String str) {
            this.WD.add(str);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f bB(String str) {
            this.WE.add(str);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f by(String str) {
            this.WF.add(str);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f bz(String str) {
            this.WG.add(str);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f c(com.google.android.gms.tagmanager.cr.a aVar) {
            this.Wy.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f d(com.google.android.gms.tagmanager.cr.a aVar) {
            this.Wz.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f e(com.google.android.gms.tagmanager.cr.a aVar) {
            this.WA.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f f_(com.google.android.gms.tagmanager.cr.a aVar) {
            this.WB.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.f g(com.google.android.gms.tagmanager.cr.a aVar) {
            this.WC.add(aVar);
            return this;
        }

        public com.google.android.gms.tagmanager.cr.e jX() {
            return new com.google.android.gms.tagmanager.cr.e(this.Wy, this.Wz, this.WA, this.WB, this.WC, this.WD, this.WE, this.WF, this.WG, null);
        }
    }

    public static class g extends Exception {
        public g(String str) {
            super(str);
        }
    }

    private static com.google.android.gms.internal.d.a a(int i, com.google.android.gms.internal.c.f fVar, com.google.android.gms.internal.d.a[] aVarArr, Set set) {
        int i2 = 0;
        if (set.contains(Integer.valueOf(i))) {
            bw("Value cycle detected.  Current value reference: " + i + "." + "  Previous value references: " + set + ".");
        }
        com.google.android.gms.internal.d.a aVar = (com.google.android.gms.internal.d.a) a(fVar.fi, i, "values");
        if (aVarArr[i] != null) {
            return aVarArr[i];
        }
        com.google.android.gms.internal.d.a aVar2 = null;
        set.add(Integer.valueOf(i));
        h h;
        int[] iArr;
        int length;
        int i3;
        int i4;
        switch (aVar.type) {
            case GoogleScorer.CLIENT_GAMES:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                aVar2 = aVar;
                break;
            case GoogleScorer.CLIENT_PLUS:
                h = h(aVar);
                aVar2 = g(aVar);
                aVar2.fZ = new com.google.android.gms.internal.d.a[h.fK.length];
                iArr = h.fK;
                length = iArr.length;
                i3 = 0;
                while (i2 < length) {
                    i4 = i3 + 1;
                    aVar2.fZ[i3] = a(iArr[i2], fVar, aVarArr, set);
                    i2++;
                    i3 = i4;
                }
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                aVar2 = g(aVar);
                h h2 = h(aVar);
                if (h2.fL.length != h2.fM.length) {
                    bw("Uneven map keys (" + h2.fL.length + ") and map values (" + h2.fM.length + ")");
                }
                aVar2.ga = new com.google.android.gms.internal.d.a[h2.fL.length];
                aVar2.gb = new com.google.android.gms.internal.d.a[h2.fL.length];
                int[] iArr2 = h2.fL;
                int length2 = iArr2.length;
                i3 = 0;
                i4 = 0;
                while (i3 < length2) {
                    int i5 = i4 + 1;
                    aVar2.ga[i4] = a(iArr2[i3], fVar, aVarArr, set);
                    i3++;
                    i4 = i5;
                }
                iArr = h2.fM;
                length = iArr.length;
                i3 = 0;
                while (i2 < length) {
                    i4 = i3 + 1;
                    aVar2.gb[i3] = a(iArr[i2], fVar, aVarArr, set);
                    i2++;
                    i3 = i4;
                }
                break;
            case GoogleScorer.CLIENT_APPSTATE:
                aVar2 = g(aVar);
                aVar2.gc = di.j(a(h(aVar).fP, fVar, aVarArr, set));
                break;
            case GoogleScorer.CLIENT_ALL:
                aVar2 = g(aVar);
                h = h(aVar);
                aVar2.gg = new com.google.android.gms.internal.d.a[h.fO.length];
                iArr = h.fO;
                length = iArr.length;
                i3 = 0;
                while (i2 < length) {
                    i4 = i3 + 1;
                    aVar2.gg[i3] = a(iArr[i2], fVar, aVarArr, set);
                    i2++;
                    i3 = i4;
                }
                break;
        }
        if (aVar2 == null) {
            bw("Invalid value: " + aVar);
        }
        aVarArr[i] = aVar2;
        set.remove(Integer.valueOf(i));
        return aVar2;
    }

    private static a a(com.google.android.gms.internal.c.b bVar, com.google.android.gms.internal.c.f fVar, com.google.android.gms.internal.d.a[] aVarArr, int i) {
        b jE = a.jE();
        int[] iArr = bVar.eS;
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            com.google.android.gms.internal.c.e eVar = (com.google.android.gms.internal.c.e) a(fVar.fj, Integer.valueOf(iArr[i2]).intValue(), "properties");
            String str = (String) a(fVar.fh, eVar.key, "keys");
            com.google.android.gms.internal.d.a aVar = (com.google.android.gms.internal.d.a) a(aVarArr, eVar.value, "values");
            if (com.google.android.gms.internal.b.dM.toString().equals(str)) {
                jE.i(aVar);
            } else {
                jE.b(str, aVar);
            }
            i2++;
        }
        return jE.jH();
    }

    private static e a(com.google.android.gms.internal.c.g gVar, List list, List list2, List list3, com.google.android.gms.internal.c.f fVar) {
        f jM = e.jM();
        int[] iArr = gVar.fy;
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            jM.b((a) list3.get(Integer.valueOf(iArr[i]).intValue()));
            i++;
        }
        iArr = gVar.fz;
        length = iArr.length;
        i = 0;
        while (i < length) {
            jM.c((a) list3.get(Integer.valueOf(iArr[i]).intValue()));
            i++;
        }
        iArr = gVar.fA;
        length = iArr.length;
        i = 0;
        while (i < length) {
            jM.d((a) list.get(Integer.valueOf(iArr[i]).intValue()));
            i++;
        }
        int[] iArr2 = gVar.fC;
        int length2 = iArr2.length;
        int i2 = 0;
        while (i2 < length2) {
            jM.by(fVar.fi[Integer.valueOf(iArr2[i2]).intValue()].fY);
            i2++;
        }
        iArr = gVar.fB;
        length = iArr.length;
        i = 0;
        while (i < length) {
            jM.e((a) list.get(Integer.valueOf(iArr[i]).intValue()));
            i++;
        }
        iArr2 = gVar.fD;
        length2 = iArr2.length;
        i2 = 0;
        while (i2 < length2) {
            jM.bz(fVar.fi[Integer.valueOf(iArr2[i2]).intValue()].fY);
            i2++;
        }
        iArr = gVar.fE;
        length = iArr.length;
        i = 0;
        while (i < length) {
            jM.f((a) list2.get(Integer.valueOf(iArr[i]).intValue()));
            i++;
        }
        iArr2 = gVar.fG;
        length2 = iArr2.length;
        i2 = 0;
        while (i2 < length2) {
            jM.bA(fVar.fi[Integer.valueOf(iArr2[i2]).intValue()].fY);
            i2++;
        }
        iArr = gVar.fF;
        length = iArr.length;
        i = 0;
        while (i < length) {
            jM.g((a) list2.get(Integer.valueOf(iArr[i]).intValue()));
            i++;
        }
        iArr2 = gVar.fH;
        length2 = iArr2.length;
        i2 = 0;
        while (i2 < length2) {
            jM.bB(fVar.fi[Integer.valueOf(iArr2[i2]).intValue()].fY);
            i2++;
        }
        return jM.jX();
    }

    private static Object a(Object[] objArr, int i, String str) {
        if (i < 0 || i >= objArr.length) {
            bw("Index out of bounds detected: " + i + " in " + str);
        }
        return objArr[i];
    }

    public static c b(com.google.android.gms.internal.c.f fVar) {
        int i = 0;
        com.google.android.gms.internal.d.a[] aVarArr = new com.google.android.gms.internal.d.a[fVar.fi.length];
        int i2 = 0;
        while (i2 < fVar.fi.length) {
            a(i2, fVar, aVarArr, new HashSet(0));
            i2++;
        }
        d jI = c.jI();
        List arrayList = new ArrayList();
        i2 = 0;
        while (i2 < fVar.fl.length) {
            arrayList.add(a(fVar.fl[i2], fVar, aVarArr, i2));
            i2++;
        }
        List arrayList2 = new ArrayList();
        i2 = 0;
        while (i2 < fVar.fm.length) {
            arrayList2.add(a(fVar.fm[i2], fVar, aVarArr, i2));
            i2++;
        }
        List arrayList3 = new ArrayList();
        i2 = 0;
        while (i2 < fVar.fk.length) {
            a a = a(fVar.fk[i2], fVar, aVarArr, i2);
            jI.a(a);
            arrayList3.add(a);
            i2++;
        }
        com.google.android.gms.internal.c.g[] gVarArr = fVar.fn;
        int length = gVarArr.length;
        while (i < length) {
            jI.a(a(gVarArr[i], arrayList, arrayList3, arrayList2, fVar));
            i++;
        }
        jI.bx(fVar.fr);
        jI.bW(fVar.fw);
        return jI.jL();
    }

    public static void b(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void bw(String str) {
        bh.t(str);
        throw new g(str);
    }

    public static com.google.android.gms.internal.d.a g(com.google.android.gms.internal.d.a aVar) {
        com.google.android.gms.internal.d.a aVar2 = new com.google.android.gms.internal.d.a();
        aVar2.type = aVar.type;
        aVar2.gh = (int[]) aVar.gh.clone();
        if (aVar.gi) {
            aVar2.gi = aVar.gi;
        }
        return aVar2;
    }

    private static h h(com.google.android.gms.internal.d.a aVar) {
        if (((h) aVar.a(h.fI)) == null) {
            bw("Expected a ServingValue and didn't get one. Value is: " + aVar);
        }
        return (h) aVar.a(h.fI);
    }
}