package com.inmobi.commons.data;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class LocationInfo {
    private static LocationManager a;
    private static boolean b;
    private static double c;
    private static double d;
    private static double e;
    private static boolean f;
    private static long g;

    private static synchronized LocationManager a() {
        LocationManager locationManager;
        synchronized (LocationInfo.class) {
            locationManager = a;
        }
        return locationManager;
    }

    private static void a(double d) {
        c = d;
    }

    private static void a(long j) {
        g = j;
    }

    static void a(Location location) {
        if (location != null) {
            b(true);
            a(location.getLatitude());
            b(location.getLongitude());
            c((double) location.getAccuracy());
            a(location.getTime());
        }
    }

    private static synchronized void a(LocationManager locationManager) {
        synchronized (LocationInfo.class) {
            a = locationManager;
        }
    }

    static void a(boolean z) {
        b = z;
    }

    private static Location b() {
        if (a() == null) {
            a((LocationManager) InternalSDKUtil.getContext().getSystemService("location"));
        }
        if (a() != null) {
            LocationManager a = a();
            List providers = a.getProviders(true);
            int i = providers.size() - 1;
            while (i >= 0) {
                String str = (String) providers.get(i);
                if (a.isProviderEnabled(str)) {
                    Location lastKnownLocation = a.getLastKnownLocation(str);
                    if (lastKnownLocation != null) {
                        return lastKnownLocation;
                    }
                }
                i--;
            }
        }
        return null;
    }

    private static void b(double d) {
        d = d;
    }

    static void b(boolean z) {
        f = z;
    }

    private static void c(double d) {
        e = d;
    }

    public static long getGeoTS() {
        return g;
    }

    public static double getLat() {
        return c;
    }

    public static double getLocAccuracy() {
        return e;
    }

    public static double getLon() {
        return d;
    }

    public static boolean isLocationDeniedByUser() {
        return b;
    }

    public static boolean isValidGeoInfo() {
        return f;
    }

    public static void updateBestKnownLocation() {
        try {
            if (a() == null) {
                a((LocationManager) InternalSDKUtil.getContext().getSystemService("location"));
            }
            if (a() != null) {
                LocationManager a = a();
                Criteria criteria = new Criteria();
                if (InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                    criteria.setAccuracy(1);
                } else if (InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    criteria.setAccuracy(GoogleScorer.CLIENT_PLUS);
                }
                criteria.setCostAllowed(false);
                String bestProvider = a.getBestProvider(criteria, true);
                if (!isValidGeoInfo() && bestProvider != null) {
                    Location lastKnownLocation = a.getLastKnownLocation(bestProvider);
                    Log.debug(InternalSDKUtil.LOGGING_TAG, "lastBestKnownLocation: " + lastKnownLocation);
                    if (lastKnownLocation == null) {
                        lastKnownLocation = b();
                        Log.debug(InternalSDKUtil.LOGGING_TAG, "lastKnownLocation: " + lastKnownLocation);
                    }
                    a(lastKnownLocation);
                }
            }
        } catch (Exception e) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Error getting the Location Info ", e);
        }
    }

    public static void verifyLocationPermission() {
        int checkCallingOrSelfPermission = InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION");
        int checkCallingOrSelfPermission2 = InternalSDKUtil.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
        if (checkCallingOrSelfPermission == 0 || checkCallingOrSelfPermission2 == 0) {
            a(false);
        } else {
            a(true);
        }
    }
}