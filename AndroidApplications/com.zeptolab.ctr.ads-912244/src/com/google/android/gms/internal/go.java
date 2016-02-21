package com.google.android.gms.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class go implements Requests {

    private static abstract class b extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements UpdateRequestsResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public Set getRequestIds() {
                return null;
            }

            public int getRequestOutcome(String str) {
                throw new IllegalArgumentException("Unknown request ID " + str);
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        private b() {
        }

        public UpdateRequestsResult C(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return C(status);
        }
    }

    class AnonymousClass_1 extends b {
        final /* synthetic */ String[] Ij;

        AnonymousClass_1(String[] strArr) {
            this.Ij = strArr;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Ij);
        }
    }

    class AnonymousClass_2 extends b {
        final /* synthetic */ String[] Ij;

        AnonymousClass_2(String[] strArr) {
            this.Ij = strArr;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.b(this, this.Ij);
        }
    }

    private static abstract class a extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadRequestsResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public GameRequestBuffer getRequests(int i) {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        private a() {
        }

        public LoadRequestsResult B(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return B(status);
        }
    }

    class AnonymousClass_3 extends a {
        final /* synthetic */ int HP;
        final /* synthetic */ int Il;
        final /* synthetic */ int Im;

        AnonymousClass_3(int i, int i2, int i3) {
            this.Il = i;
            this.Im = i2;
            this.HP = i3;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Il, this.Im, this.HP);
        }
    }

    public PendingResult acceptRequest(GoogleApiClient googleApiClient, String str) {
        List arrayList = new ArrayList();
        arrayList.add(str);
        return acceptRequests(googleApiClient, arrayList);
    }

    public PendingResult acceptRequests(GoogleApiClient googleApiClient, List list) {
        return googleApiClient.b(new AnonymousClass_1(list == null ? null : (String[]) list.toArray(new String[list.size()])));
    }

    public PendingResult dismissRequest(GoogleApiClient googleApiClient, String str) {
        List arrayList = new ArrayList();
        arrayList.add(str);
        return dismissRequests(googleApiClient, arrayList);
    }

    public PendingResult dismissRequests(GoogleApiClient googleApiClient, List list) {
        return googleApiClient.b(new AnonymousClass_2(list == null ? null : (String[]) list.toArray(new String[list.size()])));
    }

    public ArrayList getGameRequestsFromBundle(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(Requests.EXTRA_REQUESTS)) {
            return new ArrayList();
        }
        ArrayList arrayList = (ArrayList) bundle.get(Requests.EXTRA_REQUESTS);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            arrayList2.add((GameRequest) arrayList.get(i));
            i++;
        }
        return arrayList2;
    }

    public ArrayList getGameRequestsFromInboxResponse(Intent intent) {
        return intent == null ? new ArrayList() : getGameRequestsFromBundle(intent.getExtras());
    }

    public Intent getInboxIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fD();
    }

    public int getMaxLifetimeDays(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fF();
    }

    public int getMaxPayloadSize(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fE();
    }

    public Intent getSendIntent(GoogleApiClient googleApiClient, int i, byte[] bArr, int i2, Bitmap bitmap, String str) {
        return Games.c(googleApiClient).a(i, bArr, i2, bitmap, str);
    }

    public PendingResult loadRequests(GoogleApiClient googleApiClient, int i, int i2, int i3) {
        return googleApiClient.a(new AnonymousClass_3(i, i2, i3));
    }

    public void registerRequestListener(GoogleApiClient googleApiClient, OnRequestReceivedListener onRequestReceivedListener) {
        Games.c(googleApiClient).a(onRequestReceivedListener);
    }

    public void unregisterRequestListener(GoogleApiClient googleApiClient) {
        Games.c(googleApiClient).fx();
    }
}