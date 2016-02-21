package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.internal.r;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class CameraPosition implements SafeParcelable {
    public static final CameraPositionCreator CREATOR;
    public final float bearing;
    public final LatLng target;
    public final float tilt;
    private final int wj;
    public final float zoom;

    public static final class Builder {
        private LatLng PF;
        private float PG;
        private float PH;
        private float PI;

        public Builder(CameraPosition cameraPosition) {
            this.PF = cameraPosition.target;
            this.PG = cameraPosition.zoom;
            this.PH = cameraPosition.tilt;
            this.PI = cameraPosition.bearing;
        }

        public com.google.android.gms.maps.model.CameraPosition.Builder bearing(float f) {
            this.PI = f;
            return this;
        }

        public CameraPosition build() {
            return new CameraPosition(this.PF, this.PG, this.PH, this.PI);
        }

        public com.google.android.gms.maps.model.CameraPosition.Builder target(LatLng latLng) {
            this.PF = latLng;
            return this;
        }

        public com.google.android.gms.maps.model.CameraPosition.Builder tilt(float f) {
            this.PH = f;
            return this;
        }

        public com.google.android.gms.maps.model.CameraPosition.Builder zoom(float f) {
            this.PG = f;
            return this;
        }
    }

    static {
        CREATOR = new CameraPositionCreator();
    }

    CameraPosition(int i, Object obj, float f, float f2, float f3) {
        boolean z;
        er.b(obj, (Object)"null camera target");
        z = 0.0f <= f2 && f2 <= 90.0f;
        er.b(z, (Object)"Tilt needs to be between 0 and 90 inclusive");
        this.wj = i;
        this.target = obj;
        this.zoom = f;
        this.tilt = f2 + 0.0f;
        if (((double) f3) <= 0.0d) {
            f3 = f3 % 360.0f + 360.0f;
        }
        this.bearing = f3 % 360.0f;
    }

    public CameraPosition(LatLng latLng, float f, float f2, float f3) {
        this(1, latLng, f, f2, f3);
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder builder(CameraPosition cameraPosition) {
        return new Builder(cameraPosition);
    }

    public static CameraPosition createFromAttributes(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.MapAttrs);
        LatLng latLng = new LatLng((double) (obtainAttributes.hasValue(GoogleScorer.CLIENT_PLUS) ? obtainAttributes.getFloat(GoogleScorer.CLIENT_PLUS, BitmapDescriptorFactory.HUE_RED) : 0.0f), (double) (obtainAttributes.hasValue(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) ? obtainAttributes.getFloat(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, BitmapDescriptorFactory.HUE_RED) : 0.0f));
        Builder builder = builder();
        builder.target(latLng);
        if (obtainAttributes.hasValue(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR)) {
            builder.zoom(obtainAttributes.getFloat(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(1)) {
            builder.bearing(obtainAttributes.getFloat(1, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(GoogleScorer.CLIENT_APPSTATE)) {
            builder.tilt(obtainAttributes.getFloat(GoogleScorer.CLIENT_APPSTATE, BitmapDescriptorFactory.HUE_RED));
        }
        return builder.build();
    }

    public static final CameraPosition fromLatLngZoom(LatLng latLng, float f) {
        return new CameraPosition(latLng, f, 0.0f, 0.0f);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(CameraPosition cameraPosition) {
        if (this == cameraPosition) {
            return true;
        }
        if (!(cameraPosition instanceof CameraPosition)) {
            return false;
        }
        cameraPosition = cameraPosition;
        return this.target.equals(cameraPosition.target) && Float.floatToIntBits(this.zoom) == Float.floatToIntBits(cameraPosition.zoom) && Float.floatToIntBits(this.tilt) == Float.floatToIntBits(cameraPosition.tilt) && Float.floatToIntBits(this.bearing) == Float.floatToIntBits(cameraPosition.bearing);
    }

    int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.target, Float.valueOf(this.zoom), Float.valueOf(this.tilt), Float.valueOf(this.bearing)});
    }

    public String toString() {
        return ep.e(this).a("target", this.target).a("zoom", Float.valueOf(this.zoom)).a("tilt", Float.valueOf(this.tilt)).a("bearing", Float.valueOf(this.bearing)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (r.hc()) {
            a.a(this, parcel, i);
        } else {
            CameraPositionCreator.a(this, parcel, i);
        }
    }
}