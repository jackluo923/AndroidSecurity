package com.inmobi.androidsdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import com.google.android.gms.cast.Cast;
import com.inmobi.androidsdk.AdRequest;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

public final class UserInfo {
    private Random A;
    private String B;
    private int C;
    private long D;
    private Activity E;
    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private LocationManager m;
    private double n;
    private double o;
    private double p;
    private boolean q;
    private Context r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private AdRequest z;

    public UserInfo(Activity activity) {
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.E = activity;
        this.r = activity.getApplicationContext();
        this.A = new Random();
    }

    private String a() {
        return this.k;
    }

    private void a(double d) {
        this.n = d;
    }

    private void a(int i) {
        this.g = Integer.toString(i);
    }

    private void a(long j) {
        this.D = j;
    }

    private void a(Context context) {
        try {
            if (this.B == null) {
                this.B = context.getSharedPreferences("inmobisdkaid", 0).getString("A_ID", null);
            }
            if (this.B == null) {
                this.B = UUID.randomUUID().toString();
                Editor edit = context.getSharedPreferences("inmobisdkaid", 0).edit();
                edit.putString("A_ID", this.B);
                edit.commit();
            }
        } catch (Exception e) {
        }
    }

    private void a(Location location) {
        if (location != null) {
            b(true);
            a(location.getLatitude());
            b(location.getLongitude());
            c((double) location.getAccuracy());
            a(location.getTime());
        }
    }

    private synchronized void a(LocationManager locationManager) {
        this.m = locationManager;
    }

    private void a(AdRequest adRequest) {
        this.z = adRequest;
    }

    private void a(String str) {
        this.b = str;
    }

    private void a(boolean z) {
        this.a = z;
    }

    private synchronized LocationManager b() {
        return this.m;
    }

    private void b(double d) {
        this.o = d;
    }

    private void b(int i) {
        this.C = i;
    }

    private void b(String str) {
        this.c = str;
    }

    private void b(boolean z) {
        this.q = z;
    }

    private void c(double d) {
        this.p = d;
    }

    private void c(String str) {
        this.d = str;
    }

    private boolean c() {
        return this.z != null ? this.z.isLocationInquiryAllowed() : true;
    }

    private void d(String str) {
        this.e = str;
    }

    private boolean d() {
        return this.a;
    }

    private void e() {
        try {
            if (b() == null) {
                a((LocationManager) getApplicationContext().getSystemService("location"));
            }
            if (b() != null) {
                LocationManager b = b();
                Criteria criteria = new Criteria();
                if (getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                    criteria.setAccuracy(1);
                } else if (getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    criteria.setAccuracy(GoogleScorer.CLIENT_PLUS);
                }
                criteria.setCostAllowed(false);
                String bestProvider = b.getBestProvider(criteria, true);
                if (!isValidGeoInfo() && bestProvider != null) {
                    Location lastKnownLocation = b.getLastKnownLocation(bestProvider);
                    Log.debug(ConfigConstants.LOGGING_TAG, "lastBestKnownLocation: " + lastKnownLocation);
                    if (lastKnownLocation == null) {
                        lastKnownLocation = f();
                        Log.debug(ConfigConstants.LOGGING_TAG, "lastKnownLocation: " + lastKnownLocation);
                    }
                    a(lastKnownLocation);
                }
            }
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Error getting the Location Info ", e);
        }
    }

    private void e(String str) {
        this.i = str;
    }

    private Location f() {
        if (b() == null) {
            a((LocationManager) getApplicationContext().getSystemService("location"));
        }
        if (b() != null) {
            LocationManager b = b();
            List providers = b.getProviders(true);
            int i = providers.size() - 1;
            while (i >= 0) {
                String str = (String) providers.get(i);
                if (b.isProviderEnabled(str)) {
                    Location lastKnownLocation = b.getLastKnownLocation(str);
                    if (lastKnownLocation != null) {
                        return lastKnownLocation;
                    }
                }
                i--;
            }
        }
        return null;
    }

