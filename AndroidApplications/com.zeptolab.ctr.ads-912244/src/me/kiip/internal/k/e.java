package me.kiip.internal.k;

import android.location.Location;
import android.location.LocationManager;
import java.util.Iterator;
import java.util.List;

public class e {
    public static Location a(LocationManager locationManager, float f) {
        List allProviders = locationManager.getAllProviders();
        Location location = null;
        long j = 0;
        if (allProviders != null) {
            Iterator it = allProviders.iterator();
            float f2 = Float.MAX_VALUE;
            while (it.hasNext()) {
                long time;
                float f3;
                Location location2;
                Location lastKnownLocation = locationManager.getLastKnownLocation((String) it.next());
                if (lastKnownLocation != null) {
                    float accuracy = lastKnownLocation.getAccuracy();
                    time = lastKnownLocation.getTime();
                    if (((float) time) > f && accuracy < f2) {
                        f3 = accuracy;
                        location2 = lastKnownLocation;
                        f2 = f3;
                        location = location2;
                        j = time;
                    } else if (((float) time) < f && f2 == Float.MAX_VALUE && time > j) {
                        f3 = f2;
                        location2 = lastKnownLocation;
                        f2 = f3;
                        location = location2;
                        j = time;
                    }
                }
                time = j;
                f3 = f2;
                location2 = location;
                f2 = f3;
                location = location2;
                j = time;
            }
        }
        return location;
    }
}