package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        private static class a implements c {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public void a_(float f, float f2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeFloat(f);
                obtain.writeFloat(f2);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public boolean a_(c cVar) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_GET_DEFAULT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public IBinder asBinder() {
                return this.ky;
            }

            public float getBearing() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public LatLngBounds getBounds() {
                LatLngBounds createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                createFromParcel = obtain2.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return createFromParcel;
            }

            public float getHeight() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public String getId() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public LatLng getPosition() {
                LatLng createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                createFromParcel = obtain2.readInt() != 0 ? LatLng.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return createFromParcel;
            }

            public float getTransparency() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public float getWidth() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public float getZIndex() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public void h(b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(MMException.DISPLAY_AD_EXPIRED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public int hashCodeRemote() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(MMException.DISPLAY_AD_NOT_READY, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public boolean isVisible() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(MMException.REQUEST_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public void remove() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setBearing(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeFloat(f);
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setDimensions(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeFloat(f);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setPosition(LatLng latLng) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (latLng != null) {
                    obtain.writeInt(1);
                    latLng.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setPositionFromBounds(LatLngBounds latLngBounds) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (latLngBounds != null) {
                    obtain.writeInt(1);
                    latLngBounds.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setTransparency(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeFloat(f);
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setVisible(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(MMException.REQUEST_BAD_RESPONSE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setZIndex(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                obtain.writeFloat(f);
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static c ap(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof c)) ? new a(iBinder) : (c) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            LatLngBounds latLngBounds = null;
            int i3 = 0;
            LatLng createFromParcel;
            float width;
            boolean isVisible;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    remove();
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    String id = getId();
                    parcel2.writeNoException();
                    parcel2.writeString(id);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    if (parcel.readInt() != 0) {
                        createFromParcel = LatLng.CREATOR.createFromParcel(parcel);
                    }
                    setPosition(createFromParcel);
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    createFromParcel = getPosition();
                    parcel2.writeNoException();
                    if (createFromParcel != null) {
                        parcel2.writeInt(1);
                        createFromParcel.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    setDimensions(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    a(parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    width = getWidth();
                    parcel2.writeNoException();
                    parcel2.writeFloat(width);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    width = getHeight();
                    parcel2.writeNoException();
                    parcel2.writeFloat(width);
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    if (parcel.readInt() != 0) {
                        latLngBounds = LatLngBounds.CREATOR.createFromParcel(parcel);
                    }
                    setPositionFromBounds(latLngBounds);
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    latLngBounds = getBounds();
                    parcel2.writeNoException();
                    if (latLngBounds != null) {
                        parcel2.writeInt(1);
                        latLngBounds.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    setBearing(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    width = getBearing();
                    parcel2.writeNoException();
                    parcel2.writeFloat(width);
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    setZIndex(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    width = getZIndex();
                    parcel2.writeNoException();
                    parcel2.writeFloat(width);
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    setVisible(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    isVisible = isVisible();
                    parcel2.writeNoException();
                    if (isVisible) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ZBuildConfig.$targetsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    setTransparency(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    width = getTransparency();
                    parcel2.writeNoException();
                    parcel2.writeFloat(width);
                    return true;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    isVisible = a(ap(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (isVisible) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case MMException.DISPLAY_AD_NOT_READY:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    int hashCodeRemote = hashCodeRemote();
                    parcel2.writeNoException();
                    parcel2.writeInt(hashCodeRemote);
                    return true;
                case MMException.DISPLAY_AD_EXPIRED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    h(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(float f, float f2);

    boolean a(c cVar);

    float getBearing();

    LatLngBounds getBounds();

    float getHeight();

    String getId();

    LatLng getPosition();

    float getTransparency();

    float getWidth();

    float getZIndex();

    void h(b bVar);

    int hashCodeRemote();

    boolean isVisible();

    void remove();

    void setBearing(float f);

    void setDimensions(float f);

    void setPosition(LatLng latLng);

    void setPositionFromBounds(LatLngBounds latLngBounds);

    void setTransparency(float f);

    void setVisible(boolean z);

    void setZIndex(float f);
}