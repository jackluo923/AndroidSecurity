package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface ILocationSourceDelegate extends IInterface {

    public static abstract class a extends Binder implements ILocationSourceDelegate {

        private static class a implements ILocationSourceDelegate {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void activate(g gVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ILocationSourceDelegate");
                obtain.writeStrongBinder(gVar != null ? gVar.asBinder() : null);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void deactivate() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ILocationSourceDelegate");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.maps.internal.ILocationSourceDelegate");
        }

        public static ILocationSourceDelegate X(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ILocationSourceDelegate)) ? new a(iBinder) : (ILocationSourceDelegate) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
                    activate(com.google.android.gms.maps.internal.g.a.ac(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ILocationSourceDelegate");
                    deactivate();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.ILocationSourceDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void activate(g gVar);

    void deactivate();
}