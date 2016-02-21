package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface IUiSettingsDelegate extends IInterface {

    public static abstract class a extends Binder implements IUiSettingsDelegate {

        private static class a implements IUiSettingsDelegate {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public boolean isCompassEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isMyLocationButtonEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isRotateGesturesEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(MMException.REQUEST_BAD_RESPONSE, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isScrollGesturesEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isTiltGesturesEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isZoomControlsEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isZoomGesturesEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public void setAllGesturesEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setCompassEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setMyLocationButtonEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setRotateGesturesEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setScrollGesturesEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setTiltGesturesEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setZoomControlsEnabled(boolean z) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (!z) {
                    i = 0;
                }
                obtain.writeInt(i);
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setZoomGesturesEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static IUiSettingsDelegate am(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IUiSettingsDelegate)) ? new a(iBinder) : (IUiSettingsDelegate) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int i3 = 0;
            boolean z;
            boolean isZoomControlsEnabled;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setZoomControlsEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setCompassEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setMyLocationButtonEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setScrollGesturesEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setZoomGesturesEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setTiltGesturesEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setRotateGesturesEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setAllGesturesEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isZoomControlsEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isCompassEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isMyLocationButtonEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isScrollGesturesEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isZoomGesturesEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isTiltGesturesEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    isZoomControlsEnabled = isRotateGesturesEnabled();
                    parcel2.writeNoException();
                    if (isZoomControlsEnabled) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IUiSettingsDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean isCompassEnabled();

    boolean isMyLocationButtonEnabled();

    boolean isRotateGesturesEnabled();

    boolean isScrollGesturesEnabled();

    boolean isTiltGesturesEnabled();

    boolean isZoomControlsEnabled();

    boolean isZoomGesturesEnabled();

    void setAllGesturesEnabled(boolean z);

    void setCompassEnabled(boolean z);

    void setMyLocationButtonEnabled(boolean z);

    void setRotateGesturesEnabled(boolean z);

    void setScrollGesturesEnabled(boolean z);

    void setTiltGesturesEnabled(boolean z);

    void setZoomControlsEnabled(boolean z);

    void setZoomGesturesEnabled(boolean z);
}