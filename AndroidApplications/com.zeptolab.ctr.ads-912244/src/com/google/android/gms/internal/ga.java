package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public interface ga extends IInterface {

    public static abstract class a extends Binder implements ga {

        private static class a implements ga {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void A(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5035, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void B(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5039, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void C(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8001, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void D(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesActivityResultCodes.RESULT_LICENSE_FAILED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void E(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesActivityResultCodes.RESULT_APP_MISCONFIGURED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void F(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesActivityResultCodes.RESULT_NETWORK_FAILURE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8002, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(int i, String str, boolean z) {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                obtain.writeString(str);
                if (z) {
                    i2 = 1;
                }
                obtain.writeInt(i2);
                this.ky.transact(5034, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(DataHolder dataHolder, DataHolder dataHolder2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (dataHolder2 != null) {
                    obtain.writeInt(1);
                    dataHolder2.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDJSON, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(DataHolder dataHolder, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStringArray(strArr);
                this.ky.transact(5026, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void aR(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                this.ky.transact(5036, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void aS(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                this.ky.transact(5040, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void b(int i, int i2, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeString(str);
                this.ky.transact(5033, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesActivityResultCodes.RESULT_LEFT_ROOM, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(DataHolder dataHolder, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStringArray(strArr);
                this.ky.transact(5027, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(AdTrackerConstants.WEBVIEW_SERVERERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(DataHolder dataHolder, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStringArray(strArr);
                this.ky.transact(5028, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void cM() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                this.ky.transact(5016, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(AdTrackerConstants.WEBVIEW_INVALIDPARAM, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5006, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(DataHolder dataHolder, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStringArray(strArr);
                this.ky.transact(5029, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(AdTrackerConstants.WEBVIEW_TIMEOUT, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5007, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void e(DataHolder dataHolder, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStringArray(strArr);
                this.ky.transact(5030, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void f(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(8007, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void f(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5008, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void f(DataHolder dataHolder, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeStringArray(strArr);
                this.ky.transact(5031, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void g(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5009, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void h(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5010, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void i(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5011, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void j(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(9001, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void k(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5017, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void l(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5037, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void m(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void n(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8003, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void o(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8004, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onInvitationRemoved(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeString(str);
                this.ky.transact(8010, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onLeftRoom(int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(5020, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onP2PConnected(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeString(str);
                this.ky.transact(AdTrackerConstants.SERVER_RELOAD_WEBVIEW, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onP2PDisconnected(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeString(str);
                this.ky.transact(AdTrackerConstants.SERVER_BADREQUEST, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (realTimeMessage != null) {
                    obtain.writeInt(1);
                    realTimeMessage.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5032, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onRequestRemoved(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeString(str);
                this.ky.transact(GamesActivityResultCodes.RESULT_SIGN_IN_FAILED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void onTurnBasedMatchRemoved(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                obtain.writeString(str);
                this.ky.transact(8009, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void p(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8005, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void q(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8006, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void r(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(8008, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void s(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5018, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void t(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5019, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void u(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5021, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void v(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5022, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void w(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5023, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void x(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5024, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void y(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5025, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void z(DataHolder dataHolder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                if (dataHolder != null) {
                    obtain.writeInt(1);
                    dataHolder.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(5038, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.games.internal.IGamesCallbacks");
        }

        public static ga I(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ga)) ? new a(iBinder) : (ga) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            DataHolder dataHolder = null;
            int readInt;
            Bundle bundle;
            switch (i) {
                case AdTrackerConstants.WEBVIEW_INVALIDPARAM:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    d(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_XMLHTTPSUPPORT:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    b(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_TIMEOUT:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    e(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_SERVERERROR:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    c(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.WEBVIEW_INVALIDJSON:
                    DataHolder createFromParcel;
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    createFromParcel = parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    a(createFromParcel, dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    d(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    e(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    f(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    g(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    h(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    i(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    cM();
                    parcel2.writeNoException();
                    return true;
                case 5017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    k(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5018:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    s(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    t(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onLeftRoom(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5021:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    u(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5022:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    v(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5023:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    w(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5024:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    x(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5025:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    y(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5026:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    a(dataHolder, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5027:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    b(dataHolder, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5028:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    c(dataHolder, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5029:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    d(dataHolder, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5030:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    e(dataHolder, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5031:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    f(dataHolder, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5032:
                    RealTimeMessage realTimeMessage;
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        realTimeMessage = (RealTimeMessage) RealTimeMessage.CREATOR.createFromParcel(parcel);
                    }
                    onRealTimeMessageReceived(realTimeMessage);
                    parcel2.writeNoException();
                    return true;
                case 5033:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    b(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5034:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    a(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5035:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    A(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5036:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    aR(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5037:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    l(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5038:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    z(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5039:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    B(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 5040:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    aS(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.SERVER_RELOAD_WEBVIEW:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onP2PConnected(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case AdTrackerConstants.SERVER_BADREQUEST:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onP2PDisconnected(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    C(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 8002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(readInt, bundle);
                    parcel2.writeNoException();
                    return true;
                case 8003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    n(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 8004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    o(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 8005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    p(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 8006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    q(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 8007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    f(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    r(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 8009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onTurnBasedMatchRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onInvitationRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    j(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    m(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onRequestRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_LICENSE_FAILED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    D(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    E(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_LEFT_ROOM:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    b(readInt, bundle);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_NETWORK_FAILURE:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    F(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.games.internal.IGamesCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void A(DataHolder dataHolder);

    void B(DataHolder dataHolder);

    void C(DataHolder dataHolder);

    void D(DataHolder dataHolder);

    void E(DataHolder dataHolder);

    void F(DataHolder dataHolder);

    void a(int i, Bundle bundle);

    void a(int i, String str, boolean z);

    void a(DataHolder dataHolder, DataHolder dataHolder2);

    void a(DataHolder dataHolder, String[] strArr);

    void aR(int i);

    void aS(int i);

    void b(int i, int i2, String str);

    void b(int i, Bundle bundle);

    void b(DataHolder dataHolder);

    void b(DataHolder dataHolder, String[] strArr);

    void c(DataHolder dataHolder);

    void c(DataHolder dataHolder, String[] strArr);

    void cM();

    void d(int i, String str);

    void d(DataHolder dataHolder);

    void d(DataHolder dataHolder, String[] strArr);

    void e(int i, String str);

    void e(DataHolder dataHolder);

    void e(DataHolder dataHolder, String[] strArr);

    void f(int i, String str);

    void f(DataHolder dataHolder);

    void f(DataHolder dataHolder, String[] strArr);

    void g(DataHolder dataHolder);

    void h(DataHolder dataHolder);

    void i(DataHolder dataHolder);

    void j(DataHolder dataHolder);

    void k(DataHolder dataHolder);

    void l(DataHolder dataHolder);

    void m(DataHolder dataHolder);

    void n(DataHolder dataHolder);

    void o(DataHolder dataHolder);

    void onInvitationRemoved(String str);

    void onLeftRoom(int i, String str);

    void onP2PConnected(String str);

    void onP2PDisconnected(String str);

    void onRealTimeMessageReceived(RealTimeMessage realTimeMessage);

    void onRequestRemoved(String str);

    void onTurnBasedMatchRemoved(String str);

    void p(DataHolder dataHolder);

    void q(DataHolder dataHolder);

    void r(DataHolder dataHolder);

    void s(DataHolder dataHolder);

    void t(DataHolder dataHolder);

    void u(DataHolder dataHolder);

    void v(DataHolder dataHolder);

    void w(DataHolder dataHolder);

    void x(DataHolder dataHolder);

    void y(DataHolder dataHolder);

    void z(DataHolder dataHolder);
}