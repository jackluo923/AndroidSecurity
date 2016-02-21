package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import java.util.Iterator;

public final class aw {
    private final bf kH;
    private final Context mContext;
    private final cd mf;
    private final Object mg;
    private final ay mh;
    private boolean mi;
    private bb mj;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ bc mk;

        AnonymousClass_1(bc bcVar) {
            this.mk = bcVar;
        }

        public void run() {
            try {
                this.mk.mN.destroy();
            } catch (RemoteException e) {
                da.b("Could not destroy mediation adapter.", e);
            }
        }
    }

    public aw(Context context, cd cdVar, bf bfVar, ay ayVar) {
        this.mg = new Object();
        this.mi = false;
        this.mContext = context;
        this.mf = cdVar;
        this.kH = bfVar;
        this.mh = ayVar;
    }

    public bc a(long j, long j2) {
        da.s("Starting mediation.");
        Iterator it = this.mh.mr.iterator();
        while (it.hasNext()) {
            ax axVar = (ax) it.next();
            da.u("Trying mediation network: " + axVar.mm);
            Iterator it2 = axVar.mn.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                synchronized (this.mg) {
                    bc bcVar;
                    if (this.mi) {
                        bcVar = new bc(-1);
                        return bcVar;
                    } else {
                        this.mj = new bb(this.mContext, str, this.kH, this.mh, axVar, this.mf.oc, this.mf.kQ, this.mf.kN);
                        bcVar = this.mj.b(j, j2);
                        if (bcVar.mL == 0) {
                            da.s("Adapter succeeded.");
                            return bcVar;
                        } else if (bcVar.mN != null) {
                            cz.pT.post(new AnonymousClass_1(bcVar));
                        }
                    }
                }
            }
        }
        return new bc(1);
    }

    public void cancel() {
        synchronized (this.mg) {
            this.mi = true;
            if (this.mj != null) {
                this.mj.cancel();
            }
        }
    }
}