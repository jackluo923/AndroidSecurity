package com.b.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        static final int a = 1;
        private static final String b = "com.sec.android.iap.IAPServiceCallback";

        private static class a implements b {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            public String a_() {
                return b;
            }

            public void a_(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken(b);
                if (bundle != null) {
                    obtain.writeInt(a);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.a.transact(a, obtain, null, a);
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.a;
            }
        }

        public a() {
            attachInterface(this, b);
        }

        public static b a_(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(b);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new a(iBinder) : (b) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case a:
                    parcel.enforceInterface(b);
                    a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString(b);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(Bundle bundle);
}