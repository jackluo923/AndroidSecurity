package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.fh;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.List;

public interface d extends IInterface {

    public static abstract class a extends Binder implements d {

        private static class a implements d {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(fh fhVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                if (fhVar != null) {
                    obtain.writeInt(1);
                    fhVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, int i, int i2, int i3, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                obtain.writeString(str);
                this.ky.transact(MMException.REQUEST_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, int i, String str, Uri uri, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (uri != null) {
                    obtain.writeInt(1);
                    uri.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str2);
                obtain.writeString(str3);
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, Uri uri, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
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
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, fh fhVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (fhVar != null) {
                    obtain.writeInt(1);
                    fhVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ApiEventType.API_MRAID_GET_VIDEO_VOLUME, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, List list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeStringList(list);
                this.ky.transact(ApiEventType.API_MRAID_UNMUTE_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void b(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_GET_DEFAULT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(b bVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(b bVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void clearDefaultAccount() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(b bVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(ApiEventType.API_MRAID_PLAY_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(b bVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(ApiEventType.API_MRAID_SET_VIDEO_VOLUME, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public String getAccountName() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public String hl() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                this.ky.transact(ApiEventType.API_MRAID_MUTE_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public boolean hm() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                this.ky.transact(ApiEventType.API_MRAID_UNMUTE_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public String hn() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                this.ky.transact(ApiEventType.API_MRAID_IS_VIDEO_MUTED, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public void removeMoment(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                obtain.writeString(str);
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static d aA(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new a(iBinder) : (d) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            fh fhVar = null;
            String accountName;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    b(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(parcel.readInt() != 0 ? fh.CREATOR.x(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    accountName = getAccountName();
                    parcel2.writeNoException();
                    parcel2.writeString(accountName);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    clearDefaultAccount();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    Uri uri;
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    b ay = com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder());
                    int readInt = parcel.readInt();
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    a(ay, readInt, readString, uri, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$targetsdk:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    removeMoment(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    c(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    b(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    a(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_PLAY_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    d(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_MUTE_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    accountName = hl();
                    parcel2.writeNoException();
                    parcel2.writeString(accountName);
                    return true;
                case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    boolean hm = hm();
                    parcel2.writeNoException();
                    parcel2.writeInt(hm ? 1 : 0);
                    return true;
                case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    accountName = hn();
                    parcel2.writeNoException();
                    parcel2.writeString(accountName);
                    return true;
                case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    e(com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    b ay2 = com.google.android.gms.plus.internal.b.a.ay(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        fhVar = fh.CREATOR.x(parcel);
                    }
                    a(ay2, fhVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.plus.internal.IPlusService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(fh fhVar);

    void a(b bVar);

    void a(b bVar, int i, int i2, int i3, String str);

    void a(b bVar, int i, String str, Uri uri, String str2, String str3);

    void a(b bVar, Uri uri, Bundle bundle);

    void a(b bVar, fh fhVar);

    void a(b bVar, String str);

    void a(b bVar, String str, String str2);

    void a(b bVar, List list);

    void b(b bVar);

    void b(b bVar, String str);

    void c(b bVar, String str);

    void clearDefaultAccount();

    void d_(b bVar, String str);

    void e(b bVar, String str);

    String getAccountName();

    String hl();

    boolean hm();

    String hn();

    void removeMoment(String str);
}