package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ep;
import com.google.android.gms.maps.internal.r;

public final class VisibleRegion implements SafeParcelable {
    public static final VisibleRegionCreator CREATOR;
    public final LatLng farLeft;
    public final LatLng farRight;
    public final LatLngBounds latLngBounds;
    public final LatLng nearLeft;
    public final LatLng nearRight;
    private final int wj;

    static {
        CREATOR = new VisibleRegionCreator();
    }

    VisibleRegion(int i, LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds) {
        this.wj = i;
        this.nearLeft = latLng;
        this.nearRight = latLng2;
        this.farLeft = latLng3;
        this.farRight = latLng4;
        this.latLngBounds = latLngBounds;
    }

    public VisibleRegion(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds) {
        this(1, latLng, latLng2, latLng3, latLng4, latLngBounds);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(VisibleRegion visibleRegion) {
        if (this == visibleRegion) {
            return true;
        }
        if (!(visibleRegion instanceof VisibleRegion)) {
            return false;
        }
        visibleRegion = visibleRegion;
        return this.nearLeft.equals(visibleRegion.nearLeft) && this.nearRight.equals(visibleRegion.nearRight) && this.farLeft.equals(visibleRegion.farLeft) && this.farRight.equals(visibleRegion.farRight) && this.latLngBounds.equals(visibleRegion.latLngBounds);
    }

    int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.nearLeft, this.nearRight, this.farLeft, this.farRight, this.latLngBounds});
    }

    public String toString() {
        return ep.e(this).a("nearLeft", this.nearLeft).a("nearRight", this.nearRight).a("farLeft", this.farLeft).a("farRight", this.farRight).a("latLngBounds", this.latLngBounds).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            k.a(this, parcel, i);
        } else {
            VisibleRegionCreator.a(this, parcel, i);
        }
    }
}