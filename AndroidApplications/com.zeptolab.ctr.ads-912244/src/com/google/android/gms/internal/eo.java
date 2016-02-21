package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface eo extends IInterface {

    public static abstract class a extends Binder implements eo {

        private static class a implements eo {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public b a_(b bVar, int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static eo A(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof eo)) ? new a(iBinder) : (eo) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                    b a = a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a != null ? a.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    b a(b bVar, int i, int i2);
}