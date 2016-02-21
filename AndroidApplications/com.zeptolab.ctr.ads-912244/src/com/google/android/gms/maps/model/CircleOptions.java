package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.r;

public final class CircleOptions implements SafeParcelable {
    public static final CircleOptionsCreator CREATOR;
    private LatLng PK;
    private double PL;
    private float PM;
    private int PN;
    private int PO;
    private float PP;
    private boolean PQ;
    private final int wj;

    static {
        CREATOR = new CircleOptionsCreator();
    }

    public CircleOptions() {
        this.PK = null;
        this.PL = 0.0d;
        this.PM = 10.0f;
        this.PN = -16777216;
        this.PO = 0;
        this.PP = 0.0f;
        this.PQ = true;
        this.wj = 1;
    }

    CircleOptions(int i, LatLng latLng, double d, float f, int i2, int i3, float f2, boolean z) {
        this.PK = null;
        this.PL = 0.0d;
        this.PM = 10.0f;
        this.PN = -16777216;
        this.PO = 0;
        this.PP = 0.0f;
        this.PQ = true;
        this.wj = i;
        this.PK = latLng;
        this.PL = d;
        this.PM = f;
        this.PN = i2;
        this.PO = i3;
        this.PP = f2;
        this.PQ = z;
    }

    public CircleOptions center(LatLng latLng) {
        this.PK = latLng;
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public CircleOptions fillColor(int i) {
        this.PO = i;
        return this;
    }

    public LatLng getCenter() {
        return this.PK;
    }

    public int getFillColor() {
        return this.PO;
    }

    public double getRadius() {
        return this.PL;
    }

    public int getStrokeColor() {
        return this.PN;
    }

    public float getStrokeWidth() {
        return this.PM;
    }

    int getVersionCode() {
        return this.wj;
    }

    public float getZIndex() {
        return this.PP;
    }

    public boolean isVisible() {
        return this.PQ;
    }

    public CircleOptions radius(double d) {
        this.PL = d;
        return this;
    }

    public CircleOptions strokeColor(int i) {
        this.PN = i;
        return this;
    }

    public CircleOptions strokeWidth(float f) {
        this.PM = f;
        return this;
    }

    public CircleOptions visible(boolean z) {
        this.PQ = z;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            b.a(this, parcel, i);
        } else {
            CircleOptionsCreator.a(this, parcel, i);
        }
    }

    public CircleOptions zIndex(float f) {
        this.PP = f;
        return this;
    }
}