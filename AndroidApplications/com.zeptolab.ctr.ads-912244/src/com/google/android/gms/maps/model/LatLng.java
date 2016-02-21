package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.r;

public final class LatLng implements SafeParcelable {
    public static final LatLngCreator CREATOR;
    public final double latitude;
    public final double longitude;
    private final int wj;

    static {
        CREATOR = new LatLngCreator();
    }

    public LatLng(double d, double d2) {
        this(1, d, d2);
    }

    LatLng(int i, double d, double d2) {
        this.wj = i;
        if (-180.0d > d2 || d2 >= 180.0d) {
            this.longitude = (((d2 - 180.0d) % 360.0d) + 360.0d) % 360.0d - 180.0d;
        } else {
            this.longitude = d2;
        }
        this.latitude = Math.max(-90.0d, Math.min(90.0d, d));
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(LatLng latLng) {
        if (this == latLng) {
            return true;
        }
        if (!(latLng instanceof LatLng)) {
            return false;
        }
        latLng = latLng;
        return Double.doubleToLongBits(this.latitude) == Double.doubleToLongBits(latLng.latitude) && Double.doubleToLongBits(this.longitude) == Double.doubleToLongBits(latLng.longitude);
    }

    int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.latitude);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        return i * 31 + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public String toString() {
        return "lat/lng: (" + this.latitude + "," + this.longitude + ")";
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            e.a(this, parcel, i);
        } else {
            LatLngCreator.a(this, parcel, i);
        }
    }
}