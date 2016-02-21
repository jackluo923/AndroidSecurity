package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface dt extends IInterface {

    public static abstract class a extends Binder implements dt {
        public a() {
            attachInterface(this, "com.google.android.gms.cast.internal.ICastDeviceControllerListener");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = false;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    z(parcel.readInt());
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    ApplicationMetadata applicationMetadata;
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    applicationMetadata = parcel.readInt() != 0 ? (ApplicationMetadata) ApplicationMetadata.CREATOR.createFromParcel(parcel) : null;
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(applicationMetadata, readString, readString2, z);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    A(parcel.readInt());
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    String readString3 = parcel.readString();
                    double readDouble = parcel.readDouble();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(readString3, readDouble, z);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    d(parcel.readString(), parcel.readString());
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    b(parcel.readString(), parcel.createByteArray());
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    C(parcel.readInt());
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    B(parcel.readInt());
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    onApplicationDisconnected(parcel.readInt());
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    a(parcel.readString(), parcel.readLong(), parcel.readInt());
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    a(parcel.readString(), parcel.readLong());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void A(int i);

    void B(int i);

    void C(int i);

    void a(ApplicationMetadata applicationMetadata, String str, String str2, boolean z);

    void a(String str, long j);

    void a(String str, long j, int i);

    void b(String str, double d, boolean z);

    void b(String str, byte[] bArr);

    void d(String str, String str2);

    void onApplicationDisconnected(int i);

    void z(int i);
}