package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.ContainerHolder.ContainerAvailableListener;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;

class n implements ContainerHolder {
    private Container TU;
    private Container TV;
    private b TW;
    private a TX;
    private TagManager TY;
    private Status vl;
    private boolean zk;
    private final Looper zs;

    public static interface a {
        void bc(String str);

        String iF();

        void iH();
    }

    private class b extends Handler {
        private final ContainerAvailableListener TZ;

        public b(ContainerAvailableListener containerAvailableListener, Looper looper) {
            super(looper);
            this.TZ = containerAvailableListener;
        }

        public void bd(String str) {
            sendMessage(obtainMessage(1, str));
        }

        protected void be(String str) {
            this.TZ.onContainerAvailable(n.this, str);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case GoogleScorer.CLIENT_GAMES:
                    be((String) message.obj);
                default:
                    bh.t("Don't know how to handle this message.");
            }
        }
    }

    public n(Status status) {
        this.vl = status;
        this.zs = null;
    }

    public n(TagManager tagManager, Looper looper, Container container, a aVar) {
        this.TY = tagManager;
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        this.zs = looper;
        this.TU = container;
        this.TX = aVar;
        this.vl = Status.zQ;
        tagManager.a(this);
    }

    private void iG() {
        if (this.TW != null) {
            this.TW.bd(this.TV.iD());
        }
    }

    public synchronized void a(Container container) {
        if (!this.zk) {
            if (container == null) {
                bh.t("Unexpected null container.");
            } else {
                this.TV = container;
                iG();
            }
        }
    }

    public synchronized void ba(String str) {
        if (!this.zk) {
            this.TU.ba(str);
        }
    }

    void bc(String str) {
        if (this.zk) {
            bh.t("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.TX.bc(str);
        }
    }

    public synchronized Container getContainer() {
        Container container = null;
        synchronized (this) {
            if (this.zk) {
                bh.t("ContainerHolder is released.");
            } else {
                if (this.TV != null) {
                    this.TU = this.TV;
                    this.TV = null;
                }
                container = this.TU;
            }
        }
        return container;
    }

    String getContainerId() {
        if (!this.zk) {
            return this.TU.getContainerId();
        }
        bh.t("getContainerId called on a released ContainerHolder.");
        return AdTrackerConstants.BLANK;
    }

    public Status getStatus() {
        return this.vl;
    }

    String iF() {
        if (!this.zk) {
            return this.TX.iF();
        }
        bh.t("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return AdTrackerConstants.BLANK;
    }

    public synchronized void refresh() {
        if (this.zk) {
            bh.t("Refreshing a released ContainerHolder.");
        } else {
            this.TX.iH();
        }
    }

    public synchronized void release() {
        if (this.zk) {
            bh.t("Releasing a released ContainerHolder.");
        } else {
            this.zk = true;
            this.TY.b(this);
            this.TU.release();
            this.TU = null;
            this.TV = null;
            this.TX = null;
            this.TW = null;
        }
    }

    public synchronized void setContainerAvailableListener(ContainerAvailableListener containerAvailableListener) {
        if (this.zk) {
            bh.t("ContainerHolder is released.");
        } else if (containerAvailableListener == null) {
            this.TW = null;
        } else {
            this.TW = new b(containerAvailableListener, this.zs);
            if (this.TV != null) {
                iG();
            }
        }
    }
}