    private void f(String str) {
        this.j = str;
    }

    private void g() {
        int checkCallingOrSelfPermission = getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION");
        int checkCallingOrSelfPermission2 = getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
        if (checkCallingOrSelfPermission == 0 || checkCallingOrSelfPermission2 == 0) {
            a(false);
        } else {
            a(true);
        }
    }

    private void g(String str) {
        this.k = str;
    }

    private void h() {
        if (a() == null) {
            String toLowerCase;
            g(Build.BRAND);
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            String country;
            if (language != null) {
                toLowerCase = language.toLowerCase(Locale.ENGLISH);
                country = locale.getCountry();
                if (country != null) {
                    toLowerCase = toLowerCase + "_" + country.toLowerCase(Locale.ENGLISH);
                }
            } else {
                toLowerCase = (String) System.getProperties().get("user.language");
                country = (String) System.getProperties().get("user.region");
                toLowerCase = (toLowerCase == null || country == null) ? language : toLowerCase + "_" + country;
                if (toLowerCase == null) {
                    toLowerCase = "en";
                }
            }
            f(toLowerCase);
            try {
                Context applicationContext = getApplicationContext();
                PackageManager packageManager = applicationContext.getPackageManager();
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), Cast.MAX_NAMESPACE_LENGTH);
                if (applicationInfo != null) {
                    a(applicationInfo.packageName);
                    b(applicationInfo.loadLabel(packageManager).toString());
                }
                PackageInfo packageInfo = packageManager.getPackageInfo(applicationContext.getPackageName(), Cast.MAX_NAMESPACE_LENGTH);
                if (packageInfo != null) {
                    toLowerCase = packageInfo.versionName;
                    if (toLowerCase == null || toLowerCase.equals(AdTrackerConstants.BLANK)) {
                        toLowerCase = packageInfo.versionCode + AdTrackerConstants.BLANK;
                    }
                } else {
                    toLowerCase = null;
                }
                if (!(toLowerCase == null || toLowerCase.equals(AdTrackerConstants.BLANK))) {
                    c(toLowerCase);
                }
            } catch (Exception e) {
            }
        }
        a(this.A.nextInt());
        int i = 0;
        if (this.z != null) {
            i = com.inmobi.commons.data.UserInfo.getInstance().getDeviceIDMask();
        }
        Map hashMap = new HashMap();
        try {
            Object lTVId = AnalyticsInitializer.getConfigParams().getLTVId();
        } catch (Exception e2) {
            Log.internal(ConfigConstants.LOGGING_TAG, "LTVID not available yet in configs");
            lTVId = null;
        }
        if (lTVId != null) {
            hashMap.put(UID.KEY_LTVID, lTVId + AdTrackerConstants.BLANK);
        }
        e(Initializer.getConfigParams().getUID().getUidMapWitoutXOR(i, getRandomKey(), hashMap));
        if (this.r != null) {
            a(this.r);
        }
        d(InternalSDKUtil.getConnectivityType(getApplicationContext()));
        try {
            i = WrapperFunctions.getCurrentOrientationInFixedValues(i());
            if (i == 9) {
                b((int)GoogleScorer.CLIENT_PLUS);
            } else if (i == 8) {
                b((int)GoogleScorer.CLIENT_APPSTATE);
            } else if (i == 0) {
                b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            } else {
                b(1);
            }
        } catch (Exception e3) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Error getting the orientation info ", e3);
        }
    }

    private void h(String str) {
        this.l = str;
    }

    private Activity i() {
        return this.E;
    }

    public String getAdUnitSlot() {
        return this.v;
    }

    public int getAge() {
        return this.z != null ? this.z.getAge() : 0;
    }

    public String getAid() {
        return this.B;
    }

    public String getAppBId() {
        return this.b;
    }

    public String getAppDisplayName() {
        return this.c;
    }

    public String getAppVer() {
        return this.d;
    }

    public Context getApplicationContext() {
        return this.r;
    }

    public String getAreaCode() {
        return this.z != null ? this.z.getAreaCode() : null;
    }

    public String getDateOfBirth() {
        if (this.z == null || this.z.getDateOfBirth() == null) {
            return null;
        }
        Calendar dateOfBirth = this.z.getDateOfBirth();
        return dateOfBirth.get(1) + "-" + (dateOfBirth.get(GoogleScorer.CLIENT_PLUS) + 1) + "-" + dateOfBirth.get(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
    }

    public EducationType getEducation() {
        return this.z != null ? this.z.getEducation() : null;
    }

    public EthnicityType getEthnicity() {
        return this.z != null ? this.z.getEthnicity() : null;
    }

    public GenderType getGender() {
        return this.z != null ? this.z.getGender() : null;
    }

    public long getGeoTS() {
        return this.D;
    }

    public HasChildren getHasChildren() {
        return this.z != null ? this.z.getHasChildren() : null;
    }

    public int getIncome() {
        return this.z != null ? this.z.getIncome() : 0;
    }

    public String getInterests() {
        return this.z != null ? this.z.getInterests() : null;
    }

    public String getKeywords() {
        return this.z != null ? this.z.getKeywords() : null;
    }

    public String getLanguage() {
        return this.z != null ? this.z.getLanguage() : null;
    }

    public double getLat() {
        return this.n;
    }

    public double getLocAccuracy() {
        return this.p;
    }

    public String getLocalization() {
        return this.j;
    }

    public String getLocationWithCityStateCountry() {
        return this.z != null ? this.z.getLocationWithCityStateCountry() : null;
    }

    public double getLon() {
        return this.o;
    }

    public MaritalStatus getMaritalStatus() {
        return this.z != null ? this.z.getMaritalStatus() : null;
    }

    public String getNetworkType() {
        return this.e;
    }

    public String getODINId() {
        return this.f;
    }

    public int getOrientation() {
        return this.C;
    }

    public String getPhoneDefaultUserAgent() {
        return this.s == null ? AdTrackerConstants.BLANK : this.s;
    }

    public String getPlainUidMap() {
        return this.i;
    }

    public String getPostalCode() {
        return this.z != null ? this.z.getPostalCode() : null;
    }

    public String getRandomKey() {
        return this.g;
    }

    public String getRefTagKey() {
        return this.t;
    }

    public String getRefTagValue() {
        return this.u;
    }

    public Map getRequestParams() {
        return this.z != null ? this.z.getRequestParams() : null;
    }

    public String getRsakeyVersion() {
        return UIDHelper.getRSAKeyVersion();
    }

    public String getScreenDensity() {
        return this.y;
    }

    public String getScreenSize() {
        return this.x;
    }

    public String getSearchString() {
        return this.z != null ? this.z.getSearchString() : null;
    }

    public SexualOrientation getSexualOrientation() {
        return this.z != null ? this.z.getSexualOrientation() : null;
    }

    public String getSiteId() {
        return this.l;
    }

    public String getSlotId() {
        return this.w;
    }

    public String getUIDMapEncrypted() {
        return this.h;
    }

    public boolean isValidGeoInfo() {
        return this.q;
    }

    public void setAdUnitSlot(String str) {
        this.v = str;
    }

    public void setPhoneDefaultUserAgent(String str) {
        this.s = str;
    }

    public void setRefTagKey(String str) {
        this.t = str;
    }

    public void setRefTagValue(String str) {
        this.u = str;
    }

    public void setScreenDensity(String str) {
        this.y = str;
    }

    public void setScreenSize(String str) {
        this.x = str;
    }

    public void setSlotId(String str) {
        this.w = str;
    }

    public synchronized void updateInfo(String str, AdRequest adRequest) {
        a(adRequest);
        h();
        h(str);
        if (adRequest != null) {
            b(false);
            if (!c()) {
                a(true);
            } else if (adRequest.getCurrentLocation() != null) {
                a(adRequest.getCurrentLocation());
                b(true);
            } else {
                g();
                if (!d()) {
                    e();
                }
            }
        }
    }
}