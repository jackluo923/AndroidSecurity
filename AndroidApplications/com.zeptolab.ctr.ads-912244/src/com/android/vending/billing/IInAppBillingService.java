package com.android.vending.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface IInAppBillingService extends IInterface {

    public static abstract class Stub extends Binder implements IInAppBillingService {
        private static final String DESCRIPTOR = "com.android.vending.billing.IInAppBillingService";
        static final int TRANSACTION_consumePurchase = 5;
        static final int TRANSACTION_getBuyIntent = 3;
        static final int TRANSACTION_getPurchases = 4;
        static final int TRANSACTION_getSkuDetails = 2;
        static final int TRANSACTION_isBillingSupported = 1;

        private static class Proxy implements IInAppBillingService {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public int consumePurchase(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(DESCRIPTOR);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.mRemote.transact(TRANSACTION_consumePurchase, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public Bundle getBuyIntent(int i, String str, String str2, String str3, String str4) {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(DESCRIPTOR);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeString(str3);
                obtain.writeString(str4);
                this.mRemote.transact(TRANSACTION_getBuyIntent, obtain, obtain2, 0);
                obtain2.readException();
                bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle;
            }

            public String getInterfaceDescriptor() {
                return DESCRIPTOR;
            }

            public Bundle getPurchases(int i, String str, String str2, String str3) {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(DESCRIPTOR);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeString(str3);
                this.mRemote.transact(TRANSACTION_getPurchases, obtain, obtain2, 0);
                obtain2.readException();
                bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle;
            }

            public Bundle getSkuDetails(int i, String str, String str2, Bundle bundle) {
                Bundle bundle2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(DESCRIPTOR);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                if (bundle != null) {
                    obtain.writeInt(TRANSACTION_isBillingSupported);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.mRemote.transact(TRANSACTION_getSkuDetails, obtain, obtain2, 0);
                obtain2.readException();
                bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle2;
            }

            public int isBillingSupported(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(DESCRIPTOR);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.mRemote.transact(TRANSACTION_isBillingSupported, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInAppBillingService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IInAppBillingService)) ? new Proxy(iBinder) : (IInAppBillingService) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int isBillingSupported;
            Bundle skuDetails;
            switch (i) {
                case TRANSACTION_isBillingSupported:
                    parcel.enforceInterface(DESCRIPTOR);
                    isBillingSupported = isBillingSupported(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isBillingSupported);
                    return true;
                case TRANSACTION_getSkuDetails:
                    parcel.enforceInterface(DESCRIPTOR);
                    skuDetails = getSkuDetails(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (skuDetails != null) {
                        parcel2.writeInt(TRANSACTION_isBillingSupported);
                        skuDetails.writeToParcel(parcel2, TRANSACTION_isBillingSupported);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case TRANSACTION_getBuyIntent:
                    parcel.enforceInterface(DESCRIPTOR);
                    skuDetails = getBuyIntent(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (skuDetails != null) {
                        parcel2.writeInt(TRANSACTION_isBillingSupported);
                        skuDetails.writeToParcel(parcel2, TRANSACTION_isBillingSupported);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case TRANSACTION_getPurchases:
                    parcel.enforceInterface(DESCRIPTOR);
                    skuDetails = getPurchases(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (skuDetails != null) {
                        parcel2.writeInt(TRANSACTION_isBillingSupported);
                        skuDetails.writeToParcel(parcel2, TRANSACTION_isBillingSupported);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case TRANSACTION_consumePurchase:
                    parcel.enforceInterface(DESCRIPTOR);
                    isBillingSupported = consumePurchase(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isBillingSupported);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int consumePurchase(int i, String str, String str2);

    Bundle getBuyIntent(int i, String str, String str2, String str3, String str4);

    Bundle getPurchases(int i, String str, String str2, String str3);

    Bundle getSkuDetails(int i, String str, String str2, Bundle bundle);

    int isBillingSupported(int i, String str, String str2);
}