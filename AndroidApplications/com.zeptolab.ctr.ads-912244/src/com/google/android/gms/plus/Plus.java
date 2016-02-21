package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.ij;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.il;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.h;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public final class Plus {
    public static final Api API;
    public static final Account AccountApi;
    public static final Moments MomentsApi;
    public static final People PeopleApi;
    public static final a QK;
    public static final Scope SCOPE_PLUS_LOGIN;
    public static final Scope SCOPE_PLUS_PROFILE;
    static final b va;

    public static abstract class a extends com.google.android.gms.common.api.a.a {
        public a(b bVar) {
            super(bVar);
        }
    }

    public static final class PlusOptions implements ApiOptions {
        final String QL;
        final Set QM;

        public static final class Builder {
            String QL;
            final Set QM;

            public Builder() {
                this.QM = new HashSet();
            }

            public com.google.android.gms.plus.Plus.PlusOptions.Builder addActivityTypes(Object obj) {
                er.b(obj, (Object)"activityTypes may not be null.");
                int i = 0;
                while (i < obj.length) {
                    this.QM.add(obj[i]);
                    i++;
                }
                return this;
            }

            public com.google.android.gms.plus.Plus.PlusOptions build() {
                return new com.google.android.gms.plus.Plus.PlusOptions(null);
            }

            public com.google.android.gms.plus.Plus.PlusOptions.Builder setServerClientId(String str) {
                this.QL = str;
                return this;
            }
        }

        private PlusOptions() {
            this.QL = null;
            this.QM = new HashSet();
        }

        private PlusOptions(Builder builder) {
            this.QL = builder.QL;
            this.QM = builder.QM;
        }

        public static Builder builder() {
            return new Builder();
        }
    }

    static {
        va = new b() {
            public /* synthetic */ com.google.android.gms.common.api.Api.a b(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return h(context, looper, eeVar, apiOptions, connectionCallbacks, onConnectionFailedListener);
            }

            public int getPriority() {
                return GoogleScorer.CLIENT_PLUS;
            }

            public e h(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                com.google.android.gms.plus.Plus.PlusOptions plusOptions;
                com.google.android.gms.plus.Plus.PlusOptions plusOptions2 = new com.google.android.gms.plus.Plus.PlusOptions();
                if (apiOptions != null) {
                    er.b(apiOptions instanceof com.google.android.gms.plus.Plus.PlusOptions, (Object)"Must provide valid PlusOptions!");
                    plusOptions = (com.google.android.gms.plus.Plus.PlusOptions) apiOptions;
                } else {
                    plusOptions = plusOptions2;
                }
                e eVar = eVar;
                Context context2 = context;
                Looper looper2 = looper;
                ConnectionCallbacks connectionCallbacks2 = connectionCallbacks;
                OnConnectionFailedListener onConnectionFailedListener2 = onConnectionFailedListener;
                h hVar = new h(eeVar.dR(), eeVar.dU(), (String[]) plusOptions.QM.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras());
                return eVar;
            }
        };
        API = new Api(va, new Scope[0]);
        SCOPE_PLUS_LOGIN = new Scope(Scopes.PLUS_LOGIN);
        SCOPE_PLUS_PROFILE = new Scope(Scopes.PLUS_ME);
        MomentsApi = new ik(va);
        PeopleApi = new il(va);
        AccountApi = new ii(va);
        QK = new ij(va);
    }

    private Plus() {
    }

    public static e a(GoogleApiClient googleApiClient, b bVar) {
        boolean z = true;
        er.b(googleApiClient != null, (Object)"GoogleApiClient parameter is required.");
        er.a(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        e eVar = (e) googleApiClient.a(bVar);
        if (eVar == null) {
            z = false;
        }
        er.a(z, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        return eVar;
    }
}