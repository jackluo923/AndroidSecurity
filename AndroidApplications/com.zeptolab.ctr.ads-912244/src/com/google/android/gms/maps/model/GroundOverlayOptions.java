package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.b.a;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.internal.r;

public final class GroundOverlayOptions implements SafeParcelable {
    public static final GroundOverlayOptionsCreator CREATOR;
    public static final float NO_DIMENSION = -1.0f;
    private float PI;
    private float PP;
    private boolean PQ;
    private BitmapDescriptor PS;
    private LatLng PT;
    private float PU;
    private float PV;
    private LatLngBounds PW;
    private float PX;
    private float PY;
    private float PZ;
    private final int wj;

    static {
        CREATOR = new GroundOverlayOptionsCreator();
    }

    public GroundOverlayOptions() {
        this.PQ = true;
        this.PX = 0.0f;
        this.PY = 0.5f;
        this.PZ = 0.5f;
        this.wj = 1;
    }

    GroundOverlayOptions(int i, IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7) {
        this.PQ = true;
        this.PX = 0.0f;
        this.PY = 0.5f;
        this.PZ = 0.5f;
        this.wj = i;
        this.PS = new BitmapDescriptor(a.G(iBinder));
        this.PT = latLng;
        this.PU = f;
        this.PV = f2;
        this.PW = latLngBounds;
        this.PI = f3;
        this.PP = f4;
        this.PQ = z;
        this.PX = f5;
        this.PY = f6;
        this.PZ = f7;
    }

    private GroundOverlayOptions a(LatLng latLng, float f, float f2) {
        this.PT = latLng;
        this.PU = f;
        this.PV = f2;
        return this;
    }

    public GroundOverlayOptions anchor(float f, float f2) {
        this.PY = f;
        this.PZ = f2;
        return this;
    }

    public GroundOverlayOptions bearing(float f) {
        this.PI = ((f % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public float getAnchorU() {
        return this.PY;
    }

    public float getAnchorV() {
        return this.PZ;
    }

    public float getBearing() {
        return this.PI;
    }

    public LatLngBounds getBounds() {
        return this.PW;
    }

    public float getHeight() {
        return this.PV;
    }

    public BitmapDescriptor getImage() {
        return this.PS;
    }

    public LatLng getLocation() {
        return this.PT;
    }

    public float getTransparency() {
        return this.PX;
    }

    int getVersionCode() {
        return this.wj;
    }

    public float getWidth() {
        return this.PU;
    }

    public float getZIndex() {
        return this.PP;
    }

    IBinder he() {
        return this.PS.gK().asBinder();
    }

    public GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        this.PS = bitmapDescriptor;
        return this;
    }

    public boolean isVisible() {
        return this.PQ;
    }

    public GroundOverlayOptions position(LatLng latLng, float f) {
        boolean z = true;
        er.a(this.PW == null, "Position has already been set using positionFromBounds");
        er.b(latLng != null, (Object)"Location must be specified");
        if (f < 0.0f) {
            z = false;
        }
        er.b(z, (Object)"Width must be non-negative");
        return a(latLng, f, NO_DIMENSION);
    }

    public GroundOverlayOptions position(LatLng latLng, float f, float f2) {
        boolean z = true;
        er.a(this.PW == null, "Position has already been set using positionFromBounds");
        er.b(latLng != null, (Object)"Location must be specified");
        er.b(f >= 0.0f, (Object)"Width must be non-negative");
        if (f2 < 0.0f) {
            z = false;
        }
        er.b(z, (Object)"Height must be non-negative");
        return a(latLng, f, f2);
    }

    public GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        er.a(this.PT == null, "Position has already been set using position: " + this.PT);
        this.PW = latLngBounds;
        return this;
    }

    public GroundOverlayOptions transparency(float f) {
        boolean z;
        z = f >= 0.0f && f <= 1.0f;
        er.b(z, (Object)"Transparency must be in the range [0..1]");
        this.PX = f;
        return this;
    }

    public GroundOverlayOptions visible(boolean z) {
        this.PQ = z;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            c.a(this, parcel, i);
        } else {
            GroundOverlayOptionsCreator.a(this, parcel, i);
        }
    }

    public GroundOverlayOptions zIndex(float f) {
        this.PP = f;
        return this;
    }
}