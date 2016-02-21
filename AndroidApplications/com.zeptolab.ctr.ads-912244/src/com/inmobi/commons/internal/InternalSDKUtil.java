package com.inmobi.commons.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.uid.AdvertisingId;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.commons.uid.UIDUtil;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

public class InternalSDKUtil {
    public static final String BASE_LOG_TAG = "[InMobi]";
    public static final String CLASS_PLATFORM_ID = "com.inmobi.commons.uid.PlatformId";
    public static final String CLASS_PLAYSERVICES = "com.google.android.gms.common.GooglePlayServicesUtil";
    public static final String IM_PREF = "impref";
    public static final String INMOBI_SDK_RELEASE_DATE = "20140613";
    public static final String INMOBI_SDK_RELEASE_VERSION = "4.4.1";
    public static final String LOGGING_TAG = "[InMobi]-4.4.1";
    public static final String METHOD_PLAY_AVAILABLE = "isGooglePlayServicesAvailable";
    public static final String PRODUCT_COMMONS = "commons";
    private static CommonsConfig a;
    private static String b;
    private static Context c;
    private static Map d;
    private static Validator e;
    private static boolean f;
    private static byte[] g;
    private static String h;
    private static String i;
    private static String j;
    private static String k;
    private static String l;
    private static String m;
    private static String n;
    private static String o;
    private static String p;

    private static class a extends RSAPublicKeySpec {
        public a(BigInteger bigInteger, BigInteger bigInteger2) {
            super(bigInteger, bigInteger2);
        }
    }

    @TargetApi(17)
    static class b {
        b() {
        }

        static String a(Context context) {
            return WebSettings.getDefaultUserAgent(context);
        }
    }

    private static class c extends IvParameterSpec {
        public c(byte[] bArr) {
            super(bArr);
        }
    }

    private static class d extends SecretKeySpec {
        public d(byte[] bArr, int i, int i2, String str) {
            super(bArr, i, i2, str);
        }

        public d(byte[] bArr, String str) {
            super(bArr, str);
        }
    }

    static {
        a = new CommonsConfig();
        c = null;
        d = new HashMap();
        e = new d();
        f = true;
        g = new byte[16];
        h = "SHA1PRNG";
        i = "Crypto";
        j = "HmacSHA1";
        k = "RSA";
        l = "RSA/ECB/nopadding";
        m = "aeskeygenerate";
        n = "last_key_generate";
        o = "AES/CBC/PKCS7Padding";
        p = "AES";
    }

    public static byte[] DeAe(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return a(bArr, bArr2, bArr3);
    }

    public static String SeMeGe(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, String str2, String str3) {
        return a(str, bArr, bArr2, bArr3, str2, str3);
    }

