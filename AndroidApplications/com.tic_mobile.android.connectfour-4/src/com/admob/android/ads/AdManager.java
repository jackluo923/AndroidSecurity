package com.admob.android.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.R;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;

public class AdManager {
    public static final String LOG = "AdMobSDK";
    public static final String SDK_VERSION = "20100331-ANDROID-3312276cc1406347";
    public static final String SDK_VERSION_DATE = "20100331";
    public static final String TEST_EMULATOR = "emulator";
    private static String a;
    private static int b;
    private static String c;
    private static String d;
    private static String[] e;
    private static String f;
    private static Location g;
    private static long h;
    private static String i;
    private static GregorianCalendar j;
    private static Gender k;

    static class AnonymousClass_1 implements LocationListener {
        private /* synthetic */ LocationManager a;

        AnonymousClass_1(LocationManager locationManager) {
            this.a = locationManager;
        }

        public final void onLocationChanged(Location location) {
            String str = LOG;
            g = location;
            h = System.currentTimeMillis();
            this.a.removeUpdates(this);
            String str2 = LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str2 = LOG;
                Log.d(str, "Acquired location " + g.getLatitude() + "," + g.getLongitude() + " at " + new Date(h).toString() + ".");
            }
        }

        public final void onProviderDisabled(String str) {
        }

        public final void onProviderEnabled(String str) {
        }

        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public enum Gender {
        MALE,
        FEMALE;

        static {
            MALE = new com.admob.android.ads.AdManager.Gender("MALE", 0);
            FEMALE = new com.admob.android.ads.AdManager.Gender("FEMALE", 1);
            a = new com.admob.android.ads.AdManager.Gender[]{MALE, FEMALE};
        }
    }

    static {
        d = "url";
        e = null;
        Log.i(LOG, "AdMob SDK version is 20100331-ANDROID-3312276cc1406347");
    }

    private AdManager() {
    }

    static String a() {
        return String.valueOf(h / 1000);
    }

