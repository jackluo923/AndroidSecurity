package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api.a;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public interface GoogleApiClient {

    public static interface ApiOptions {
    }

    public static final class Builder {
        private final Context mContext;
        private String vi;
        private final Set zn;
        private int zo;
        private View zp;
        private String zq;
        private final Map zr;
        private Looper zs;
        private final Set zt;
        private final Set zu;

        public Builder(Context context) {
            this.zn = new HashSet();
            this.zr = new HashMap();
            this.zt = new HashSet();
            this.zu = new HashSet();
            this.mContext = context;
            this.zs = context.getMainLooper();
            this.zq = context.getPackageName();
        }

        public Builder(Context context, Object obj, Object obj2) {
            this(context);
            er.b(obj, (Object)"Must provide a connected listener");
            this.zt.add(obj);
            er.b(obj2, (Object)"Must provide a connection failed listener");
            this.zu.add(obj2);
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder addApi(Api api) {
            return addApi(api, null);
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder addApi(Api api, com.google.android.gms.common.api.GoogleApiClient.ApiOptions apiOptions) {
            this.zr.put(api, apiOptions);
            List dq = api.dq();
            int size = dq.size();
            int i = 0;
            while (i < size) {
                this.zn.add(((Scope) dq.get(i)).dD());
                i++;
            }
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder addConnectionCallbacks(com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
            this.zt.add(connectionCallbacks);
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder addOnConnectionFailedListener(com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.zu.add(onConnectionFailedListener);
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder addScope(Scope scope) {
            this.zn.add(scope.dD());
            return this;
        }

        public GoogleApiClient build() {
            return new b(this.mContext, this.zs, dx(), this.zr, this.zt, this.zu);
        }

        public ee dx() {
            return new ee(this.vi, this.zn, this.zo, this.zp, this.zq);
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder setAccountName(String str) {
            this.vi = str;
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder setGravityForPopups(int i) {
            this.zo = i;
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder setHandler(Object obj) {
            er.b(obj, (Object)"Handler must not be null");
            this.zs = obj.getLooper();
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder setViewForPopups(View view) {
            this.zp = view;
            return this;
        }

        public com.google.android.gms.common.api.GoogleApiClient.Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }
    }

    public static interface ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    public static interface OnConnectionFailedListener extends com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener {
    }

    a a(b bVar);

    a.a a(a.a aVar);

    a.a b(a.a aVar);

    ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    void connect();

    void disconnect();

    boolean isConnected();

    boolean isConnecting();

    boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    void reconnect();

    void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);
}