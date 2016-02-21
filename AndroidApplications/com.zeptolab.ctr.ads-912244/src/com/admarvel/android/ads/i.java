package com.admarvel.android.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.List;

class i {
    private static i a;
    private static a b;
    private static a c;
    private String d;
    private String e;
    private WeakReference f;

    class a implements LocationListener {
        LocationManager a;
        private boolean c;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ Location a;

            AnonymousClass_1(Location location) {
                this.a = location;
            }

            public void run() {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) a.this.f.get();
                if (a.this.f != null) {
                    adMarvelInternalWebView.loadUrl("javascript:" + a.this.e + "(" + this.a.getLatitude() + "," + this.a.getLongitude() + "," + this.a.getAccuracy() + ")");
                }
            }
        }

        public a(String str, LocationManager locationManager) {
            this.c = false;
            this.a = locationManager;
            i.this.d = str;
        }

        public void a_() {
            if (!this.c) {
                this.a.requestLocationUpdates(i.this.d, 0, BitmapDescriptorFactory.HUE_RED, this);
                this.c = true;
            }
        }

        public void onLocationChanged(Location location) {
            AdMarvelInternalWebView adMarvelInternalWebView = i.this.f != null ? (AdMarvelInternalWebView) i.this.f.get() : null;
            if (adMarvelInternalWebView != null && adMarvelInternalWebView.getHandler() != null && i.this.e != null && location != null) {
                adMarvelInternalWebView.getHandler().post(new AnonymousClass_1(location));
            }
        }

        public void onProviderDisabled(String str) {
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    static {
        a = null;
        b = null;
        c = null;
    }

    private i() {
    }

    public static i a() {
        if (a == null) {
            a = new i();
        }
        return a;
    }

    private boolean a(Context context, String str) {
        boolean z = false;
        try {
            List allProviders = ((LocationManager) context.getSystemService("location")).getAllProviders();
            boolean z2 = z;
            int i;
            while (i < allProviders.size()) {
                if (str.equals((String) allProviders.get(i))) {
                    return true;
                }
                i++;
            }
            return z;
        } catch (Throwable th) {
            return z;
        }
    }

    public Location a(AdMarvelInternalWebView adMarvelInternalWebView) {
        Location location = null;
        if (!Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
            return null;
        }
        LocationManager locationManager = (LocationManager) adMarvelInternalWebView.getContext().getSystemService("location");
        List providers = locationManager.getProviders(true);
        int size = providers.size() - 1;
        while (size >= 0) {
            location = locationManager.getLastKnownLocation((String) providers.get(size));
            if (location != null) {
                return location;
            }
            size--;
        }
        return location;
    }

    public void a(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        if (c != null) {
            locationManager.removeUpdates(c);
        }
        if (b != null) {
            locationManager.removeUpdates(b);
        }
        c = null;
        b = null;
    }

    public void a(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
        if (Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
            LocationManager locationManager = (LocationManager) adMarvelInternalWebView.getContext().getSystemService("location");
            this.f = new WeakReference(adMarvelInternalWebView);
            this.e = str;
            try {
                if (a(adMarvelInternalWebView.getContext(), "gps") && locationManager.getProvider("gps") != null) {
                    b = new a("gps", locationManager);
                }
            } catch (Exception e) {
            }
            try {
                if (a(adMarvelInternalWebView.getContext(), "network") && locationManager.getProvider("network") != null) {
                    c = new a("network", locationManager);
                }
            } catch (Exception e2) {
            }
            if (c != null) {
                c.a();
            }
            if (b != null) {
                b.a();
            }
        }
    }
}