    static String a(Context context) {
        String str = LOG;
        String str2 = null;
        Location coordinates = getCoordinates(context);
        if (coordinates != null) {
            str2 = coordinates.getLatitude() + "," + coordinates.getLongitude();
        }
        String str3 = LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
            str3 = LOG;
            Log.d(str, "User coordinates are " + str2);
        }
        return str2;
    }

    private static String a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            MessageDigest.getInstance("MD5").update(str.getBytes(), 0, str.length());
            return String.format("%032X", new Object[]{new BigInteger(1, messageDigest.digest())});
        } catch (Exception e) {
            Log.d(LOG, "Could not generate hash of " + str, e);
            return str.substring(0, 32);
        }
    }

    static String b() {
        if (getBirthday() == null) {
            return null;
        }
        return String.format("%04d%02d%02d", new Object[]{Integer.valueOf(gregorianCalendar.get(1)), Integer.valueOf(gregorianCalendar.get(R.styleable.com_admob_android_ads_AdView_secondaryTextColor) + 1), Integer.valueOf(gregorianCalendar.get(Config.ACTIVITY_ID_SPLASH))});
    }

    private static void b(Context context) {
        String str = LOG;
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                if (applicationInfo.metaData != null) {
                    String string = applicationInfo.metaData.getString("ADMOB_PUBLISHER_ID");
                    if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                        Log.d(LOG, "Publisher ID read from AndroidManifest.xml is " + string);
                    }
                    if (c == null && string != null) {
                        if (string.equals("a1496ced2842262") && (context.getPackageName().equals("com.admob.android.ads") || context.getPackageName().equals("com.example.admob.lunarlander"))) {
                            Log.i(LOG, "This is a sample application so allowing sample publisher ID.");
                            c = string;
                        } else {
                            setPublisherId(string);
                        }
                    }
                }
                a = applicationInfo.packageName;
                if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
                    Log.v(LOG, "Application's package name is " + a);
                }
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                b = packageInfo.versionCode;
                if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
                    Log.v(LOG, "Application's version number is " + b);
                }
            }
        } catch (Exception e) {
        }
    }

    static String c() {
        if (k == Gender.MALE) {
            return "m";
        }
        return k == Gender.FEMALE ? "f" : null;
    }

    protected static void clientError(String str) {
        Log.e(LOG, str);
        throw new IllegalArgumentException(str);
    }

    protected static String getApplicationPackageName(Context context) {
        if (a == null) {
            b(context);
        }
        return a;
    }

    protected static int getApplicationVersion(Context context) {
        if (a == null) {
            b(context);
        }
        return b;
    }

    public static GregorianCalendar getBirthday() {
        return j;
    }

    public static Location getCoordinates(Context context) {
        String str = LOG;
        if (context != null) {
            if (g == null || System.currentTimeMillis() > h + 900000) {
                synchronized (context) {
                    if (g == null || System.currentTimeMillis() > h + 900000) {
                        LocationManager locationManager;
                        Criteria criteria;
                        String bestProvider;
                        boolean z;
                        int i;
                        h = System.currentTimeMillis();
                        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                            if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                                Log.d(LOG, "Trying to get locations from the network.");
                            }
                            locationManager = (LocationManager) context.getSystemService("location");
                            if (locationManager != null) {
                                criteria = new Criteria();
                                criteria.setAccuracy(R.styleable.com_admob_android_ads_AdView_secondaryTextColor);
                                criteria.setCostAllowed(false);
                                bestProvider = locationManager.getBestProvider(criteria, true);
                                z = true;
                            } else {
                                bestProvider = null;
                                z = true;
                            }
                        } else {
                            bestProvider = null;
                            locationManager = null;
                            i = 0;
                        }
                        if (bestProvider == null && context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                            if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                                Log.d(LOG, "Trying to get locations from GPS.");
                            }
                            locationManager = (LocationManager) context.getSystemService("location");
                            if (locationManager != null) {
                                criteria = new Criteria();
                                criteria.setAccuracy(1);
                                criteria.setCostAllowed(false);
                                bestProvider = locationManager.getBestProvider(criteria, true);
                                z = true;
                            } else {
                                z = true;
                            }
                        }
                        if (i == 0) {
                            if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                                Log.d(LOG, "Cannot access user's location.  Permissions are not set.");
                            }
                        } else if (bestProvider != null) {
                            if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                                Log.d(LOG, "Location provider setup successfully.");
                            }
                            locationManager.requestLocationUpdates(bestProvider, 0, 0.0f, new AnonymousClass_1(locationManager), context.getMainLooper());
                        } else if (Log.isLoggable(LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                            Log.d(LOG, "No location providers are available.  Ads will not be geotargeted.");
                        }
                    }
                }
            }
        }
        return g;
    }

    static String getEndpoint() {
        return u.a();
    }

    public static Gender getGender() {
        return k;
    }

    public static String getOrientation(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getOrientation() == 1 ? "l" : "p";
    }

    public static String getPostalCode() {
        return i;
    }

    public static String getPublisherId(Context context) {
        String str = LOG;
        if (c == null) {
            b(context);
        }
        if (c == null) {
            String str2 = LOG;
            if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                str2 = LOG;
                Log.e(str, "getPublisherId returning null publisher id.  Please set the publisher id in AndroidManifest.xml or using AdManager.setPublisherId(String)");
            }
        }
        return c;
    }

    protected static int getScreenWidth(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return defaultDisplay != null ? defaultDisplay.getWidth() : 0;
    }

    public static String getTestAction() {
        return d;
    }

    static String[] getTestDevices() {
        return e;
    }

    public static String getUserId(Context context) {
        String string;
        String str = TEST_EMULATOR;
        String str2 = LOG;
        if (f == null) {
            string = Secure.getString(context.getContentResolver(), "android_id");
            if (string == null) {
                string = TEST_EMULATOR;
                f = str;
                string = LOG;
                Log.i(str2, "To get test ads on the emulator use AdManager.setTestDevices( new String[] { Admanager.TEST_EMULATOR } )");
            } else {
                f = a(string);
                string = LOG;
                Log.i(str2, "To get test ads on this device use AdManager.setTestDevices( new String[] { \"" + f + "\" } )");
            }
            string = LOG;
            if (Log.isLoggable(str2, R.styleable.com_admob_android_ads_AdView_keywords)) {
                string = LOG;
                Log.d(str2, "The user ID is " + f);
            }
        }
        string = f;
        String str3 = TEST_EMULATOR;
        return string == str ? null : f;
    }

    public static boolean isTestDevice(Context context) {
        if (e == null) {
            return false;
        }
        Object userId = getUserId(context);
        if (userId == null) {
            userId = TEST_EMULATOR;
        }
        return Arrays.binarySearch(e, obj) >= 0;
    }

    public static void setBirthday(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(i, i2 - 1, i3);
        setBirthday(gregorianCalendar);
    }

    public static void setBirthday(GregorianCalendar gregorianCalendar) {
        j = gregorianCalendar;
    }

    static void setEndpoint(String str) {
        u.a(str);
    }

    public static void setGender(Gender gender) {
        k = gender;
    }

    public static void setPostalCode(String str) {
        i = str;
    }

    public static void setPublisherId(String str) {
        if (str == null || str.length() != 15) {
            clientError("SETUP ERROR:  Incorrect AdMob publisher ID.  Should 15 [a-f,0-9] characters:  " + c);
        }
        if (str.equalsIgnoreCase("a1496ced2842262")) {
            clientError("SETUP ERROR:  Cannot use the sample publisher ID (a1496ced2842262).  Yours is available on www.admob.com.");
        }
        Log.i(LOG, "Publisher ID set to " + str);
        c = str;
    }

    public static void setTestAction(String str) {
        d = str;
    }

    public static void setTestDevices(String[] strArr) {
        if (strArr == null) {
            e = null;
        } else {
            strArr = strArr.clone();
            e = strArr;
            Arrays.sort(strArr);
        }
    }
}