package com.google.android.gms.drive.internal;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface u extends IInterface {

    public static abstract class a extends Binder implements u {

        private static class a implements u {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IntentSender a_(CreateFileIntentSenderRequest createFileIntentSenderRequest) {
                IntentSender intentSender;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (createFileIntentSenderRequest != null) {
                    obtain.writeInt(1);
                    createFileIntentSenderRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                intentSender = obtain2.readInt() != 0 ? (IntentSender) IntentSender.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intentSender;
            }

            public IntentSender a_(OpenFileIntentSenderRequest openFileIntentSenderRequest) {
                IntentSender intentSender;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (openFileIntentSenderRequest != null) {
                    obtain.writeInt(1);
                    openFileIntentSenderRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                intentSender = obtain2.readInt() != 0 ? (IntentSender) IntentSender.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intentSender;
            }

            public void a_(AddEventListenerRequest addEventListenerRequest, w wVar, String str, v vVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (addEventListenerRequest != null) {
                    obtain.writeInt(1);
                    addEventListenerRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(wVar != null ? wVar.asBinder() : null);
                obtain.writeString(str);
                if (vVar != null) {
                    iBinder = vVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(AuthorizeAccessRequest authorizeAccessRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (authorizeAccessRequest != null) {
                    obtain.writeInt(1);
                    authorizeAccessRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(CloseContentsAndUpdateMetadataRequest closeContentsAndUpdateMetadataRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (closeContentsAndUpdateMetadataRequest != null) {
                    obtain.writeInt(1);
                    closeContentsAndUpdateMetadataRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(CloseContentsRequest closeContentsRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (closeContentsRequest != null) {
                    obtain.writeInt(1);
                    closeContentsRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(CreateContentsRequest createContentsRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (createContentsRequest != null) {
                    obtain.writeInt(1);
                    createContentsRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(CreateFileRequest createFileRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (createFileRequest != null) {
                    obtain.writeInt(1);
                    createFileRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(CreateFolderRequest createFolderRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (createFolderRequest != null) {
                    obtain.writeInt(1);
                    createFolderRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(DisconnectRequest disconnectRequest) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (disconnectRequest != null) {
                    obtain.writeInt(1);
                    disconnectRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.REQUEST_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(GetMetadataRequest getMetadataRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (getMetadataRequest != null) {
                    obtain.writeInt(1);
                    getMetadataRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ListParentsRequest listParentsRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (listParentsRequest != null) {
                    obtain.writeInt(1);
                    listParentsRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(OpenContentsRequest openContentsRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (openContentsRequest != null) {
                    obtain.writeInt(1);
                    openContentsRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(QueryRequest queryRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (queryRequest != null) {
                    obtain.writeInt(1);
                    queryRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(RemoveEventListenerRequest removeEventListenerRequest, w wVar, String str, v vVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (removeEventListenerRequest != null) {
                    obtain.writeInt(1);
                    removeEventListenerRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(wVar != null ? wVar.asBinder() : null);
                obtain.writeString(str);
                if (vVar != null) {
                    iBinder = vVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(MMException.REQUEST_BAD_RESPONSE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(TrashResourceRequest trashResourceRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (trashResourceRequest != null) {
                    obtain.writeInt(1);
                    trashResourceRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(UpdateMetadataRequest updateMetadataRequest, v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                if (updateMetadataRequest != null) {
                    obtain.writeInt(1);
                    updateMetadataRequest.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(v vVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                obtain.writeStrongBinder(vVar != null ? vVar.asBinder() : null);
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }
        }

        public static u D(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof u)) ? new a(iBinder) : (u) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            CloseContentsAndUpdateMetadataRequest closeContentsAndUpdateMetadataRequest = null;
            IntentSender a;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    GetMetadataRequest getMetadataRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        getMetadataRequest = (GetMetadataRequest) GetMetadataRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(getMetadataRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    QueryRequest queryRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        queryRequest = (QueryRequest) QueryRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(queryRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    UpdateMetadataRequest updateMetadataRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        updateMetadataRequest = (UpdateMetadataRequest) UpdateMetadataRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(updateMetadataRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    CreateContentsRequest createContentsRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        createContentsRequest = (CreateContentsRequest) CreateContentsRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(createContentsRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    CreateFileRequest createFileRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        createFileRequest = (CreateFileRequest) CreateFileRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(createFileRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    CreateFolderRequest createFolderRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        createFolderRequest = (CreateFolderRequest) CreateFolderRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(createFolderRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    OpenContentsRequest openContentsRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        openContentsRequest = (OpenContentsRequest) OpenContentsRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(openContentsRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    CloseContentsRequest closeContentsRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        closeContentsRequest = (CloseContentsRequest) CloseContentsRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(closeContentsRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    a(com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    OpenFileIntentSenderRequest openFileIntentSenderRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        openFileIntentSenderRequest = (OpenFileIntentSenderRequest) OpenFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
                    }
                    a = a(openFileIntentSenderRequest);
                    parcel2.writeNoException();
                    if (a != null) {
                        parcel2.writeInt(1);
                        a.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    CreateFileIntentSenderRequest createFileIntentSenderRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        createFileIntentSenderRequest = (CreateFileIntentSenderRequest) CreateFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
                    }
                    a = a(createFileIntentSenderRequest);
                    parcel2.writeNoException();
                    if (a != null) {
                        parcel2.writeInt(1);
                        a.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    AuthorizeAccessRequest authorizeAccessRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        authorizeAccessRequest = (AuthorizeAccessRequest) AuthorizeAccessRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(authorizeAccessRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    ListParentsRequest listParentsRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        listParentsRequest = (ListParentsRequest) ListParentsRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(listParentsRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    AddEventListenerRequest addEventListenerRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        addEventListenerRequest = (AddEventListenerRequest) AddEventListenerRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(addEventListenerRequest, com.google.android.gms.drive.internal.w.a.F(parcel.readStrongBinder()), parcel.readString(), com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    RemoveEventListenerRequest removeEventListenerRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        removeEventListenerRequest = (RemoveEventListenerRequest) RemoveEventListenerRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(removeEventListenerRequest, com.google.android.gms.drive.internal.w.a.F(parcel.readStrongBinder()), parcel.readString(), com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    DisconnectRequest disconnectRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        disconnectRequest = (DisconnectRequest) DisconnectRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(disconnectRequest);
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$targetsdk:
                    TrashResourceRequest trashResourceRequest;
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        trashResourceRequest = (TrashResourceRequest) TrashResourceRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(trashResourceRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        closeContentsAndUpdateMetadataRequest = (CloseContentsAndUpdateMetadataRequest) CloseContentsAndUpdateMetadataRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(closeContentsAndUpdateMetadataRequest, com.google.android.gms.drive.internal.v.a.E(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IDriveService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IntentSender a(CreateFileIntentSenderRequest createFileIntentSenderRequest);

    IntentSender a(OpenFileIntentSenderRequest openFileIntentSenderRequest);

    void a(AddEventListenerRequest addEventListenerRequest, w wVar, String str, v vVar);

    void a(AuthorizeAccessRequest authorizeAccessRequest, v vVar);

    void a(CloseContentsAndUpdateMetadataRequest closeContentsAndUpdateMetadataRequest, v vVar);

    void a(CloseContentsRequest closeContentsRequest, v vVar);

    void a(CreateContentsRequest createContentsRequest, v vVar);

    void a(CreateFileRequest createFileRequest, v vVar);

    void a(CreateFolderRequest createFolderRequest, v vVar);

    void a(DisconnectRequest disconnectRequest);

    void a(GetMetadataRequest getMetadataRequest, v vVar);

    void a(ListParentsRequest listParentsRequest, v vVar);

    void a(OpenContentsRequest openContentsRequest, v vVar);

    void a(QueryRequest queryRequest, v vVar);

    void a(RemoveEventListenerRequest removeEventListenerRequest, w wVar, String str, v vVar);

    void a(TrashResourceRequest trashResourceRequest, v vVar);

    void a(UpdateMetadataRequest updateMetadataRequest, v vVar);

    void a(v vVar);
}