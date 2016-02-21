package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface d extends IInterface {

    public static abstract class a extends Binder implements d {

        private static class a implements d {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public b f(com.google.android.gms.maps.model.internal.d dVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b g(com.google.android.gms.maps.model.internal.d dVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.maps.internal.IInfoWindowAdapter");
        }

        public static d W(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new a(iBinder) : (d) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IBinder iBinder = null;
            b f;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                    f = f(com.google.android.gms.maps.model.internal.d.a.aq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (f != null) {
                        iBinder = f.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                    f = g(com.google.android.gms.maps.model.internal.d.a.aq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (f != null) {
                        iBinder = f.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IInfoWindowAdapter");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    b f(com.google.android.gms.maps.model.internal.d dVar);

    b g(com.google.android.gms.maps.model.internal.d dVar);
}