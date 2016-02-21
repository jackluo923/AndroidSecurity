package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface bx extends IInterface {

    public static abstract class a extends Binder implements bx {

        private static class a implements bx {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder a_(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                IBinder readStrongBinder = obtain2.readStrongBinder();
                obtain2.recycle();
                obtain.recycle();
                return readStrongBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static bx n(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof bx)) ? new a(iBinder) : (bx) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                    IBinder a = a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder a(b bVar);
}