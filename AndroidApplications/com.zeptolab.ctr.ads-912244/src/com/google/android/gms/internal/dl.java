package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appstate.AppStateBuffer;
import com.google.android.gms.appstate.AppStateManager.StateConflictResult;
import com.google.android.gms.appstate.AppStateManager.StateDeletedResult;
import com.google.android.gms.appstate.AppStateManager.StateListResult;
import com.google.android.gms.appstate.AppStateManager.StateLoadedResult;
import com.google.android.gms.appstate.AppStateManager.StateResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class dl extends eh {
    private final String vi;

    final class a extends dk {
        private final com.google.android.gms.common.api.a.c vj;

        public a(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Result holder must not be null");
        }

        public void b(int i, int i2) {
            dl.this.a(new b(this.vj, new Status(i), i2));
        }
    }

    final class b extends b implements StateDeletedResult {
        private final Status vl;
        private final int vm;

        public b(com.google.android.gms.common.api.a.c cVar, Status status, int i) {
            super(cVar);
            this.vl = status;
            this.vm = i;
        }

        public /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        public void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
        }

        public int getStateKey() {
            return this.vm;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    final class c extends dk {
        private final com.google.android.gms.common.api.a.c vj;

        public c(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Result holder must not be null");
        }

        public void a(DataHolder dataHolder) {
            dl.this.a(new d(this.vj, new Status(dataHolder.getStatusCode()), dataHolder));
        }
    }

    final class d extends com.google.android.gms.internal.eh.d implements StateListResult {
        private final Status vl;
        private final AppStateBuffer vn;

        public d(com.google.android.gms.common.api.a.c cVar, Status status, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.vl = status;
            this.vn = new AppStateBuffer(dataHolder);
        }

        public void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public AppStateBuffer getStateBuffer() {
            return this.vn;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    final class e extends dk {
        private final com.google.android.gms.common.api.a.c vj;

        public e(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Result holder must not be null");
        }

        public void a(int i, DataHolder dataHolder) {
            dl.this.a(new f(this.vj, i, dataHolder));
        }
    }

    final class f extends com.google.android.gms.internal.eh.d implements StateConflictResult, StateLoadedResult, StateResult {
        private final Status vl;
        private final int vm;
        private final AppStateBuffer vn;

        public f(com.google.android.gms.common.api.a.c cVar, int i, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.vm = i;
            this.vl = new Status(dataHolder.getStatusCode());
            this.vn = new AppStateBuffer(dataHolder);
        }

        private boolean cQ() {
            return this.vl.getStatusCode() == 2000;
        }

        public void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public StateConflictResult getConflictResult() {
            return cQ() ? this : null;
        }

        public StateLoadedResult getLoadedResult() {
            return cQ() ? null : this;
        }

        public byte[] getLocalData() {
            return this.vn.getCount() == 0 ? null : this.vn.get(0).getLocalData();
        }

        public String getResolvedVersion() {
            return this.vn.getCount() == 0 ? null : this.vn.get(0).getConflictVersion();
        }

        public byte[] getServerData() {
            return this.vn.getCount() == 0 ? null : this.vn.get(0).getConflictData();
        }

        public int getStateKey() {
            return this.vm;
        }

        public Status getStatus() {
            return this.vl;
        }

        public void release() {
            this.vn.close();
        }
    }

    final class g extends dk {
        com.google.android.gms.common.api.a.c vj;

        public g(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void cM() {
            dl.this.a(new h(this.vj, new Status(0)));
        }
    }

    final class h extends b {
        private final Status vl;

        public h(com.google.android.gms.common.api.a.c cVar, Status status) {
            super(cVar);
            this.vl = status;
        }

        public /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        public void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this.vl);
        }

        protected void cP() {
        }
    }

    public dl(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, String[] strArr) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, strArr);
        this.vi = (String) er.f(str);
    }

    public void a(com.google.android.gms.common.api.a.c cVar) {
        try {
            ((dn) eb()).a(new c(cVar));
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i) {
        try {
            ((dn) eb()).b(new a(cVar), i);
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i, String str, byte[] bArr) {
        try {
            ((dn) eb()).a(new e(cVar), i, str, bArr);
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.google.android.gms.common.api.a.c r3, int r4, byte[] r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.dl.a(com.google.android.gms.common.api.a$c, int, byte[]):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x000e;
    L_0x0002:
        r0 = 0;
        r1 = r0;
    L_0x0004:
        r0 = r2.eb();	 Catch:{ RemoteException -> 0x0015 }
        r0 = (com.google.android.gms.internal.dn) r0;	 Catch:{ RemoteException -> 0x0015 }
        r0.a(r1, r4, r5);	 Catch:{ RemoteException -> 0x0015 }
    L_0x000d:
        return;
    L_0x000e:
        r0 = new com.google.android.gms.internal.dl$e;	 Catch:{ RemoteException -> 0x0015 }
        r0.<init>(r3);	 Catch:{ RemoteException -> 0x0015 }
        r1 = r0;
        goto L_0x0004;
    L_0x0015:
        r0 = move-exception;
        r0 = "AppStateClient";
        r1 = "service died";
        android.util.Log.w(r0, r1);
        goto L_0x000d;
        */
    }

    protected void a(en enVar, com.google.android.gms.internal.eh.e eVar) {
        enVar.a((em)eVar, (int)GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE, getContext().getPackageName(), this.vi, ea());
    }

    protected String aF() {
        return "com.google.android.gms.appstate.service.START";
    }

    protected String aG() {
        return "com.google.android.gms.appstate.internal.IAppStateService";
    }

    public void b(com.google.android.gms.common.api.a.c cVar) {
        try {
            ((dn) eb()).b(new g(cVar));
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
        }
    }

    public void b(com.google.android.gms.common.api.a.c cVar, int i) {
        try {
            ((dn) eb()).a(new e(cVar), i);
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
        }
    }

    protected void b(String... strArr) {
        int i = 0;
        boolean z = false;
        while (i < strArr.length) {
            if (strArr[i].equals(Scopes.APP_STATE)) {
                z = true;
            }
            i++;
        }
        er.a(z, String.format("App State APIs requires %s to function.", new Object[]{Scopes.APP_STATE}));
    }

    public int cN() {
        int i = GoogleScorer.CLIENT_PLUS;
        try {
            return ((dn) eb()).cN();
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
            return i;
        }
    }

    public int cO() {
        int i = GoogleScorer.CLIENT_PLUS;
        try {
            return ((dn) eb()).cO();
        } catch (RemoteException e) {
            Log.w("AppStateClient", "service died");
            return i;
        }
    }

    protected /* synthetic */ IInterface p(IBinder iBinder) {
        return s(iBinder);
    }

    protected dn s(IBinder iBinder) {
        return com.google.android.gms.internal.dn.a.u(iBinder);
    }
}