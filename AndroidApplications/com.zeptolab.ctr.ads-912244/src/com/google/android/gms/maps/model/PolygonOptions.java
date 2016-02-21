package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions implements SafeParcelable {
    public static final PolygonOptionsCreator CREATOR;
    private float PM;
    private int PN;
    private int PO;
    private float PP;
    private boolean PQ;
    private final List Qo;
    private final List Qp;
    private boolean Qq;
    private final int wj;

    static {
        CREATOR = new PolygonOptionsCreator();
    }

    public PolygonOptions() {
        this.PM = 10.0f;
        this.PN = -16777216;
        this.PO = 0;
        this.PP = 0.0f;
        this.PQ = true;
        this.Qq = false;
        this.wj = 1;
        this.Qo = new ArrayList();
        this.Qp = new ArrayList();
    }

    PolygonOptions(int i, List list, List list2, float f, int i2, int i3, float f2, boolean z, boolean z2) {
        this.PM = 10.0f;
        this.PN = -16777216;
        this.PO = 0;
        this.PP = 0.0f;
        this.PQ = true;
        this.Qq = false;
        this.wj = i;
        this.Qo = list;
        this.Qp = list2;
        this.PM = f;
        this.PN = i2;
        this.PO = i3;
        this.PP = f2;
        this.PQ = z;
        this.Qq = z2;
    }

    public PolygonOptions add(LatLng latLng) {
        this.Qo.add(latLng);
        return this;
    }

    public PolygonOptions add(LatLng... latLngArr) {
        this.Qo.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public PolygonOptions addAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.Qo.add((LatLng) it.next());
        }
        return this;
    }

    public PolygonOptions addHole(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add((LatLng) it.next());
        }
        this.Qp.add(arrayList);
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public PolygonOptions fillColor(int i) {
        this.PO = i;
        return this;
    }

    public PolygonOptions geodesic(boolean z) {
        this.Qq = z;
        return this;
    }

    public int getFillColor() {
        return this.PO;
    }

    public List getHoles() {
        return this.Qp;
    }

    public List getPoints() {
        return this.Qo;
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

    List hg() {
        return this.Qp;
    }

    public boolean isGeodesic() {
        return this.Qq;
    }

    public boolean isVisible() {
        return this.PQ;
    }

    public PolygonOptions strokeColor(int i) {
        this.PN = i;
        return this;
    }

    public PolygonOptions strokeWidth(float f) {
        this.PM = f;
        return this;
    }

    public PolygonOptions visible(boolean z) {
        this.PQ = z;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            g.a(this, parcel, i);
        } else {
            PolygonOptionsCreator.a(this, parcel, i);
        }
    }

    public PolygonOptions zIndex(float f) {
        this.PP = f;
        return this;
    }
}