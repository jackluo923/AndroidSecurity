package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface he extends IInterface {

    public static abstract class a extends Binder implements he {

        private static class a implements he {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(hd hdVar, UserAddressRequest userAddressRequest, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressService");
                obtain.writeStrongBinder(hdVar != null ? hdVar.asBinder() : null);
                if (userAddressRequest != null) {
                    obtain.writeInt(1);
                    userAddressRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static he M(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof he)) ? new a(iBinder) : (he) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressService");
                    a(com.google.android.gms.internal.hd.a.L(parcel.readStrongBinder()), parcel.readInt() != 0 ? (UserAddressRequest) UserAddressRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.identity.intents.internal.IAddressService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(hd hdVar, UserAddressRequest userAddressRequest, Bundle bundle);
}