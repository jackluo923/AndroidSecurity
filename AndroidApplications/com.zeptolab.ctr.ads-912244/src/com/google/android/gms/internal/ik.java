package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;

public final class ik implements Moments {
    private final com.google.android.gms.common.api.Api.b Rw;

    private static abstract class a extends com.google.android.gms.plus.Plus.a {

        class AnonymousClass_1 implements LoadMomentsResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public MomentBuffer getMomentBuffer() {
                return null;
            }

            public String getNextPageToken() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }

            public String getUpdated() {
                return null;
            }

            public void release() {
            }
        }

        a(com.google.android.gms.common.api.Api.b bVar) {
            super(bVar);
        }

        public LoadMomentsResult M(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return M(status);
        }
    }

    class AnonymousClass_1 extends a {
        AnonymousClass_1(com.google.android.gms.common.api.Api.b bVar) {
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.i(this);
        }
    }

    class AnonymousClass_2 extends a {
        final /* synthetic */ int HW;
        final /* synthetic */ Uri RA;
        final /* synthetic */ String RB;
        final /* synthetic */ String RC;
        final /* synthetic */ String Rz;

        AnonymousClass_2(com.google.android.gms.common.api.Api.b bVar, int i, String str, Uri uri, String str2, String str3) {
            this.HW = i;
            this.Rz = str;
            this.RA = uri;
            this.RB = str2;
            this.RC = str3;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.a(this, this.HW, this.Rz, this.RA, this.RB, this.RC);
        }
    }

    private static abstract class c extends com.google.android.gms.plus.Plus.a {
        c(com.google.android.gms.common.api.Api.b bVar) {
            super(bVar);
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    class AnonymousClass_3 extends c {
        final /* synthetic */ Moment RD;

        AnonymousClass_3(com.google.android.gms.common.api.Api.b bVar, Moment moment) {
            this.RD = moment;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.a(this, this.RD);
        }
    }

    private static abstract class b extends com.google.android.gms.plus.Plus.a {
        b(com.google.android.gms.common.api.Api.b bVar) {
            super(bVar);
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    class AnonymousClass_4 extends b {
        final /* synthetic */ String RE;

        AnonymousClass_4(com.google.android.gms.common.api.Api.b bVar, String str) {
            this.RE = str;
            super(bVar);
        }

        protected void a(e eVar) {
            eVar.removeMoment(this.RE);
            a(Status.zQ);
        }
    }

    public ik(com.google.android.gms.common.api.Api.b bVar) {
        this.Rw = bVar;
    }

    public PendingResult load(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new AnonymousClass_1(this.Rw));
    }

    public PendingResult load(GoogleApiClient googleApiClient, int i, String str, Uri uri, String str2, String str3) {
        return googleApiClient.a(new AnonymousClass_2(this.Rw, i, str, uri, str2, str3));
    }

    public PendingResult remove(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_4(this.Rw, str));
    }

    public PendingResult write(GoogleApiClient googleApiClient, Moment moment) {
        return googleApiClient.b(new AnonymousClass_3(this.Rw, moment));
    }
}