package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.internal.d;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface k extends IInterface {

    public static abstract class a extends Binder implements k {

        private static class a implements k {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public boolean a_(d dVar) {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMarkerClickListener");
                obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.maps.internal.IOnMarkerClickListener");
        }

        public static k ag(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof k)) ? new a(iBinder) : (k) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
                    boolean a = a(com.google.android.gms.maps.model.internal.d.a.aq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(a ? 1 : 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IOnMarkerClickListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean a(d dVar);
}