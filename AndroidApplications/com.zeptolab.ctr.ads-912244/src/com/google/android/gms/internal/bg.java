package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public interface bg extends IInterface {

    public static abstract class a extends Binder implements bg {

        private static class a implements bg {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(b bVar, ab abVar, z zVar, String str, bh bhVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (abVar != null) {
                    obtain.writeInt(1);
                    abVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (zVar != null) {
                    obtain.writeInt(1);
                    zVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                if (bhVar != null) {
                    iBinder = bhVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, ab abVar, z zVar, String str, String str2, bh bhVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (abVar != null) {
                    obtain.writeInt(1);
                    abVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                if (zVar != null) {
                    obtain.writeInt(1);
                    zVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                obtain.writeString(str2);
                if (bhVar != null) {
                    iBinder = bhVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, z zVar, String str, bh bhVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (zVar != null) {
                    obtain.writeInt(1);
                    zVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                if (bhVar != null) {
                    iBinder = bhVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void a_(b bVar, z zVar, String str, String str2, bh bhVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (zVar != null) {
                    obtain.writeInt(1);
                    zVar.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeString(str);
                obtain.writeString(str2);
                if (bhVar != null) {
                    iBinder = bhVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public void destroy() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public b getView() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public void showInterstitial() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        }

        public static bg j(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof bg)) ? new a(iBinder) : (bg) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            z zVar = null;
            b view;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt() != 0 ? ab.CREATOR.b(parcel) : null, parcel.readInt() != 0 ? z.CREATOR.a(parcel) : null, parcel.readString(), com.google.android.gms.internal.bh.a.k(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    IBinder asBinder;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    view = getView();
                    parcel2.writeNoException();
                    if (view != null) {
                        asBinder = view.asBinder();
                    }
                    parcel2.writeStrongBinder(asBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    view = com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zVar = z.CREATOR.a(parcel);
                    }
                    a(view, zVar, parcel.readString(), com.google.android.gms.internal.bh.a.k(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    showInterstitial();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt() != 0 ? ab.CREATOR.b(parcel) : null, parcel.readInt() != 0 ? z.CREATOR.a(parcel) : null, parcel.readString(), parcel.readString(), com.google.android.gms.internal.bh.a.k(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    a(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt() != 0 ? z.CREATOR.a(parcel) : null, parcel.readString(), parcel.readString(), com.google.android.gms.internal.bh.a.k(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(b bVar, ab abVar, z zVar, String str, bh bhVar);

    void a(b bVar, ab abVar, z zVar, String str, String str2, bh bhVar);

    void a(b bVar, z zVar, String str, bh bhVar);

    void a(b bVar, z zVar, String str, String str2, bh bhVar);

    void destroy();

    b getView();

    void showInterstitial();
}