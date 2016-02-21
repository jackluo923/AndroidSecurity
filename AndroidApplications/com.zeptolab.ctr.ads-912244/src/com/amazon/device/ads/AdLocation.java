package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;

class AdLocation {
    private static final String a = "AdLocation";
    private static final float b = 3.0f;
    private LocationAwareness c;
    private int d;

    private enum LocationAwareness {
        LOCATION_AWARENESS_NORMAL,
        LOCATION_AWARENESS_TRUNCATED,
        LOCATION_AWARENESS_DISABLED;

        static {
            LOCATION_AWARENESS_NORMAL = new LocationAwareness("LOCATION_AWARENESS_NORMAL", 0);
            LOCATION_AWARENESS_TRUNCATED = new LocationAwareness("LOCATION_AWARENESS_TRUNCATED", 1);
            LOCATION_AWARENESS_DISABLED = new LocationAwareness("LOCATION_AWARENESS_DISABLED", 2);
            a = new LocationAwareness[]{LOCATION_AWARENESS_NORMAL, LOCATION_AWARENESS_TRUNCATED, LOCATION_AWARENESS_DISABLED};
        }
    }

    public AdLocation() {
        this.c = LocationAwareness.LOCATION_AWARENESS_TRUNCATED;
        this.d = 6;
    }

    private static double a(double d) {
        return ((double) Math.round(d * 60.0d)) / 60.0d;
    }

    public Location getLocation() {
        float f = Float.MAX_VALUE;
        Context applicationContext = InternalAdRegistration.getInstance().getApplicationContext();
        if (this.c == LocationAwareness.LOCATION_AWARENESS_DISABLED) {
            return null;
        }
        LocationManager locationManager = (LocationManager) applicationContext.getSystemService("location");
        try {
            Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
        } catch (SecurityException e) {
            Log.d(a, "Failed to retrieve GPS location: No permissions to access GPS");
            lastKnownLocation = null;
        } catch (IllegalArgumentException e2) {
            Log.d(a, "Failed to retrieve GPS location: No GPS found");
            lastKnownLocation = null;
        }
        try {
            Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
        } catch (SecurityException e3) {
            Log.d(a, "Failed to retrieve network location: No permissions to access network location");
            lastKnownLocation2 = null;
        } catch (IllegalArgumentException e4) {
            Log.d(a, "Failed to retrieve network location: No network provider found");
            lastKnownLocation2 = null;
        }
        if (lastKnownLocation == null && lastKnownLocation2 == null) {
            return null;
        }
        if (lastKnownLocation == null || lastKnownLocation2 == null) {
            if (lastKnownLocation != null) {
                Log.d(a, "Setting lat/long using GPS, not network");
            } else {
                Log.d(a, "Setting lat/long using network location, not GPS");
                lastKnownLocation = lastKnownLocation2;
            }
        } else if (lastKnownLocation.distanceTo(lastKnownLocation2) / 1000.0f <= 3.0f) {
            float accuracy;
            accuracy = lastKnownLocation.hasAccuracy() ? lastKnownLocation.getAccuracy() : Float.MAX_VALUE;
            if (lastKnownLocation2.hasAccuracy()) {
                f = lastKnownLocation2.getAccuracy();
            }
            if (accuracy < f) {
                Log.d(a, "Setting lat/long using GPS determined by distance");
            } else {
                Log.d(a, "Setting lat/long using network determined by distance");
                lastKnownLocation = lastKnownLocation2;
            }
        } else if (lastKnownLocation.getTime() > lastKnownLocation2.getTime()) {
            Log.d(a, "Setting lat/long using GPS");
        } else {
            Log.d(a, "Setting lat/long using network");
            lastKnownLocation = lastKnownLocation2;
        }
        if (this.c == LocationAwareness.LOCATION_AWARENESS_TRUNCATED) {
            lastKnownLocation.setLatitude(((double) Math.round(a(lastKnownLocation.getLatitude()) * Math.pow(10.0d, (double) this.d))) / Math.pow(10.0d, (double) this.d));
            lastKnownLocation.setLongitude(((double) Math.round(a(lastKnownLocation.getLongitude()) * Math.pow(10.0d, (double) this.d))) / Math.pow(10.0d, (double) this.d));
        }
        return lastKnownLocation;
    }
}