    private static String a(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, String str2, String str3) {
        try {
            byte[] b = b(str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT), bArr, bArr2);
            byte[] a = a(b, bArr3);
            b = a(b);
            a = a(a);
            return new String(Base64.encode(b(a(a(b(b(a(bArr), a(bArr3)), a(bArr2)), str3, str2)), b(b, a)), IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void a() {
        d = UIDUtil.getMap(getContext(), null);
    }

    static boolean a(Map map) {
        a();
        try {
            CommonsConfig commonsConfig = new CommonsConfig();
            commonsConfig.setFromMap(map);
            a = commonsConfig;
            ApiStatCollector.getLogger().setMetricConfigParams(commonsConfig.getApiStatsConfig());
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static byte[] a(byte[] bArr) {
        long length = (long) bArr.length;
        ByteBuffer allocate = ByteBuffer.allocate(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putLong(length);
        Object array = allocate.array();
        Object obj = new Object[(array.length + bArr.length)];
        System.arraycopy(array, 0, obj, 0, array.length);
        System.arraycopy(bArr, 0, obj, array.length, bArr.length);
        return obj;
    }

    private static byte[] a(byte[] bArr, String str, String str2) {
        byte[] bArr2 = null;
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance(k).generatePublic(new a(new BigInteger(str2, 16), new BigInteger(str, 16)));
            Cipher instance = Cipher.getInstance(l);
            instance.init(1, rSAPublicKey);
            return instance.doFinal(bArr);
        } catch (NoSuchAlgorithmException e) {
            Log.internal(LOGGING_TAG, "NoSuchAlgorithmException");
            return bArr2;
        } catch (InvalidKeySpecException e2) {
            Log.internal(LOGGING_TAG, "InvalidKeySpecException");
            return bArr2;
        } catch (NoSuchPaddingException e3) {
            Log.internal(LOGGING_TAG, "NoSuchPaddingException");
            return bArr2;
        } catch (InvalidKeyException e4) {
            Log.internal(LOGGING_TAG, "InvalidKeyException");
            return bArr2;
        } catch (IllegalBlockSizeException e5) {
            Log.internal(LOGGING_TAG, "IllegalBlockSizeException");
            return bArr2;
        } catch (BadPaddingException e6) {
            Log.internal(LOGGING_TAG, "BadPaddingException");
            return bArr2;
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        Key dVar = new d(bArr2, 0, bArr2.length, j);
        try {
            Mac instance = Mac.getInstance(j);
            instance.init(dVar);
            return instance.doFinal(bArr);
        } catch (NoSuchAlgorithmException e) {
            Log.internal(LOGGING_TAG, "NoSuchAlgorithmException");
            return bArr3;
        } catch (InvalidKeyException e2) {
            Log.internal(LOGGING_TAG, "InvalidKeyException");
            return bArr3;
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = null;
        Key dVar = new d(bArr2, p);
        try {
            Cipher instance = Cipher.getInstance(o);
            instance.init(GoogleScorer.CLIENT_PLUS, dVar, new c(bArr3));
            return instance.doFinal(bArr);
        } catch (NoSuchAlgorithmException e) {
            Log.internal(LOGGING_TAG, "NoSuchAlgorithmException");
            return bArr4;
        } catch (NoSuchPaddingException e2) {
            Log.internal(LOGGING_TAG, "NoSuchPaddingException");
            return bArr4;
        } catch (InvalidKeyException e3) {
            Log.internal(LOGGING_TAG, "InvalidKeyException");
            return bArr4;
        } catch (IllegalBlockSizeException e4) {
            Log.internal(LOGGING_TAG, "IllegalBlockSizeException");
            return bArr4;
        } catch (BadPaddingException e5) {
            Log.internal(LOGGING_TAG, "BadPaddingException");
            return bArr4;
        } catch (InvalidAlgorithmParameterException e6) {
            Log.internal(LOGGING_TAG, "InvalidAlgorithmParameterException");
            return bArr4;
        }
    }

    public static void addCommonPropertiesToConnection(HttpURLConnection httpURLConnection) {
        String userAgent = getUserAgent(getContext());
        if (userAgent != null) {
            httpURLConnection.setRequestProperty("User-Agent", userAgent);
        }
    }

    private static byte[] b() {
        try {
            SecureRandom.getInstance(h, i).nextBytes(g);
        } catch (NoSuchAlgorithmException e) {
            Log.internal(LOGGING_TAG, "NoSuchAlgorithmException");
        } catch (NoSuchProviderException e2) {
            Log.internal(LOGGING_TAG, "NoSuchProviderException");
        }
        return g;
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        Object obj = new Object[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        System.arraycopy(bArr2, 0, obj, bArr.length, bArr2.length);
        return obj;
    }

    private static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = null;
        Key dVar = new d(bArr2, p);
        AlgorithmParameterSpec cVar = new c(bArr3);
        try {
            Cipher instance = Cipher.getInstance(o);
            instance.init(1, dVar, cVar);
            return instance.doFinal(bArr);
        } catch (NoSuchAlgorithmException e) {
            Log.internal(LOGGING_TAG, "NoSuchAlgorithmException");
            return bArr4;
        } catch (NoSuchPaddingException e2) {
            Log.internal(LOGGING_TAG, "NoSuchPaddingException");
            return bArr4;
        } catch (InvalidKeyException e3) {
            Log.internal(LOGGING_TAG, "InvalidKeyException");
            return bArr4;
        } catch (IllegalBlockSizeException e4) {
            Log.internal(LOGGING_TAG, "IllegalBlockSizeException");
            return bArr4;
        } catch (BadPaddingException e5) {
            Log.internal(LOGGING_TAG, "BadPaddingException");
            return bArr4;
        } catch (InvalidAlgorithmParameterException e6) {
            Log.internal(LOGGING_TAG, "InvalidAlgorithmParameterException");
            return bArr4;
        }
    }

    private static byte[] c() {
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(m, 0);
        long j = sharedPreferences.getLong(n, 0);
        Editor edit;
        if (0 == j) {
            Log.internal(LOGGING_TAG, "Generating for first time");
            edit = sharedPreferences.edit();
            edit.putLong(n, System.currentTimeMillis());
            edit.commit();
            return b();
        } else {
            if (j + 86400000 - System.currentTimeMillis() <= 0) {
                Log.internal(LOGGING_TAG, "generated again");
                edit = sharedPreferences.edit();
                edit.putLong(n, System.currentTimeMillis());
                edit.commit();
                return b();
            } else {
                Log.internal(LOGGING_TAG, "already generated");
                return g;
            }
        }
    }

    public static boolean checkNetworkAvailibility(Context context) {
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return connectivityManager.getActiveNetworkInfo() == null ? false : connectivityManager.getActiveNetworkInfo().isConnected();
        } catch (Exception e) {
            Log.internal(LOGGING_TAG, "Cannot check network state", e);
            return false;
        }
    }

    public static boolean getBooleanFromJSON(JSONObject jSONObject, String str, boolean z) {
        try {
            return jSONObject.getBoolean(str);
        } catch (Exception e) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + z);
                return z;
            } catch (JSONException e2) {
                return z;
            }
        }
    }

    public static boolean getBooleanFromMap(Map map, String str) {
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static CommonsConfig getConfig() {
        return a;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getConnectivityType(android.content.Context r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.internal.InternalSDKUtil.getConnectivityType(android.content.Context):java.lang.String");
        /*
        r4 = 1;
        r1 = 0;
        r0 = "android.permission.ACCESS_NETWORK_STATE";
        r0 = r6.checkCallingOrSelfPermission(r0);	 Catch:{ Exception -> 0x003f }
        if (r0 != 0) goto L_0x004d;
    L_0x000a:
        r0 = "connectivity";
        r0 = r6.getSystemService(r0);	 Catch:{ Exception -> 0x003f }
        r0 = (android.net.ConnectivityManager) r0;	 Catch:{ Exception -> 0x003f }
        if (r0 == 0) goto L_0x004d;
    L_0x0014:
        r0 = r0.getActiveNetworkInfo();	 Catch:{ Exception -> 0x003f }
        r2 = r0.getType();	 Catch:{ Exception -> 0x003f }
        r3 = r0.getSubtype();	 Catch:{ Exception -> 0x003f }
        if (r2 != r4) goto L_0x0025;
    L_0x0022:
        r0 = "wifi";
    L_0x0024:
        return r0;
    L_0x0025:
        if (r2 != 0) goto L_0x004d;
    L_0x0027:
        r0 = "carrier";
        if (r3 != r4) goto L_0x002e;
    L_0x002b:
        r0 = "gprs";
        goto L_0x0024;
    L_0x002e:
        r1 = 2;
        if (r3 != r1) goto L_0x0034;
    L_0x0031:
        r0 = "edge";
        goto L_0x0024;
    L_0x0034:
        r1 = 3;
        if (r3 != r1) goto L_0x003a;
    L_0x0037:
        r0 = "umts";
        goto L_0x0024;
    L_0x003a:
        if (r3 != 0) goto L_0x0024;
    L_0x003c:
        r0 = "carrier";
        goto L_0x0024;
    L_0x003f:
        r0 = move-exception;
        r5 = r0;
        r0 = r1;
        r1 = r5;
    L_0x0043:
        r2 = "[InMobi]-4.4.1";
        r3 = "Error getting the network info";
        com.inmobi.commons.internal.Log.internal(r2, r3, r1);
        goto L_0x0024;
    L_0x004b:
        r1 = move-exception;
        goto L_0x0043;
    L_0x004d:
        r0 = r1;
        goto L_0x0024;
        */
    }

    public static Context getContext() {
        return c;
    }

    public static int getDisplayRotation(Display display) {
        Method method = null;
        try {
            method = Display.class.getMethod("getRotation", (Class[]) 0);
        } catch (NoSuchMethodException e) {
            try {
                method = Display.class.getMethod("getOrientation", (Class[]) 0);
            } catch (NoSuchMethodException e2) {
                Log.internal(PRODUCT_COMMONS, "Unable to access getOrientation method via reflection");
            }
        }
        if (method != null) {
            try {
                return ((Integer) method.invoke(display, (Object[]) 0)).intValue();
            } catch (Exception e3) {
                Log.internal(PRODUCT_COMMONS, "Unable to access display rotation");
            }
        }
        return -999;
    }

    public static String getFinalRedirectedUrl(String str) {
        int i = 0;
        String str2 = str;
        while (true) {
            try {
                String str3;
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
                addCommonPropertiesToConnection(httpURLConnection);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestMethod("GET");
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 300 || responseCode >= 400) {
                    str3 = str2;
                } else {
                    str3 = httpURLConnection.getHeaderField("Location");
                    if (str3 == null) {
                        str3 = str2;
                    } else if (httpURLConnection.getResponseCode() != 200) {
                        int i2 = i + 1;
                        if (i < 5) {
                            i = i2;
                            str2 = str3;
                        }
                    }
                }
                httpURLConnection.disconnect();
                return str3;
            } catch (Exception e) {
                str = str3;
                th = e;
                Log.internal(LOGGING_TAG, "Cannot get redirect url", th);
                return str;
            }
        }
    }

    public static String getInMobiInternalVersion(String str) {
        String[] split = str.split("[.]");
        StringBuffer stringBuffer = new StringBuffer(AdTrackerConstants.BLANK);
        int i = 0;
        while (i < split.length) {
            try {
                stringBuffer.append("T").append((char) (Integer.valueOf(split[i]).intValue() + 65));
            } catch (NumberFormatException e) {
            }
            i++;
        }
        return stringBuffer.equals(AdTrackerConstants.BLANK) ? AdTrackerConstants.BLANK : stringBuffer.substring(1).toString();
    }

    public static int getIntFromJSON(JSONObject jSONObject, String str, int i) {
        try {
            return jSONObject.getInt(str);
        } catch (Exception e) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + i);
                return i;
            } catch (JSONException e2) {
                return i;
            }
        }
    }

    public static int getIntFromMap(Map map, String str, int i, long j) {
        Object obj = map.get(str);
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            if (((long) intValue) <= j && intValue >= i) {
                return intValue;
            }
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static long getLongFromJSON(JSONObject jSONObject, String str, long j) {
        try {
            return jSONObject.getLong(str);
        } catch (Exception e) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + j);
                return j;
            } catch (JSONException e2) {
                return j;
            }
        }
    }

    public static long getLongFromMap(Map map, String str, long j, long j2) {
        Object obj = map.get(str);
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            if (longValue <= j2 && longValue >= j) {
                return longValue;
            }
        }
        if (j < -2147483648L) {
            j = -2147483648L;
        }
        int i = (int) j;
        if (j2 > 2147483647L) {
            j2 = 2147483647L;
        }
        return (long) getIntFromMap(map, str, i, (long) ((int) j2));
    }

    public static String getSavedUserAgent() {
        return b;
    }

    public static String getStringFromJSON(JSONObject jSONObject, String str, String str2) {
        try {
            return jSONObject.getString(str);
        } catch (Exception e) {
            try {
                Log.debug(LOGGING_TAG, "JSON with property " + str + " found but has bad datatype(" + jSONObject.get(str).getClass() + "). Reverting to " + str2);
                return str2;
            } catch (JSONException e2) {
                return str2;
            }
        }
    }

    public static String getStringFromMap(Map map, String str) {
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        Log.internal(LOGGING_TAG, "Key " + str + " has illegal value");
        throw new IllegalArgumentException();
    }

    public static String getUserAgent(Context context) {
        try {
            if (b == null) {
                if (VERSION.SDK_INT >= 17) {
                    b = b.a(context);
                } else {
                    b = new WebView(context).getSettings().getUserAgentString();
                }
            }
            return b;
        } catch (Exception e) {
            Log.internal(LOGGING_TAG, "Cannot get user agent", e);
            return b;
        }
    }

    public static void initialize(Context context) {
        if (getContext() == null) {
            if (context == null) {
                c.getApplicationContext();
            } else {
                c = context.getApplicationContext();
            }
        }
        if (InMobi.getAppId() != null) {
            if (f) {
                f = false;
                a();
            }
            try {
                a(CacheController.getConfig(PRODUCT_COMMONS, context, d, e).getData());
            } catch (CommonsException e) {
                Log.internal(LOGGING_TAG, "IMCommons config init: IMCommonsException caught. Reason: " + e.toString());
            } catch (Exception e2) {
                Log.internal(LOGGING_TAG, "Exception while getting commons config data.");
            }
        }
    }

    public static boolean isDefOrientationLandscape(int i, int i2, int i3) {
        if (i2 > i3 && (i == 0 || i == 2)) {
            return true;
        }
        return i2 < i3 && (i == 1 || i == 3);
    }

    public static boolean isGooglePlayServicesJarIncluded() {
        boolean z = false;
        try {
            Method declaredMethod = Class.forName(CLASS_PLAYSERVICES).getDeclaredMethod(METHOD_PLAY_AVAILABLE, new Class[]{Context.class});
            Object[] objArr = new Object[]{getContext()};
            return ((Integer) declaredMethod.invoke(null, objArr)).intValue() == 0 ? true : z;
        } catch (Exception e) {
            return z;
        }
    }

    public static boolean isHexString(String str) {
        return str.matches("[0-9A-F]+");
    }

    public static boolean isInitializedSuccessfully() {
        return isInitializedSuccessfully(true);
    }

    public static boolean isInitializedSuccessfully(boolean z) {
        if (getContext() != null && InMobi.getAppId() != null) {
            return true;
        }
        if (z) {
            Log.debug(LOGGING_TAG, "InMobi not initialized. Call InMobi.initialize before using any InMobi API");
        }
        return false;
    }

    public static boolean isLimitAdTrackingEnabled() {
        AdvertisingId advertisingId = UIDHelper.getAdvertisingId();
        return advertisingId != null ? advertisingId.isLimitAdTracking() : false;
    }

    public static boolean isPlatformIdEnabled() {
        try {
            Class.forName(CLASS_PLATFORM_ID);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isTablet(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        double d = (double) (((float) displayMetrics.widthPixels) / displayMetrics.xdpi);
        double d2 = (double) (((float) displayMetrics.heightPixels) / displayMetrics.ydpi);
        d2 *= d2;
        return Math.sqrt(d2 + (d * d)) > 7.0d;
    }

    public static byte[] keag() {
        return c();
    }

    public static void populate(Map map, Map map2, boolean z) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (map2.get(str) == null) {
                map2.put(str, map.get(str));
            }
            Object obj = map.get(str);
            Object obj2 = map2.get(str);
            if (!(obj instanceof Map) || !(obj2 instanceof Map)) {
                map2.put(str, obj);
            } else if (z) {
                populate((Map) obj, (Map) obj2, true);
            } else {
                map2.put(str, obj);
            }
        }
    }

    public static void populate(JSONObject jSONObject, JSONObject jSONObject2, boolean z) {
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            try {
                jSONObject2.get(str);
                try {
                    Object obj = jSONObject.get(str);
                    Object obj2 = jSONObject2.get(str);
                } catch (JSONException e) {
                    Log.internal(LOGGING_TAG, "Cannot populate to json exception", e);
                }
                if (!(obj instanceof JSONObject) || !(obj2 instanceof JSONObject)) {
                    jSONObject2.put(str, obj);
                } else if (z) {
                    populate((JSONObject) obj, (JSONObject) obj2, true);
                } else {
                    jSONObject2.put(str, obj);
                }
            } catch (JSONException e2) {
                jSONObject2.put(str, jSONObject.get(str));
            }
        }
    }

    public static JSONObject populateToNewJSON(JSONObject jSONObject, JSONObject jSONObject2, boolean z) {
        JSONObject jSONObject3 = new JSONObject();
        populate(jSONObject2, jSONObject3, false);
        populate(jSONObject, jSONObject3, z);
        return jSONObject3;
    }

    public static Map populateToNewMap(Map map, Map map2, boolean z) {
        Map hashMap = new HashMap();
        populate(map2, hashMap, false);
        populate(map, hashMap, z);
        return hashMap;
    }

    public static void printPublisherTestId() {
        try {
            if (isGooglePlayServicesJarIncluded()) {
                AdvertisingId advertisingId = UIDHelper.getAdvertisingId();
                if (advertisingId != null) {
                    String adId = advertisingId.getAdId();
                    if (adId != null) {
                        Log.debug(LOGGING_TAG, "Publisher device Id is " + adId);
                    }
                }
            } else if (isPlatformIdEnabled()) {
                Log.debug(LOGGING_TAG, "Publisher device Id is " + UIDHelper.getODIN1(UIDHelper.getPlatformId()));
            }
        } catch (Exception e) {
            Log.internal(LOGGING_TAG, "Cannot get publisher device id", e);
        }
    }

    public static void setContext(Context context) {
        if (c == null) {
            c = context.getApplicationContext();
            if (InMobi.getAppId() != null) {
                a();
                try {
                    CacheController.getConfig(PRODUCT_COMMONS, context, d, e);
                } catch (CommonsException e) {
                    Log.internal(PRODUCT_COMMONS, "Unable retrive config for commons product");
                }
            }
        }
    }

    public static boolean validateAppId(String str) {
        if (str == null) {
            Log.debug(LOGGING_TAG, "appId is null");
            return false;
        } else if (str.matches("(x)+")) {
            Log.debug(LOGGING_TAG, "appId is all xxxxxxx");
            return false;
        } else if (!AdTrackerConstants.BLANK.equals(str.trim())) {
            return true;
        } else {
            Log.debug(LOGGING_TAG, "appId is all blank");
            return false;
        }
    }
}