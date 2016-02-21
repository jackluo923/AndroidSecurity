package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ep;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b implements SafeParcelable {
    public static final c CREATOR;
    int Lh;
    int Li;
    long Lj;
    private final int wj;

    static {
        CREATOR = new c();
    }

    b(int i, int i2, int i3, long j) {
        this.wj = i;
        this.Lh = i2;
        this.Li = i3;
        this.Lj = j;
    }

    private String bk(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "STATUS_SUCCESSFUL";
            case GoogleScorer.CLIENT_PLUS:
                return "STATUS_TIMED_OUT_ON_SCAN";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "STATUS_NO_INFO_IN_DATABASE";
            case GoogleScorer.CLIENT_APPSTATE:
                return "STATUS_INVALID_SCAN";
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return "STATUS_UNABLE_TO_QUERY_DATABASE";
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return "STATUS_SCANS_DISABLED_IN_SETTINGS";
            case GoogleScorer.CLIENT_ALL:
                return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return "STATUS_IN_PROGRESS";
            default:
                return "STATUS_UNKNOWN";
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.Lh == bVar.Lh && this.Li == bVar.Li && this.Lj == bVar.Lj;
    }

    int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{Integer.valueOf(this.Lh), Integer.valueOf(this.Li), Long.valueOf(this.Lj)});
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("LocationStatus[cell status: ").append(bk(this.Lh));
        stringBuilder.append(", wifi status: ").append(bk(this.Li));
        stringBuilder.append(", elapsed realtime ns: ").append(this.Lj);
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}