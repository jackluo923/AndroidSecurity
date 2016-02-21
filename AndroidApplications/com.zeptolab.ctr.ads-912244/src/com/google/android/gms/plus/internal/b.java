package com.google.android.gms.plus.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.ir;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        private static class a implements b {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void L(Status status) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                if (status != null) {
                    obtain.writeInt(1);
                    status.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(int i, Bundle bundle, Bundle bundle2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle2 != null) {
                    obtain.writeInt(1);
                    bundle2.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(int i, Bundle bundle, ParcelFileDescriptor parcelFileDescriptor) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (parcelFileDescriptor != null) {
                    obtain.writeInt(1);
                    parcelFileDescriptor.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(int i, Bundle bundle, fh fhVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (fhVar != null) {
                    obtain.writeInt(1);
                    fhVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(int i, ir irVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeInt(i);
                if (irVar != null) {
                    obtain.writeInt(1);
                    irVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(DataHolder dataHolder, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(DataHolder dataHolder, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void aP(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeString(str);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void aQ(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeString(str);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void d(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusCallbacks");
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.plus.internal.IPlusCallbacks");
        }

        public static b ay(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new a(iBinder) : (b) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Status status = null;
            DataHolder createFromParcel;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    aP(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (parcel.readInt() != 0) {
                        createFromParcel = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    a(createFromParcel, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    Bundle bundle;
                    fh x;
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    int readInt = parcel.readInt();
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        x = fh.CREATOR.x(parcel);
                    }
                    a(readInt, bundle, x);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (parcel.readInt() != 0) {
                        createFromParcel = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    a(createFromParcel, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    d(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    aQ(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    ir aI;
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        aI = ir.CREATOR.aI(parcel);
                    }
                    a(readInt2, aI);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusCallbacks");
                    if (parcel.readInt() != 0) {
                        status = Status.CREATOR.createFromParcel(parcel);
                    }
                    L(status);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.plus.internal.IPlusCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void L(Status status);

    void a(int i, Bundle bundle, Bundle bundle2);

    void a(int i, Bundle bundle, ParcelFileDescriptor parcelFileDescriptor);

    void a(int i, Bundle bundle, fh fhVar);

    void a(int i, ir irVar);

    void a(DataHolder dataHolder, String str);

    void a(DataHolder dataHolder, String str, String str2);

    void aP(String str);

    void aQ(String str);

    void d(int i, Bundle bundle);
}