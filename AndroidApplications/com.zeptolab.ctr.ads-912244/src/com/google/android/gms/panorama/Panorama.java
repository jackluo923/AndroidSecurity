package com.google.android.gms.panorama;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.ih;

public final class Panorama {
    public static final Api API;
    static final com.google.android.gms.common.api.Api.b va;

    public static interface PanoramaResult extends Result {
        Intent getViewerIntent();
    }

    public static interface a extends com.google.android.gms.panorama.Panorama.PanoramaResult {
    }

    private static abstract class b extends com.google.android.gms.common.api.a.a {

        class AnonymousClass_1 implements com.google.android.gms.panorama.Panorama.PanoramaResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public Status getStatus() {
                return this.vb;
            }

            public Intent getViewerIntent() {
                return null;
            }
        }

        public b() {
            super(va);
        }

        public com.google.android.gms.panorama.Panorama.PanoramaResult J(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return J(status);
        }
    }

    final class AnonymousClass_2 extends b {
        final /* synthetic */ Uri Qz;

        AnonymousClass_2(Uri uri) {
            this.Qz = uri;
        }

        protected void a(ih ihVar) {
            ihVar.a(this, this.Qz, false);
        }
    }

    final class AnonymousClass_3 extends b {
        final /* synthetic */ Uri Qz;

        AnonymousClass_3(Uri uri) {
            this.Qz = uri;
        }

        protected void a(ih ihVar) {
            ihVar.a(this, this.Qz, true);
        }
    }

    static {
        va = new com.google.android.gms.common.api.Api.b() {
            public /* synthetic */ com.google.android.gms.common.api.Api.a b(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return g(context, looper, eeVar, apiOptions, connectionCallbacks, onConnectionFailedListener);
            }

            public ih g(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return new ih(context, looper, connectionCallbacks, onConnectionFailedListener);
            }

            public int getPriority() {
                return Integer.MAX_VALUE;
            }
        };
        API = new Api(va, new Scope[0]);
    }

    private Panorama() {
    }

    public static PendingResult loadPanoramaInfo(GoogleApiClient googleApiClient, Uri uri) {
        return googleApiClient.a(new AnonymousClass_2(uri));
    }

    public static PendingResult loadPanoramaInfoAndGrantAccess(GoogleApiClient googleApiClient, Uri uri) {
        return googleApiClient.a(new AnonymousClass_3(uri));
    }
}