package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface ds extends IInterface {

    public static abstract class a extends Binder implements ds {

        private static class a implements ds {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void R(String str) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, null, 1);
                obtain.recycle();
            }

            public void S(String str) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, null, 1);
                obtain.recycle();
            }

            public void T(String str) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(double d, double d2, boolean z) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeDouble(d);
                obtain.writeDouble(d2);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(String str, String str2, long j) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeLong(j);
                this.ky.transact(ZBuildConfig.$minsdk, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(String str, byte[] bArr, long j) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                obtain.writeByteArray(bArr);
                obtain.writeLong(j);
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, null, 1);
                obtain.recycle();
            }

            public void a_(boolean z, double d, boolean z2) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeInt(z ? 1 : 0);
                obtain.writeDouble(d);
                if (!z2) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, null, 1);
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void cZ() {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, null, 1);
                obtain.recycle();
            }

            public void df() {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, null, 1);
                obtain.recycle();
            }

            public void disconnect() {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                this.ky.transact(1, obtain, null, 1);
                obtain.recycle();
            }

            public void e(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, null, 1);
                obtain.recycle();
            }

            public void e(String str, boolean z) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                obtain.writeString(str);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, null, 1);
                obtain.recycle();
            }
        }

        public static ds w(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ds)) ? new a(iBinder) : (ds) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = false;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    disconnect();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    e(readString, z);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    e(parcel.readString(), parcel.readString());
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    df();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    R(parcel.readString());
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    cZ();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    a(parcel.readDouble(), parcel.readDouble(), parcel.readInt() != 0);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    boolean z2;
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    z2 = parcel.readInt() != 0;
                    double readDouble = parcel.readDouble();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(z2, readDouble, z);
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    a(parcel.readString(), parcel.readString(), parcel.readLong());
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    a(parcel.readString(), parcel.createByteArray(), parcel.readLong());
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    S(parcel.readString());
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    T(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.internal.ICastDeviceController");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void R(String str);

    void S(String str);

    void T(String str);

    void a(double d, double d2, boolean z);

    void a(String str, String str2, long j);

    void a(String str, byte[] bArr, long j);

    void a(boolean z, double d, boolean z2);

    void cZ();

    void df();

    void disconnect();

    void e(String str, String str2);

    void e(String str, boolean z);
}