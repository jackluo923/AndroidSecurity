package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.eh;
import com.google.android.gms.internal.en;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.io;
import com.google.android.gms.internal.ir;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public class e extends eh implements GooglePlayServicesClient {
    private Person Rd;
    private final h Re;

    final class a extends a {
        private final com.google.android.gms.common.api.a.c QI;

        public a(com.google.android.gms.common.api.a.c cVar) {
            this.QI = cVar;
        }

        public void L(Status status) {
            e.this.a(new d(this.QI, status));
        }
    }

    final class b extends a {
        private final com.google.android.gms.common.api.a.c QI;

        public b(com.google.android.gms.common.api.a.c cVar) {
            this.QI = cVar;
        }

        public void a(DataHolder dataHolder, String str, String str2) {
            DataHolder dataHolder2;
            Status status = new Status(dataHolder.getStatusCode(), null, dataHolder.getMetadata() != null ? (PendingIntent) dataHolder.getMetadata().getParcelable("pendingIntent") : null);
            if (status.isSuccess() || dataHolder == null) {
                dataHolder2 = dataHolder;
            } else {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder2 = null;
            }
            e.this.a(new c(this.QI, status, dataHolder2, str, str2));
        }
    }

    final class c extends com.google.android.gms.internal.eh.d implements LoadMomentsResult {
        private final String Dh;
        private final String Rg;
        private MomentBuffer Rh;
        private final Status vl;

        public c(com.google.android.gms.common.api.a.c cVar, Status status, DataHolder dataHolder, String str, String str2) {
            super(cVar, dataHolder);
            this.vl = status;
            this.Dh = str;
            this.Rg = str2;
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            this.Rh = dataHolder != null ? new MomentBuffer(dataHolder) : null;
            cVar.b(this);
        }

        public MomentBuffer getMomentBuffer() {
            return this.Rh;
        }

        public String getNextPageToken() {
            return this.Dh;
        }

        public Status getStatus() {
            return this.vl;
        }

        public String getUpdated() {
            return this.Rg;
        }

        public void release() {
            if (this.Rh != null) {
                this.Rh.close();
            }
        }
    }

    final class d extends b {
        private final Status vl;

        public d(com.google.android.gms.common.api.a.c cVar, Status status) {
            super(cVar);
            this.vl = status;
        }

        protected /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c(com.google.android.gms.common.api.a.c cVar) {
            if (cVar != null) {
                cVar.b(this.vl);
            }
        }

        protected void cP() {
        }
    }

    final class e extends a {
        private final com.google.android.gms.common.api.a.c QI;

        public e(com.google.android.gms.common.api.a.c cVar) {
            this.QI = cVar;
        }

        public void a(DataHolder dataHolder, String str) {
            DataHolder dataHolder2;
            Status status = new Status(dataHolder.getStatusCode(), null, dataHolder.getMetadata() != null ? (PendingIntent) dataHolder.getMetadata().getParcelable("pendingIntent") : null);
            if (status.isSuccess() || dataHolder == null) {
                dataHolder2 = dataHolder;
            } else {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder2 = null;
            }
            e.this.a(new f(this.QI, status, dataHolder2, str));
        }
    }

    final class f extends com.google.android.gms.internal.eh.d implements LoadPeopleResult {
        private final String Dh;
        private PersonBuffer Ri;
        private final Status vl;

        public f(com.google.android.gms.common.api.a.c cVar, Status status, DataHolder dataHolder, String str) {
            super(cVar, dataHolder);
            this.vl = status;
            this.Dh = str;
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            this.Ri = dataHolder != null ? new PersonBuffer(dataHolder) : null;
            cVar.b(this);
        }

        public String getNextPageToken() {
            return this.Dh;
        }

        public PersonBuffer getPersonBuffer() {
            return this.Ri;
        }

        public Status getStatus() {
            return this.vl;
        }

        public void release() {
            if (this.Ri != null) {
                this.Ri.close();
            }
        }
    }

    final class g extends a {
        private final com.google.android.gms.common.api.a.c QI;

        public g(com.google.android.gms.common.api.a.c cVar) {
            this.QI = cVar;
        }

        public void d(int i, Bundle bundle) {
            e.this.a(new h(this.QI, new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null)));
        }
    }

    final class h extends b {
        private final Status vl;

        public h(com.google.android.gms.common.api.a.c cVar, Status status) {
            super(cVar);
            this.vl = status;
        }

        protected /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c(com.google.android.gms.common.api.a.c cVar) {
            e.this.disconnect();
            if (cVar != null) {
                cVar.b(this.vl);
            }
        }

        protected void cP() {
        }
    }

    public e(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, h hVar) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, hVar.hq());
        this.Re = hVar;
    }

    @Deprecated
    public e(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener, h hVar) {
        this(context, context.getMainLooper(), new com.google.android.gms.internal.eh.c(connectionCallbacks), new com.google.android.gms.internal.eh.g(onConnectionFailedListener), hVar);
    }

    protected void a(int i, IBinder iBinder, Bundle bundle) {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.Rd = ir.i(bundle.getByteArray("loaded_person"));
        }
        super.a(i, iBinder, bundle);
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i, String str) {
        bm();
        Object eVar = new e(cVar);
        try {
            ((d) eb()).a(eVar, 1, i, -1, str);
        } catch (RemoteException e) {
            eVar.a(DataHolder.empty(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), null);
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i, String str, Uri uri, String str2, String str3) {
        bm();
        Object bVar = cVar != null ? new b(cVar) : null;
        try {
            ((d) eb()).a(bVar, i, str, uri, str2, str3);
        } catch (RemoteException e) {
            bVar.a(DataHolder.empty(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), null, null);
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, Moment moment) {
        bm();
        if (cVar != null) {
            a aVar = new a(cVar);
        } else {
            Object obj = null;
        }
        try {
            ((d) eb()).a(bVar, fh.a((io) moment));
        } catch (RemoteException e) {
            th = e;
            if (bVar == null) {
                Throwable th2;
                throw new IllegalStateException(th2);
            }
            bVar.L(new Status(8, null, null));
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, Collection collection) {
        bm();
        b eVar = new e(cVar);
        try {
            ((d) eb()).a(eVar, new ArrayList(collection));
        } catch (RemoteException e) {
            eVar.a(DataHolder.empty(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), null);
        }
    }

    protected void a(en enVar, com.google.android.gms.internal.eh.e eVar) {
        Bundle hy = this.Re.hy();
        hy.putStringArray(GoogleAuthUtil.KEY_REQUEST_VISIBLE_ACTIVITIES, this.Re.hr());
        enVar.a(eVar, GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE, this.Re.hu(), this.Re.ht(), ea(), this.Re.getAccountName(), hy);
    }

    protected d aB(IBinder iBinder) {
        return com.google.android.gms.plus.internal.d.a.aA(iBinder);
    }

    protected String aF() {
        return "com.google.android.gms.plus.service.START";
    }

    protected String aG() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    public boolean aR(String str) {
        return Arrays.asList(ea()).contains(str);
    }

    public void c(com.google.android.gms.common.api.a.c cVar, String[] strArr) {
        a(cVar, Arrays.asList(strArr));
    }

    public void clearDefaultAccount() {
        bm();
        try {
            this.Rd = null;
            ((d) eb()).clearDefaultAccount();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public String getAccountName() {
        bm();
        try {
            return ((d) eb()).getAccountName();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public Person getCurrentPerson() {
        bm();
        return this.Rd;
    }

    public void i(com.google.android.gms.common.api.a.c cVar) {
        a(cVar, MMException.DISPLAY_AD_NOT_READY, null, null, null, "me");
    }

    public void i(com.google.android.gms.common.api.a.c cVar, String str) {
        a(cVar, 0, str);
    }

    public void j(com.google.android.gms.common.api.a.c cVar) {
        String str = null;
        bm();
        Object eVar = new e(cVar);
        try {
            ((d) eb()).a(eVar, GoogleScorer.CLIENT_PLUS, 1, -1, null);
        } catch (RemoteException e) {
            eVar.a(DataHolder.empty(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), str);
        }
    }

    public void k(com.google.android.gms.common.api.a.c cVar) {
        bm();
        clearDefaultAccount();
        Object gVar = new g(cVar);
        try {
            ((d) eb()).b(gVar);
        } catch (RemoteException e) {
            gVar.d(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, null);
        }
    }

    protected /* synthetic */ IInterface p(IBinder iBinder) {
        return aB(iBinder);
    }

    public void removeMoment(String str) {
        bm();
        try {
            ((d) eb()).removeMoment(str);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }
}