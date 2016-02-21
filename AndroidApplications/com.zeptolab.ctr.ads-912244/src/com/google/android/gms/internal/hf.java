package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface hf extends IInterface {

    public static abstract class a extends Binder implements hf {

        private static class a implements hf {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void onAddGeofencesResult(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
                obtain.writeInt(i);
                obtain.writeStringArray(strArr);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onRemoveGeofencesByPendingIntentResult(int i, PendingIntent pendingIntent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
                obtain.writeInt(i);
                if (pendingIntent != null) {
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onRemoveGeofencesByRequestIdsResult(int i, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
                obtain.writeInt(i);
                obtain.writeStringArray(strArr);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.location.internal.IGeofencerCallbacks");
        }

        public static hf O(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof hf)) ? new a(iBinder) : (hf) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    onAddGeofencesResult(parcel.readInt(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    onRemoveGeofencesByRequestIdsResult(parcel.readInt(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    onRemoveGeofencesByPendingIntentResult(parcel.readInt(), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.internal.IGeofencerCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onAddGeofencesResult(int i, String[] strArr);

    void onRemoveGeofencesByPendingIntentResult(int i, PendingIntent pendingIntent);

    void onRemoveGeofencesByRequestIdsResult(int i, String[] strArr);
}