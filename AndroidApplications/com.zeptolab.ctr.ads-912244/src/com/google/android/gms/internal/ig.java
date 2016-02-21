package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface ig extends IInterface {

    public static abstract class a extends Binder implements ig {

        private static class a implements ig {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(if_ com_google_android_gms_internal_if, Uri uri, Bundle bundle, boolean z) {
                IBinder iBinder = null;
                int i = 1;
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaService");
                if (com_google_android_gms_internal_if != null) {
                    iBinder = com_google_android_gms_internal_if.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                if (uri != null) {
                    obtain.writeInt(1);
                    uri.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.ky.transact(1, obtain, null, 1);
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static ig aw(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ig)) ? new a(iBinder) : (ig) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaService");
                    a(com.google.android.gms.internal.if_.a.av(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.panorama.internal.IPanoramaService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(if_ com_google_android_gms_internal_if, Uri uri, Bundle bundle, boolean z);
}