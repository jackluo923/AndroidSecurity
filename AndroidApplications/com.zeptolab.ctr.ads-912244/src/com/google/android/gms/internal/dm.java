package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public interface dm extends IInterface {

    public static abstract class a extends Binder implements dm {

        private static class a implements dm {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(int i, DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                obtain.writeInt(i);
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDPARAM, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void b(int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                obtain.writeInt(i);
                obtain.writeInt(i2);
                this.ky.transact(AdTrackerConstants.WEBVIEW_TIMEOUT, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void cM() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                this.ky.transact(AdTrackerConstants.WEBVIEW_SERVERERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void v(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                obtain.writeInt(i);
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDJSON, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.appstate.internal.IAppStateCallbacks");
        }

        public static dm t(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof dm)) ? new a(iBinder) : (dm) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            DataHolder dataHolder = null;
            switch (i) {
                case AdTrackerConstants.WEBVIEW_INVALIDPARAM:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    a(readInt, dataHolder);
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    a(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_TIMEOUT:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                    b(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_SERVERERROR:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                    cM();
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_INVALIDJSON:
                    parcel.enforceInterface("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                    v(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.appstate.internal.IAppStateCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(int i, DataHolder dataHolder);

    void a(DataHolder dataHolder);

    void b(int i, int i2);

    void cM();

    void v(int i);
}