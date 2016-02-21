package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.brightcove.player.event.EventType;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.location.LocationStatusCodes;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

@SuppressLint({"NewApi"})
class p extends AsyncTask {
    private final WeakReference a;

    p(Context context) {
        this.a = new WeakReference(context);
    }

    @SuppressLint({"NewApi"})
    private void a(ab abVar, Context context) {
        try {
            List list;
            ApplicationInfo applicationInfo;
            List arrayList;
            Map map;
            aa d = aa.d(context);
            if (d.i()) {
                List installedApplications = context.getPackageManager().getInstalledApplications(Cast.MAX_NAMESPACE_LENGTH);
                Map s = d.s();
                Iterator it = installedApplications.iterator();
                Map map2 = null;
                list = null;
                while (it.hasNext()) {
                    applicationInfo = (ApplicationInfo) it.next();
                    if (s.containsKey(applicationInfo.packageName)) {
                        arrayList = list == null ? new ArrayList() : list;
                        h hVar = (h) s.get(applicationInfo.packageName);
                        arrayList.add(Integer.valueOf(hVar.c()));
                        if (hVar.a() > 0) {
                            if (map2 == null) {
                                map2 = new HashMap();
                            }
                            if (map2.containsKey(Integer.valueOf(hVar.a()))) {
                                map2.put(Integer.valueOf(hVar.a()), Integer.valueOf(((Integer) map2.get(Integer.valueOf(hVar.a()))).intValue() + 1));
                                map = map2;
                                list = arrayList;
                            } else {
                                map2.put(Integer.valueOf(hVar.a()), Integer.valueOf(1));
                            }
                        }
                        map = map2;
                        list = arrayList;
                    } else {
                        map = map2;
                    }
                    map2 = map;
                }
                abVar.a(list);
                abVar.a(map2);
            }
            map = d.q();
            if (map != null) {
                Iterator it2 = map.values().iterator();
                list = null;
                while (it2.hasNext()) {
                    k kVar = (k) it2.next();
                    if (list == null) {
                        list = new ArrayList();
                    }
                    if (ac.b(context, kVar.b())) {
                        list.add(Integer.valueOf(kVar.a()));
                    }
                }
                abVar.b(list);
            }
            try {
                applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                if (!(applicationInfo == null || packageManager == null)) {
                    abVar.a(packageManager.getApplicationLabel(applicationInfo).toString());
                }
            } catch (Exception e) {
                ac.a("Application name not found");
            }
            try {
                g a = g.a(context);
                String a2 = a.a();
                boolean b = a.b();
                TimeZone timeZone;
                String id;
                DisplayMetrics displayMetrics;
                b bVar;
                WifiManager wifiManager;
                Iterator it3;
                ScanResult scanResult;
                d dVar;
                WifiInfo connectionInfo;
                d dVar2;
                LocationManager locationManager;
                Location lastKnownLocation;
                double latitude;
                double longitude;
                Location lastKnownLocation2;
                double latitude2;
                double longitude2;
                if (a2 == null || a2.length() <= 0) {
                    abVar.i(Secure.getString(context.getContentResolver(), "android_id"));
                    abVar.b(VERSION.RELEASE);
                    abVar.c(Build.MODEL);
                    abVar.d(Build.DEVICE);
                    abVar.j(Build.MANUFACTURER);
                    abVar.f(Build.BRAND);
                    timeZone = TimeZone.getDefault();
                    a2 = timeZone.getDisplayName(Locale.getDefault());
                    if (a2 != null) {
                        abVar.k(a2);
                    }
                    id = timeZone.getID();
                    if (id != null) {
                        abVar.l(id);
                    }
                    abVar.m(Locale.getDefault().getCountry());
                    if (context instanceof Activity) {
                        displayMetrics = context.getApplicationContext().getResources().getDisplayMetrics();
                        if (displayMetrics != null) {
                            abVar.n(displayMetrics.widthPixels + EventType.ANY + displayMetrics.heightPixels);
                        }
                    }
                    abVar.g(Locale.getDefault().getDisplayLanguage());
                    if (ac.a(context, "android.permission.ACCESS_WIFI_STATE") && d.j()) {
                        abVar.getClass();
                        bVar = new b();
                        wifiManager = (WifiManager) context.getSystemService("wifi");
                        list = wifiManager.getScanResults();
                        arrayList = new ArrayList();
                        if (list != null) {
                            it3 = list.iterator();
                            while (it3.hasNext()) {
                                scanResult = (ScanResult) it3.next();
                                if (!(scanResult == null || scanResult.SSID == null)) {
                                    dVar = new d();
                                    dVar.a(scanResult.SSID);
                                    arrayList.add(dVar);
                                }
                            }
                            bVar.a(arrayList);
                            connectionInfo = wifiManager.getConnectionInfo();
                            dVar2 = new d();
                            dVar2.a(connectionInfo.getSSID());
                            bVar.a(dVar2);
                            abVar.a(bVar);
                        }
                        abVar.o(((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getNetworkOperatorName());
                    }
                    abVar.e(String.valueOf(b.a()));
                    if (d.h()) {
                        locationManager = (LocationManager) context.getSystemService("location");
                        lastKnownLocation = ac.a(context, "android.permission.ACCESS_FINE_LOCATION") ? null : locationManager.getLastKnownLocation("gps");
                        if (lastKnownLocation == null) {
                            latitude = lastKnownLocation.getLatitude();
                            longitude = lastKnownLocation.getLongitude();
                            if (!(AdTrackerConstants.BLANK + ((int) (abVar.l() * ((double) d.o()))) + ((int) (abVar.m() * ((double) d.o())))).equals(AdTrackerConstants.BLANK + ((int) (((double) d.o()) * latitude)) + ((int) (((double) d.o()) * longitude)))) {
                                abVar.a(latitude);
                                abVar.b(longitude);
                            }
                            abVar.d((double) lastKnownLocation.getAccuracy());
                            abVar.c(lastKnownLocation.getAltitude());
                            abVar.e((double) lastKnownLocation.getSpeed());
                            abVar.a(lastKnownLocation.getTime());
                        } else {
                            lastKnownLocation2 = (ac.a(context, "android.permission.ACCESS_FINE_LOCATION") || ac.a(context, "android.permission.ACCESS_COARSE_LOCATION")) ? locationManager.getLastKnownLocation("network") : null;
                            if (lastKnownLocation2 != null) {
                                latitude2 = lastKnownLocation2.getLatitude();
                                longitude2 = lastKnownLocation2.getLongitude();
                                if (!(AdTrackerConstants.BLANK + ((int) (abVar.l() * ((double) d.o()))) + ((int) (abVar.m() * ((double) d.o())))).equals(AdTrackerConstants.BLANK + ((int) (((double) d.o()) * latitude2)) + ((int) (((double) d.o()) * longitude2)))) {
                                    abVar.a(latitude2);
                                    abVar.b(longitude2);
                                }
                                abVar.d((double) lastKnownLocation2.getAccuracy());
                                abVar.c(lastKnownLocation2.getAltitude());
                                abVar.e((double) lastKnownLocation2.getSpeed());
                                abVar.a(lastKnownLocation2.getTime());
                            }
                        }
                    }
                } else {
                    abVar.h(a2);
                    abVar.a(b);
                    abVar.b(VERSION.RELEASE);
                    abVar.c(Build.MODEL);
                    abVar.d(Build.DEVICE);
                    abVar.j(Build.MANUFACTURER);
                    abVar.f(Build.BRAND);
                    timeZone = TimeZone.getDefault();
                    a2 = timeZone.getDisplayName(Locale.getDefault());
                    if (a2 != null) {
                        abVar.k(a2);
                    }
                    id = timeZone.getID();
                    if (id != null) {
                        abVar.l(id);
                    }
                    abVar.m(Locale.getDefault().getCountry());
                    if (context instanceof Activity) {
                        displayMetrics = context.getApplicationContext().getResources().getDisplayMetrics();
                        if (displayMetrics != null) {
                            abVar.n(displayMetrics.widthPixels + EventType.ANY + displayMetrics.heightPixels);
                        }
                    }
                    abVar.g(Locale.getDefault().getDisplayLanguage());
                    abVar.getClass();
                    bVar = new b();
                    wifiManager = (WifiManager) context.getSystemService("wifi");
                    list = wifiManager.getScanResults();
                    arrayList = new ArrayList();
                    if (list != null) {
                        it3 = list.iterator();
                        while (it3.hasNext()) {
                            scanResult = (ScanResult) it3.next();
                            dVar = new d();
                            dVar.a(scanResult.SSID);
                            arrayList.add(dVar);
                        }
                        bVar.a(arrayList);
                        connectionInfo = wifiManager.getConnectionInfo();
                        dVar2 = new d();
                        dVar2.a(connectionInfo.getSSID());
                        bVar.a(dVar2);
                        abVar.a(bVar);
                    }
                    abVar.o(((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getNetworkOperatorName());
                    abVar.e(String.valueOf(b.a()));
                    if (d.h()) {
                        locationManager = (LocationManager) context.getSystemService("location");
                        if (ac.a(context, "android.permission.ACCESS_FINE_LOCATION")) {
                        }
                        if (lastKnownLocation == null) {
                            if (lastKnownLocation2 != null) {
                                latitude2 = lastKnownLocation2.getLatitude();
                                longitude2 = lastKnownLocation2.getLongitude();
                                if ((AdTrackerConstants.BLANK + ((int) (abVar.l() * ((double) d.o()))) + ((int) (abVar.m() * ((double) d.o())))).equals(AdTrackerConstants.BLANK + ((int) (((double) d.o()) * latitude2)) + ((int) (((double) d.o()) * longitude2)))) {
                                    abVar.a(latitude2);
                                    abVar.b(longitude2);
                                }
                                abVar.d((double) lastKnownLocation2.getAccuracy());
                                abVar.c(lastKnownLocation2.getAltitude());
                                abVar.e((double) lastKnownLocation2.getSpeed());
                                abVar.a(lastKnownLocation2.getTime());
                            }
                        } else {
                            latitude = lastKnownLocation.getLatitude();
                            longitude = lastKnownLocation.getLongitude();
                            if ((AdTrackerConstants.BLANK + ((int) (abVar.l() * ((double) d.o()))) + ((int) (abVar.m() * ((double) d.o())))).equals(AdTrackerConstants.BLANK + ((int) (((double) d.o()) * latitude)) + ((int) (((double) d.o()) * longitude)))) {
                                abVar.a(latitude);
                                abVar.b(longitude);
                            }
                            abVar.d((double) lastKnownLocation.getAccuracy());
                            abVar.c(lastKnownLocation.getAltitude());
                            abVar.e((double) lastKnownLocation.getSpeed());
                            abVar.a(lastKnownLocation.getTime());
                        }
                    }
                }
            } catch (Exception e2) {
            }
        } catch (Exception e3) {
            ac.a(ac.a(e3));
        }
    }

    protected Object doInBackground(Object... objArr) {
        try {
            Context context = this.a != null ? (Context) this.a.get() : null;
            if (context != null) {
                aa d = aa.d(context);
                if (!d.b()) {
                    ab c = ab.c();
                    c.a(context);
                    a(c, context);
                    if (c.b(context) || System.currentTimeMillis() - d.n() > d.m()) {
                        ac acVar = new ac(context);
                        String a;
                        if (d.v() == 0) {
                            a = acVar.a(d.c(), AdTrackerConstants.BLANK, context, 500, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, false);
                            if (a != null && a.length() > 0) {
                                d.a(Integer.parseInt(a));
                                d.b(context);
                            }
                        } else {
                            String f = d.f();
                            n nVar = new n();
                            nVar.a(b.a);
                            nVar.b(b.b);
                            nVar.c(context.getPackageName() == null ? AdTrackerConstants.BLANK : context.getPackageName());
                            nVar.a(c);
                            a = acVar.a(f, nVar.a(context), context, 500, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, true);
                            if (a != null && a.length() > 0) {
                                d.b(a, context);
                                d.a(System.currentTimeMillis());
                                d.b(context);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
        return null;
    }
}