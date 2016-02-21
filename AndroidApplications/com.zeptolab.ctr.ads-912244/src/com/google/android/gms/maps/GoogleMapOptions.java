package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.a;
import com.google.android.gms.maps.internal.r;
import com.google.android.gms.maps.model.CameraPosition;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public final class GoogleMapOptions implements SafeParcelable {
    public static final GoogleMapOptionsCreator CREATOR;
    private Boolean Pc;
    private Boolean Pd;
    private int Pe;
    private CameraPosition Pf;
    private Boolean Pg;
    private Boolean Ph;
    private Boolean Pi;
    private Boolean Pj;
    private Boolean Pk;
    private Boolean Pl;
    private final int wj;

    static {
        CREATOR = new GoogleMapOptionsCreator();
    }

    public GoogleMapOptions() {
        this.Pe = -1;
        this.wj = 1;
    }

    GoogleMapOptions(int i, byte b, byte b2, int i2, CameraPosition cameraPosition, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8) {
        this.Pe = -1;
        this.wj = i;
        this.Pc = a.a(b);
        this.Pd = a.a(b2);
        this.Pe = i2;
        this.Pf = cameraPosition;
        this.Pg = a.a(b3);
        this.Ph = a.a(b4);
        this.Pi = a.a(b5);
        this.Pj = a.a(b6);
        this.Pk = a.a(b7);
        this.Pl = a.a(b8);
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(0)) {
            googleMapOptions.mapType(obtainAttributes.getInt(0, -1));
        }
        if (obtainAttributes.hasValue(com.zeptolab.ctr.ads.R.styleable.MapAttrs_zOrderOnTop)) {
            googleMapOptions.zOrderOnTop(obtainAttributes.getBoolean(com.zeptolab.ctr.ads.R.styleable.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(com.zeptolab.ctr.ads.R.styleable.MapAttrs_useViewLifecycle)) {
            googleMapOptions.useViewLifecycleInFragment(obtainAttributes.getBoolean(com.zeptolab.ctr.ads.R.styleable.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(IabHelper.BILLING_RESPONSE_RESULT_ERROR)) {
            googleMapOptions.compassEnabled(obtainAttributes.getBoolean(IabHelper.BILLING_RESPONSE_RESULT_ERROR, true));
        }
        if (obtainAttributes.hasValue(GoogleScorer.CLIENT_ALL)) {
            googleMapOptions.rotateGesturesEnabled(obtainAttributes.getBoolean(GoogleScorer.CLIENT_ALL, true));
        }
        if (obtainAttributes.hasValue(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED)) {
            googleMapOptions.scrollGesturesEnabled(obtainAttributes.getBoolean(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, true));
        }
        if (obtainAttributes.hasValue(ZBuildConfig.$minsdk)) {
            googleMapOptions.tiltGesturesEnabled(obtainAttributes.getBoolean(ZBuildConfig.$minsdk, true));
        }
        if (obtainAttributes.hasValue(com.zeptolab.ctr.ads.R.styleable.MapAttrs_uiZoomGestures)) {
            googleMapOptions.zoomGesturesEnabled(obtainAttributes.getBoolean(com.zeptolab.ctr.ads.R.styleable.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(com.zeptolab.ctr.ads.R.styleable.MapAttrs_uiZoomControls)) {
            googleMapOptions.zoomControlsEnabled(obtainAttributes.getBoolean(com.zeptolab.ctr.ads.R.styleable.MapAttrs_uiZoomControls, true));
        }
        googleMapOptions.camera(CameraPosition.createFromAttributes(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    public GoogleMapOptions camera(CameraPosition cameraPosition) {
        this.Pf = cameraPosition;
        return this;
    }

    public GoogleMapOptions compassEnabled(boolean z) {
        this.Ph = Boolean.valueOf(z);
        return this;
    }

    public int describeContents() {
        return 0;
    }

    byte gN() {
        return a.c(this.Pc);
    }

    byte gO() {
        return a.c(this.Pd);
    }

    byte gP() {
        return a.c(this.Pg);
    }

    byte gQ() {
        return a.c(this.Ph);
    }

    byte gR() {
        return a.c(this.Pi);
    }

    byte gS() {
        return a.c(this.Pj);
    }

    byte gT() {
        return a.c(this.Pk);
    }

    byte gU() {
        return a.c(this.Pl);
    }

    public CameraPosition getCamera() {
        return this.Pf;
    }

    public Boolean getCompassEnabled() {
        return this.Ph;
    }

    public int getMapType() {
        return this.Pe;
    }

    public Boolean getRotateGesturesEnabled() {
        return this.Pl;
    }

    public Boolean getScrollGesturesEnabled() {
        return this.Pi;
    }

    public Boolean getTiltGesturesEnabled() {
        return this.Pk;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.Pd;
    }

    int getVersionCode() {
        return this.wj;
    }

    public Boolean getZOrderOnTop() {
        return this.Pc;
    }

    public Boolean getZoomControlsEnabled() {
        return this.Pg;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.Pj;
    }

    public GoogleMapOptions mapType(int i) {
        this.Pe = i;
        return this;
    }

    public GoogleMapOptions rotateGesturesEnabled(boolean z) {
        this.Pl = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions scrollGesturesEnabled(boolean z) {
        this.Pi = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions tiltGesturesEnabled(boolean z) {
        this.Pk = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions useViewLifecycleInFragment(boolean z) {
        this.Pd = Boolean.valueOf(z);
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            a.a(this, parcel, i);
        } else {
            GoogleMapOptionsCreator.a(this, parcel, i);
        }
    }

    public GoogleMapOptions zOrderOnTop(boolean z) {
        this.Pc = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions zoomControlsEnabled(boolean z) {
        this.Pg = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions zoomGesturesEnabled(boolean z) {
        this.Pj = Boolean.valueOf(z);
        return this;
    }
}