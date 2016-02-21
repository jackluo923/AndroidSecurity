package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.eh.e;
import com.google.android.gms.internal.eh.g;
import com.google.android.gms.panorama.Panorama.PanoramaResult;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class ih extends eh {

    final class a extends b implements com.google.android.gms.panorama.Panorama.a {
        public final Status QE;
        public final Intent QF;
        public final int type;

        public a(com.google.android.gms.common.api.a.c cVar, Status status, int i, Intent intent) {
            super(cVar);
            this.QE = status;
            this.type = i;
            this.QF = intent;
        }

        protected /* synthetic */ void a_(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
        }

        public Status getStatus() {
            return this.QE;
        }

        public Intent getViewerIntent() {
            return this.QF;
        }
    }

    final class b extends com.google.android.gms.internal.if_.a {
        private final com.google.android.gms.common.api.a.c QH;
        private final com.google.android.gms.common.api.a.c QI;
        private final Uri QJ;

        public b(com.google.android.gms.common.api.a.c cVar, com.google.android.gms.common.api.a.c cVar2, Uri uri) {
            this.QH = cVar;
            this.QI = cVar2;
            this.QJ = uri;
        }

        public void a(int i, Bundle bundle, int i2, Intent intent) {
            if (this.QJ != null) {
                ih.this.getContext().revokeUriPermission(this.QJ, 1);
            }
            Status status = new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null);
            if (this.QI != null) {
                ih.this.a(new c(this.QI, status, intent));
            } else if (this.QH != null) {
                ih.this.a(new a(this.QH, status, i2, intent));
            }
        }
    }

    final class c extends b implements PanoramaResult {
        private final Status QE;
        private final Intent QF;

        public c(com.google.android.gms.common.api.a.c cVar, Status status, Intent intent) {
            super(cVar);
            this.QE = status;
            this.QF = intent;
        }

        protected /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c_(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
        }

        public Status getStatus() {
            return this.QE;
        }

        public Intent getViewerIntent() {
            return this.QF;
        }
    }

    public ih(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, (String[]) 0);
    }

    @Deprecated
    public ih(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, context.getMainLooper(), new com.google.android.gms.internal.eh.c(connectionCallbacks), new g(onConnectionFailedListener));
    }

    public void a(com.google.android.gms.common.api.a.c cVar, Uri uri, boolean z) {
        a(new b(null, cVar, z ? uri : null), uri, null, z);
    }

    protected void a(en enVar, e eVar) {
        enVar.a(eVar, GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE, getContext().getPackageName(), new Bundle());
    }

    public void a(b bVar, Uri uri, Bundle bundle, boolean z) {
        bm();
        if (z) {
            getContext().grantUriPermission(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, uri, 1);
        }
        try {
            ((ig) eb()).a(bVar, uri, bundle, z);
        } catch (RemoteException e) {
            bVar.a(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, null, 0, null);
        }
    }

    protected String aF() {
        return "com.google.android.gms.panorama.service.START";
    }

    protected String aG() {
        return "com.google.android.gms.panorama.internal.IPanoramaService";
    }

    public ig ax(IBinder iBinder) {
        return com.google.android.gms.internal.ig.a.aw(iBinder);
    }

    public /* synthetic */ IInterface p(IBinder iBinder) {
        return ax(iBinder);
    }
}