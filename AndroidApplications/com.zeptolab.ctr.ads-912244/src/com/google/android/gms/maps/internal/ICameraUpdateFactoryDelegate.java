package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface ICameraUpdateFactoryDelegate extends IInterface {

    public static abstract class a extends Binder implements ICameraUpdateFactoryDelegate {

        private static class a implements ICameraUpdateFactoryDelegate {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public b newCameraPosition(CameraPosition cameraPosition) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                if (cameraPosition != null) {
                    obtain.writeInt(1);
                    cameraPosition.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b newLatLng(LatLng latLng) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                if (latLng != null) {
                    obtain.writeInt(1);
                    latLng.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b newLatLngBounds(LatLngBounds latLngBounds, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                if (latLngBounds != null) {
                    obtain.writeInt(1);
                    latLngBounds.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeInt(i);
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b newLatLngBoundsWithSize(LatLngBounds latLngBounds, int i, int i2, int i3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                if (latLngBounds != null) {
                    obtain.writeInt(1);
                    latLngBounds.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b newLatLngZoom(LatLng latLng, float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                if (latLng != null) {
                    obtain.writeInt(1);
                    latLng.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                obtain.writeFloat(f);
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b scrollBy(float f, float f2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                obtain.writeFloat(f);
                obtain.writeFloat(f2);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b zoomBy(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                obtain.writeFloat(f);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b zoomByWithFocus(float f, int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                obtain.writeFloat(f);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b zoomIn() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b zoomOut() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public b zoomTo(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                obtain.writeFloat(f);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }
        }

        public static ICameraUpdateFactoryDelegate S(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ICameraUpdateFactoryDelegate)) ? new a(iBinder) : (ICameraUpdateFactoryDelegate) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IBinder iBinder = null;
            b zoomIn;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = zoomIn();
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = zoomOut();
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = scrollBy(parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = zoomTo(parcel.readFloat());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = zoomBy(parcel.readFloat());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = zoomByWithFocus(parcel.readFloat(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = newCameraPosition(parcel.readInt() != 0 ? CameraPosition.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = newLatLng(parcel.readInt() != 0 ? LatLng.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = newLatLngZoom(parcel.readInt() != 0 ? LatLng.CREATOR.createFromParcel(parcel) : null, parcel.readFloat());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = newLatLngBounds(parcel.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    zoomIn = newLatLngBoundsWithSize(parcel.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (zoomIn != null) {
                        iBinder = zoomIn.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    b newCameraPosition(CameraPosition cameraPosition);

    b newLatLng(LatLng latLng);

    b newLatLngBounds(LatLngBounds latLngBounds, int i);

    b newLatLngBoundsWithSize(LatLngBounds latLngBounds, int i, int i2, int i3);

    b newLatLngZoom(LatLng latLng, float f);

    b scrollBy(float f, float f2);

    b zoomBy(float f);

    b zoomByWithFocus(float f, int i, int i2);

    b zoomIn();

    b zoomOut();

    b zoomTo(float f);
}