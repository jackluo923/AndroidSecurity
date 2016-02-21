package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface hv extends IInterface {

    public static abstract class a extends Binder implements hv {

        private static class a implements hv {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void I(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, null, 1);
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static hv R(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof hv)) ? new a(iBinder) : (hv) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    I(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void I(DataHolder dataHolder);
}