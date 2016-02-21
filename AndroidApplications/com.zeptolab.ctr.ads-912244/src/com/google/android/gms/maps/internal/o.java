package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface o extends IInterface {

    public static abstract class a extends Binder implements o {

        private static class a implements o {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void c(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onSnapshotReady(Bitmap bitmap) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
                if (bitmap != null) {
                    obtain.writeInt(1);
                    bitmap.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        }

        public static o al(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof o)) ? new a(iBinder) : (o) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
                    onSnapshotReady(parcel.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
                    c(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void c(b bVar);

    void onSnapshotReady(Bitmap bitmap);
}