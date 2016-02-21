package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;
import java.util.Map;

public interface dj extends IInterface {

    public static abstract class a extends Binder implements dj {

        private static class a implements dj {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(Map map, long j, String str, List list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                obtain.writeMap(map);
                obtain.writeLong(j);
                obtain.writeString(str);
                obtain.writeTypedList(list);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void bk() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public String getVersion() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }
        }

        public static dj r(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof dj)) ? new a(iBinder) : (dj) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    a(parcel.readHashMap(getClass().getClassLoader()), parcel.readLong(), parcel.readString(), parcel.createTypedArrayList(di.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    bk();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                    String version = getVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(version);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(Map map, long j, String str, List list);

    void bk();

    String getVersion();
}