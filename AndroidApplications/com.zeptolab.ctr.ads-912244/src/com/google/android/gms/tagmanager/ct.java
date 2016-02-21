package com.google.android.gms.tagmanager;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.tagmanager.cr.e;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ct {
    private static final by WH;
    private final DataLayer TN;
    private final com.google.android.gms.tagmanager.cr.c WI;
    private final ag WJ;
    private final Map WK;
    private final Map WL;
    private final Map WM;
    private final k WN;
    private final k WO;
    private final Set WP;
    private final Map WQ;
    private volatile String WR;
    private int WS;

    static interface a {
        void a_(e eVar, Set set, Set set2, cn cnVar);
    }

    class AnonymousClass_3 implements a {
        final /* synthetic */ Map WU;
        final /* synthetic */ Map WV;
        final /* synthetic */ Map WW;
        final /* synthetic */ Map WX;

        AnonymousClass_3(Map map, Map map2, Map map3, Map map4) {
            this.WU = map;
            this.WV = map2;
            this.WW = map3;
            this.WX = map4;
        }

        public void a(e eVar, Set set, Set set2, cn cnVar) {
            List list = (List) this.WU.get(eVar);
            List list2 = (List) this.WV.get(eVar);
            if (list != null) {
                set.addAll(list);
                cnVar.jl().b(list, list2);
            }
            list = (List) this.WW.get(eVar);
            list2 = (List) this.WX.get(eVar);
            if (list != null) {
                set2.addAll(list);
                cnVar.jm().b(list, list2);
            }
        }
    }

    private static class b {
        private by WY;
        private com.google.android.gms.internal.d.a Wt;

        public b(by byVar, com.google.android.gms.internal.d.a aVar) {
            this.WY = byVar;
            this.Wt = aVar;
        }

        public int getSize() {
            return (this.Wt == null ? 0 : this.Wt.eW()) + ((com.google.android.gms.internal.d.a) this.WY.getObject()).eW();
        }

        public com.google.android.gms.internal.d.a jG() {
            return this.Wt;
        }

        public by ka() {
            return this.WY;
        }
    }

    private static class c {
        private final Set WP;
        private final Map WZ;
        private final Map Xa;
        private final Map Xb;
        private final Map Xc;
        private com.google.android.gms.tagmanager.cr.a Xd;

        public c() {
            this.WP = new HashSet();
            this.WZ = new HashMap();
            this.Xb = new HashMap();
            this.Xa = new HashMap();
            this.Xc = new HashMap();
        }

        public void a(e eVar, com.google.android.gms.tagmanager.cr.a aVar) {
            List list = (List) this.WZ.get(eVar);
            if (list == null) {
                list = new ArrayList();
                this.WZ.put(eVar, list);
            }
            list.add(aVar);
        }

        public void a(e eVar, String str) {
            List list = (List) this.Xb.get(eVar);
            if (list == null) {
                list = new ArrayList();
                this.Xb.put(eVar, list);
            }
            list.add(str);
        }

        public void b(e eVar) {
            this.WP.add(eVar);
        }

        public void b(e eVar, com.google.android.gms.tagmanager.cr.a aVar) {
            List list = (List) this.Xa.get(eVar);
            if (list == null) {
                list = new ArrayList();
                this.Xa.put(eVar, list);
            }
            list.add(aVar);
        }

        public void b(e eVar, String str) {
            List list = (List) this.Xc.get(eVar);
            if (list == null) {
                list = new ArrayList();
                this.Xc.put(eVar, list);
            }
            list.add(str);
        }

        public void i(com.google.android.gms.tagmanager.cr.a aVar) {
            this.Xd = aVar;
        }

        public Set kb() {
            return this.WP;
        }

        public Map kc() {
            return this.WZ;
        }

        public Map kd() {
            return this.Xb;
        }

        public Map ke() {
            return this.Xc;
        }

        public Map kf() {
            return this.Xa;
        }

        public com.google.android.gms.tagmanager.cr.a kg() {
            return this.Xd;
        }
    }

    static {
        WH = new by(di.ku(), true);
    }

    public ct(Context context, com.google.android.gms.tagmanager.cr.c cVar, DataLayer dataLayer, com.google.android.gms.tagmanager.s.a aVar, com.google.android.gms.tagmanager.s.a aVar2, ag agVar) {
        if (cVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.WI = cVar;
        this.WP = new HashSet(cVar.jJ());
        this.TN = dataLayer;
        this.WJ = agVar;
        this.WN = new l().a(AccessibilityEventCompat.TYPE_TOUCH_INTERACTION_START, new com.google.android.gms.tagmanager.l.a() {
            public int a(com.google.android.gms.tagmanager.cr.a aVar, by byVar) {
                return ((com.google.android.gms.internal.d.a) byVar.getObject()).eW();
            }

            public /* synthetic */ int sizeOf(Object obj, Object obj2) {
                return a((com.google.android.gms.tagmanager.cr.a) obj, (by) obj2);
            }
        });
        this.WO = new l().a(AccessibilityEventCompat.TYPE_TOUCH_INTERACTION_START, new com.google.android.gms.tagmanager.l.a() {
            public int a(String str, b bVar) {
                return str.length() + bVar.getSize();
            }

            public /* synthetic */ int sizeOf(Object obj, Object obj2) {
                return a((String) obj, (b) obj2);
            }
        });
        this.WK = new HashMap();
        b(new i(context));
        b(new s(aVar2));
        b(new w(dataLayer));
        b(new dj(context, dataLayer));
        this.WL = new HashMap();
        c(new q());
        c(new ad());
        c(new ae());
        c(new al());
        c(new am());
        c(new bd());
        c(new be());
        c(new ci());
        c(new dc());
        this.WM = new HashMap();
        a(new b(context));
        a(new c(context));
        a(new e(context));
        a(new f(context));
        a(new g(context));
        a(new h(context));
        a(new m());
        a(new p(this.WI.getVersion()));
        a(new s(aVar));
        a(new u(dataLayer));
        a(new z(context));
        a(new aa());
        a(new ac());
        a(new ah(this));
        a(new an());
        a(new ao());
        a(new ax(context));
        a(new az());
        a(new bc());
        a(new bk(context));
        a(new bz());
        a(new cc());
        a(new cf());
        a(new ch());
        a(new cj(context));
        a(new cu());
        a(new cv());
        a(new de());
        this.WQ = new HashMap();
        Iterator it = this.WP.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            if (agVar.jb()) {
                a(eVar.jR(), eVar.jS(), "add macro");
                a(eVar.jW(), eVar.jT(), "remove macro");
                a(eVar.jP(), eVar.jU(), "add tag");
                a(eVar.jQ(), eVar.jV(), "remove tag");
            }
            int i = 0;
            while (i < eVar.jR().size()) {
                com.google.android.gms.tagmanager.cr.a aVar3 = (com.google.android.gms.tagmanager.cr.a) eVar.jR().get(i);
                String str = "Unknown";
                if (agVar.jb() && i < eVar.jS().size()) {
                    str = (String) eVar.jS().get(i);
                }
                c c = c(this.WQ, h(aVar3));
                c.b(eVar);
                c.a(eVar, aVar3);
                c.a(eVar, str);
                i++;
            }
            i = 0;
            while (i < eVar.jW().size()) {
                aVar3 = (com.google.android.gms.tagmanager.cr.a) eVar.jW().get(i);
                str = "Unknown";
                if (agVar.jb() && i < eVar.jT().size()) {
                    str = (String) eVar.jT().get(i);
                }
                c = c(this.WQ, h(aVar3));
                c.b(eVar);
                c.b(eVar, aVar3);
                c.b(eVar, str);
                i++;
            }
        }
        Iterator it2 = this.WI.jK().entrySet().iterator();
        while (it2.hasNext()) {
            Entry entry = (Entry) it2.next();
            Iterator it3 = ((List) entry.getValue()).iterator();
            while (it3.hasNext()) {
                aVar3 = (com.google.android.gms.tagmanager.cr.a) it3.next();
                if (!di.n((com.google.android.gms.internal.d.a) aVar3.jF().get(com.google.android.gms.internal.b.ds.toString())).booleanValue()) {
                    c(this.WQ, (String) entry.getKey()).i(aVar3);
                }
            }
        }
    }

    private by a(com.google.android.gms.internal.d.a aVar, Set set, dk dkVar) {
        if (!aVar.gi) {
            return new by(aVar, true);
        }
        com.google.android.gms.internal.d.a g;
        int i;
        by a;
        switch (aVar.type) {
            case GoogleScorer.CLIENT_PLUS:
                g = cr.g(aVar);
                g.fZ = new com.google.android.gms.internal.d.a[aVar.fZ.length];
                i = 0;
                while (i < aVar.fZ.length) {
                    a = a(aVar.fZ[i], set, dkVar.bS(i));
                    if (a == WH) {
                        return WH;
                    }
                    g.fZ[i] = (com.google.android.gms.internal.d.a) a.getObject();
                    i++;
                }
                return new by(g, false);
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                g = cr.g(aVar);
                if (aVar.ga.length != aVar.gb.length) {
                    bh.t("Invalid serving value: " + aVar.toString());
                    return WH;
                } else {
                    g.ga = new com.google.android.gms.internal.d.a[aVar.ga.length];
                    g.gb = new com.google.android.gms.internal.d.a[aVar.ga.length];
                    i = 0;
                    while (i < aVar.ga.length) {
                        a = a(aVar.ga[i], set, dkVar.bT(i));
                        by a2 = a(aVar.gb[i], set, dkVar.bU(i));
                        if (a != WH && a2 != WH) {
                            g.ga[i] = (com.google.android.gms.internal.d.a) a.getObject();
                            g.gb[i] = (com.google.android.gms.internal.d.a) a2.getObject();
                            i++;
                        }
                        return WH;
                    }
                    return new by(g, false);
                }
            case GoogleScorer.CLIENT_APPSTATE:
                if (set.contains(aVar.gc)) {
                    bh.t("Macro cycle detected.  Current macro reference: " + aVar.gc + "." + "  Previous macro references: " + set.toString() + ".");
                    return WH;
                } else {
                    set.add(aVar.gc);
                    a = dl.a(a(aVar.gc, set, dkVar.jq()), aVar.gh);
                    set.remove(aVar.gc);
                    return a;
                }
            case GoogleScorer.CLIENT_ALL:
                g = cr.g(aVar);
                g.gg = new com.google.android.gms.internal.d.a[aVar.gg.length];
                i = 0;
                while (i < aVar.gg.length) {
                    a = a(aVar.gg[i], set, dkVar.bV(i));
                    if (a == WH) {
                        return WH;
                    }
                    g.gg[i] = (com.google.android.gms.internal.d.a) a.getObject();
                    i++;
                }
                return new by(g, false);
            default:
                bh.t("Unknown type: " + aVar.type);
                return WH;
        }
    }

    private by a(String str, Set set, bj bjVar) {
        this.WS++;
        b bVar = (b) this.WO.get(str);
        if (bVar == null || this.WJ.jb()) {
            c cVar = (c) this.WQ.get(str);
            if (cVar == null) {
                bh.t(jZ() + "Invalid macro: " + str);
                this.WS--;
                return WH;
            } else {
                com.google.android.gms.tagmanager.cr.a aVar;
                by a = a(str, cVar.kb(), cVar.kc(), cVar.kd(), cVar.kf(), cVar.ke(), set, bjVar.iS());
                if (((Set) a.getObject()).isEmpty()) {
                    aVar = cVar.kg();
                } else {
                    if (((Set) a.getObject()).size() > 1) {
                        bh.w(jZ() + "Multiple macros active for macroName " + str);
                    }
                    aVar = (com.google.android.gms.tagmanager.cr.a) ((Set) a.getObject()).iterator().next();
                }
                if (aVar == null) {
                    this.WS--;
                    return WH;
                } else {
                    boolean z;
                    by byVar;
                    by a2 = a(this.WM, aVar, set, bjVar.jh());
                    z = a.jr() && a2.jr();
                    byVar = a2 == WH ? WH : new by(a2.getObject(), z);
                    com.google.android.gms.internal.d.a jG = aVar.jG();
                    if (byVar.jr()) {
                        this.WO.e(str, new b(byVar, jG));
                    }
                    a(jG, set);
                    this.WS--;
                    return byVar;
                }
            }
        } else {
            a(bVar.jG(), set);
            this.WS--;
            return bVar.ka();
        }
    }

    private by a(Map map, com.google.android.gms.tagmanager.cr.a aVar, Set set, ck ckVar) {
        boolean z = true;
        com.google.android.gms.internal.d.a aVar2 = (com.google.android.gms.internal.d.a) aVar.jF().get(com.google.android.gms.internal.b.cI.toString());
        if (aVar2 == null) {
            bh.t("No function id in properties");
            return WH;
        } else {
            String str = aVar2.gd;
            aj ajVar = (aj) map.get(str);
            if (ajVar == null) {
                bh.t(str + " has no backing implementation.");
                return WH;
            } else {
                by byVar = (by) this.WN.get(aVar);
                if (byVar != null && !this.WJ.jb()) {
                    return byVar;
                }
                Map hashMap = new HashMap();
                Iterator it = aVar.jF().entrySet().iterator();
                boolean z2 = true;
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    by a = a((com.google.android.gms.internal.d.a) entry.getValue(), set, ckVar.bs((String) entry.getKey()).e((com.google.android.gms.internal.d.a) entry.getValue()));
                    if (a == WH) {
                        return WH;
                    }
                    boolean z3;
                    if (a.jr()) {
                        aVar.a((String) entry.getKey(), (com.google.android.gms.internal.d.a) a.getObject());
                        int i = i;
                    } else {
                        z3 = false;
                    }
                    hashMap.put(entry.getKey(), a.getObject());
                    z2 = z3;
                }
                if (ajVar.a(hashMap.keySet())) {
                    if (i == 0 || !ajVar.iy()) {
                        z = false;
                    }
                    byVar = new by(ajVar.u(hashMap), z);
                    if (z) {
                        this.WN.e(aVar, byVar);
                    }
                    ckVar.d((com.google.android.gms.internal.d.a) byVar.getObject());
                    return byVar;
                } else {
                    bh.t("Incorrect keys for function " + str + " required " + ajVar.jd() + " had " + hashMap.keySet());
                    return WH;
                }
            }
        }
    }

    private by a(Set set, Set set2, a aVar, cs csVar) {
        Set hashSet = new HashSet();
        Collection hashSet2 = new HashSet();
        Iterator it = set.iterator();
        boolean z = true;
        while (it.hasNext()) {
            boolean z2;
            e eVar = (e) it.next();
            cn jp = csVar.jp();
            by a = a(eVar, set2, jp);
            if (((Boolean) a.getObject()).booleanValue()) {
                aVar.a(eVar, hashSet, hashSet2, jp);
            }
            z2 = (z && a.jr()) ? true : 0;
            z = z2;
        }
        hashSet.removeAll(hashSet2);
        csVar.b(hashSet);
        return new by(hashSet, z);
    }

    private void a(com.google.android.gms.internal.d.a aVar, Set set) {
        if (aVar != null) {
            by a = a(aVar, set, new bw());
            if (a != WH) {
                Object o = di.o((com.google.android.gms.internal.d.a) a.getObject());
                if (o instanceof Map) {
                    this.TN.push((Map) o);
                } else if (o instanceof List) {
                    Iterator it = ((List) o).iterator();
                    while (it.hasNext()) {
                        o = it.next();
                        if (o instanceof Map) {
                            this.TN.push((Map) o);
                        } else {
                            bh.w("pushAfterEvaluate: value not a Map");
                        }
                    }
                } else {
                    bh.w("pushAfterEvaluate: value not a Map or List");
                }
            }
        }
    }

    private static void a(List list, List list2, String str) {
        if (list.size() != list2.size()) {
            bh.u("Invalid resource: imbalance of rule names of functions for " + str + " operation. Using default rule name instead");
        }
    }

    private static void a(Map map, aj ajVar) {
        if (map.containsKey(ajVar.jc())) {
            throw new IllegalArgumentException("Duplicate function type name: " + ajVar.jc());
        }
        map.put(ajVar.jc(), ajVar);
    }

    private static c c(Map map, String str) {
        c cVar = (c) map.get(str);
        if (cVar != null) {
            return cVar;
        }
        cVar = new c();
        map.put(str, cVar);
        return cVar;
    }

    private static String h(com.google.android.gms.tagmanager.cr.a aVar) {
        return di.j((com.google.android.gms.internal.d.a) aVar.jF().get(com.google.android.gms.internal.b.cT.toString()));
    }

    private String jZ() {
        if (this.WS <= 1) {
            return AdTrackerConstants.BLANK;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Integer.toString(this.WS));
        int i = GoogleScorer.CLIENT_PLUS;
        while (i < this.WS) {
            stringBuilder.append(' ');
            i++;
        }
        stringBuilder.append(": ");
        return stringBuilder.toString();
    }

    by a(com.google.android.gms.tagmanager.cr.a aVar, Set set, ck ckVar) {
        by a = a(this.WL, aVar, set, ckVar);
        Boolean n = di.n((com.google.android.gms.internal.d.a) a.getObject());
        ckVar.d(di.r(n));
        return new by(n, a.jr());
    }

    by a(e eVar, Set set, cn cnVar) {
        Iterator it = eVar.jO().iterator();
        boolean z = true;
        while (it.hasNext()) {
            by a = a((com.google.android.gms.tagmanager.cr.a) it.next(), set, cnVar.jj());
            if (((Boolean) a.getObject()).booleanValue()) {
                cnVar.f(di.r(Boolean.valueOf(false)));
                return new by(Boolean.valueOf(false), a.jr());
            } else {
                boolean z2;
                z2 = z && a.jr();
                z = z2;
            }
        }
        it = eVar.jN().iterator();
        while (it.hasNext()) {
            a = a((com.google.android.gms.tagmanager.cr.a) it.next(), set, cnVar.jk());
            if (!((Boolean) a.getObject()).booleanValue()) {
                cnVar.f(di.r(Boolean.valueOf(false)));
                return new by(Boolean.valueOf(false), a.jr());
            } else if (z && a.jr()) {
                z = true;
            } else {
                z = false;
            }
        }
        cnVar.f(di.r(Boolean.valueOf(true)));
        return new by(Boolean.valueOf(true), z);
    }

    by a(String str, Set set, Map map, Map map2, Map map3, Map map4, Set set2, cs csVar) {
        return a(set, set2, new AnonymousClass_3(map, map2, map3, map4), csVar);
    }

    by a(Set set, cs csVar) {
        return a(set, new HashSet(), new a() {
            public void a(e eVar, Set set, Set set2, cn cnVar) {
                set.addAll(eVar.jP());
                set2.addAll(eVar.jQ());
                cnVar.jn().b(eVar.jP(), eVar.jU());
                cnVar.jo().b(eVar.jQ(), eVar.jV());
            }
        }, csVar);
    }

    void a(aj ajVar) {
        a(this.WM, ajVar);
    }

    void b(aj ajVar) {
        a(this.WK, ajVar);
    }

    public by bC(String str) {
        this.WS = 0;
        af bl = this.WJ.bl(str);
        by a = a(str, new HashSet(), bl.iY());
        bl.ja();
        return a;
    }

    synchronized void bD(String str) {
        this.WR = str;
    }

    public synchronized void ba(String str) {
        bD(str);
        af bm = this.WJ.bm(str);
        t iZ = bm.iZ();
        Iterator it = ((Set) a(this.WP, iZ.iS()).getObject()).iterator();
        while (it.hasNext()) {
            a(this.WK, (com.google.android.gms.tagmanager.cr.a) it.next(), new HashSet(), iZ.iR());
        }
        bm.ja();
        bD(null);
    }

    void c(aj ajVar) {
        a(this.WL, ajVar);
    }

    public synchronized void f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i iVar = (i) it.next();
            if (iVar.name == null || !iVar.name.startsWith("gaExperiment:")) {
                bh.v("Ignored supplemental: " + iVar);
            } else {
                ai.a(this.TN, iVar);
            }
        }
    }

    synchronized String jY() {
        return this.WR;
    }
}