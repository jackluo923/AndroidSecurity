package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.google.android.gms.analytics.u.a;

class r extends af {
    private static final Object ri;
    private static r ru;
    private Context mContext;
    private Handler mHandler;
    private d rj;
    private volatile f rk;
    private int rl;
    private boolean rm;
    private boolean rn;
    private String ro;
    private boolean rp;
    private boolean rq;
    private e rr;
    private q rs;
    private boolean rt;

    static {
        ri = new Object();
    }

    private r() {
        this.rl = 1800;
        this.rm = true;
        this.rp = true;
        this.rq = true;
        this.rr = new e() {
            public void p(boolean z) {
                r.this.a(z, r.this.rp);
            }
        };
        this.rt = false;
    }

    public static r bB() {
        if (ru == null) {
            ru = new r();
        }
        return ru;
    }

    private void bC() {
        this.rs = new q(this);
        this.rs.o(this.mContext);
    }

    private void bD() {
        this.mHandler = new Handler(this.mContext.getMainLooper(), new Callback() {
            public boolean handleMessage(Message message) {
                if (1 == message.what && ri.equals(message.obj)) {
                    u.bR().r(true);
                    r.this.dispatchLocalHits();
                    u.bR().r(false);
                    if (r.this.rl > 0 && !r.this.rt) {
                        r.this.mHandler.sendMessageDelayed(r.this.mHandler.obtainMessage(1, ri), (long) (r.this.rl * 1000));
                    }
                }
                return true;
            }
        });
        if (this.rl > 0) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, ri), (long) (this.rl * 1000));
        }
    }

    synchronized void a(Context context, f fVar) {
        if (this.mContext == null) {
            this.mContext = context.getApplicationContext();
            if (this.rk == null) {
                this.rk = fVar;
                if (this.rm) {
                    dispatchLocalHits();
                    this.rm = false;
                }
                if (this.rn) {
                    br();
                    this.rn = false;
                }
            }
        }
    }

    synchronized void a(boolean z, boolean z2) {
        if (!(this.rt == z && this.rp == z2)) {
            String str;
            if (z || !z2) {
                if (this.rl > 0) {
                    this.mHandler.removeMessages(1, ri);
                }
            }
            if (!z && z2 && this.rl > 0) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, ri), (long) (this.rl * 1000));
            }
            StringBuilder append = new StringBuilder().append("PowerSaveMode ");
            str = (z || !z2) ? "initiated." : "terminated.";
            aa.v(append.append(str).toString());
            this.rt = z;
            this.rp = z2;
        }
    }

    synchronized d bE() {
        if (this.rj == null && this.mContext == null) {
            throw new IllegalStateException("Cant get a store unless we have a context");
        }
        this.rj = new ac(this.rr, this.mContext);
        if (this.ro != null) {
            this.rj.bq().A(this.ro);
            this.ro = null;
        }
        if (this.mHandler == null) {
            bD();
        }
        if (this.rs == null && this.rq) {
            bC();
        }
        return this.rj;
    }

    synchronized void bF() {
        if (!this.rt && this.rp && this.rl > 0) {
            this.mHandler.removeMessages(1, ri);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, ri));
        }
    }

    void br() {
        if (this.rk == null) {
            aa.v("setForceLocalDispatch() queued. It will be called once initialization is complete.");
            this.rn = true;
        } else {
            u.bR().a(a.tq);
            this.rk.br();
        }
    }

    synchronized void dispatchLocalHits() {
        if (this.rk == null) {
            aa.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.rm = true;
        } else {
            u.bR().a(a.td);
            this.rk.bp();
        }
    }

    synchronized void q(boolean z) {
        a(this.rt, z);
    }

    synchronized void setLocalDispatchPeriod(int i) {
        if (this.mHandler == null) {
            aa.v("Dispatch period set with null handler. Dispatch will run once initialization is complete.");
            this.rl = i;
        } else {
            u.bR().a(a.te);
            if (!this.rt && this.rp && this.rl > 0) {
                this.mHandler.removeMessages(1, ri);
            }
            this.rl = i;
            if (i > 0 && !this.rt && this.rp) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, ri), (long) (i * 1000));
            }
        }
    }
}