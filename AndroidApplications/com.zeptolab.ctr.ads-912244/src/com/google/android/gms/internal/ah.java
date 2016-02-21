package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface ah extends IInterface {

    public static abstract class a extends Binder implements ah {

        private static class a implements ah {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder a_(b bVar, ab abVar, String str, bf bfVar, int i) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (abVar != null) {
                    obtain.writeInt(1);
                    abVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                if (bfVar != null) {
                    iBinder = bfVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                obtain.writeInt(i);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                iBinder = obtain2.readStrongBinder();
                obtain2.recycle();
                obtain.recycle();
                return iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static ah g(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ah)) ? new a(iBinder) : (ah) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    IBinder a = a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt() != 0 ? ab.CREATOR.b(parcel) : null, parcel.readString(), com.google.android.gms.internal.bf.a.i(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder a(b bVar, ab abVar, String str, bf bfVar, int i);
}