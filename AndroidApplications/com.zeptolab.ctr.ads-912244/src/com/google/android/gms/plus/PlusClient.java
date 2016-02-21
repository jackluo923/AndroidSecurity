package com.google.android.gms.plus;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.i;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

@Deprecated
public class PlusClient implements GooglePlayServicesClient {
    final e QN;

    class AnonymousClass_1 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnMomentsLoadedListener QO;

        AnonymousClass_1(com.google.android.gms.plus.PlusClient.OnMomentsLoadedListener onMomentsLoadedListener) {
            this.QO = onMomentsLoadedListener;
        }

        public void a(LoadMomentsResult loadMomentsResult) {
            this.QO.onMomentsLoaded(loadMomentsResult.getStatus().dG(), loadMomentsResult.getMomentBuffer(), loadMomentsResult.getNextPageToken(), loadMomentsResult.getUpdated());
        }

        public /* synthetic */ void b(Object obj) {
            a((LoadMomentsResult) obj);
        }
    }

    class AnonymousClass_2 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnMomentsLoadedListener QO;

        AnonymousClass_2(com.google.android.gms.plus.PlusClient.OnMomentsLoadedListener onMomentsLoadedListener) {
            this.QO = onMomentsLoadedListener;
        }

        public void a(LoadMomentsResult loadMomentsResult) {
            this.QO.onMomentsLoaded(loadMomentsResult.getStatus().dG(), loadMomentsResult.getMomentBuffer(), loadMomentsResult.getNextPageToken(), loadMomentsResult.getUpdated());
        }

        public /* synthetic */ void b(Object obj) {
            a((LoadMomentsResult) obj);
        }
    }

    class AnonymousClass_3 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener QQ;

        AnonymousClass_3(com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener onPeopleLoadedListener) {
            this.QQ = onPeopleLoadedListener;
        }

        public void a(LoadPeopleResult loadPeopleResult) {
            this.QQ.onPeopleLoaded(loadPeopleResult.getStatus().dG(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
        }

        public /* synthetic */ void b(Object obj) {
            a((LoadPeopleResult) obj);
        }
    }

    class AnonymousClass_4 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener QQ;

        AnonymousClass_4(com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener onPeopleLoadedListener) {
            this.QQ = onPeopleLoadedListener;
        }

        public void a(LoadPeopleResult loadPeopleResult) {
            this.QQ.onPeopleLoaded(loadPeopleResult.getStatus().dG(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
        }

        public /* synthetic */ void b(Object obj) {
            a((LoadPeopleResult) obj);
        }
    }

    class AnonymousClass_5 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener QQ;

        AnonymousClass_5(com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener onPeopleLoadedListener) {
            this.QQ = onPeopleLoadedListener;
        }

        public void a(LoadPeopleResult loadPeopleResult) {
            this.QQ.onPeopleLoaded(loadPeopleResult.getStatus().dG(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
        }

        public /* synthetic */ void b(Object obj) {
            a((LoadPeopleResult) obj);
        }
    }

    class AnonymousClass_6 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener QQ;

        AnonymousClass_6(com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener onPeopleLoadedListener) {
            this.QQ = onPeopleLoadedListener;
        }

        public void a(LoadPeopleResult loadPeopleResult) {
            this.QQ.onPeopleLoaded(loadPeopleResult.getStatus().dG(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
        }

        public /* synthetic */ void b(Object obj) {
            a((LoadPeopleResult) obj);
        }
    }

    class AnonymousClass_7 implements c {
        final /* synthetic */ com.google.android.gms.plus.PlusClient.OnAccessRevokedListener QR;

        AnonymousClass_7(com.google.android.gms.plus.PlusClient.OnAccessRevokedListener onAccessRevokedListener) {
            this.QR = onAccessRevokedListener;
        }

        public void K(Status status) {
            this.QR.onAccessRevoked(status.getStatus().dG());
        }

        public /* synthetic */ void b(Object obj) {
            K((Status) obj);
        }
    }

    @Deprecated
    public static class Builder {
        private final ConnectionCallbacks QS;
        private final OnConnectionFailedListener QT;
        private final i QU;
        private final Context mContext;

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this.mContext = context;
            this.QS = connectionCallbacks;
            this.QT = onConnectionFailedListener;
            this.QU = new i(this.mContext);
        }

        public PlusClient build() {
            return new PlusClient(new e(this.mContext, this.QS, this.QT, this.QU.hA()));
        }

        public com.google.android.gms.plus.PlusClient.Builder clearScopes() {
            this.QU.hz();
            return this;
        }

        public com.google.android.gms.plus.PlusClient.Builder setAccountName(String str) {
            this.QU.aS(str);
            return this;
        }

        public com.google.android.gms.plus.PlusClient.Builder setActions(String... strArr) {
            this.QU.f(strArr);
            return this;
        }

        public com.google.android.gms.plus.PlusClient.Builder setScopes(String... strArr) {
            this.QU.e(strArr);
            return this;
        }
    }

    @Deprecated
    public static interface OnAccessRevokedListener {
        void onAccessRevoked(ConnectionResult connectionResult);
    }

    @Deprecated
    public static interface OnMomentsLoadedListener {
        @Deprecated
        void onMomentsLoaded(ConnectionResult connectionResult, MomentBuffer momentBuffer, String str, String str2);
    }

    @Deprecated
    public static interface OnPeopleLoadedListener {
        void onPeopleLoaded(ConnectionResult connectionResult, PersonBuffer personBuffer, String str);
    }

    @Deprecated
    public static interface OrderBy {
        @Deprecated
        public static final int ALPHABETICAL = 0;
        @Deprecated
        public static final int BEST = 1;
    }

    PlusClient(e eVar) {
        this.QN = eVar;
    }

    @Deprecated
    public void clearDefaultAccount() {
        this.QN.clearDefaultAccount();
    }

    @Deprecated
    public void connect() {
        this.QN.connect();
    }

    @Deprecated
    public void disconnect() {
        this.QN.disconnect();
    }

    @Deprecated
    public String getAccountName() {
        return this.QN.getAccountName();
    }

    @Deprecated
    public Person getCurrentPerson() {
        return this.QN.getCurrentPerson();
    }

    e hj() {
        return this.QN;
    }

    @Deprecated
    public boolean isConnected() {
        return this.QN.isConnected();
    }

    @Deprecated
    public boolean isConnecting() {
        return this.QN.isConnecting();
    }

    @Deprecated
    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        return this.QN.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Deprecated
    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        return this.QN.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Deprecated
    public void loadMoments(OnMomentsLoadedListener onMomentsLoadedListener) {
        this.QN.i(new AnonymousClass_1(onMomentsLoadedListener));
    }

    @Deprecated
    public void loadMoments(OnMomentsLoadedListener onMomentsLoadedListener, int i, String str, Uri uri, String str2, String str3) {
        this.QN.a(new AnonymousClass_2(onMomentsLoadedListener), i, str, uri, str2, str3);
    }

    @Deprecated
    public void loadPeople(OnPeopleLoadedListener onPeopleLoadedListener, Collection collection) {
        this.QN.a(new AnonymousClass_5(onPeopleLoadedListener), collection);
    }

    @Deprecated
    public void loadPeople(OnPeopleLoadedListener onPeopleLoadedListener, String... strArr) {
        this.QN.c(new AnonymousClass_6(onPeopleLoadedListener), strArr);
    }

    @Deprecated
    public void loadVisiblePeople(OnPeopleLoadedListener onPeopleLoadedListener, int i, String str) {
        this.QN.a(new AnonymousClass_3(onPeopleLoadedListener), i, str);
    }

    @Deprecated
    public void loadVisiblePeople(OnPeopleLoadedListener onPeopleLoadedListener, String str) {
        this.QN.i(new AnonymousClass_4(onPeopleLoadedListener), str);
    }

    @Deprecated
    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.QN.registerConnectionCallbacks(connectionCallbacks);
    }

    @Deprecated
    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.QN.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Deprecated
    public void removeMoment(String str) {
        this.QN.removeMoment(str);
    }

    @Deprecated
    public void revokeAccessAndDisconnect(OnAccessRevokedListener onAccessRevokedListener) {
        this.QN.k(new AnonymousClass_7(onAccessRevokedListener));
    }

    @Deprecated
    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.QN.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Deprecated
    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.QN.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Deprecated
    public void writeMoment(Moment moment) {
        this.QN.a(null, moment);
    }
}