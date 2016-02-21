package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface ag extends IInterface {

    public static abstract class a extends Binder implements ag {

        private static class a implements ag {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public b P() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public ab Q() {
                ab b;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                b = obtain2.readInt() != 0 ? ab.CREATOR.b(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return b;
            }

            public void Z() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ab abVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                if (abVar != null) {
                    obtain.writeInt(1);
                    abVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(af afVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                obtain.writeStrongBinder(afVar != null ? afVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(ai aiVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                obtain.writeStrongBinder(aiVar != null ? aiVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public boolean a_(z zVar) {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                if (zVar != null) {
                    obtain.writeInt(1);
                    zVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void destroy() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public boolean isReady() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public void pause() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void resume() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void showInterstitial() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void stopLoading() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
        }

        public static ag f(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ag)) ? new a(iBinder) : (ag) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            ab abVar = null;
            int i3 = 0;
            boolean isReady;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    IBinder asBinder;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    b P = P();
                    parcel2.writeNoException();
                    if (P != null) {
                        asBinder = P.asBinder();
                    }
                    parcel2.writeStrongBinder(asBinder);
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    isReady = isReady();
                    parcel2.writeNoException();
                    parcel2.writeInt(isReady ? 1 : 0);
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    z a;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (parcel.readInt() != 0) {
                        a = z.CREATOR.a(parcel);
                    }
                    isReady = a(a);
                    parcel2.writeNoException();
                    if (isReady) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    pause();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    resume();
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    a(com.google.android.gms.internal.af.a.e(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    a(com.google.android.gms.internal.ai.a.h(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    showInterstitial();
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    stopLoading();
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    Z();
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    abVar = Q();
                    parcel2.writeNoException();
                    if (abVar != null) {
                        parcel2.writeInt(1);
                        abVar.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (parcel.readInt() != 0) {
                        abVar = ab.CREATOR.b(parcel);
                    }
                    a(abVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManager");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    b P();

    ab Q();

    void Z();

    void a(ab abVar);

    void a(af afVar);

    void a(ai aiVar);

    boolean a(z zVar);

    void destroy();

    boolean isReady();

    void pause();

    void resume();

    void showInterstitial();

    void stopLoading();
}