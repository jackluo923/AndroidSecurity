package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.y;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.ke;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;

public class DriveId implements SafeParcelable {
    public static final Creator CREATOR;
    final String Dc;
    final long Dd;
    final long De;
    private volatile String Df;
    final int wj;

    static {
        CREATOR = new d();
    }

    DriveId(int i, String str, long j, long j2) {
        boolean z = false;
        this.Df = null;
        this.wj = i;
        this.Dc = str;
        er.x(!AdTrackerConstants.BLANK.equals(str));
        if (!(str == null && j == -1)) {
            z = true;
        }
        er.x(z);
        this.Dd = j;
        this.De = j2;
    }

    public DriveId(String str, long j, long j2) {
        this(1, str, j, j2);
    }

    public static DriveId aq(String str) {
        er.f(str);
        return new DriveId(str, -1, -1);
    }

    public static DriveId decodeFromString(String str) {
        er.b(str.startsWith("DriveId:"), "Invalid DriveId: " + str);
        return f(Base64.decode(str.substring("DriveId:".length()), R.styleable.MapAttrs_uiZoomControls));
    }

    static DriveId f(byte[] bArr) {
        try {
            y g = y.g(bArr);
            return new DriveId(g.versionCode, AdTrackerConstants.BLANK.equals(g.DV) ? null : g.DV, g.DW, g.DX);
        } catch (kd e) {
            throw new IllegalArgumentException();
        }
    }

    public int describeContents() {
        return 0;
    }

    final byte[] eR() {
        ke yVar = new y();
        yVar.versionCode = this.wj;
        yVar.DV = this.Dc == null ? AdTrackerConstants.BLANK : this.Dc;
        yVar.DW = this.Dd;
        yVar.DX = this.De;
        return ke.d(yVar);
    }

    public final String encodeToString() {
        if (this.Df == null) {
            this.Df = "DriveId:" + Base64.encodeToString(eR(), R.styleable.MapAttrs_uiZoomControls);
        }
        return this.Df;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DriveId)) {
            return false;
        }
        DriveId driveId = (DriveId) obj;
        if (driveId.De != this.De) {
            Log.w("DriveId", "Attempt to compare invalid DriveId detected. Has local storage been cleared?");
            return false;
        } else if (driveId.Dd == -1 && this.Dd == -1) {
            return driveId.Dc.equals(this.Dc);
        } else {
            return driveId.Dd == this.Dd;
        }
    }

    public String getResourceId() {
        return this.Dc;
    }

    public int hashCode() {
        return this.Dd == -1 ? this.Dc.hashCode() : (String.valueOf(this.De) + String.valueOf(this.Dd)).hashCode();
    }

    public String toString() {
        return encodeToString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}