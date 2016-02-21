package com.google.android.gms.plus.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        private static class a implements c {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public b a_(b bVar, int i, int i2, String str, int i3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeString(str);
                obtain.writeInt(i3);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b a_(b bVar, int i, int i2, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
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

        public static c az(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof c)) ? new a(iBinder) : (c) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IBinder iBinder = null;
            b a;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
                    a = a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a != null ? a.asBinder() : null);
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
                    a = a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (a != null) {
                        iBinder = a.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    b a(b bVar, int i, int i2, String str, int i3);

    b a(b bVar, int i, int i2, String str, String str2);
}