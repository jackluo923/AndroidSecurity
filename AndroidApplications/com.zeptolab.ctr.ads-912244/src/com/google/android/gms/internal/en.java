package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface en extends IInterface {

    public static abstract class a extends Binder implements en {

        private static class a implements en {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(em emVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(em emVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(em emVar, int i, String str, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeStrongBinder(iBinder);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ApiEventType.API_MRAID_GET_DEFAULT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(em emVar, int i, String str, String str2, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeStringArray(strArr);
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(em emVar, int i, String str, String str2, String[] strArr, String str3, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeStringArray(strArr);
                obtain.writeString(str3);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(em emVar, int i, String str, String str2, String[] strArr, String str3, IBinder iBinder, String str4, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeStringArray(strArr);
                obtain.writeString(str3);
                obtain.writeStrongBinder(iBinder);
                obtain.writeString(str4);
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

            public void a_(em emVar, int i, String str, String[] strArr, String str2, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                obtain.writeStringArray(strArr);
                obtain.writeString(str2);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.DISPLAY_AD_NOT_READY, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void b(em emVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(MMException.DISPLAY_AD_EXPIRED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void b(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(em emVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(MMException.DISPLAY_AD_NOT_FOUND, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void c(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(em emVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                this.ky.transact(MMException.DISPLAY_AD_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void d(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
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

            public void e(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void f(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void g(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void h(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void i(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void j(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.REQUEST_BAD_RESPONSE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void k(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.REQUEST_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void l(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void m(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void n(em emVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                obtain.writeStrongBinder(emVar != null ? emVar.asBinder() : null);
                obtain.writeInt(i);
                obtain.writeString(str);
                if (bundle != null) {
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(MMException.DISPLAY_AD_ALREADY_DISPLAYED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static en z(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof en)) ? new a(iBinder) : (en) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            em y;
            int readInt;
            String readString;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    b(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    c(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    d(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    e(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    f(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    g(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    h(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    i(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    j(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    k(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$targetsdk:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    l(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    m(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_NOT_READY:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_EXPIRED:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    b(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_NOT_FOUND:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    c(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y = com.google.android.gms.internal.em.a.y(parcel.readStrongBinder());
                    readInt = parcel.readInt();
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    n(y, readInt, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    d(com.google.android.gms.internal.em.a.y(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(em emVar, int i);

    void a(em emVar, int i, String str);

    void a(em emVar, int i, String str, Bundle bundle);

    void a(em emVar, int i, String str, IBinder iBinder, Bundle bundle);

    void a(em emVar, int i, String str, String str2, String[] strArr);

    void a(em emVar, int i, String str, String str2, String[] strArr, String str3, Bundle bundle);

    void a(em emVar, int i, String str, String str2, String[] strArr, String str3, IBinder iBinder, String str4, Bundle bundle);

    void a(em emVar, int i, String str, String[] strArr, String str2, Bundle bundle);

    void b(em emVar, int i, String str);

    void b(em emVar, int i, String str, Bundle bundle);

    void c(em emVar, int i, String str);

    void c(em emVar, int i, String str, Bundle bundle);

    void d(em emVar, int i, String str);

    void d(em emVar, int i, String str, Bundle bundle);

    void e(em emVar, int i, String str, Bundle bundle);

    void f(em emVar, int i, String str, Bundle bundle);

    void g(em emVar, int i, String str, Bundle bundle);

    void h(em emVar, int i, String str, Bundle bundle);

    void i(em emVar, int i, String str, Bundle bundle);

    void j(em emVar, int i, String str, Bundle bundle);

    void k(em emVar, int i, String str, Bundle bundle);

    void l(em emVar, int i, String str, Bundle bundle);

    void m(em emVar, int i, String str, Bundle bundle);

    void n(em emVar, int i, String str, Bundle bundle);
}