package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ep;

public final class LocationRequest implements SafeParcelable {
    public static final LocationRequestCreator CREATOR;
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    long KV;
    long Lc;
    long Ld;
    boolean Le;
    int Lf;
    float Lg;
    int mPriority;
    private final int wj;

    static {
        CREATOR = new LocationRequestCreator();
    }

    public LocationRequest() {
        this.wj = 1;
        this.mPriority = 102;
        this.Lc = 3600000;
        this.Ld = 600000;
        this.Le = false;
        this.KV = Long.MAX_VALUE;
        this.Lf = Integer.MAX_VALUE;
        this.Lg = 0.0f;
    }

    LocationRequest(int i, int i2, long j, long j2, boolean z, long j3, int i3, float f) {
        this.wj = i;
        this.mPriority = i2;
        this.Lc = j;
        this.Ld = j2;
        this.Le = z;
        this.KV = j3;
        this.Lf = i3;
        this.Lg = f;
    }

    private static void a(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("invalid displacement: " + f);
        }
    }

    private static void bi(int i) {
        switch (i) {
            case PRIORITY_HIGH_ACCURACY:
            case PRIORITY_BALANCED_POWER_ACCURACY:
            case PRIORITY_LOW_POWER:
            case PRIORITY_NO_POWER:
                break;
            default:
                throw new IllegalArgumentException("invalid quality: " + i);
        }
    }

    public static String bj(int i) {
        switch (i) {
            case PRIORITY_HIGH_ACCURACY:
                return "PRIORITY_HIGH_ACCURACY";
            case PRIORITY_BALANCED_POWER_ACCURACY:
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            case PRIORITY_LOW_POWER:
                return "PRIORITY_LOW_POWER";
            case PRIORITY_NO_POWER:
                return "PRIORITY_NO_POWER";
            default:
                return "???";
        }
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    private static void r(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("invalid interval: " + j);
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(LocationRequest locationRequest) {
        if (this == locationRequest) {
            return true;
        }
        if (!(locationRequest instanceof LocationRequest)) {
            return false;
        }
        locationRequest = locationRequest;
        return this.mPriority == locationRequest.mPriority && this.Lc == locationRequest.Lc && this.Ld == locationRequest.Ld && this.Le == locationRequest.Le && this.KV == locationRequest.KV && this.Lf == locationRequest.Lf && this.Lg == locationRequest.Lg;
    }

    public long getExpirationTime() {
        return this.KV;
    }

    public long getFastestInterval() {
        return this.Ld;
    }

    public long getInterval() {
        return this.Lc;
    }

    public int getNumUpdates() {
        return this.Lf;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public float getSmallestDisplacement() {
        return this.Lg;
    }

    int getVersionCode() {
        return this.wj;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{Integer.valueOf(this.mPriority), Long.valueOf(this.Lc), Long.valueOf(this.Ld), Boolean.valueOf(this.Le), Long.valueOf(this.KV), Integer.valueOf(this.Lf), Float.valueOf(this.Lg)});
    }

    public LocationRequest setExpirationDuration(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (j > Long.MAX_VALUE - elapsedRealtime) {
            this.KV = Long.MAX_VALUE;
        } else {
            this.KV = elapsedRealtime + j;
        }
        if (this.KV < 0) {
            this.KV = 0;
        }
        return this;
    }

    public LocationRequest setExpirationTime(long j) {
        this.KV = j;
        if (this.KV < 0) {
            this.KV = 0;
        }
        return this;
    }

    public LocationRequest setFastestInterval(long j) {
        r(j);
        this.Le = true;
        this.Ld = j;
        return this;
    }

    public LocationRequest setInterval(long j) {
        r(j);
        this.Lc = j;
        if (!this.Le) {
            this.Ld = (long) (((double) this.Lc) / 6.0d);
        }
        return this;
    }

    public LocationRequest setNumUpdates(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("invalid numUpdates: " + i);
        }
        this.Lf = i;
        return this;
    }

    public LocationRequest setPriority(int i) {
        bi(i);
        this.mPriority = i;
        return this;
    }

    public LocationRequest setSmallestDisplacement(float f) {
        a(f);
        this.Lg = f;
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Request[").append(bj(this.mPriority));
        if (this.mPriority != 105) {
            stringBuilder.append(" requested=");
            stringBuilder.append(this.Lc + "ms");
        }
        stringBuilder.append(" fastest=");
        stringBuilder.append(this.Ld + "ms");
        if (this.KV != Long.MAX_VALUE) {
            long elapsedRealtime = this.KV - SystemClock.elapsedRealtime();
            stringBuilder.append(" expireIn=");
            stringBuilder.append(elapsedRealtime + "ms");
        }
        if (this.Lf != Integer.MAX_VALUE) {
            stringBuilder.append(" num=").append(this.Lf);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        LocationRequestCreator.a(this, parcel, i);
    }
}