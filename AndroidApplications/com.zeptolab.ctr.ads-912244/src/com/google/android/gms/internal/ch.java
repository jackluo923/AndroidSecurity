package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface ch extends IInterface {

    public static abstract class a extends Binder implements ch {

        private static class a implements ch {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public cf b(cd cdVar) {
                cf g;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
                if (cdVar != null) {
                    obtain.writeInt(1);
                    cdVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                g = obtain2.readInt() != 0 ? cf.CREATOR.g(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return g;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
        }

        public static ch q(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ch)) ? new a(iBinder) : (ch) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
                    cf b = b(parcel.readInt() != 0 ? cd.CREATOR.f(parcel) : null);
                    parcel2.writeNoException();
                    if (b != null) {
                        parcel2.writeInt(1);
                        b.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.request.IAdRequestService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    cf b(cd cdVar);
}