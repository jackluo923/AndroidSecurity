package com.google.android.gms.drive.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface w extends IInterface {

    public static abstract class a extends Binder implements w {

        private static class a implements w {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(OnEventResponse onEventResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IEventCallback");
                if (onEventResponse != null) {
                    obtain.writeInt(1);
                    onEventResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.drive.internal.IEventCallback");
        }

        public static w F(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IEventCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof w)) ? new a(iBinder) : (w) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IEventCallback");
                    a(parcel.readInt() != 0 ? (OnEventResponse) OnEventResponse.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IEventCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(OnEventResponse onEventResponse);
}