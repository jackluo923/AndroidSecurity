package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.d;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface je extends IInterface {

    public static abstract class a extends Binder implements je {

        private static class a implements je {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(Bundle bundle, jf jfVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (jfVar != null) {
                    iBinder = jfVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(FullWalletRequest fullWalletRequest, Bundle bundle, jf jfVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                if (fullWalletRequest != null) {
                    obtain.writeInt(1);
                    fullWalletRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (jfVar != null) {
                    iBinder = jfVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(MaskedWalletRequest maskedWalletRequest, Bundle bundle, jf jfVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                if (maskedWalletRequest != null) {
                    obtain.writeInt(1);
                    maskedWalletRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (jfVar != null) {
                    iBinder = jfVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(1, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                if (notifyTransactionStatusRequest != null) {
                    obtain.writeInt(1);
                    notifyTransactionStatusRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(d dVar, Bundle bundle, jf jfVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                if (dVar != null) {
                    obtain.writeInt(1);
                    dVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (jfVar != null) {
                    iBinder = jfVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(String str, String str2, Bundle bundle, jf jfVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                obtain.writeString(str);
                obtain.writeString(str2);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (jfVar != null) {
                    iBinder = jfVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, null, 1);
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static je aC(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IOwService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof je)) ? new a(iBinder) : (je) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    a(parcel.readInt() != 0 ? (MaskedWalletRequest) MaskedWalletRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.internal.jf.a.aD(parcel.readStrongBinder()));
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    a(parcel.readInt() != 0 ? (FullWalletRequest) FullWalletRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.internal.jf.a.aD(parcel.readStrongBinder()));
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    a(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.internal.jf.a.aD(parcel.readStrongBinder()));
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    a(parcel.readInt() != 0 ? (NotifyTransactionStatusRequest) NotifyTransactionStatusRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.internal.jf.a.aD(parcel.readStrongBinder()));
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    a(parcel.readInt() != 0 ? (d) d.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.internal.jf.a.aD(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wallet.internal.IOwService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(Bundle bundle, jf jfVar);

    void a(FullWalletRequest fullWalletRequest, Bundle bundle, jf jfVar);

    void a(MaskedWalletRequest maskedWalletRequest, Bundle bundle, jf jfVar);

    void a(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Bundle bundle);

    void a(d dVar, Bundle bundle, jf jfVar);

    void a(String str, String str2, Bundle bundle, jf jfVar);
}