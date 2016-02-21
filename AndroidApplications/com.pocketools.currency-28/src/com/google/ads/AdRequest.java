package com.google.ads;

import android.content.Context;
import android.location.Location;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobAdapterExtras;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.pocketools.currency.PocketCurrency;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR;
    public static final String VERSION = "6.0.1";
    private static final SimpleDateFormat a;
    private static Method b;
    private static Method c;
    private Gender d;
    private Date e;
    private Set<String> f;
    private Map<String, Object> g;
    private Map<Class<?>, NetworkExtras> h;
    private Location i;
    private boolean j;
    private boolean k;
    private Set<String> l;

    public enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        private String a;

        static {
            String str = "Invalid Ad request.";
            INVALID_REQUEST = new com.google.ads.AdRequest.ErrorCode("INVALID_REQUEST", 0, "Invalid Ad request.");
            str = "Ad request successful, but no ad returned due to lack of ad inventory.";
            NO_FILL = new com.google.ads.AdRequest.ErrorCode("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
            str = "A network error occurred.";
            NETWORK_ERROR = new com.google.ads.AdRequest.ErrorCode("NETWORK_ERROR", 2, "A network error occurred.");
            str = "There was an internal error.";
            INTERNAL_ERROR = new com.google.ads.AdRequest.ErrorCode("INTERNAL_ERROR", 3, "There was an internal error.");
            b = new com.google.ads.AdRequest.ErrorCode[]{INVALID_REQUEST, NO_FILL, NETWORK_ERROR, INTERNAL_ERROR};
        }

        private ErrorCode(String description) {
            this.a = description;
        }

        public String toString() {
            return this.a;
        }
    }

    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE;

        static {
            UNKNOWN = new com.google.ads.AdRequest.Gender("UNKNOWN", 0);
            MALE = new com.google.ads.AdRequest.Gender("MALE", 1);
            FEMALE = new com.google.ads.AdRequest.Gender("FEMALE", 2);
            a = new com.google.ads.AdRequest.Gender[]{UNKNOWN, MALE, FEMALE};
        }
    }

    static {
        a = new SimpleDateFormat("yyyyMMdd");
        b = null;
        c = null;
        try {
            Method[] methods = Class.forName("com.google.analytics.tracking.android.AdMobInfo").getMethods();
            int length = methods.length;
            int i = 0;
            while (i < length) {
                Method method = methods[i];
                if (method.getName().equals("getInstance") && method.getParameterTypes().length == 0) {
                    b = method;
                } else if (method.getName().equals("getJoinIds") && method.getParameterTypes().length == 0) {
                    c = method;
                }
                i++;
            }
            if (b == null || c == null) {
                b = null;
                c = null;
                b.e("No Google Analytics: Library Incompatible.");
            }
        } catch (ClassNotFoundException e) {
            b.a("No Google Analytics: Library Not Found.");
        } catch (Throwable th) {
            b.a("No Google Analytics: Error Loading Library");
        }
        TEST_EMULATOR = AdUtil.b("emulator");
    }

    public AdRequest() {
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = new HashMap();
        this.i = null;
        this.j = false;
        this.k = false;
        this.l = null;
    }

    private synchronized AdMobAdapterExtras a() {
        if (getNetworkExtras(AdMobAdapterExtras.class) == null) {
            setNetworkExtras(new AdMobAdapterExtras());
        }
        return (AdMobAdapterExtras) getNetworkExtras(AdMobAdapterExtras.class);
    }

    @Deprecated
    public AdRequest addExtra(String key, Object value) {
        AdMobAdapterExtras a = a();
        if (a.getExtras() == null) {
            a.setExtras(new HashMap());
        }
        a.getExtras().put(key, value);
        return this;
    }

    public AdRequest addKeyword(String keyword) {
        if (this.f == null) {
            this.f = new HashSet();
        }
        this.f.add(keyword);
        return this;
    }

    public AdRequest addKeywords(Set<String> keywords) {
        if (this.f == null) {
            this.f = new HashSet();
        }
        this.f.addAll(keywords);
        return this;
    }

    public AdRequest addMediationExtra(String key, Object value) {
        if (this.g == null) {
            this.g = new HashMap();
        }
        this.g.put(key, value);
        return this;
    }

    public AdRequest addTestDevice(String testDevice) {
        if (this.l == null) {
            this.l = new HashSet();
        }
        this.l.add(testDevice);
        return this;
    }

    public AdRequest clearBirthday() {
        this.e = null;
        return this;
    }

    public Date getBirthday() {
        return this.e;
    }

    public Gender getGender() {
        return this.d;
    }

    public Set<String> getKeywords() {
        return this.f == null ? null : Collections.unmodifiableSet(this.f);
    }

    public Location getLocation() {
        return this.i;
    }

    public <T> T getNetworkExtras(Class<T> extrasClass) {
        return this.h.get(extrasClass);
    }

    @Deprecated
    public boolean getPlusOneOptOut() {
        return a().getPlusOneOptOut();
    }

    public Map<String, Object> getRequestMap(Context context) {
        int i = 1;
        Map<String, Object> hashMap = new HashMap();
        if (this.f != null) {
            hashMap.put("kw", this.f);
        }
        if (this.d != null) {
            hashMap.put("cust_gender", Integer.valueOf(this.d.ordinal()));
        }
        if (this.e != null) {
            hashMap.put("cust_age", a.format(this.e));
        }
        if (this.i != null) {
            hashMap.put("uule", AdUtil.a(this.i));
        }
        if (this.j) {
            hashMap.put("testing", Integer.valueOf(1));
        }
        if (isTestDevice(context)) {
            hashMap.put("adtest", "on");
        } else if (!this.k) {
            b.c("To get test ads on this device, call adRequest.addTestDevice(" + (AdUtil.c() ? "AdRequest.TEST_EMULATOR" : "\"" + AdUtil.a(context) + "\"") + ");");
            this.k = true;
        }
        AdMobAdapterExtras adMobAdapterExtras = (AdMobAdapterExtras) getNetworkExtras(AdMobAdapterExtras.class);
        if (adMobAdapterExtras == null || !adMobAdapterExtras.getPlusOneOptOut()) {
            String str = "cipa";
            if (!af.a(context)) {
                i = 0;
            }
            hashMap.put(str, Integer.valueOf(i));
        } else {
            hashMap.put("pto", Integer.valueOf(1));
        }
        if (!(adMobAdapterExtras == null || adMobAdapterExtras.getExtras() == null || adMobAdapterExtras.getExtras().size() <= 0)) {
            hashMap.put("extras", adMobAdapterExtras.getExtras());
        }
        if (this.g != null) {
            hashMap.put("mediation_extras", this.g);
        }
        try {
            if (b != null) {
                Map map = (Map) c.invoke(b.invoke(null, new Object[0]), new Object[0]);
                if (map != null && map.size() > 0) {
                    hashMap.put("analytics_join_id", map);
                }
            }
        } catch (Throwable th) {
            b.c("Internal Analytics Error:", th);
        }
        return hashMap;
    }

    public boolean isTestDevice(Context context) {
        if (this.l == null) {
            return false;
        }
        String a = AdUtil.a(context);
        return a != null && this.l.contains(a);
    }

    public AdRequest removeNetworkExtras(Class<?> extrasClass) {
        this.h.remove(extrasClass);
        return this;
    }

    @Deprecated
    public AdRequest setBirthday(String birthday) {
        if (birthday == PocketCurrency.AD_MOB_KEYWORD_HINT || birthday == null) {
            this.e = null;
        } else {
            try {
                this.e = a.parse(birthday);
            } catch (ParseException e) {
                b.b("Birthday format invalid.  Expected 'YYYYMMDD' where 'YYYY' is a 4 digit year, 'MM' is a two digit month, and 'DD' is a two digit day.  Birthday value ignored");
                this.e = null;
            }
        }
        return this;
    }

    public AdRequest setBirthday(Calendar calendar) {
        if (calendar == null) {
            this.e = null;
        } else {
            setBirthday(calendar.getTime());
        }
        return this;
    }

    public AdRequest setBirthday(Date birthday) {
        if (birthday == null) {
            this.e = null;
        } else {
            this.e = new Date(birthday.getTime());
        }
        return this;
    }

    @Deprecated
    public AdRequest setExtras(Map<String, Object> extras) {
        a().setExtras(extras);
        return this;
    }

    public AdRequest setGender(Gender gender) {
        this.d = gender;
        return this;
    }

    public AdRequest setKeywords(Set<String> keywords) {
        this.f = keywords;
        return this;
    }

    public AdRequest setLocation(Location location) {
        this.i = location;
        return this;
    }

    public AdRequest setMediationExtras(Map<String, Object> mediationExtras) {
        this.g = mediationExtras;
        return this;
    }

    public AdRequest setNetworkExtras(NetworkExtras extras) {
        if (extras != null) {
            this.h.put(extras.getClass(), extras);
        }
        return this;
    }

    @Deprecated
    public AdRequest setPlusOneOptOut(boolean plusOneOptOut) {
        a().setPlusOneOptOut(plusOneOptOut);
        return this;
    }

    public AdRequest setTestDevices(Set<String> testDevices) {
        this.l = testDevices;
        return this;
    }

    @Deprecated
    public AdRequest setTesting(boolean testing) {
        this.j = testing;
        return this;
    }
}