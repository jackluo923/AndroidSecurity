package com.inmobi.commons.thinICE.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import java.util.HashMap;

public final class LocationUtil {
    private static LocationInfo a(Context context, String str) {
        Location lastKnownLocation = ((LocationManager) context.getSystemService("location")).getLastKnownLocation(str);
        if (lastKnownLocation == null) {
            return null;
        }
        LocationInfo locationInfo = new LocationInfo();
        locationInfo.time = lastKnownLocation.getTime();
        locationInfo.provider = lastKnownLocation.getProvider();
        locationInfo.latitude = lastKnownLocation.getLatitude();
        locationInfo.longitude = lastKnownLocation.getLongitude();
        locationInfo.accuracy = lastKnownLocation.getAccuracy();
        return locationInfo;
    }

    public static HashMap getLastKnownLocations(Context context) {
        HashMap hashMap = new HashMap();
        if (hasFineLocationPermission(context)) {
            String str = "gps";
            hashMap.put("gps", a(context, "gps"));
        }
        if (hasCoarseLocationPermission(context)) {
            str = "network";
            hashMap.put("network", a(context, "network"));
        }
        return hashMap;
    }

    public static boolean hasCoarseLocationPermission(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public static boolean hasFineLocationPermission(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public static boolean hasLocationPermission(Context context) {
        return hasFineLocationPermission(context) || hasCoarseLocationPermission(context);
    }
}