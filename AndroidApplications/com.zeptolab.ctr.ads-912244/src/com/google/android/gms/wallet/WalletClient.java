package com.google.android.gms.wallet;

import android.app.Activity;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.jg;

@Deprecated
public class WalletClient implements GooglePlayServicesClient {
    private final jg Zx;

    public WalletClient(Activity activity, int i, String str, int i2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this.Zx = new jg(activity, connectionCallbacks, onConnectionFailedListener, i, str, i2);
    }

    public WalletClient(Activity activity, int i, String str, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(activity, i, str, 0, connectionCallbacks, onConnectionFailedListener);
    }

    public void changeMaskedWallet(String str, String str2, int i) {
        this.Zx.changeMaskedWallet(str, str2, i);
    }

    public void checkForPreAuthorization(int i) {
        this.Zx.checkForPreAuthorization(i);
    }

    public void connect() {
        this.Zx.connect();
    }

    public void disconnect() {
        this.Zx.disconnect();
    }

    public boolean isConnected() {
        return this.Zx.isConnected();
    }

    public boolean isConnecting() {
        return this.Zx.isConnecting();
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        return this.Zx.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        return this.Zx.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    public void loadFullWallet(FullWalletRequest fullWalletRequest, int i) {
        this.Zx.loadFullWallet(fullWalletRequest, i);
    }

    public void loadMaskedWallet(MaskedWalletRequest maskedWalletRequest, int i) {
        this.Zx.loadMaskedWallet(maskedWalletRequest, i);
    }

    public void notifyTransactionStatus(NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        this.Zx.notifyTransactionStatus(notifyTransactionStatusRequest);
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.Zx.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.Zx.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.Zx.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.Zx.unregisterConnectionFailedListener(onConnectionFailedListener);
    }
}