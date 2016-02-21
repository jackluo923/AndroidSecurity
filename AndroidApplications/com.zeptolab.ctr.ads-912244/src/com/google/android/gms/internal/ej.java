package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class ej implements Callback {
    private static final Object BQ;
    private static ej BR;
    private final HashMap BS;
    private final Handler mHandler;
    private final Context qe;

    final class a {
        private final String BT;
        private final a BU;
        private final HashSet BV;
        private boolean BW;
        private IBinder BX;
        private ComponentName BY;
        private int mState;

        public class a implements ServiceConnection {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (a.this.BZ.BS) {
                    a.this.BX = iBinder;
                    a.this.BY = componentName;
                    Iterator it = a.this.BV.iterator();
                    while (it.hasNext()) {
                        ((f) it.next()).onServiceConnected(componentName, iBinder);
                    }
                    a.this.mState = 1;
                }
            }

            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (a.this.BZ.BS) {
                    a.this.BX = null;
                    a.this.BY = componentName;
                    Iterator it = a.this.BV.iterator();
                    while (it.hasNext()) {
                        ((f) it.next()).onServiceDisconnected(componentName);
                    }
                    a.this.mState = GoogleScorer.CLIENT_PLUS;
                }
            }
        }

        public a(String str) {
            this.BT = str;
            this.BU = new a();
            this.BV = new HashSet();
            this.mState = 0;
        }

        public void a_(f fVar) {
            this.BV.add(fVar);
        }

        public void b(f fVar) {
            this.BV.remove(fVar);
        }

        public boolean c(f fVar) {
            return this.BV.contains(fVar);
        }

        public a ee() {
            return this.BU;
        }

        public String ef() {
            return this.BT;
        }

        public boolean eg() {
            return this.BV.isEmpty();
        }

        public IBinder getBinder() {
            return this.BX;
        }

        public ComponentName getComponentName() {
            return this.BY;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.BW;
        }

        public void w(boolean z) {
            this.BW = z;
        }
    }

    static {
        BQ = new Object();
    }

    private ej(Context context) {
        this.mHandler = new Handler(context.getMainLooper(), this);
        this.BS = new HashMap();
        this.qe = context.getApplicationContext();
    }

    public static ej y(Context context) {
        synchronized (BQ) {
            if (BR == null) {
                BR = new ej(context.getApplicationContext());
            }
        }
        return BR;
    }

    public boolean a(String str, f fVar) {
        boolean isBound;
        synchronized (this.BS) {
            a aVar = (a) this.BS.get(str);
            if (aVar == null) {
                aVar = new a(str);
                aVar.a(fVar);
                aVar.w(this.qe.bindService(new Intent(str).setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE), aVar.ee(), 129));
                this.BS.put(str, aVar);
            } else {
                this.mHandler.removeMessages(0, aVar);
                if (aVar.c(fVar)) {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + str);
                }
                aVar.a(fVar);
                switch (aVar.getState()) {
                    case GoogleScorer.CLIENT_GAMES:
                        fVar.onServiceConnected(aVar.getComponentName(), aVar.getBinder());
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        aVar.w(this.qe.bindService(new Intent(str).setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE), aVar.ee(), 129));
                        break;
                    default:
                        break;
                }
            }
            isBound = aVar.isBound();
        }
        return isBound;
    }

    public void b(String str, f fVar) {
        synchronized (this.BS) {
            a aVar = (a) this.BS.get(str);
            if (aVar == null) {
                throw new IllegalStateException("Nonexistent connection status for service action: " + str);
            } else if (aVar.c(fVar)) {
                aVar.b(fVar);
                if (aVar.eg()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, aVar), 5000);
                }
            } else {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + str);
            }
        }
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                a aVar = (a) message.obj;
                synchronized (this.BS) {
                    if (aVar.eg()) {
                        this.qe.unbindService(aVar.ee());
                        this.BS.remove(aVar.ef());
                    }
                }
                return true;
            default:
                return false;
        }
    }
}