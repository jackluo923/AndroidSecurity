package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public interface dn extends IInterface {

    public static abstract class a extends Binder implements dn {

        private static class a implements dn {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(dm dmVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDJSON, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(dm dmVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                obtain.writeInt(i);
                this.ky.transact(AdTrackerConstants.WEBVIEW_SERVERERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(dm dmVar, int i, String str, byte[] bArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeByteArray(bArr);
                this.ky.transact(5006, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(dm dmVar, int i, byte[] bArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeByteArray(bArr);
                this.ky.transact(AdTrackerConstants.WEBVIEW_TIMEOUT, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void b(dm dmVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                this.ky.transact(5008, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(dm dmVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                obtain.writeInt(i);
                this.ky.transact(5007, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(dm dmVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                obtain.writeStrongBinder(dmVar != null ? dmVar.asBinder() : null);
                this.ky.transact(5009, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public int cN() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDPARAM, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public int cO() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateService");
                this.ky.transact(AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }
        }

        public static dn u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appstate.internal.IAppStateService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof dn)) ? new a(iBinder) : (dn) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int cN;
            switch (i) {
                case AdTrackerConstants.WEBVIEW_INVALIDPARAM:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    cN = cN();
                    parcel2.writeNoException();
                    parcel2.writeInt(cN);
                    return true;
                case AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    cN = cO();
                    parcel2.writeNoException();
                    parcel2.writeInt(cN);
                    return true;
                case AdTrackerConstants.WEBVIEW_TIMEOUT:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    a(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()), parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_SERVERERROR:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    a(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_INVALIDJSON:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    a(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5006:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    a(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 5007:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    b(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5008:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    b(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5009:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
                    c(com.google.android.gms.internal.dm.a.t(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.appstate.internal.IAppStateService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(dm dmVar);

    void a(dm dmVar, int i);

    void a(dm dmVar, int i, String str, byte[] bArr);

    void a(dm dmVar, int i, byte[] bArr);

    void b(dm dmVar);

    void b(dm dmVar, int i);

    void c(dm dmVar);

    int cN();

    int cO();
}