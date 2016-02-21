package com.b.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface a extends IInterface {

    public static abstract class a extends Binder implements a {
        static final int a = 1;
        static final int b = 2;
        static final int c = 3;
        static final int d = 4;
        static final int e = 5;
        private static final String f = "com.sec.android.iap.IAPConnector";

        private static class a implements a {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            public Bundle a_(int i) {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(f);
                obtain.writeInt(i);
                this.a.transact(c, obtain, obtain2, 0);
                obtain2.readException();
                bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle;
            }

            public Bundle a_(int i, String str, String str2, int i2, int i3, String str3) {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(f);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                obtain.writeString(str3);
                this.a.transact(d, obtain, obtain2, 0);
                obtain2.readException();
                bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle;
            }

            public Bundle a_(String str, String str2, int i, int i2, String str3, String str4) {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(f);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeString(str3);
                obtain.writeString(str4);
                this.a.transact(e, obtain, obtain2, 0);
                obtain2.readException();
                bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle;
            }

            public String a_() {
                return f;
            }

            public boolean a_(b bVar) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(f);
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.a.transact(b, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean a_(b bVar, Bundle bundle) {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken(f);
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (bundle != null) {
                    obtain.writeInt(a);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.a.transact(a, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public IBinder asBinder() {
                return this.a;
            }
        }

        public a() {
            attachInterface(this, f);
        }

        public static a a_(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new a(iBinder) : (a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int i3 = 0;
            boolean a;
            Bundle a2;
            switch (i) {
                case a:
                    parcel.enforceInterface(f);
                    a = a(com.b.a.a.b.a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(a ? 1 : 0);
                    return true;
                case b:
                    parcel.enforceInterface(f);
                    a = a(com.b.a.a.b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (a) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case c:
                    parcel.enforceInterface(f);
                    a2 = a(parcel.readInt());
                    parcel2.writeNoException();
                    if (a2 != null) {
                        parcel2.writeInt(a);
                        a2.writeToParcel(parcel2, a);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case d:
                    parcel.enforceInterface(f);
                    a2 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (a2 != null) {
                        parcel2.writeInt(a);
                        a2.writeToParcel(parcel2, a);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case e:
                    parcel.enforceInterface(f);
                    a2 = a(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (a2 != null) {
                        parcel2.writeInt(a);
                        a2.writeToParcel(parcel2, a);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 1598968902:
                    parcel2.writeString(f);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Bundle a_(int i);

    Bundle a_(int i, String str, String str2, int i2, int i3, String str3);

    Bundle a_(String str, String str2, int i, int i2, String str3, String str4);

    boolean a_(b bVar);

    boolean a_(b bVar, Bundle bundle);
}