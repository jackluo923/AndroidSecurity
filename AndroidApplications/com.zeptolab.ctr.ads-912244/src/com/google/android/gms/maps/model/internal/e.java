package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.List;

public interface e extends IInterface {

    public static abstract class a extends Binder implements e {

        private static class a implements e {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public boolean a_(e eVar) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
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

            public int getFillColor() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public List getHoles() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                List readArrayList = obtain2.readArrayList(getClass().getClassLoader());
                obtain2.recycle();
                obtain.recycle();
                return readArrayList;
            }

            public String getId() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return readString;
            }

            public List getPoints() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                List createTypedArrayList = obtain2.createTypedArrayList(LatLng.CREATOR);
                obtain2.recycle();
                obtain.recycle();
                return createTypedArrayList;
            }

            public int getStrokeColor() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public float getStrokeWidth() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public float getZIndex() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public int hashCodeRemote() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(MMException.DISPLAY_AD_NOT_READY, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public boolean isGeodesic() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isVisible() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
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
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setFillColor(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeInt(i);
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setGeodesic(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setHoles(List list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeList(list);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setPoints(List list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeTypedList(list);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setStrokeColor(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeInt(i);
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setStrokeWidth(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeFloat(f);
                this.ky.transact(GoogleScorer.CLIENT_ALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setVisible(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
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
                obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                obtain.writeFloat(f);
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static e ar(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof e)) ? new a(iBinder) : (e) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int i3 = 0;
            List points;
            float strokeWidth;
            boolean z;
            boolean isVisible;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    remove();
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    String id = getId();
                    parcel2.writeNoException();
                    parcel2.writeString(id);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setPoints(parcel.createTypedArrayList(LatLng.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    points = getPoints();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(points);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setHoles(parcel.readArrayList(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    points = getHoles();
                    parcel2.writeNoException();
                    parcel2.writeList(points);
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setStrokeWidth(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    strokeWidth = getStrokeWidth();
                    parcel2.writeNoException();
                    parcel2.writeFloat(strokeWidth);
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setStrokeColor(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    i3 = getStrokeColor();
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setFillColor(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    i3 = getFillColor();
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setZIndex(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    strokeWidth = getZIndex();
                    parcel2.writeNoException();
                    parcel2.writeFloat(strokeWidth);
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setVisible(z);
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    isVisible = isVisible();
                    parcel2.writeNoException();
                    if (isVisible) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ZBuildConfig.$targetsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setGeodesic(z);
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    isVisible = isGeodesic();
                    parcel2.writeNoException();
                    if (isVisible) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    isVisible = a(ar(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (isVisible) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case MMException.DISPLAY_AD_NOT_READY:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    i3 = hashCodeRemote();
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean a(e eVar);

    int getFillColor();

    List getHoles();

    String getId();

    List getPoints();

    int getStrokeColor();

    float getStrokeWidth();

    float getZIndex();

    int hashCodeRemote();

    boolean isGeodesic();

    boolean isVisible();

    void remove();

    void setFillColor(int i);

    void setGeodesic(boolean z);

    void setHoles(List list);

    void setPoints(List list);

    void setStrokeColor(int i);

    void setStrokeWidth(float f);

    void setVisible(boolean z);

    void setZIndex(float f);
}