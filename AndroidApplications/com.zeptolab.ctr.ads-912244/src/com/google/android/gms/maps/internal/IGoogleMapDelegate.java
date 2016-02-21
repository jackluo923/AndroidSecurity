package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.b;
import com.google.android.gms.maps.model.internal.c;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.e;
import com.google.android.gms.maps.model.internal.f;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public interface IGoogleMapDelegate extends IInterface {

    public static abstract class a extends Binder implements IGoogleMapDelegate {

        private static class a implements IGoogleMapDelegate {
            private IBinder ky;

            a(IBinder iBinder) {
                this.ky = iBinder;
            }

            public b addCircle(CircleOptions circleOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (circleOptions != null) {
                    obtain.writeInt(1);
                    circleOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ApiEventType.API_MRAID_IS_AUDIO_MUTED, obtain, obtain2, 0);
                obtain2.readException();
                b ao = com.google.android.gms.maps.model.internal.b.a.ao(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return ao;
            }

            public c addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (groundOverlayOptions != null) {
                    obtain.writeInt(1);
                    groundOverlayOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_useViewLifecycle, obtain, obtain2, 0);
                obtain2.readException();
                c ap = com.google.android.gms.maps.model.internal.c.a.ap(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return ap;
            }

            public d addMarker(MarkerOptions markerOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (markerOptions != null) {
                    obtain.writeInt(1);
                    markerOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomGestures, obtain, obtain2, 0);
                obtain2.readException();
                d aq = com.google.android.gms.maps.model.internal.d.a.aq(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return aq;
            }

            public e addPolygon(PolygonOptions polygonOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (polygonOptions != null) {
                    obtain.writeInt(1);
                    polygonOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_uiZoomControls, obtain, obtain2, 0);
                obtain2.readException();
                e ar = com.google.android.gms.maps.model.internal.e.a.ar(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return ar;
            }

            public IPolylineDelegate addPolyline(PolylineOptions polylineOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (polylineOptions != null) {
                    obtain.writeInt(1);
                    polylineOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(ZBuildConfig.$minsdk, obtain, obtain2, 0);
                obtain2.readException();
                IPolylineDelegate as = com.google.android.gms.maps.model.internal.IPolylineDelegate.a.as(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return as;
            }

            public f addTileOverlay(TileOverlayOptions tileOverlayOptions) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (tileOverlayOptions != null) {
                    obtain.writeInt(1);
                    tileOverlayOptions.writeToParcel(obtain, 0);
                } else {
                    obtain.writeInt(0);
                }
                this.ky.transact(R.styleable.MapAttrs_zOrderOnTop, obtain, obtain2, 0);
                obtain2.readException();
                f at = com.google.android.gms.maps.model.internal.f.a.at(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return at;
            }

            public void animateCamera(com.google.android.gms.dynamic.b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void animateCameraWithCallback(com.google.android.gms.dynamic.b bVar, b bVar2) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                if (bVar2 != null) {
                    iBinder = bVar2.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ERROR, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.b bVar, int i, b bVar2) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                obtain.writeInt(i);
                if (bVar2 != null) {
                    iBinder = bVar2.asBinder();
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

            public void clear() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(MMException.REQUEST_NOT_FILLED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public CameraPosition getCameraPosition() {
                CameraPosition createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                createFromParcel = obtain2.readInt() != 0 ? CameraPosition.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return createFromParcel;
            }

            public int getMapType() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(MMException.REQUEST_BAD_RESPONSE, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                obtain2.recycle();
                obtain.recycle();
                return readInt;
            }

            public float getMaxZoomLevel() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public float getMinZoomLevel() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, obtain, obtain2, 0);
                obtain2.readException();
                float readFloat = obtain2.readFloat();
                obtain2.recycle();
                obtain.recycle();
                return readFloat;
            }

            public Location getMyLocation() {
                Location location;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(MMException.DISPLAY_AD_ALREADY_DISPLAYED, obtain, obtain2, 0);
                obtain2.readException();
                location = obtain2.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(obtain2) : null;
                obtain2.recycle();
                obtain.recycle();
                return location;
            }

            public IProjectionDelegate getProjection() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(MMException.AD_NO_ACTIVITY, obtain, obtain2, 0);
                obtain2.readException();
                IProjectionDelegate ak = com.google.android.gms.maps.internal.IProjectionDelegate.a.ak(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return ak;
            }

            public com.google.android.gms.dynamic.b getTestingHelper() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(ApiEventType.API_MRAID_UNMUTE_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                com.google.android.gms.dynamic.b G = com.google.android.gms.dynamic.b.a.G(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return G;
            }

            public IUiSettingsDelegate getUiSettings() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(MMException.AD_BROKEN_REFERENCE, obtain, obtain2, 0);
                obtain2.readException();
                IUiSettingsDelegate am = com.google.android.gms.maps.internal.IUiSettingsDelegate.a.am(obtain2.readStrongBinder());
                obtain2.recycle();
                obtain.recycle();
                return am;
            }

            public boolean isBuildingsEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(ApiEventType.API_MRAID_PLAY_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isIndoorEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(ApiEventType.API_MRAID_GET_DEFAULT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isMyLocationEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(MMException.DISPLAY_AD_EXPIRED, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public boolean isTrafficEnabled() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(ZBuildConfig.$targetsdk, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            }

            public void moveCamera(com.google.android.gms.dynamic.b bVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                this.ky.transact(GoogleScorer.CLIENT_APPSTATE, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setBuildingsEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(ApiEventType.API_MRAID_MUTE_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public boolean setIndoorEnabled(boolean z) {
                boolean z2 = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeInt(z ? 1 : 0);
                this.ky.transact(MMException.DISPLAY_AD_NOT_READY, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z2 = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z2;
            }

            public void setInfoWindowAdapter(d dVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_MUTE_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setLocationSource(ILocationSourceDelegate iLocationSourceDelegate) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(iLocationSourceDelegate != null ? iLocationSourceDelegate.asBinder() : null);
                this.ky.transact(MMException.DISPLAY_AD_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setMapType(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeInt(i);
                this.ky.transact(MMException.REQUEST_NOT_PERMITTED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setMyLocationEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(MMException.DISPLAY_AD_NOT_FOUND, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnCameraChangeListener(e eVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_SEND_SMS, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnInfoWindowClickListener(f fVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(fVar != null ? fVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_PLAY_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMapClickListener(h hVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(hVar != null ? hVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_SEND_MAIL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMapLoadedCallback(i iVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(iVar != null ? iVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_UNMUTE_VIDEO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMapLongClickListener(j jVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_MAKE_CALL, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMarkerClickListener(k kVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(kVar != null ? kVar.asBinder() : null);
                this.ky.transact(ADCNetwork.timeout_seconds, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMarkerDragListener(l lVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(lVar != null ? lVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_ASYNC_PING, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMyLocationButtonClickListener(m mVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(mVar != null ? mVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_GET_AUDIO_VOLUME, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setOnMyLocationChangeListener(n nVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(nVar != null ? nVar.asBinder() : null);
                this.ky.transact(ApiEventType.API_MRAID_SET_AUDIO_VOLUME, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setPadding(int i, int i2, int i3, int i4) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeInt(i3);
                obtain.writeInt(i4);
                this.ky.transact(ApiEventType.API_MRAID_PAUSE_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void setTrafficEnabled(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                if (z) {
                    i = 1;
                }
                obtain.writeInt(i);
                this.ky.transact(ApiEventType.API_MRAID_GET_CURRENT_POSITION, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void snapshot(o oVar, com.google.android.gms.dynamic.b bVar) {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                obtain.writeStrongBinder(oVar != null ? oVar.asBinder() : null);
                if (bVar != null) {
                    iBinder = bVar.asBinder();
                }
                obtain.writeStrongBinder(iBinder);
                this.ky.transact(ApiEventType.API_MRAID_SEEK_AUDIO, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }

            public void stopAnimation() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                this.ky.transact(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public static IGoogleMapDelegate V(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IGoogleMapDelegate)) ? new a(iBinder) : (IGoogleMapDelegate) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = false;
            IBinder iBinder = null;
            float maxZoomLevel;
            int mapType;
            boolean isTrafficEnabled;
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    CameraPosition cameraPosition = getCameraPosition();
                    parcel2.writeNoException();
                    if (cameraPosition != null) {
                        parcel2.writeInt(1);
                        cameraPosition.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case GoogleScorer.CLIENT_PLUS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    maxZoomLevel = getMaxZoomLevel();
                    parcel2.writeNoException();
                    parcel2.writeFloat(maxZoomLevel);
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    maxZoomLevel = getMinZoomLevel();
                    parcel2.writeNoException();
                    parcel2.writeFloat(maxZoomLevel);
                    return true;
                case GoogleScorer.CLIENT_APPSTATE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    moveCamera(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    animateCamera(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    animateCameraWithCallback(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), com.google.android.gms.maps.internal.b.a.T(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case GoogleScorer.CLIENT_ALL:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()), parcel.readInt(), com.google.android.gms.maps.internal.b.a.T(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    stopAnimation();
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$minsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    IPolylineDelegate addPolyline = addPolyline(parcel.readInt() != 0 ? PolylineOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (addPolyline != null) {
                        iBinder = addPolyline.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case R.styleable.MapAttrs_uiZoomControls:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    e addPolygon = addPolygon(parcel.readInt() != 0 ? PolygonOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (addPolygon != null) {
                        iBinder = addPolygon.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case R.styleable.MapAttrs_uiZoomGestures:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    d addMarker = addMarker(parcel.readInt() != 0 ? MarkerOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (addMarker != null) {
                        iBinder = addMarker.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case R.styleable.MapAttrs_useViewLifecycle:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    c addGroundOverlay = addGroundOverlay(parcel.readInt() != 0 ? GroundOverlayOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (addGroundOverlay != null) {
                        iBinder = addGroundOverlay.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case R.styleable.MapAttrs_zOrderOnTop:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    f addTileOverlay = addTileOverlay(parcel.readInt() != 0 ? TileOverlayOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (addTileOverlay != null) {
                        iBinder = addTileOverlay.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case MMException.REQUEST_NOT_FILLED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    clear();
                    parcel2.writeNoException();
                    return true;
                case MMException.REQUEST_BAD_RESPONSE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    mapType = getMapType();
                    parcel2.writeNoException();
                    parcel2.writeInt(mapType);
                    return true;
                case MMException.REQUEST_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setMapType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case ZBuildConfig.$targetsdk:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    isTrafficEnabled = isTrafficEnabled();
                    parcel2.writeNoException();
                    if (isTrafficEnabled) {
                        mapType = 1;
                    }
                    parcel2.writeInt(mapType);
                    return true;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setTrafficEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    isTrafficEnabled = isIndoorEnabled();
                    parcel2.writeNoException();
                    if (isTrafficEnabled) {
                        mapType = 1;
                    }
                    parcel2.writeInt(mapType);
                    return true;
                case MMException.DISPLAY_AD_NOT_READY:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    isTrafficEnabled = setIndoorEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (isTrafficEnabled) {
                        mapType = 1;
                    }
                    parcel2.writeInt(mapType);
                    return true;
                case MMException.DISPLAY_AD_EXPIRED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    isTrafficEnabled = isMyLocationEnabled();
                    parcel2.writeNoException();
                    if (isTrafficEnabled) {
                        mapType = 1;
                    }
                    parcel2.writeInt(mapType);
                    return true;
                case MMException.DISPLAY_AD_NOT_FOUND:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setMyLocationEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    Location myLocation = getMyLocation();
                    parcel2.writeNoException();
                    if (myLocation != null) {
                        parcel2.writeInt(1);
                        myLocation.writeToParcel(parcel2, 1);
                        return true;
                    } else {
                        parcel2.writeInt(0);
                        return true;
                    }
                case MMException.DISPLAY_AD_NOT_PERMITTED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setLocationSource(com.google.android.gms.maps.internal.ILocationSourceDelegate.a.X(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case MMException.AD_BROKEN_REFERENCE:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    IUiSettingsDelegate uiSettings = getUiSettings();
                    parcel2.writeNoException();
                    if (uiSettings != null) {
                        iBinder = uiSettings.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case MMException.AD_NO_ACTIVITY:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    IProjectionDelegate projection = getProjection();
                    parcel2.writeNoException();
                    if (projection != null) {
                        iBinder = projection.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case ApiEventType.API_MRAID_SEND_SMS:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnCameraChangeListener(com.google.android.gms.maps.internal.e.a.aa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_SEND_MAIL:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMapClickListener(com.google.android.gms.maps.internal.h.a.ad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_MAKE_CALL:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMapLongClickListener(com.google.android.gms.maps.internal.j.a.af(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ADCNetwork.timeout_seconds:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMarkerClickListener(com.google.android.gms.maps.internal.k.a.ag(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_ASYNC_PING:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMarkerDragListener(com.google.android.gms.maps.internal.l.a.ah(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_PLAY_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnInfoWindowClickListener(com.google.android.gms.maps.internal.f.a.ab(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_MUTE_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setInfoWindowAdapter(com.google.android.gms.maps.internal.d.a.W(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    com.google.android.gms.dynamic.b testingHelper = getTestingHelper();
                    parcel2.writeNoException();
                    if (testingHelper != null) {
                        iBinder = testingHelper.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    b addCircle = addCircle(parcel.readInt() != 0 ? CircleOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (addCircle != null) {
                        iBinder = addCircle.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case ApiEventType.API_MRAID_SET_AUDIO_VOLUME:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMyLocationChangeListener(com.google.android.gms.maps.internal.n.a.aj(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_GET_AUDIO_VOLUME:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMyLocationButtonClickListener(com.google.android.gms.maps.internal.m.a.ai(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_SEEK_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    snapshot(com.google.android.gms.maps.internal.o.a.al(parcel.readStrongBinder()), com.google.android.gms.dynamic.b.a.G(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_PAUSE_AUDIO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setPadding(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_PLAY_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    isTrafficEnabled = isBuildingsEnabled();
                    parcel2.writeNoException();
                    if (isTrafficEnabled) {
                        mapType = 1;
                    }
                    parcel2.writeInt(mapType);
                    return true;
                case ApiEventType.API_MRAID_MUTE_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setBuildingsEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    setOnMapLoadedCallback(com.google.android.gms.maps.internal.i.a.ae(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    b addCircle(CircleOptions circleOptions);

    c addGroundOverlay(GroundOverlayOptions groundOverlayOptions);

    d addMarker(MarkerOptions markerOptions);

    e addPolygon(PolygonOptions polygonOptions);

    IPolylineDelegate addPolyline(PolylineOptions polylineOptions);

    f addTileOverlay(TileOverlayOptions tileOverlayOptions);

    void animateCamera(com.google.android.gms.dynamic.b bVar);

    void animateCameraWithCallback(com.google.android.gms.dynamic.b bVar, b bVar2);

    void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.b bVar, int i, b bVar2);

    void clear();

    CameraPosition getCameraPosition();

    int getMapType();

    float getMaxZoomLevel();

    float getMinZoomLevel();

    Location getMyLocation();

    IProjectionDelegate getProjection();

    com.google.android.gms.dynamic.b getTestingHelper();

    IUiSettingsDelegate getUiSettings();

    boolean isBuildingsEnabled();

    boolean isIndoorEnabled();

    boolean isMyLocationEnabled();

    boolean isTrafficEnabled();

    void moveCamera(com.google.android.gms.dynamic.b bVar);

    void setBuildingsEnabled(boolean z);

    boolean setIndoorEnabled(boolean z);

    void setInfoWindowAdapter(d dVar);

    void setLocationSource(ILocationSourceDelegate iLocationSourceDelegate);

    void setMapType(int i);

    void setMyLocationEnabled(boolean z);

    void setOnCameraChangeListener(e eVar);

    void setOnInfoWindowClickListener(f fVar);

    void setOnMapClickListener(h hVar);

    void setOnMapLoadedCallback(i iVar);

    void setOnMapLongClickListener(j jVar);

    void setOnMarkerClickListener(k kVar);

    void setOnMarkerDragListener(l lVar);

    void setOnMyLocationButtonClickListener(m mVar);

    void setOnMyLocationChangeListener(n nVar);

    void setPadding(int i, int i2, int i3, int i4);

    void setTrafficEnabled(boolean z);

    void snapshot(o oVar, com.google.android.gms.dynamic.b bVar);

    void stopAnimation();
}