package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.internal.r;

public final class LatLngBounds implements SafeParcelable {
    public static final LatLngBoundsCreator CREATOR;
    public final LatLng northeast;
    public final LatLng southwest;
    private final int wj;

    public static final class Builder {
        private double Qa;
        private double Qb;
        private double Qc;
        private double Qd;

        public Builder() {
            this.Qa = Double.POSITIVE_INFINITY;
            this.Qb = Double.NEGATIVE_INFINITY;
            this.Qc = Double.NaN;
            this.Qd = Double.NaN;
        }

        private boolean d(double d) {
            boolean z = 0;
            if (this.Qc > this.Qd) {
                if (this.Qc <= d || d <= this.Qd) {
                    z = true;
                }
                return z;
            } else if (this.Qc > d || d > this.Qd) {
                return false;
            } else {
                return true;
            }
        }

        public LatLngBounds build() {
            er.a(!Double.isNaN(this.Qc), "no included points");
            return new LatLngBounds(new LatLng(this.Qa, this.Qc), new LatLng(this.Qb, this.Qd));
        }

        public com.google.android.gms.maps.model.LatLngBounds.Builder include(LatLng latLng) {
            this.Qa = Math.min(this.Qa, latLng.latitude);
            this.Qb = Math.max(this.Qb, latLng.latitude);
            double d = latLng.longitude;
            if (Double.isNaN(this.Qc)) {
                this.Qc = d;
                this.Qd = d;
            } else if (!d(d)) {
                if (LatLngBounds.b(this.Qc, d) < LatLngBounds.c(this.Qd, d)) {
                    this.Qc = d;
                } else {
                    this.Qd = d;
                }
            }
            return this;
        }
    }

    static {
        CREATOR = new LatLngBoundsCreator();
    }

    LatLngBounds(int i, Object obj, Object obj2) {
        er.b(obj, (Object)"null southwest");
        er.b(obj2, (Object)"null northeast");
        er.a(obj2.latitude >= obj.latitude, "southern latitude exceeds northern latitude (%s > %s)", new Object[]{Double.valueOf(obj.latitude), Double.valueOf(obj2.latitude)});
        this.wj = i;
        this.southwest = obj;
        this.northeast = obj2;
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        this(1, latLng, latLng2);
    }

    private static double b(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    public static Builder builder() {
        return new Builder();
    }

    private static double c(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    private boolean c(double d) {
        return this.southwest.latitude <= d && d <= this.northeast.latitude;
    }

    private boolean d(double d) {
        boolean z = 0;
        if (this.southwest.longitude > this.northeast.longitude) {
            if (this.southwest.longitude <= d || d <= this.northeast.longitude) {
                z = true;
            }
            return z;
        } else if (this.southwest.longitude > d || d > this.northeast.longitude) {
            return false;
        } else {
            return true;
        }
    }

    public boolean contains(LatLng latLng) {
        return c(latLng.latitude) && d(latLng.longitude);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(LatLngBounds latLngBounds) {
        if (this == latLngBounds) {
            return true;
        }
        if (!(latLngBounds instanceof LatLngBounds)) {
            return false;
        }
        latLngBounds = latLngBounds;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    public LatLng getCenter() {
        double d = (this.southwest.latitude + this.northeast.latitude) / 2.0d;
        double d2 = this.northeast.longitude;
        double d3 = this.southwest.longitude;
        return new LatLng(d, d3 <= d2 ? (d2 + d3) / 2.0d : ((d2 + 360.0d) + d3) / 2.0d);
    }

    int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.southwest, this.northeast});
    }

    public LatLngBounds including(LatLng latLng) {
        double min = Math.min(this.southwest.latitude, latLng.latitude);
        double max = Math.max(this.northeast.latitude, latLng.latitude);
        double d = this.northeast.longitude;
        double d2 = this.southwest.longitude;
        double d3 = latLng.longitude;
        if (d(d3)) {
            d3 = d2;
            d2 = d;
        } else if (b(d2, d3) < c(d, d3)) {
            d2 = d;
        } else {
            double d4 = d2;
            d2 = d3;
            d3 = d4;
        }
        return new LatLngBounds(new LatLng(min, d3), new LatLng(max, d2));
    }

    public String toString() {
        return ep.e(this).a("southwest", this.southwest).a("northeast", this.northeast).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            d.a(this, parcel, i);
        } else {
            LatLngBoundsCreator.a(this, parcel, i);
        }
    }
}