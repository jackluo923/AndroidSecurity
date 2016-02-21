package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.LocationSource.OnLocationChangedListener;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.g;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.f;

public final class GoogleMap {
    public static final int MAP_TYPE_HYBRID = 4;
    public static final int MAP_TYPE_NONE = 0;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MAP_TYPE_TERRAIN = 3;
    private final IGoogleMapDelegate OK;
    private UiSettings OL;

    class AnonymousClass_10 extends com.google.android.gms.maps.internal.f.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener OY;

        AnonymousClass_10(com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener onInfoWindowClickListener) {
            this.OY = onInfoWindowClickListener;
        }

        public void e(d dVar) {
            this.OY.onInfoWindowClick(new Marker(dVar));
        }
    }

    class AnonymousClass_11 extends com.google.android.gms.maps.internal.d.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.InfoWindowAdapter OZ;

        AnonymousClass_11(com.google.android.gms.maps.GoogleMap.InfoWindowAdapter infoWindowAdapter) {
            this.OZ = infoWindowAdapter;
        }

        public b f(d dVar) {
            return c.h(this.OZ.getInfoWindow(new Marker(dVar)));
        }

        public b g(d dVar) {
            return c.h(this.OZ.getInfoContents(new Marker(dVar)));
        }
    }

    class AnonymousClass_12 extends com.google.android.gms.maps.internal.n.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMyLocationChangeListener Pa;

        AnonymousClass_12(com.google.android.gms.maps.GoogleMap.OnMyLocationChangeListener onMyLocationChangeListener) {
            this.Pa = onMyLocationChangeListener;
        }

        public void d(b bVar) {
            this.Pa.onMyLocationChange((Location) c.b(bVar));
        }
    }

    class AnonymousClass_1 extends com.google.android.gms.maps.internal.ILocationSourceDelegate.a {
        final /* synthetic */ LocationSource OM;

        class AnonymousClass_1 implements OnLocationChangedListener {
            final /* synthetic */ g OO;

            AnonymousClass_1(g gVar) {
                this.OO = gVar;
            }

            public void onLocationChanged(Location location) {
                try {
                    this.OO.g(c.h(location));
                } catch (RemoteException e) {
                    throw new RuntimeRemoteException(e);
                }
            }
        }

        AnonymousClass_1(LocationSource locationSource) {
            this.OM = locationSource;
        }

        public void activate(g gVar) {
            this.OM.activate(new AnonymousClass_1(gVar));
        }

        public void deactivate() {
            this.OM.deactivate();
        }
    }

    class AnonymousClass_2 extends com.google.android.gms.maps.internal.m.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMyLocationButtonClickListener OQ;

        AnonymousClass_2(com.google.android.gms.maps.GoogleMap.OnMyLocationButtonClickListener onMyLocationButtonClickListener) {
            this.OQ = onMyLocationButtonClickListener;
        }

        public boolean onMyLocationButtonClick() {
            return this.OQ.onMyLocationButtonClick();
        }
    }

    class AnonymousClass_3 extends com.google.android.gms.maps.internal.i.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMapLoadedCallback OR;

        AnonymousClass_3(com.google.android.gms.maps.GoogleMap.OnMapLoadedCallback onMapLoadedCallback) {
            this.OR = onMapLoadedCallback;
        }

        public void onMapLoaded() {
            this.OR.onMapLoaded();
        }
    }

    class AnonymousClass_4 extends com.google.android.gms.maps.internal.o.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.SnapshotReadyCallback OS;

        AnonymousClass_4(com.google.android.gms.maps.GoogleMap.SnapshotReadyCallback snapshotReadyCallback) {
            this.OS = snapshotReadyCallback;
        }

        public void c(b bVar) {
            this.OS.onSnapshotReady((Bitmap) c.b(bVar));
        }

        public void onSnapshotReady(Bitmap bitmap) {
            this.OS.onSnapshotReady(bitmap);
        }
    }

    class AnonymousClass_5 extends com.google.android.gms.maps.internal.e.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnCameraChangeListener OT;

        AnonymousClass_5(com.google.android.gms.maps.GoogleMap.OnCameraChangeListener onCameraChangeListener) {
            this.OT = onCameraChangeListener;
        }

        public void onCameraChange(CameraPosition cameraPosition) {
            this.OT.onCameraChange(cameraPosition);
        }
    }

    class AnonymousClass_6 extends com.google.android.gms.maps.internal.h.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMapClickListener OU;

        AnonymousClass_6(com.google.android.gms.maps.GoogleMap.OnMapClickListener onMapClickListener) {
            this.OU = onMapClickListener;
        }

        public void onMapClick(LatLng latLng) {
            this.OU.onMapClick(latLng);
        }
    }

    class AnonymousClass_7 extends com.google.android.gms.maps.internal.j.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMapLongClickListener OV;

        AnonymousClass_7(com.google.android.gms.maps.GoogleMap.OnMapLongClickListener onMapLongClickListener) {
            this.OV = onMapLongClickListener;
        }

        public void onMapLongClick(LatLng latLng) {
            this.OV.onMapLongClick(latLng);
        }
    }

    class AnonymousClass_8 extends com.google.android.gms.maps.internal.k.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMarkerClickListener OW;

        AnonymousClass_8(com.google.android.gms.maps.GoogleMap.OnMarkerClickListener onMarkerClickListener) {
            this.OW = onMarkerClickListener;
        }

        public boolean a(d dVar) {
            return this.OW.onMarkerClick(new Marker(dVar));
        }
    }

    class AnonymousClass_9 extends com.google.android.gms.maps.internal.l.a {
        final /* synthetic */ com.google.android.gms.maps.GoogleMap.OnMarkerDragListener OX;

        AnonymousClass_9(com.google.android.gms.maps.GoogleMap.OnMarkerDragListener onMarkerDragListener) {
            this.OX = onMarkerDragListener;
        }

        public void b(d dVar) {
            this.OX.onMarkerDragStart(new Marker(dVar));
        }

        public void c(d dVar) {
            this.OX.onMarkerDragEnd(new Marker(dVar));
        }

        public void d(d dVar) {
            this.OX.onMarkerDrag(new Marker(dVar));
        }
    }

    public static interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    public static interface InfoWindowAdapter {
        View getInfoContents(Marker marker);

        View getInfoWindow(Marker marker);
    }

    public static interface OnCameraChangeListener {
        void onCameraChange(CameraPosition cameraPosition);
    }

    public static interface OnInfoWindowClickListener {
        void onInfoWindowClick(Marker marker);
    }

    public static interface OnMapClickListener {
        void onMapClick(LatLng latLng);
    }

    public static interface OnMapLoadedCallback {
        void onMapLoaded();
    }

    public static interface OnMapLongClickListener {
        void onMapLongClick(LatLng latLng);
    }

    public static interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    public static interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    public static interface OnMyLocationButtonClickListener {
        boolean onMyLocationButtonClick();
    }

    @Deprecated
    public static interface OnMyLocationChangeListener {
        void onMyLocationChange(Location location);
    }

    public static interface SnapshotReadyCallback {
        void onSnapshotReady(Bitmap bitmap);
    }

    private static final class a extends com.google.android.gms.maps.internal.b.a {
        private final com.google.android.gms.maps.GoogleMap.CancelableCallback Pb;

        a(com.google.android.gms.maps.GoogleMap.CancelableCallback cancelableCallback) {
            this.Pb = cancelableCallback;
        }

        public void onCancel() {
            this.Pb.onCancel();
        }

        public void onFinish() {
            this.Pb.onFinish();
        }
    }

    protected GoogleMap(IGoogleMapDelegate iGoogleMapDelegate) {
        this.OK = (IGoogleMapDelegate) er.f(iGoogleMapDelegate);
    }

    public final Circle addCircle(CircleOptions circleOptions) {
        try {
            return new Circle(this.OK.addCircle(circleOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
        try {
            com.google.android.gms.maps.model.internal.c addGroundOverlay = this.OK.addGroundOverlay(groundOverlayOptions);
            return addGroundOverlay != null ? new GroundOverlay(addGroundOverlay) : null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Marker addMarker(MarkerOptions markerOptions) {
        try {
            d addMarker = this.OK.addMarker(markerOptions);
            return addMarker != null ? new Marker(addMarker) : null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Polygon addPolygon(PolygonOptions polygonOptions) {
        try {
            return new Polygon(this.OK.addPolygon(polygonOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Polyline addPolyline(PolylineOptions polylineOptions) {
        try {
            return new Polyline(this.OK.addPolyline(polylineOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) {
        try {
            f addTileOverlay = this.OK.addTileOverlay(tileOverlayOptions);
            return addTileOverlay != null ? new TileOverlay(addTileOverlay) : null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        try {
            this.OK.animateCamera(cameraUpdate.gK());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, int i, CancelableCallback cancelableCallback) {
        try {
            this.OK.animateCameraWithDurationAndCallback(cameraUpdate.gK(), i, cancelableCallback == null ? null : new a(cancelableCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        try {
            this.OK.animateCameraWithCallback(cameraUpdate.gK(), cancelableCallback == null ? null : new a(cancelableCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void clear() {
        try {
            this.OK.clear();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    IGoogleMapDelegate gM() {
        return this.OK;
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.OK.getCameraPosition();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getMapType() {
        try {
            return this.OK.getMapType();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getMaxZoomLevel() {
        try {
            return this.OK.getMaxZoomLevel();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getMinZoomLevel() {
        try {
            return this.OK.getMinZoomLevel();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final Location getMyLocation() {
        try {
            return this.OK.getMyLocation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Projection getProjection() {
        try {
            return new Projection(this.OK.getProjection());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final UiSettings getUiSettings() {
        try {
            if (this.OL == null) {
                this.OL = new UiSettings(this.OK.getUiSettings());
            }
            return this.OL;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isBuildingsEnabled() {
        try {
            return this.OK.isBuildingsEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isIndoorEnabled() {
        try {
            return this.OK.isIndoorEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isMyLocationEnabled() {
        try {
            return this.OK.isMyLocationEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isTrafficEnabled() {
        try {
            return this.OK.isTrafficEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        try {
            this.OK.moveCamera(cameraUpdate.gK());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setBuildingsEnabled(boolean z) {
        try {
            this.OK.setBuildingsEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean setIndoorEnabled(boolean z) {
        try {
            return this.OK.setIndoorEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setInfoWindowAdapter(com.google.android.gms.maps.GoogleMap.InfoWindowAdapter r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setInfoWindowAdapter(com.google.android.gms.maps.GoogleMap$InfoWindowAdapter):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setInfoWindowAdapter(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$11;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setInfoWindowAdapter(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setLocationSource(com.google.android.gms.maps.LocationSource r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setLocationSource(com.google.android.gms.maps.LocationSource):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setLocationSource(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$1;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setLocationSource(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    public final void setMapType(int i) {
        try {
            this.OK.setMapType(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMyLocationEnabled(boolean z) {
        try {
            this.OK.setMyLocationEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnCameraChangeListener(com.google.android.gms.maps.GoogleMap.OnCameraChangeListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnCameraChangeListener(com.google.android.gms.maps.GoogleMap$OnCameraChangeListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnCameraChangeListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$5;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnCameraChangeListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnInfoWindowClickListener(com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnInfoWindowClickListener(com.google.android.gms.maps.GoogleMap$OnInfoWindowClickListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnInfoWindowClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$10;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnInfoWindowClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnMapClickListener(com.google.android.gms.maps.GoogleMap.OnMapClickListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMapClickListener(com.google.android.gms.maps.GoogleMap$OnMapClickListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMapClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$6;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMapClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setOnMapLoadedCallback(com.google.android.gms.maps.GoogleMap.OnMapLoadedCallback r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMapLoadedCallback(com.google.android.gms.maps.GoogleMap$OnMapLoadedCallback):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMapLoadedCallback(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$3;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMapLoadedCallback(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnMapLongClickListener(com.google.android.gms.maps.GoogleMap.OnMapLongClickListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMapLongClickListener(com.google.android.gms.maps.GoogleMap$OnMapLongClickListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMapLongClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$7;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMapLongClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnMarkerClickListener(com.google.android.gms.maps.GoogleMap.OnMarkerClickListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMarkerClickListener(com.google.android.gms.maps.GoogleMap$OnMarkerClickListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMarkerClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$8;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMarkerClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnMarkerDragListener(com.google.android.gms.maps.GoogleMap.OnMarkerDragListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMarkerDragListener(com.google.android.gms.maps.GoogleMap$OnMarkerDragListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMarkerDragListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$9;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMarkerDragListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setOnMyLocationButtonClickListener(com.google.android.gms.maps.GoogleMap.OnMyLocationButtonClickListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMyLocationButtonClickListener(com.google.android.gms.maps.GoogleMap$OnMyLocationButtonClickListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMyLocationButtonClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$2;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMyLocationButtonClickListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @java.lang.Deprecated
    public final void setOnMyLocationChangeListener(com.google.android.gms.maps.GoogleMap.OnMyLocationChangeListener r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.GoogleMap.setOnMyLocationChangeListener(com.google.android.gms.maps.GoogleMap$OnMyLocationChangeListener):void");
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0009;
    L_0x0002:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = 0;
        r0.setOnMyLocationChangeListener(r1);	 Catch:{ RemoteException -> 0x0014 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.OK;	 Catch:{ RemoteException -> 0x0014 }
        r1 = new com.google.android.gms.maps.GoogleMap$12;	 Catch:{ RemoteException -> 0x0014 }
        r1.<init>(r3);	 Catch:{ RemoteException -> 0x0014 }
        r0.setOnMyLocationChangeListener(r1);	 Catch:{ RemoteException -> 0x0014 }
        goto L_0x0008;
    L_0x0014:
        r0 = move-exception;
        r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
        r1.<init>(r0);
        throw r1;
        */
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
        try {
            this.OK.setPadding(i, i2, i3, i4);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setTrafficEnabled(boolean z) {
        try {
            this.OK.setTrafficEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback) {
        snapshot(snapshotReadyCallback, null);
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback, Bitmap bitmap) {
        try {
            this.OK.snapshot(new AnonymousClass_4(snapshotReadyCallback), (c) (bitmap != null ? c.h(bitmap) : null));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void stopAnimation() {
        try {
            this.OK.stopAnimation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}