package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.er;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

abstract class ca implements PendingResult {
    private a VK;
    private final Object zd;
    private final CountDownLatch zf;
    private final ArrayList zg;
    private ResultCallback zh;
    private volatile Result zi;
    private volatile boolean zj;

    public static class a extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public void a_(ResultCallback resultCallback, Result result) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, result)));
        }

        public void a_(ca caVar, long j) {
            sendMessageDelayed(obtainMessage(GoogleScorer.CLIENT_PLUS, caVar), j);
        }

        protected void b(ResultCallback resultCallback, Result result) {
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
                    ca caVar = (ca) message.obj;
                    caVar.a(caVar.d(Status.zS));
                default:
                    bh.t("Don't know how to handle this message.");
            }
        }
    }

    public ca(Looper looper) {
        this.zd = new Object();
        this.zf = new CountDownLatch(1);
        this.zg = new ArrayList();
        this.VK = new a(looper);
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

    public final void a(Result result) {
        synchronized (this.zd) {
            if (isReady()) {
            } else {
                er.a(!this.zj, "Result has already been consumed");
                this.zi = result;
                this.zf.countDown();
                Status status = this.zi.getStatus();
                if (this.zh != null) {
                    this.VK.dw();
                    this.VK.a(this.zh, ds());
                }
                Iterator it = this.zg.iterator();
                while (it.hasNext()) {
                    ((com.google.android.gms.common.api.PendingResult.a) it.next()).k(status);
                }
                this.zg.clear();
            }
        }
    }

    public Result await() {
        er.a(!this.zj, "Results has already been consumed");
        try {
            this.zf.await();
        } catch (InterruptedException e) {
            a(d(Status.zR));
        }
        er.a(isReady(), "Result is not ready.");
        return ds();
    }

    public Result await(long j, TimeUnit timeUnit) {
        er.a(!this.zj, "Result has already been consumed.");
        try {
            if (!this.zf.await(j, timeUnit)) {
                a(d(Status.zS));
            }
        } catch (InterruptedException e) {
            a(d(Status.zR));
        }
        er.a(isReady(), "Result is not ready.");
        return ds();
    }

    protected abstract Result d(Status status);

    void dt() {
        this.zj = true;
        this.zi = null;
    }

    public boolean isReady() {
        return this.zf.getCount() == 0;
    }

    public final void setResultCallback(ResultCallback resultCallback) {
        er.a(!this.zj, "Result has already been consumed.");
        synchronized (this.zd) {
            if (isReady()) {
                this.VK.a(resultCallback, ds());
            } else {
                this.zh = resultCallback;
            }
        }
    }

    public final void setResultCallback(ResultCallback resultCallback, long j, TimeUnit timeUnit) {
        er.a(!this.zj, "Result has already been consumed.");
        synchronized (this.zd) {
            if (isReady()) {
                this.VK.a(resultCallback, ds());
            } else {
                this.zh = resultCallback;
                this.VK.a(this, timeUnit.toMillis(j));
            }
        }
    }
}