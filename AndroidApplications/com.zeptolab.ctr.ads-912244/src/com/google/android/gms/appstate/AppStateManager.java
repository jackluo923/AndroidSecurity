package com.google.android.gms.appstate;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;

public final class AppStateManager {
    public static final Api API;
    public static final Scope SCOPE_APP_STATE;
    static final com.google.android.gms.common.api.Api.b va;

    public static interface StateResult extends Releasable, Result {
        com.google.android.gms.appstate.AppStateManager.StateConflictResult getConflictResult();

        com.google.android.gms.appstate.AppStateManager.StateLoadedResult getLoadedResult();
    }

    final class AnonymousClass_2 implements com.google.android.gms.appstate.AppStateManager.StateResult {
        final /* synthetic */ Status vb;

        AnonymousClass_2(Status status) {
            this.vb = status;
        }

        public com.google.android.gms.appstate.AppStateManager.StateConflictResult getConflictResult() {
            return null;
        }

        public com.google.android.gms.appstate.AppStateManager.StateLoadedResult getLoadedResult() {
            return null;
        }

        public Status getStatus() {
            return this.vb;
        }

        public void release() {
        }
    }

    public static abstract class a extends com.google.android.gms.common.api.a.a implements PendingResult {
        public a() {
            super(va);
        }
    }

    private static abstract class e extends com.google.android.gms.appstate.AppStateManager.a {
        private e() {
        }

        public /* synthetic */ Result d(Status status) {
            return g(status);
        }

        public com.google.android.gms.appstate.AppStateManager.StateResult g(Status status) {
            return AppStateManager.a(status);
        }
    }

    final class AnonymousClass_3 extends e {
        final /* synthetic */ int vc;
        final /* synthetic */ byte[] vd;

        AnonymousClass_3(int i, byte[] bArr) {
            this.vc = i;
            this.vd = bArr;
            super();
        }

        protected void a(dl dlVar) {
            dlVar.a(null, this.vc, this.vd);
        }
    }

    final class AnonymousClass_4 extends e {
        final /* synthetic */ int vc;
        final /* synthetic */ byte[] vd;

        AnonymousClass_4(int i, byte[] bArr) {
            this.vc = i;
            this.vd = bArr;
            super();
        }

        protected void a(dl dlVar) {
            dlVar.a(this, this.vc, this.vd);
        }
    }

    public static interface StateDeletedResult extends Result {
        int getStateKey();
    }

    private static abstract class b extends com.google.android.gms.appstate.AppStateManager.a {
        private b() {
        }
    }

    final class AnonymousClass_5 extends b {
        final /* synthetic */ int vc;

        class AnonymousClass_1 implements com.google.android.gms.appstate.AppStateManager.StateDeletedResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public int getStateKey() {
                return AnonymousClass_5.this.vc;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        AnonymousClass_5(int i) {
            this.vc = i;
            super();
        }

        protected void a(dl dlVar) {
            dlVar.a(this, this.vc);
        }

        public com.google.android.gms.appstate.AppStateManager.StateDeletedResult c(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return c(status);
        }
    }

    final class AnonymousClass_6 extends e {
        final /* synthetic */ int vc;

        AnonymousClass_6(int i) {
            this.vc = i;
            super();
        }

        protected void a(dl dlVar) {
            dlVar.b(this, this.vc);
        }
    }

    private static abstract class c extends com.google.android.gms.appstate.AppStateManager.a {

        class AnonymousClass_1 implements com.google.android.gms.appstate.AppStateManager.StateListResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public AppStateBuffer getStateBuffer() {
                return new AppStateBuffer(null);
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        private c() {
        }

        public /* synthetic */ Result d(Status status) {
            return e(status);
        }

        public com.google.android.gms.appstate.AppStateManager.StateListResult e(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    final class AnonymousClass_8 extends e {
        final /* synthetic */ int vc;
        final /* synthetic */ String vf;
        final /* synthetic */ byte[] vg;

        AnonymousClass_8(int i, String str, byte[] bArr) {
            this.vc = i;
            this.vf = str;
            this.vg = bArr;
            super();
        }

        protected void a(dl dlVar) {
            dlVar.a(this, this.vc, this.vf, this.vg);
        }
    }

    private static abstract class d extends com.google.android.gms.appstate.AppStateManager.a {
        private d() {
        }

        public /* synthetic */ Result d_(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    public static interface StateConflictResult extends Releasable, Result {
        byte[] getLocalData();

        String getResolvedVersion();

        byte[] getServerData();

        int getStateKey();
    }

    public static interface StateListResult extends Result {
        AppStateBuffer getStateBuffer();
    }

    public static interface StateLoadedResult extends Releasable, Result {
        byte[] getLocalData();

        int getStateKey();
    }

    static {
        va = new com.google.android.gms.common.api.Api.b() {
            public dl a(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return new dl(context, looper, connectionCallbacks, onConnectionFailedListener, eeVar.dR(), (String[]) eeVar.dT().toArray(new String[0]));
            }

            public /* synthetic */ com.google.android.gms.common.api.Api.a b(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return a(context, looper, eeVar, apiOptions, connectionCallbacks, onConnectionFailedListener);
            }

            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        SCOPE_APP_STATE = new Scope(Scopes.APP_STATE);
        API = new Api(va, new Scope[]{SCOPE_APP_STATE});
    }

    private AppStateManager() {
    }

    private static StateResult a(Status status) {
        return new AnonymousClass_2(status);
    }

    public static dl a(GoogleApiClient googleApiClient) {
        boolean z = true;
        er.b(googleApiClient != null, (Object)"GoogleApiClient parameter is required.");
        er.a(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        dl dlVar = (dl) googleApiClient.a(va);
        if (dlVar == null) {
            z = false;
        }
        er.a(z, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature.");
        return dlVar;
    }

    public static PendingResult delete(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.b(new AnonymousClass_5(i));
    }

    public static int getMaxNumKeys(GoogleApiClient googleApiClient) {
        return a(googleApiClient).cO();
    }

    public static int getMaxStateSize(GoogleApiClient googleApiClient) {
        return a(googleApiClient).cN();
    }

    public static PendingResult list(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new c() {
            {
                super();
            }

            protected void a(dl dlVar) {
                dlVar.a(this);
            }
        });
    }

    public static PendingResult load(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.a(new AnonymousClass_6(i));
    }

    public static PendingResult resolve(GoogleApiClient googleApiClient, int i, String str, byte[] bArr) {
        return googleApiClient.b(new AnonymousClass_8(i, str, bArr));
    }

    public static PendingResult signOut(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new d() {
            {
                super();
            }

            protected void a(dl dlVar) {
                dlVar.b(this);
            }
        });
    }

    public static void update(GoogleApiClient googleApiClient, int i, byte[] bArr) {
        googleApiClient.b(new AnonymousClass_3(i, bArr));
    }

    public static PendingResult updateImmediate(GoogleApiClient googleApiClient, int i, byte[] bArr) {
        return googleApiClient.b(new AnonymousClass_4(i, bArr));
    }
}