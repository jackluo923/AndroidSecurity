package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface s extends IInterface {

    public static abstract class a extends Binder implements s {

        private static class a implements s {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public Bundle a_(String str, Bundle bundle) {
                Bundle bundle2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle2;
            }

            public Bundle a_(String str, String str2, Bundle bundle) {
                Bundle bundle2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                obtain.writeString(str);
                obtain.writeString(str2);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle2;
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static s a_(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof s)) ? new a(iBinder) : (s) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            String readString;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    readString = parcel.readString();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    bundle = a(readString, readString2, bundle);
                    parcel2.writeNoException();
                    if (bundle != null) {
                        parcel2.writeInt(1);
                        bundle.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    bundle = a(readString, bundle);
                    parcel2.writeNoException();
                    if (bundle != null) {
                        parcel2.writeInt(1);
                        bundle.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.auth.IAuthManagerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Bundle a(String str, Bundle bundle);

    Bundle a(String str, String str2, Bundle bundle);
}