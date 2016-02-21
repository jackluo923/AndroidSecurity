package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public interface gb extends IInterface {

    public static abstract class a extends Binder implements gb {

        private static class a implements gb {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public int a_(ga gaVar, byte[] bArr, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeByteArray(bArr);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(5033, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public Intent a_(int i, int i2, boolean z) {
                Intent intent;
                int i3 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeInt(i);
                obtain.writeInt(i2);
                if (z) {
                    i3 = 1;
                }
                obtain.writeInt(i3);
                this.ky.transact(9008, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent a_(int i, byte[] bArr, int i2, String str) {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeInt(i);
                obtain.writeByteArray(bArr);
                obtain.writeInt(i2);
                obtain.writeString(str);
                this.ky.transact(10012, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent a_(RoomEntity roomEntity, int i) {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                if (roomEntity != null) {
                    obtain.writeInt(1);
                    roomEntity.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeInt(i);
                this.ky.transact(9011, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent a_(gy gyVar, String str, String str2) {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                if (gyVar != null) {
                    obtain.writeInt(1);
                    gyVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(10021, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent a_(gz gzVar, String str) {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                if (gzVar != null) {
                    obtain.writeInt(1);
                    gzVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                this.ky.transact(10022, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent a_(ParticipantEntity[] participantEntityArr, String str, String str2, Uri uri, Uri uri2) {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeTypedArray(participantEntityArr, 0);
                obtain.writeString(str);
                obtain.writeString(str2);
                if (uri != null) {
                    obtain.writeInt(1);
                    uri.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (uri2 != null) {
                    obtain.writeInt(1);
                    uri2.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(9031, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public void a_(long j, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                obtain.writeString(str);
                this.ky.transact(8019, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(iBinder);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDJSON, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                this.ky.transact(10016, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int i, int i2, int i3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                this.ky.transact(10009, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int i, int i2, boolean z, boolean z2) {
                int i3 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i3 = 0;
                }
                obtain.writeInt(i3);
                this.ky.transact(5044, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int i, int i2, String[] strArr, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeStringArray(strArr);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8004, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(5015, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int i, int[] iArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeIntArray(iArr);
                this.ky.transact(10018, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeLong(j);
                this.ky.transact(5058, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, long j, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeLong(j);
                obtain.writeString(str);
                this.ky.transact(8018, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, Bundle bundle, int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeInt(i);
                obtain.writeInt(i2);
                this.ky.transact(5021, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, IBinder iBinder, int i, String[] strArr, Bundle bundle, boolean z, long j) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeStrongBinder(iBinder);
                obtain.writeInt(i);
                obtain.writeStringArray(strArr);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (!z) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                obtain.writeLong(j);
                this.ky.transact(5030, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, IBinder iBinder, String str, boolean z, long j) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeStrongBinder(iBinder);
                obtain.writeString(str);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                obtain.writeLong(j);
                this.ky.transact(5031, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5014, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                this.ky.transact(10011, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i, int i2, int i3, boolean z) {
                int i4 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                if (z) {
                    i4 = 1;
                }
                obtain.writeInt(i4);
                this.ky.transact(5019, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeStrongBinder(iBinder);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5025, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i, boolean z) {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                if (z) {
                    i2 = 1;
                }
                obtain.writeInt(i2);
                this.ky.transact(8023, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(5045, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i, boolean z, boolean z2, boolean z3, boolean z4) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                obtain.writeInt(z2 ? 1 : 0);
                obtain.writeInt(z3 ? 1 : 0);
                if (!z4) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_ERROR_INACTIVE_MATCH, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int i, int[] iArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeIntArray(iArr);
                this.ky.transact(10019, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeLong(j);
                this.ky.transact(5016, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, long j, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeLong(j);
                obtain.writeString(str2);
                this.ky.transact(GamesStatusCodes.STATUS_INVALID_REAL_TIME_ROOM_ID, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeStrongBinder(iBinder);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5023, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(5038, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2, int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                this.ky.transact(8001, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2, int i, int i2, int i3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                this.ky.transact(10010, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2, int i, int i2, int i3, boolean z) {
                int i4 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                if (z) {
                    i4 = 1;
                }
                obtain.writeInt(i4);
                this.ky.transact(5039, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(9028, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(AdTrackerConstants.SERVER_BADREQUEST, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String str2, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeStringArray(strArr);
                this.ky.transact(10008, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(5054, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeByteArray(bArr);
                obtain.writeString(str2);
                obtain.writeTypedArray(participantResultArr, 0);
                this.ky.transact(8007, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, byte[] bArr, ParticipantResult[] participantResultArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeByteArray(bArr);
                obtain.writeTypedArray(participantResultArr, 0);
                this.ky.transact(8008, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, int[] iArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeIntArray(iArr);
                this.ky.transact(8017, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String str, String[] strArr, int i, byte[] bArr, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeStringArray(strArr);
                obtain.writeInt(i);
                obtain.writeByteArray(bArr);
                obtain.writeInt(i2);
                this.ky.transact(GamesActivityResultCodes.RESULT_LEFT_ROOM, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(AdTrackerConstants.SERVER_RELOAD_WEBVIEW, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, boolean z, Bundle bundle) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5063, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, int[] iArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeIntArray(iArr);
                this.ky.transact(8003, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ga gaVar, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeStringArray(strArr);
                this.ky.transact(GamesActivityResultCodes.RESULT_NETWORK_FAILURE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public int aA(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(5060, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public Uri aB(String str) {
                Uri uri;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(5066, obtain, obtain2, 0);
                obtain2.readException();
                uri = obtain2.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return uri;
            }

            public void aC(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(8002, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public ParcelFileDescriptor aD(String str) {
                ParcelFileDescriptor parcelFileDescriptor;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(9030, obtain, obtain2, 0);
                obtain2.readException();
                parcelFileDescriptor = obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return parcelFileDescriptor;
            }

            public void aU(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeInt(i);
                this.ky.transact(5036, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public Intent au(String str) {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(9004, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public String ax(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(5064, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public String ay(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(5035, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public void az(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                this.ky.transact(5050, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public int b(byte[] bArr, String str, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeByteArray(bArr);
                obtain.writeString(str);
                obtain.writeStringArray(strArr);
                this.ky.transact(5034, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public Intent b(int i, int i2, boolean z) {
                Intent intent;
                int i3 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeInt(i);
                obtain.writeInt(i2);
                if (z) {
                    i3 = 1;
                }
                obtain.writeInt(i3);
                this.ky.transact(9009, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public void b(long j, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                obtain.writeString(str);
                this.ky.transact(8021, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5017, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(5046, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeLong(j);
                this.ky.transact(8012, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, long j, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeLong(j);
                obtain.writeString(str);
                this.ky.transact(8020, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5018, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, int i, int i2, int i3, boolean z) {
                int i4 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                if (z) {
                    i4 = 1;
                }
                obtain.writeInt(i4);
                this.ky.transact(5020, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, int i, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeStrongBinder(iBinder);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesStatusCodes.STATUS_PARTICIPANT_NOT_CONNECTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, int i, boolean z) {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                if (z) {
                    i2 = 1;
                }
                obtain.writeInt(i2);
                this.ky.transact(10017, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(5501, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeStrongBinder(iBinder);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5024, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(5041, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, String str2, int i, int i2, int i3, boolean z) {
                int i4 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                if (z) {
                    i4 = 1;
                }
                obtain.writeInt(i4);
                this.ky.transact(5040, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, String str2, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_NOT_FOUND, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String str, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_STATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(ga gaVar, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeStringArray(strArr);
                this.ky.transact(GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(String str, String str2, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                this.ky.transact(5051, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(long j, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                obtain.writeString(str);
                this.ky.transact(GamesActivityResultCodes.RESULT_APP_MISCONFIGURED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5022, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(5048, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeLong(j);
                this.ky.transact(GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, long j, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeLong(j);
                obtain.writeString(str);
                this.ky.transact(GamesActivityResultCodes.RESULT_LICENSE_FAILED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5032, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, String str, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(9001, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(8011, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, String str, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(8027, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(ga gaVar, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeStringArray(strArr);
                this.ky.transact(10020, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(String str, String str2, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeInt(i);
                this.ky.transact(8026, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public Bundle cY() {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(AdTrackerConstants.WEBVIEW_SERVERERROR, obtain, obtain2, 0);
                obtain2.readException();
                bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return bundle;
            }

            public void d(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5026, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(ga gaVar, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(AdTrackerConstants.SERVER_INVALIDAPPID, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5037, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(ga gaVar, String str, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(9020, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(ga gaVar, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(8015, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(ga gaVar, String str, boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_ERROR_ALREADY_REMATCHED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public ParcelFileDescriptor e(Uri uri) {
                ParcelFileDescriptor parcelFileDescriptor;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                if (uri != null) {
                    obtain.writeInt(1);
                    uri.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesStatusCodes.STATUS_MATCH_ERROR_LOCALLY_MODIFIED, obtain, obtain2, 0);
                obtain2.readException();
                parcelFileDescriptor = obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return parcelFileDescriptor;
            }

            public void e(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5027, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(ga gaVar, int i, boolean z, boolean z2) {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                obtain.writeInt(i2);
                this.ky.transact(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_INVALID_OPERATION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5042, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(ga gaVar, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(8016, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void f(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5047, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void f(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5043, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public int fA() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9019, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public String fB() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(AdTrackerConstants.WEBVIEW_TIMEOUT, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public int fC() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(8024, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public Intent fD() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(10015, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public int fE() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(10013, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public int fF() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(10023, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public void fH() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(5006, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public DataHolder fI() {
                DataHolder createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(5013, obtain, obtain2, 0);
                obtain2.readException();
                createFromParcel = obtain2.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return createFromParcel;
            }

            public boolean fJ() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(5067, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public DataHolder fK() {
                DataHolder createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(5502, obtain, obtain2, 0);
                obtain2.readException();
                createFromParcel = obtain2.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return createFromParcel;
            }

            public void fL() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(8022, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public Intent fM() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9013, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public String fn() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(5007, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public String fo() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(5012, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public Intent fr() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9003, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent fs() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9005, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent ft() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9006, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent fu() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9007, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent fy() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9010, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public Intent fz() {
                Intent intent;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                this.ky.transact(9012, obtain, obtain2, 0);
                obtain2.readException();
                intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return intent;
            }

            public void g(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5049, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void g(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5052, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public DataHolder h(ga gaVar, String str) {
                DataHolder dataHolder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5053, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    dataHolder = DataHolder.CREATOR.createFromParcel(obtain2);
                }
                obtain2.recycle();
                obtain.recycle();
                return dataHolder;
            }

            public void h(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5056, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void i(ga gaVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                this.ky.transact(5062, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void i(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5061, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void j(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(5057, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void j(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(5065, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void k(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(GamesStatusCodes.STATUS_REAL_TIME_MESSAGE_SEND_FAILED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void k(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeString(str2);
                this.ky.transact(8025, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void l(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(8005, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void l(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeInt(i);
                this.ky.transact(5029, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void m(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(8006, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void m(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeInt(i);
                this.ky.transact(5028, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void n(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDPARAM, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void n(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(8009, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void n(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeInt(i);
                this.ky.transact(5055, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void o(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                this.ky.transact(5059, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void o(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(8010, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void o(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeString(str);
                obtain.writeInt(i);
                this.ky.transact(10014, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void p(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                this.ky.transact(8013, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void p(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(8014, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void q(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeLong(j);
                this.ky.transact(GamesActivityResultCodes.RESULT_SIGN_IN_FAILED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void q(ga gaVar, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                obtain.writeStrongBinder(gaVar != null ? gaVar.asBinder() : null);
                obtain.writeString(str);
                this.ky.transact(9002, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void y(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(5068, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static gb J(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof gb)) ? new a(iBinder) : (gb) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            gy gyVar = null;
            boolean z = false;
            String fB;
            DataHolder fI;
            ga I;
            int readInt;
            boolean z2;
            String readString;
            int readInt2;
            IBinder readStrongBinder;
            Bundle bundle;
            String[] createStringArray;
            int a;
            String readString2;
            int readInt3;
            int readInt4;
            int readInt5;
            ga I2;
            String readString3;
            ParcelFileDescriptor e;
            Intent fr;
            switch (i) {
                case AdTrackerConstants.WEBVIEW_INVALIDPARAM:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_TIMEOUT:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fB = fB();
                    parcel2.writeNoException();
                    parcel2.writeString(fB);
                    return true;
                case AdTrackerConstants.WEBVIEW_SERVERERROR:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    Bundle cY = cY();
                    parcel2.writeNoException();
                    if (cY != null) {
                        parcel2.writeInt(1);
                        cY.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case AdTrackerConstants.WEBVIEW_INVALIDJSON:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fH();
                    parcel2.writeNoException();
                    return true;
                case 5007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fB = fn();
                    parcel2.writeNoException();
                    parcel2.writeString(fB);
                    return true;
                case 5012:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fB = fo();
                    parcel2.writeNoException();
                    parcel2.writeString(fB);
                    return true;
                case 5013:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fI = fI();
                    parcel2.writeNoException();
                    if (fI != null) {
                        parcel2.writeInt(1);
                        fI.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 5014:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5015:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    z2 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I, readInt, z2, z);
                    parcel2.writeNoException();
                    return true;
                case 5016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 5017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5018:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5021:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5022:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5023:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5024:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5025:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString = parcel.readString();
                    readInt2 = parcel.readInt();
                    readStrongBinder = parcel.readStrongBinder();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(I, readString, readInt2, readStrongBinder, bundle);
                    parcel2.writeNoException();
                    return true;
                case 5026:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    d(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5027:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    e(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5028:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    m(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5029:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    l(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5030:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    readInt2 = parcel.readInt();
                    createStringArray = parcel.createStringArray();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(I, readStrongBinder2, readInt2, createStringArray, bundle, parcel.readInt() != 0, parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 5031:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0, parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 5032:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5033:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.createByteArray(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 5034:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = b(parcel.createByteArray(), parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 5035:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fB = ay(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(fB);
                    return true;
                case 5036:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    aU(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5037:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    d(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5038:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5039:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString = parcel.readString();
                    readString2 = parcel.readString();
                    readInt3 = parcel.readInt();
                    readInt4 = parcel.readInt();
                    readInt5 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I, readString, readString2, readInt3, readInt4, readInt5, z);
                    parcel2.writeNoException();
                    return true;
                case 5040:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString = parcel.readString();
                    readString2 = parcel.readString();
                    readInt3 = parcel.readInt();
                    readInt4 = parcel.readInt();
                    readInt5 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(I, readString, readString2, readInt3, readInt4, readInt5, z);
                    parcel2.writeNoException();
                    return true;
                case 5041:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5042:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    e(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5043:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    f(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5044:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5045:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5046:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    z2 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(I, readInt, z2, z);
                    parcel2.writeNoException();
                    return true;
                case 5047:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    f(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5048:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    z2 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    c(I, readInt, z2, z);
                    parcel2.writeNoException();
                    return true;
                case 5049:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    g(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5050:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    az(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5051:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5052:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    g(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5053:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fI = h(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    if (fI != null) {
                        parcel2.writeInt(1);
                        fI.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 5054:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I2, readString3, z);
                    parcel2.writeNoException();
                    return true;
                case 5055:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5056:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    h(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5057:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    j(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5058:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 5059:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    o(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 5060:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = aA(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 5061:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    i(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5062:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    i(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5063:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I, z, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5064:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fB = ax(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(fB);
                    return true;
                case 5065:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    j(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5066:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    Uri aB = aB(parcel.readString());
                    parcel2.writeNoException();
                    if (aB != null) {
                        parcel2.writeInt(1);
                        aB.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 5067:
                    int i3;
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    z2 = fJ();
                    parcel2.writeNoException();
                    if (z2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 5068:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    y(z);
                    parcel2.writeNoException();
                    return true;
                case 5501:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5502:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fI = fK();
                    parcel2.writeNoException();
                    if (fI != null) {
                        parcel2.writeInt(1);
                        fI.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case AdTrackerConstants.SERVER_RELOAD_WEBVIEW:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I2, z);
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.SERVER_BADREQUEST:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I2, readString3, readString, z);
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.SERVER_INVALIDAPPID:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    z2 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    d(I, readInt, z2, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_INVALID_OPERATION:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    z2 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    e(I, readInt, z2, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_ERROR_INACTIVE_MATCH:
                    boolean z3;
                    boolean z4;
                    boolean z5;
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString = parcel.readString();
                    readInt2 = parcel.readInt();
                    z3 = parcel.readInt() != 0;
                    z4 = parcel.readInt() != 0;
                    z5 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I, readString, readInt2, z3, z4, z5, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_STATE:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(I2, readString3, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(I2, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    c(I2, readString3, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_ERROR_ALREADY_REMATCHED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    d(I2, readString3, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_NOT_FOUND:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(I2, readString3, readString, z);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MATCH_ERROR_LOCALLY_MODIFIED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    e = e(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (e != null) {
                        parcel2.writeInt(1);
                        e.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case GamesStatusCodes.STATUS_REAL_TIME_MESSAGE_SEND_FAILED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    k(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_INVALID_REAL_TIME_ROOM_ID:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_PARTICIPANT_NOT_CONNECTED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString = parcel.readString();
                    readInt2 = parcel.readInt();
                    readStrongBinder = parcel.readStrongBinder();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    b(I, readString, readInt2, readStrongBinder, bundle);
                    parcel2.writeNoException();
                    return true;
                case 8001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    aC(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 8004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readInt2 = parcel.readInt();
                    createStringArray = parcel.createStringArray();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(I, readInt, readInt2, createStringArray, bundle);
                    parcel2.writeNoException();
                    return true;
                case 8005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    l(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    m(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.createByteArray(), parcel.readString(), (ParticipantResult[]) parcel.createTypedArray(ParticipantResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 8008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.createByteArray(), (ParticipantResult[]) parcel.createTypedArray(ParticipantResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 8009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    o(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8012:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 8013:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    p(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 8014:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    p(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8015:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    d(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    e(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 8018:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8021:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8022:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fL();
                    parcel2.writeNoException();
                    return true;
                case 8023:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    a(I2, readString3, readInt, z);
                    parcel2.writeNoException();
                    return true;
                case 8024:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = fC();
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 8025:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    k(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8026:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8027:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    c(I2, z);
                    parcel2.writeNoException();
                    return true;
                case 9001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 9002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    q(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fr();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = au(parcel.readString());
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fs();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = ft();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fu();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = a(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = b(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fy();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = a(parcel.readInt() != 0 ? (RoomEntity) RoomEntity.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9012:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fz();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9013:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fM();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = fA();
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 9020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    d(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 9028:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 9030:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    e = aD(parcel.readString());
                    parcel2.writeNoException();
                    if (e != null) {
                        parcel2.writeInt(1);
                        e.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 9031:
                    Uri uri;
                    Uri uri2;
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    ParticipantEntity[] participantEntityArr = (ParticipantEntity[]) parcel.createTypedArray(ParticipantEntity.CREATOR);
                    readString = parcel.readString();
                    readString2 = parcel.readString();
                    uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    fr = a(participantEntityArr, readString, readString2, uri, uri2);
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    q(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_LICENSE_FAILED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_LEFT_ROOM:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.createStringArray(), parcel.readInt(), parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_NETWORK_FAILURE:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    b(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 10008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 10009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10012:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = a(parcel.readInt(), parcel.createByteArray(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 10013:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = fE();
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 10014:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    o(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10015:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    fr = fD();
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 10016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    I2 = com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder());
                    readString3 = parcel.readString();
                    readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    b(I2, readString3, readInt, z);
                    parcel2.writeNoException();
                    return true;
                case 10018:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readInt(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 10019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 10020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    c(com.google.android.gms.internal.ga.a.I(parcel.readStrongBinder()), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 10021:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    if (parcel.readInt() != 0) {
                        gyVar = gy.CREATOR.al(parcel);
                    }
                    fr = a(gyVar, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 10022:
                    gz am;
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    if (parcel.readInt() != 0) {
                        am = gz.CREATOR.am(parcel);
                    }
                    fr = a(am, parcel.readString());
                    parcel2.writeNoException();
                    if (fr != null) {
                        parcel2.writeInt(1);
                        fr.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case 10023:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    a = fF();
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.games.internal.IGamesService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int a(ga gaVar, byte[] bArr, String str, String str2);

    Intent a(int i, int i2, boolean z);

    Intent a(int i, byte[] bArr, int i2, String str);

    Intent a(RoomEntity roomEntity, int i);

    Intent a(gy gyVar, String str, String str2);

    Intent a(gz gzVar, String str);

    Intent a(ParticipantEntity[] participantEntityArr, String str, String str2, Uri uri, Uri uri2);

    void a(long j, String str);

    void a(IBinder iBinder, Bundle bundle);

    void a(ga gaVar);

    void a(ga gaVar, int i);

    void a(ga gaVar, int i, int i2, int i3);

    void a(ga gaVar, int i, int i2, boolean z, boolean z2);

    void a(ga gaVar, int i, int i2, String[] strArr, Bundle bundle);

    void a(ga gaVar, int i, boolean z, boolean z2);

    void a(ga gaVar, int i, int[] iArr);

    void a(ga gaVar, long j);

    void a(ga gaVar, long j, String str);

    void a(ga gaVar, Bundle bundle, int i, int i2);

    void a(ga gaVar, IBinder iBinder, int i, String[] strArr, Bundle bundle, boolean z, long j);

    void a(ga gaVar, IBinder iBinder, String str, boolean z, long j);

    void a(ga gaVar, String str);

    void a(ga gaVar, String str, int i);

    void a(ga gaVar, String str, int i, int i2, int i3, boolean z);

    void a(ga gaVar, String str, int i, IBinder iBinder, Bundle bundle);

    void a(ga gaVar, String str, int i, boolean z);

    void a(ga gaVar, String str, int i, boolean z, boolean z2);

    void a(ga gaVar, String str, int i, boolean z, boolean z2, boolean z3, boolean z4);

    void a(ga gaVar, String str, int i, int[] iArr);

    void a(ga gaVar, String str, long j);

    void a(ga gaVar, String str, long j, String str2);

    void a(ga gaVar, String str, IBinder iBinder, Bundle bundle);

    void a(ga gaVar, String str, String str2);

    void a(ga gaVar, String str, String str2, int i, int i2);

    void a(ga gaVar, String str, String str2, int i, int i2, int i3);

    void a(ga gaVar, String str, String str2, int i, int i2, int i3, boolean z);

    void a(ga gaVar, String str, String str2, int i, boolean z, boolean z2);

    void a(ga gaVar, String str, String str2, boolean z);

    void a(ga gaVar, String str, String str2, String[] strArr);

    void a(ga gaVar, String str, boolean z);

    void a(ga gaVar, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr);

    void a(ga gaVar, String str, byte[] bArr, ParticipantResult[] participantResultArr);

    void a(ga gaVar, String str, int[] iArr);

    void a(ga gaVar, String str, String[] strArr, int i, byte[] bArr, int i2);

    void a(ga gaVar, boolean z);

    void a(ga gaVar, boolean z, Bundle bundle);

    void a(ga gaVar, int[] iArr);

    void a(ga gaVar, String[] strArr);

    int aA(String str);

    Uri aB(String str);

    void aC(String str);

    ParcelFileDescriptor aD(String str);

    void aU(int i);

    Intent au(String str);

    String ax(String str);

    String ay(String str);

    void az(String str);

    int b(byte[] bArr, String str, String[] strArr);

    Intent b(int i, int i2, boolean z);

    void b(long j, String str);

    void b(ga gaVar);

    void b(ga gaVar, int i, boolean z, boolean z2);

    void b(ga gaVar, long j);

    void b(ga gaVar, long j, String str);

    void b(ga gaVar, String str);

    void b(ga gaVar, String str, int i, int i2, int i3, boolean z);

    void b(ga gaVar, String str, int i, IBinder iBinder, Bundle bundle);

    void b(ga gaVar, String str, int i, boolean z);

    void b(ga gaVar, String str, int i, boolean z, boolean z2);

    void b(ga gaVar, String str, IBinder iBinder, Bundle bundle);

    void b(ga gaVar, String str, String str2);

    void b(ga gaVar, String str, String str2, int i, int i2, int i3, boolean z);

    void b(ga gaVar, String str, String str2, boolean z);

    void b(ga gaVar, String str, boolean z);

    void b(ga gaVar, boolean z);

    void b(ga gaVar, String[] strArr);

    void b(String str, String str2, int i);

    void c(long j, String str);

    void c(ga gaVar);

    void c(ga gaVar, int i, boolean z, boolean z2);

    void c(ga gaVar, long j);

    void c(ga gaVar, long j, String str);

    void c(ga gaVar, String str);

    void c(ga gaVar, String str, int i, boolean z, boolean z2);

    void c(ga gaVar, String str, String str2);

    void c(ga gaVar, String str, boolean z);

    void c(ga gaVar, boolean z);

    void c(ga gaVar, String[] strArr);

    void c(String str, String str2, int i);

    Bundle cY();

    void d(ga gaVar);

    void d(ga gaVar, int i, boolean z, boolean z2);

    void d(ga gaVar, String str);

    void d(ga gaVar, String str, int i, boolean z, boolean z2);

    void d(ga gaVar, String str, String str2);

    void d(ga gaVar, String str, boolean z);

    ParcelFileDescriptor e(Uri uri);

    void e(ga gaVar);

    void e(ga gaVar, int i, boolean z, boolean z2);

    void e(ga gaVar, String str);

    void e(ga gaVar, String str, String str2);

    void f(ga gaVar);

    void f(ga gaVar, String str);

    int fA();

    String fB();

    int fC();

    Intent fD();

    int fE();

    int fF();

    void fH();

    DataHolder fI();

    boolean fJ();

    DataHolder fK();

    void fL();

    Intent fM();

    String fn();

    String fo();

    Intent fr();

    Intent fs();

    Intent ft();

    Intent fu();

    Intent fy();

    Intent fz();

    void g(ga gaVar);

    void g(ga gaVar, String str);

    DataHolder h(ga gaVar, String str);

    void h(ga gaVar);

    void i(ga gaVar);

    void i(ga gaVar, String str);

    void j(ga gaVar, String str);

    void j(String str, String str2);

    void k(ga gaVar, String str);

    void k(String str, String str2);

    void l(ga gaVar, String str);

    void l(String str, int i);

    void m(ga gaVar, String str);

    void m(String str, int i);

    void n(long j);

    void n(ga gaVar, String str);

    void n(String str, int i);

    void o(long j);

    void o(ga gaVar, String str);

    void o(String str, int i);

    void p(long j);

    void p(ga gaVar, String str);

    void q(long j);

    void q(ga gaVar, String str);

    void y(boolean z);
}