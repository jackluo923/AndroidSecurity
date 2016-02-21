package com.google.android.gms.drive.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface v extends IInterface {

    public static abstract class a extends Binder implements v {

        private static class a implements v {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(OnContentsResponse onContentsResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (onContentsResponse != null) {
                    obtain.writeInt(1);
                    onContentsResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(OnDownloadProgressResponse onDownloadProgressResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (onDownloadProgressResponse != null) {
                    obtain.writeInt(1);
                    onDownloadProgressResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(OnDriveIdResponse onDriveIdResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (onDriveIdResponse != null) {
                    obtain.writeInt(1);
                    onDriveIdResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(OnListEntriesResponse onListEntriesResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (onListEntriesResponse != null) {
                    obtain.writeInt(1);
                    onListEntriesResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(OnListParentsResponse onListParentsResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (onListParentsResponse != null) {
                    obtain.writeInt(1);
                    onListParentsResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(OnMetadataResponse onMetadataResponse) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (onMetadataResponse != null) {
                    obtain.writeInt(1);
                    onMetadataResponse.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void l(Status status) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                if (status != null) {
                    obtain.writeInt(1);
                    status.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onSuccess() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.drive.internal.IDriveServiceCallbacks");
        }

        public static v E(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof v)) ? new a(iBinder) : (v) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            OnListParentsResponse onListParentsResponse = null;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    OnDownloadProgressResponse onDownloadProgressResponse;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        onDownloadProgressResponse = (OnDownloadProgressResponse) OnDownloadProgressResponse.CREATOR.createFromParcel(parcel);
                    }
                    a(onDownloadProgressResponse);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    OnListEntriesResponse onListEntriesResponse;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        onListEntriesResponse = (OnListEntriesResponse) OnListEntriesResponse.CREATOR.createFromParcel(parcel);
                    }
                    a(onListEntriesResponse);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    OnDriveIdResponse onDriveIdResponse;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        onDriveIdResponse = (OnDriveIdResponse) OnDriveIdResponse.CREATOR.createFromParcel(parcel);
                    }
                    a(onDriveIdResponse);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    OnMetadataResponse onMetadataResponse;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        onMetadataResponse = (OnMetadataResponse) OnMetadataResponse.CREATOR.createFromParcel(parcel);
                    }
                    a(onMetadataResponse);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    OnContentsResponse onContentsResponse;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        onContentsResponse = (OnContentsResponse) OnContentsResponse.CREATOR.createFromParcel(parcel);
                    }
                    a(onContentsResponse);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    Status createFromParcel;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        createFromParcel = Status.CREATOR.createFromParcel(parcel);
                    }
                    l(createFromParcel);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    onSuccess();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        onListParentsResponse = (OnListParentsResponse) OnListParentsResponse.CREATOR.createFromParcel(parcel);
                    }
                    a(onListParentsResponse);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(OnContentsResponse onContentsResponse);

    void a(OnDownloadProgressResponse onDownloadProgressResponse);

    void a(OnDriveIdResponse onDriveIdResponse);

    void a(OnListEntriesResponse onListEntriesResponse);

    void a(OnListParentsResponse onListParentsResponse);

    void a(OnMetadataResponse onMetadataResponse);

    void l(Status status);

    void onSuccess();
}