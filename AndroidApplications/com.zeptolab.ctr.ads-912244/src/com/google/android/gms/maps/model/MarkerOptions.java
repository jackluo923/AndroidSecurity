package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.b.a;
import com.google.android.gms.maps.internal.r;

public final class MarkerOptions implements SafeParcelable {
    public static final MarkerOptionsCreator CREATOR;
    private String CX;
    private boolean PQ;
    private float PY;
    private float PZ;
    private LatLng Qf;
    private String Qg;
    private BitmapDescriptor Qh;
    private boolean Qi;
    private boolean Qj;
    private float Qk;
    private float Ql;
    private float Qm;
    private float mAlpha;
    private final int wj;

    static {
        CREATOR = new MarkerOptionsCreator();
    }

    public MarkerOptions() {
        this.PY = 0.5f;
        this.PZ = 1.0f;
        this.PQ = true;
        this.Qj = false;
        this.Qk = 0.0f;
        this.Ql = 0.5f;
        this.Qm = 0.0f;
        this.mAlpha = 1.0f;
        this.wj = 1;
    }

    MarkerOptions(int i, LatLng latLng, String str, String str2, IBinder iBinder, float f, float f2, boolean z, boolean z2, boolean z3, float f3, float f4, float f5, float f6) {
        this.PY = 0.5f;
        this.PZ = 1.0f;
        this.PQ = true;
        this.Qj = false;
        this.Qk = 0.0f;
        this.Ql = 0.5f;
        this.Qm = 0.0f;
        this.mAlpha = 1.0f;
        this.wj = i;
        this.Qf = latLng;
        this.CX = str;
        this.Qg = str2;
        this.Qh = iBinder == null ? null : new BitmapDescriptor(a.G(iBinder));
        this.PY = f;
        this.PZ = f2;
        this.Qi = z;
        this.PQ = z2;
        this.Qj = z3;
        this.Qk = f3;
        this.Ql = f4;
        this.Qm = f5;
        this.mAlpha = f6;
    }

    public MarkerOptions alpha(float f) {
        this.mAlpha = f;
        return this;
    }

    public MarkerOptions anchor(float f, float f2) {
        this.PY = f;
        this.PZ = f2;
        return this;
    }

    public int describeContents() {
        return 0;
    }

    public MarkerOptions draggable(boolean z) {
        this.Qi = z;
        return this;
    }

    public MarkerOptions flat(boolean z) {
        this.Qj = z;
        return this;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public float getAnchorU() {
        return this.PY;
    }

    public float getAnchorV() {
        return this.PZ;
    }

    public BitmapDescriptor getIcon() {
        return this.Qh;
    }

    public float getInfoWindowAnchorU() {
        return this.Ql;
    }

    public float getInfoWindowAnchorV() {
        return this.Qm;
    }

    public LatLng getPosition() {
        return this.Qf;
    }

    public float getRotation() {
        return this.Qk;
    }

    public String getSnippet() {
        return this.Qg;
    }

    public String getTitle() {
        return this.CX;
    }

    int getVersionCode() {
        return this.wj;
    }

    IBinder hf() {
        return this.Qh == null ? null : this.Qh.gK().asBinder();
    }

    public MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.Qh = bitmapDescriptor;
        return this;
    }

    public MarkerOptions infoWindowAnchor(float f, float f2) {
        this.Ql = f;
        this.Qm = f2;
        return this;
    }

    public boolean isDraggable() {
        return this.Qi;
    }

    public boolean isFlat() {
        return this.Qj;
    }

    public boolean isVisible() {
        return this.PQ;
    }

    public MarkerOptions position(LatLng latLng) {
        this.Qf = latLng;
        return this;
    }

    public MarkerOptions rotation(float f) {
        this.Qk = f;
        return this;
    }

    public MarkerOptions snippet(String str) {
        this.Qg = str;
        return this;
    }

    public MarkerOptions title(String str) {
        this.CX = str;
        return this;
    }

    public MarkerOptions visible(boolean z) {
        this.PQ = z;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            f.a(this, parcel, i);
        } else {
            MarkerOptionsCreator.a(this, parcel, i);
        }
    }
}