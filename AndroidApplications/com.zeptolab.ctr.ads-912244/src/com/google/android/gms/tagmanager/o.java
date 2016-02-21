package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fn;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class o extends ca {
    private final String TM;
    private long TR;
    private final TagManager TY;
    private final fl Ty;
    private final d Ub;
    private final cg Uc;
    private final int Ud;
    private f Ue;
    private volatile n Uf;
    private volatile boolean Ug;
    private j Uh;
    private String Ui;
    private e Uj;
    private a Uk;
    private final Context mContext;
    private final Looper zs;

    static interface e extends Releasable {
        void a(bg bgVar);

        void bf(String str);

        void d(long j, String str);
    }

    static interface f extends Releasable {
        void a(bg bgVar);

        void b(com.google.android.gms.internal.jd.a aVar);

        com.google.android.gms.tagmanager.cr.c bP(int i);

        void iN();
    }

    static interface a {
        boolean b(Container container);
    }

    class AnonymousClass_2 implements a {
        final /* synthetic */ boolean Um;

        AnonymousClass_2(boolean z) {
            this.Um = z;
        }

        public boolean b(Container container) {
            if (this.Um) {
                return container.getLastRefreshTime() + 43200000 >= o.this.Ty.currentTimeMillis();
            } else if (container.isDefault()) {
                return false;
            } else {
                return true;
            }
        }
    }

    private class b implements bg {
        private b() {
        }

        public void a(com.google.android.gms.internal.jd.a aVar) {
            j jVar;
            if (aVar.Yc != null) {
                jVar = aVar.Yc;
            } else {
                com.google.android.gms.internal.c.f fVar = aVar.fV;
                jVar = new j();
                jVar.fV = fVar;
                jVar.fU = null;
                jVar.fW = fVar.fr;
            }
            o.this.a(jVar, aVar.Yb, true);
        }

        public void a(com.google.android.gms.tagmanager.bg.a aVar) {
            if (!o.this.Ug) {
                o.this.s(0);
            }
        }

        public /* synthetic */ void i(Object obj) {
            a((com.google.android.gms.internal.jd.a) obj);
        }

        public void iM() {
        }
    }

    private class c implements bg {
        private c() {
        }

        public void a(com.google.android.gms.tagmanager.bg.a aVar) {
            if (o.this.Uf != null) {
                o.this.a(o.this.Uf);
            } else {
                o.this.a(o.this.O(Status.zS));
            }
            o.this.s(3600000);
        }

        public void b(j jVar) {
            synchronized (o.this) {
                if (jVar.fV == null && o.this.Uh.fV == null) {
                    bh.t("Current resource is null; network resource is also null");
                    o.this.s(3600000);
                    return;
                } else {
                    jVar.fV = o.this.Uh.fV;
                }
                o.this.a(jVar, o.this.Ty.currentTimeMillis(), false);
                bh.v("setting refresh time to current time: " + o.this.TR);
                if (!o.this.iL()) {
                    o.this.a(jVar);
                }
            }
        }

        public /* synthetic */ void i(Object obj) {
            b((j) obj);
        }

        public void iM() {
        }
    }

    private class d implements com.google.android.gms.tagmanager.n.a {
        private d() {
        }

        public void bc(String str) {
            o.this.bc(str);
        }

        public String iF() {
            return o.this.iF();
        }

        public void iH() {
            if (o.this.Uc.cl()) {
                o.this.s(0);
            }
        }
    }

    o(Context context, TagManager tagManager, Looper looper, String str, int i, f fVar, e eVar, fl flVar, cg cgVar) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.mContext = context;
        this.TY = tagManager;
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        this.zs = looper;
        this.TM = str;
        this.Ud = i;
        this.Ue = fVar;
        this.Uj = eVar;
        this.Ub = new d(null);
        this.Uh = new j();
        this.Ty = flVar;
        this.Uc = cgVar;
        if (iL()) {
            bc(ce.ju().jw());
        }
    }

    public o(Context context, TagManager tagManager, Looper looper, String str, int i, r rVar) {
        this(context, tagManager, looper, str, i, new cq(context, str), new cp(context, str, rVar), fn.eI(), new bf(30, 900000, 5000, "refreshing", fn.eI()));
    }

    private synchronized void a(j jVar) {
        if (this.Ue != null) {
            com.google.android.gms.internal.jd.a aVar = new com.google.android.gms.internal.jd.a();
            aVar.Yb = this.TR;
            aVar.fV = new com.google.android.gms.internal.c.f();
            aVar.Yc = jVar;
            this.Ue.b(aVar);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void a(com.google.android.gms.internal.c.j r9, long r10, boolean r12) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.o.a(com.google.android.gms.internal.c$j, long, boolean):void");
        /*
        r8 = this;
        r6 = 43200000; // 0x2932e00 float:2.1626111E-37 double:2.1343636E-316;
        monitor-enter(r8);
        if (r12 == 0) goto L_0x000c;
    L_0x0006:
        r0 = r8.Ug;	 Catch:{ all -> 0x006a }
        if (r0 == 0) goto L_0x000c;
    L_0x000a:
        monitor-exit(r8);
        return;
    L_0x000c:
        r0 = r8.isReady();	 Catch:{ all -> 0x006a }
        if (r0 == 0) goto L_0x0016;
    L_0x0012:
        r0 = r8.Uf;	 Catch:{ all -> 0x006a }
        if (r0 != 0) goto L_0x0016;
    L_0x0016:
        r8.Uh = r9;	 Catch:{ all -> 0x006a }
        r8.TR = r10;	 Catch:{ all -> 0x006a }
        r0 = 0;
        r2 = 43200000; // 0x2932e00 float:2.1626111E-37 double:2.1343636E-316;
        r4 = r8.TR;	 Catch:{ all -> 0x006a }
        r4 = r4 + r6;
        r6 = r8.Ty;	 Catch:{ all -> 0x006a }
        r6 = r6.currentTimeMillis();	 Catch:{ all -> 0x006a }
        r4 = r4 - r6;
        r2 = java.lang.Math.min(r2, r4);	 Catch:{ all -> 0x006a }
        r0 = java.lang.Math.max(r0, r2);	 Catch:{ all -> 0x006a }
        r8.s(r0);	 Catch:{ all -> 0x006a }
        r0 = new com.google.android.gms.tagmanager.Container;	 Catch:{ all -> 0x006a }
        r1 = r8.mContext;	 Catch:{ all -> 0x006a }
        r2 = r8.TY;	 Catch:{ all -> 0x006a }
        r2 = r2.getDataLayer();	 Catch:{ all -> 0x006a }
        r3 = r8.TM;	 Catch:{ all -> 0x006a }
        r4 = r10;
        r6 = r9;
        r0.<init>(r1, r2, r3, r4, r6);	 Catch:{ all -> 0x006a }
        r1 = r8.Uf;	 Catch:{ all -> 0x006a }
        if (r1 != 0) goto L_0x006d;
    L_0x0049:
        r1 = new com.google.android.gms.tagmanager.n;	 Catch:{ all -> 0x006a }
        r2 = r8.TY;	 Catch:{ all -> 0x006a }
        r3 = r8.zs;	 Catch:{ all -> 0x006a }
        r4 = r8.Ub;	 Catch:{ all -> 0x006a }
        r1.<init>(r2, r3, r0, r4);	 Catch:{ all -> 0x006a }
        r8.Uf = r1;	 Catch:{ all -> 0x006a }
    L_0x0056:
        r1 = r8.isReady();	 Catch:{ all -> 0x006a }
        if (r1 != 0) goto L_0x000a;
    L_0x005c:
        r1 = r8.Uk;	 Catch:{ all -> 0x006a }
        r0 = r1.b(r0);	 Catch:{ all -> 0x006a }
        if (r0 == 0) goto L_0x000a;
    L_0x0064:
        r0 = r8.Uf;	 Catch:{ all -> 0x006a }
        r8.a(r0);	 Catch:{ all -> 0x006a }
        goto L_0x000a;
    L_0x006a:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
    L_0x006d:
        r1 = r8.Uf;	 Catch:{ all -> 0x006a }
        r1.a(r0);	 Catch:{ all -> 0x006a }
        goto L_0x0056;
        */
    }

    private boolean iL() {
        ce ju = ce.ju();
        return (ju.jv() == a.VX || ju.jv() == a.VY) && this.TM.equals(ju.getContainerId());
    }

    private synchronized void s(long j) {
        if (this.Uj == null) {
            bh.w("Refresh requested, but no network load scheduler.");
        } else {
            this.Uj.d(j, this.Uh.fW);
        }
    }

    private void z(boolean z) {
        this.Ue.a(new b(null));
        this.Uj.a(new c(null));
        com.google.android.gms.tagmanager.cr.c bP = this.Ue.bP(this.Ud);
        if (bP != null) {
            this.Uf = new n(this.TY, this.zs, new Container(this.mContext, this.TY.getDataLayer(), this.TM, 0, bP), this.Ub);
        }
        this.Uk = new AnonymousClass_2(z);
        if (iL()) {
            this.Uj.d(0, AdTrackerConstants.BLANK);
        } else {
            this.Ue.iN();
        }
    }

    protected ContainerHolder O(Status status) {
        if (this.Uf != null) {
            return this.Uf;
        }
        if (status == Status.zS) {
            bh.t("timer expired: setting result to failure");
        }
        return new n(status);
    }

    synchronized void bc(String str) {
        this.Ui = str;
        if (this.Uj != null) {
            this.Uj.bf(str);
        }
    }

    protected /* synthetic */ Result d(Status status) {
        return O(status);
    }

    synchronized String iF() {
        return this.Ui;
    }

    public void iI() {
        com.google.android.gms.tagmanager.cr.c bP = this.Ue.bP(this.Ud);
        if (bP != null) {
            a(new n(this.TY, this.zs, new Container(this.mContext, this.TY.getDataLayer(), this.TM, 0, bP), new com.google.android.gms.tagmanager.n.a() {
                public void bc(String str) {
                    o.this.bc(str);
                }

                public String iF() {
                    return o.this.iF();
                }

                public void iH() {
                    bh.w("Refresh ignored: container loaded as default only.");
                }
            }));
        } else {
            String str = "Default was requested, but no default container was found";
            bh.t(str);
            a(O(new Status(10, str, null)));
        }
        this.Uj = null;
        this.Ue = null;
    }

    public void iJ() {
        z(false);
    }

    public void iK() {
        z(true);
    }
}