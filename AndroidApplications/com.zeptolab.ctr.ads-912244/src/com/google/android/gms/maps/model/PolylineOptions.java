package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions implements SafeParcelable {
    public static final PolylineOptionsCreator CREATOR;
    private float PP;
    private boolean PQ;
    private float PU;
    private final List Qo;
    private boolean Qq;
    private final int wj;
    private int yX;

    static {
        CREATOR = new PolylineOptionsCreator();
    }

    public PolylineOptions() {
        this.PU = 10.0f;
        this.yX = -16777216;
        this.PP = 0.0f;
        this.PQ = true;
        this.Qq = false;
        this.wj = 1;
        this.Qo = new ArrayList();
    }

    PolylineOptions(int i, List list, float f, int i2, float f2, boolean z, boolean z2) {
        this.PU = 10.0f;
        this.yX = -16777216;
        this.PP = 0.0f;
        this.PQ = true;
        this.Qq = false;
        this.wj = i;
        this.Qo = list;
        this.PU = f;
        this.yX = i2;
        this.PP = f2;
        this.PQ = z;
        this.Qq = z2;
    }

    public PolylineOptions add(LatLng latLng) {
        this.Qo.add(latLng);
        return this;
    }

    public PolylineOptions add(LatLng... latLngArr) {
        this.Qo.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public PolylineOptions addAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.Qo.add((LatLng) it.next());
        }
        return this;
    }

    public PolylineOptions color(int i) {
        this.yX = i;
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public PolylineOptions geodesic(boolean z) {
        this.Qq = z;
        return this;
    }

    public int getColor() {
        return this.yX;
    }

    public List getPoints() {
        return this.Qo;
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

    public boolean isGeodesic() {
        return this.Qq;
    }

    public boolean isVisible() {
        return this.PQ;
    }

    public PolylineOptions visible(boolean z) {
        this.PQ = z;
        return this;
    }

    public PolylineOptions width(float f) {
        this.PU = f;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            h.a(this, parcel, i);
        } else {
            PolylineOptionsCreator.a(this, parcel, i);
        }
    }

    public PolylineOptions zIndex(float f) {
        this.PP = f;
        return this;
    }
}