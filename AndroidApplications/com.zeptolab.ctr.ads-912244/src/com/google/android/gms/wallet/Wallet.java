package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.jg;

public final class Wallet {
    public static final Api API;
    static final b va;

    private static abstract class a extends com.google.android.gms.common.api.a.a {
        public a() {
            super(va);
        }

        public /* synthetic */ Result d(Status status) {
            return f(status);
        }

        public Status f(Status status) {
            return status;
        }
    }

    final class AnonymousClass_2 extends a {
        final /* synthetic */ int Kx;

        AnonymousClass_2(int i) {
            this.Kx = i;
        }

        protected void a(jg jgVar) {
            jgVar.checkForPreAuthorization(this.Kx);
            a(Status.zQ);
        }
    }

    final class AnonymousClass_3 extends a {
        final /* synthetic */ int Kx;
        final /* synthetic */ MaskedWalletRequest Zr;

        AnonymousClass_3(MaskedWalletRequest maskedWalletRequest, int i) {
            this.Zr = maskedWalletRequest;
            this.Kx = i;
        }

        protected void a(jg jgVar) {
            jgVar.loadMaskedWallet(this.Zr, this.Kx);
            a(Status.zQ);
        }
    }

    final class AnonymousClass_4 extends a {
        final /* synthetic */ int Kx;
        final /* synthetic */ FullWalletRequest Zs;

        AnonymousClass_4(FullWalletRequest fullWalletRequest, int i) {
            this.Zs = fullWalletRequest;
            this.Kx = i;
        }

        protected void a(jg jgVar) {
            jgVar.loadFullWallet(this.Zs, this.Kx);
            a(Status.zQ);
        }
    }

    final class AnonymousClass_5 extends a {
        final /* synthetic */ int Kx;
        final /* synthetic */ String Zt;
        final /* synthetic */ String Zu;

        AnonymousClass_5(String str, String str2, int i) {
            this.Zt = str;
            this.Zu = str2;
            this.Kx = i;
        }

        protected void a(jg jgVar) {
            jgVar.changeMaskedWallet(this.Zt, this.Zu, this.Kx);
            a(Status.zQ);
        }
    }

    final class AnonymousClass_6 extends a {
        final /* synthetic */ NotifyTransactionStatusRequest Zv;

        AnonymousClass_6(NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
            this.Zv = notifyTransactionStatusRequest;
        }

        protected void a(jg jgVar) {
            jgVar.notifyTransactionStatus(this.Zv);
            a(Status.zQ);
        }
    }

    public static final class WalletOptions implements ApiOptions {
        public final int environment;
        public final int theme;

        public static final class Builder {
            private int Zw;
            private int mTheme;

            public Builder() {
                this.Zw = 0;
                this.mTheme = 0;
            }

            public com.google.android.gms.wallet.Wallet.WalletOptions build() {
                return new com.google.android.gms.wallet.Wallet.WalletOptions(null);
            }

            public com.google.android.gms.wallet.Wallet.WalletOptions.Builder setEnvironment(int i) {
                if (i == 0 || i == 2 || i == 1) {
                    this.Zw = i;
                    return this;
                } else {
                    throw new IllegalArgumentException(String.format("Invalid environment value %d", new Object[]{Integer.valueOf(i)}));
                }
            }

            public com.google.android.gms.wallet.Wallet.WalletOptions.Builder setTheme(int i) {
                if (i == 0 || i == 1) {
                    this.mTheme = i;
                    return this;
                } else {
                    throw new IllegalArgumentException(String.format("Invalid theme value %d", new Object[]{Integer.valueOf(i)}));
                }
            }
        }

        private WalletOptions() {
            this(new Builder());
        }

        private WalletOptions(Builder builder) {
            this.environment = builder.Zw;
            this.theme = builder.mTheme;
        }
    }

    static {
        va = new b() {
            public /* synthetic */ com.google.android.gms.common.api.Api.a b(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                return i(context, looper, eeVar, apiOptions, connectionCallbacks, onConnectionFailedListener);
            }

            public int getPriority() {
                return Integer.MAX_VALUE;
            }

            public jg i(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
                boolean z;
                com.google.android.gms.wallet.Wallet.WalletOptions walletOptions;
                er.b(context instanceof Activity, (Object)"An Activity must be used for Wallet APIs");
                Activity activity = (Activity) context;
                z = apiOptions == null || apiOptions instanceof com.google.android.gms.wallet.Wallet.WalletOptions;
                er.b(z, (Object)"WalletOptions must be used for Wallet APIs");
                walletOptions = apiOptions != null ? (com.google.android.gms.wallet.Wallet.WalletOptions) apiOptions : new com.google.android.gms.wallet.Wallet.WalletOptions();
                return new jg(activity, looper, connectionCallbacks, onConnectionFailedListener, walletOptions.environment, eeVar.getAccountName(), walletOptions.theme);
            }
        };
        API = new Api(va, new Scope[0]);
    }

    private Wallet() {
    }

    public static void changeMaskedWallet(GoogleApiClient googleApiClient, String str, String str2, int i) {
        googleApiClient.a(new AnonymousClass_5(str, str2, i));
    }

    public static void checkForPreAuthorization(GoogleApiClient googleApiClient, int i) {
        googleApiClient.a(new AnonymousClass_2(i));
    }

    public static void loadFullWallet(GoogleApiClient googleApiClient, FullWalletRequest fullWalletRequest, int i) {
        googleApiClient.a(new AnonymousClass_4(fullWalletRequest, i));
    }

    public static void loadMaskedWallet(GoogleApiClient googleApiClient, MaskedWalletRequest maskedWalletRequest, int i) {
        googleApiClient.a(new AnonymousClass_3(maskedWalletRequest, i));
    }

    public static void notifyTransactionStatus(GoogleApiClient googleApiClient, NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        googleApiClient.a(new AnonymousClass_6(notifyTransactionStatusRequest));
    }
}