package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.er;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class a {

    public static interface c {
        void b(Object obj);
    }

    public static abstract class a implements PendingResult, com.google.android.gms.common.api.a.c, c {
        private final com.google.android.gms.common.api.Api.b zc;
        private final Object zd;
        private com.google.android.gms.common.api.a.b ze;
        private final CountDownLatch zf;
        private final ArrayList zg;
        private ResultCallback zh;
        private volatile Result zi;
        private volatile boolean zj;
        private boolean zk;
        private boolean zl;
        private a zm;

        protected a() {
            this((com.google.android.gms.common.api.Api.b) 0);
        }

        protected a(com.google.android.gms.common.api.Api.b bVar) {
            this.zd = new Object();
            this.zf = new CountDownLatch(1);
            this.zg = new ArrayList();
            this.zc = bVar;
        }

        private void a_(RemoteException remoteException) {
            a(d(new Status(8, remoteException.getLocalizedMessage(), null)));
        }

        private Result ds() {
            Result result;
            synchronized (this.zd) {
                er.a(!this.zj, "Result has already been consumed.");
                er.a(isReady(), "Result is not ready.");
                result = this.zi;
                dt();
            }
            return result;
        }

        private void dv() {
            if (this.zi != null && this instanceof Releasable) {
                try {
                    ((Releasable) this).release();
                } catch (Exception e) {
                    Log.w("GoogleApi", "Unable to release " + this, e);
                }
            }
        }

        protected abstract void a_(com.google.android.gms.common.api.Api.a aVar);

        public final void a_(Result result) {
            boolean z = true;
            synchronized (this.zd) {
                if (this.zl) {
                    if (result instanceof Releasable) {
                        ((Releasable) result).release();
                    }
                } else {
                    er.a(!isReady(), "Results have already been set");
                    if (this.zj) {
                        z = false;
                    }
                    er.a(z, "Result has already been consumed");
                    this.zi = result;
                    if (this.zk) {
                        dv();
                    } else {
                        this.zf.countDown();
                        Status status = this.zi.getStatus();
                        if (this.zh != null) {
                            this.ze.dw();
                            this.ze.a(this.zh, ds());
                        }
                        Iterator it = this.zg.iterator();
                        while (it.hasNext()) {
                            ((com.google.android.gms.common.api.PendingResult.a) it.next()).k(status);
                        }
                        this.zg.clear();
                    }
                }
            }
        }

        public void a_(a aVar) {
            this.zm = aVar;
        }

        public final Result await() {
            boolean z = false;
            er.a(!this.zj, "Results has already been consumed");
            if (isReady() || Looper.myLooper() != Looper.getMainLooper()) {
                z = true;
            }
            er.a(z, "await must not be called on the UI thread");
            try {
                this.zf.await();
            } catch (InterruptedException e) {
                synchronized (this.zd) {
                }
                a(d(Status.zR));
                this.zl = true;
            }
            er.a(isReady(), "Result is not ready.");
            return ds();
        }

        public final Result await(long j, TimeUnit timeUnit) {
            boolean z = false;
            er.a(!this.zj, "Result has already been consumed.");
            if (isReady() || Looper.myLooper() != Looper.getMainLooper()) {
                z = true;
            }
            er.a(z, "await must not be called on the UI thread");
            try {
                if (!this.zf.await(j, timeUnit)) {
                    synchronized (this.zd) {
                        a(d(Status.zS));
                        this.zl = true;
                    }
                }
            } catch (InterruptedException e) {
                synchronized (this.zd) {
                }
                a(d(Status.zR));
                this.zl = true;
            }
            er.a(isReady(), "Result is not ready.");
            return ds();
        }

        public final void b(com.google.android.gms.common.api.Api.a aVar) {
            this.ze = new com.google.android.gms.common.api.a.b(aVar.getLooper());
            try {
                a(aVar);
            } catch (DeadObjectException e) {
                RemoteException remoteException = e;
                a(remoteException);
                throw remoteException;
            } catch (RemoteException e2) {
                a(e2);
            }
        }

        public /* synthetic */ void b(Object obj) {
            a((Result) obj);
        }

        protected abstract Result d(Status status);

        public final com.google.android.gms.common.api.Api.b dp() {
            return this.zc;
        }

        public int dr() {
            return 0;
        }

        void dt() {
            this.zj = true;
            this.zi = null;
            if (this.zm != null) {
                this.zm.b(this);
            }
        }

        public void du() {
            dv();
            this.zk = true;
        }

        public final boolean isReady() {
            return this.zf.getCount() == 0;
        }

        public final void setResultCallback(ResultCallback resultCallback) {
            er.a(!this.zj, "Result has already been consumed.");
            synchronized (this.zd) {
                if (isReady()) {
                    this.ze.a(resultCallback, ds());
                } else {
                    this.zh = resultCallback;
                }
            }
        }

        public final void setResultCallback(ResultCallback resultCallback, long j, TimeUnit timeUnit) {
            er.a(!this.zj, "Result has already been consumed.");
            synchronized (this.zd) {
                if (isReady()) {
                    this.ze.a(resultCallback, ds());
                } else {
                    this.zh = resultCallback;
                    this.ze.a(this, timeUnit.toMillis(j));
                }
            }
        }
    }

    public static class b extends Handler {
        public b() {
            this(Looper.getMainLooper());
        }

        public b(Looper looper) {
            super(looper);
        }

        public void a(ResultCallback resultCallback, Result result) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, result)));
        }

        public void a(com.google.android.gms.common.api.a.a aVar, long j) {
            sendMessageDelayed(obtainMessage(GoogleScorer.CLIENT_PLUS, aVar), j);
        }

        protected void b_(ResultCallback resultCallback, Result result) {
            resultCallback.onResult(result);
        }

        public void dw() {
            removeMessages(GoogleScorer.CLIENT_PLUS);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case GoogleScorer.CLIENT_GAMES:
                    Pair pair = (Pair) message.obj;
                    b((ResultCallback) pair.first, (Result) pair.second);
                case GoogleScorer.CLIENT_PLUS:
                    com.google.android.gms.common.api.a.a aVar = (com.google.android.gms.common.api.a.a) message.obj;
                    aVar.a(aVar.d(Status.zS));
                default:
                    Log.wtf("GoogleApi", "Don't know how to handle this message.");
            }
        }
    }
}