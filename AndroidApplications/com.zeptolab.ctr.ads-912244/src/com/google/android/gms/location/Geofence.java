package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.hj;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class Builder {
        private String Hh;
        private int KU;
        private long KV;
        private short KW;
        private double KX;
        private double KY;
        private float KZ;
        private int La;
        private int Lb;

        public Builder() {
            this.Hh = null;
            this.KU = 0;
            this.KV = Long.MIN_VALUE;
            this.KW = (short) -1;
            this.La = 0;
            this.Lb = -1;
        }

        public Geofence build() {
            if (this.Hh == null) {
                throw new IllegalArgumentException("Request ID not set.");
            } else if (this.KU == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            } else if ((this.KU & 4) != 0 && this.Lb < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            } else if (this.KV == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            } else if (this.KW == (short) -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            } else if (this.La >= 0) {
                return new hj(this.Hh, this.KU, (short) 1, this.KX, this.KY, this.KZ, this.KV, this.La, this.Lb);
            } else {
                throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
            }
        }

        public com.google.android.gms.location.Geofence.Builder setCircularRegion(double d, double d2, float f) {
            this.KW = (short) 1;
            this.KX = d;
            this.KY = d2;
            this.KZ = f;
            return this;
        }

        public com.google.android.gms.location.Geofence.Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.KV = -1;
            } else {
                this.KV = SystemClock.elapsedRealtime() + j;
            }
            return this;
        }

        public com.google.android.gms.location.Geofence.Builder setLoiteringDelay(int i) {
            this.Lb = i;
            return this;
        }

        public com.google.android.gms.location.Geofence.Builder setNotificationResponsiveness(int i) {
            this.La = i;
            return this;
        }

        public com.google.android.gms.location.Geofence.Builder setRequestId(String str) {
            this.Hh = str;
            return this;
        }

        public com.google.android.gms.location.Geofence.Builder setTransitionTypes(int i) {
            this.KU = i;
            return this;
        }
    }

    String getRequestId();
}