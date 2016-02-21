package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.GoogleMapOptions;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        private static class a implements c {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IMapViewDelegate a_(b bVar, GoogleMapOptions googleMapOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (googleMapOptions != null) {
                    obtain.writeInt(1);
                    googleMapOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                IMapViewDelegate Z = com.google.android.gms.maps.internal.IMapViewDelegate.a.Z(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return Z;
            }

            public void a_(b bVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void e(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IMapFragmentDelegate f(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                IMapFragmentDelegate Y = com.google.android.gms.maps.internal.IMapFragmentDelegate.a.Y(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return Y;
            }

            public ICameraUpdateFactoryDelegate gY() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                ICameraUpdateFactoryDelegate S = com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate.a.S(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return S;
            }

            public com.google.android.gms.maps.model.internal.a gZ() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                com.google.android.gms.maps.model.internal.a an = com.google.android.gms.maps.model.internal.a.a.an(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return an;
            }
        }

        public static c U(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof c)) ? new a(iBinder) : (c) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IBinder iBinder = null;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    e(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    IMapFragmentDelegate f = f(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (f != null) {
                        iBinder = f.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    IMapViewDelegate a = a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleMapOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (a != null) {
                        iBinder = a.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    ICameraUpdateFactoryDelegate gY = gY();
                    parcel2.writeNoException();
                    if (gY != null) {
                        iBinder = gY.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    com.google.android.gms.maps.model.internal.a gZ = gZ();
                    parcel2.writeNoException();
                    if (gZ != null) {
                        iBinder = gZ.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.ICreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IMapViewDelegate a(b bVar, GoogleMapOptions googleMapOptions);

    void a(b bVar, int i);

    void e(b bVar);

    IMapFragmentDelegate f(b bVar);

    ICameraUpdateFactoryDelegate gY();

    com.google.android.gms.maps.model.internal.a gZ();
}