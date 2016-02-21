package com.google.android.gms.location;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface a extends IInterface {

    public static abstract class a extends Binder implements a {

        private static class a implements a {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void onLocationChanged(Location location) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.ILocationListener");
                if (location != null) {
                    obtain.writeInt(1);
                    location.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, null, 1);
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.location.ILocationListener");
        }

        public static a N(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new a(iBinder) : (a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.location.ILocationListener");
                    onLocationChanged(parcel.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.ILocationListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onLocationChanged(Location location);
}