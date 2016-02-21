package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface g extends IInterface {

    public static abstract class a extends Binder implements g {

        private static class a implements g {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public Tile getTile(int i, int i2, int i3) {
                Tile createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                createFromParcel = obtain2.readInt() != 0 ? Tile.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return createFromParcel;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        }

        public static g au(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof g)) ? new a(iBinder) : (g) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                    Tile tile = getTile(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (tile != null) {
                        parcel2.writeInt(1);
                        tile.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Tile getTile(int i, int i2, int i3);
}