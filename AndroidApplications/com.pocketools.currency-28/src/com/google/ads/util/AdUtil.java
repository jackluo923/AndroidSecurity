package com.google.ads.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.pocketools.currency.R;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AdUtil {
    public static final int a;
    private static Boolean b;
    private static String c;
    private static String d;
    private static String e;
    private static AudioManager f;
    private static boolean g;
    private static boolean h;
    private static String i;

    public static class UserActivityReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                AdUtil.a(true);
            } else if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                AdUtil.a(false);
            }
        }
    }

    public enum a {
        INVALID,
        SPEAKER,
        HEADPHONES,
        VIBRATE,
        EMULATOR,
        OTHER;

        static {
            a = new com.google.ads.util.AdUtil.a("INVALID", 0);
            b = new com.google.ads.util.AdUtil.a("SPEAKER", 1);
            c = new com.google.ads.util.AdUtil.a("HEADPHONES", 2);
            d = new com.google.ads.util.AdUtil.a("VIBRATE", 3);
            e = new com.google.ads.util.AdUtil.a("EMULATOR", 4);
            f = new com.google.ads.util.AdUtil.a("OTHER", 5);
            g = new com.google.ads.util.AdUtil.a[]{a, b, c, d, e, f};
        }
    }

    static {
        a = a(VERSION.SDK);
        b = null;
        c = null;
        e = null;
        g = true;
        h = false;
        i = null;
    }

    public static int a() {
        return a >= 9 ? 6 : 0;
    }

    public static int a(Context context, DisplayMetrics displayMetrics) {
        return a >= 4 ? e.a(context, displayMetrics) : displayMetrics.heightPixels;
    }

    public static int a(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            b.e("The Android SDK version couldn't be parsed to an int: " + VERSION.SDK);
            b.e("Defaulting to Android SDK version 3.");
            return R.styleable.com_admob_android_ads_AdView_keywords;
        }
    }

    public static DisplayMetrics a(Activity activity) {
        if (activity.getWindowManager() == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String a(Context context) {
        if (c == null) {
            String string = Secure.getString(context.getContentResolver(), "android_id");
            string = (string == null || c()) ? b("emulator") : b(string);
            if (string == null) {
                return null;
            }
            c = string.toUpperCase(Locale.US);
        }
        return c;
    }

    public static String a(Location location) {
        if (location == null) {
            return null;
        }
        return "e1+" + c(b(location));
    }

    public static String a(Readable readable) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        CharSequence allocate = CharBuffer.allocate(2048);
        while (true) {
            int read = readable.read(allocate);
            if (read == -1) {
                return stringBuilder.toString();
            }
            allocate.flip();
            stringBuilder.append(allocate, 0, read);
        }
    }

    public static String a(Map map) {
        String str = null;
        try {
            return b(map).toString();
        } catch (JSONException e) {
            b.d("JsonException in serialization: ", e);
            return str;
        }
    }

    public static JSONArray a(Set<Object> set) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        if (set == null || set.isEmpty()) {
            return jSONArray;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof String || next instanceof Integer || next instanceof Double || next instanceof Long || next instanceof Float) {
                jSONArray.put(next);
            } else if (next instanceof Map) {
                try {
                    jSONArray.put(b((Map) next));
                } catch (ClassCastException e) {
                    b.d("Unknown map type in json serialization: ", e);
                }
            } else if (next instanceof Set) {
                try {
                    jSONArray.put(a((Set) next));
                } catch (ClassCastException e2) {
                    b.d("Unknown map type in json serialization: ", e2);
                }
            } else {
                b.e("Unknown value in json serialization: " + next);
            }
        }
        return jSONArray;
    }

    public static void a(WebView webView) {
        webView.getSettings().setUserAgentString(i(webView.getContext().getApplicationContext()));
    }

    public static void a(HttpURLConnection httpURLConnection, Context context) {
        httpURLConnection.setRequestProperty("User-Agent", i(context));
    }

    public static void a(boolean z) {
        g = z;
    }

    public static boolean a(int i, int i2, String str) {
        if ((i & i2) != 0) {
            return true;
        }
        b.b("The android:configChanges value of the com.google.ads.AdActivity must include " + str + ".");
        return false;
    }

    public static boolean a(Intent intent, Context context) {
        return context.getPackageManager().resolveActivity(intent, 65536) != null;
    }

    public static boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    static boolean a(d dVar) {
        if (dVar == null) {
            dVar = d.d;
        }
        return dVar.equals(d.e);
    }

    public static int b() {
        return a >= 9 ? 7 : 1;
    }

    public static int b(Context context, DisplayMetrics displayMetrics) {
        return a >= 4 ? e.b(context, displayMetrics) : displayMetrics.widthPixels;
    }

    private static String b(Location location) {
        return String.format(Locale.US, "role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", new Object[]{Long.valueOf(location.getTime() * 1000), Long.valueOf((long) (location.getLatitude() * 1.0E7d)), Long.valueOf((long) (location.getLongitude() * 1.0E7d)), Long.valueOf((long) (location.getAccuracy() * 1000.0f))});
    }

    public static String b(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            MessageDigest.getInstance("MD5").update(str.getBytes(), 0, str.length());
            return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, messageDigest.digest())});
        } catch (NoSuchAlgorithmException e) {
            return str.substring(0, AdSize.LANDSCAPE_AD_HEIGHT);
        }
    }

    public static HashMap<String, String> b(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap();
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery != null) {
            String[] split = encodedQuery.split("&");
            int length = split.length;
            int i = 0;
            while (i < length) {
                String str = split[i];
                int indexOf = str.indexOf("=");
                if (indexOf < 0) {
                    hashMap.put(Uri.decode(str), null);
                } else {
                    hashMap.put(Uri.decode(str.substring(0, indexOf)), Uri.decode(str.substring(indexOf + 1, str.length())));
                }
                i++;
            }
        }
        return hashMap;
    }

    public static JSONObject b(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (map == null || map.isEmpty()) {
            return jSONObject;
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Object obj = map.get(str);
            if (obj instanceof String || obj instanceof Integer || obj instanceof Double || obj instanceof Long || obj instanceof Float) {
                jSONObject.put(str, obj);
            } else if (obj instanceof Map) {
                try {
                    jSONObject.put(str, b((Map) obj));
                } catch (ClassCastException e) {
                    b.d("Unknown map type in json serialization: ", e);
                }
            } else if (obj instanceof Set) {
                try {
                    jSONObject.put(str, a((Set) obj));
                } catch (ClassCastException e2) {
                    b.d("Unknown map type in json serialization: ", e2);
                }
            } else {
                b.e("Unknown value in json serialization: " + obj);
            }
        }
        return jSONObject;
    }

    public static boolean b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        if (packageManager.checkPermission("android.permission.INTERNET", packageName) == -1) {
            b.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            return false;
        } else if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", packageName) != -1) {
            return true;
        } else {
            b.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
    }

    private static String c(String str) {
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, new SecretKeySpec(new byte[]{(byte) 10, (byte) 55, (byte) -112, (byte) -47, (byte) -6, (byte) 7, (byte) 11, (byte) 75, (byte) -7, (byte) -121, (byte) 121, (byte) 69, (byte) 80, (byte) -61, (byte) 15, (byte) 5}, "AES"));
            Object iv = instance.getIV();
            Object doFinal = instance.doFinal(str.getBytes());
            Object obj = new Object[(iv.length + doFinal.length)];
            System.arraycopy(iv, 0, obj, 0, iv.length);
            System.arraycopy(doFinal, 0, obj, iv.length, doFinal.length);
            return c.b(obj, 11);
        } catch (GeneralSecurityException e) {
            return null;
        }
    }

    public static boolean c() {
        return a(null);
    }

    public static boolean c(Context context) {
        if (b != null) {
            return b.booleanValue();
        }
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent(context, AdActivity.class), 65536);
        b = Boolean.valueOf(true);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            b.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
            b = Boolean.valueOf(false);
        } else {
            if (!a(resolveActivity.activityInfo.configChanges, 16, "keyboard")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, AdSize.LANDSCAPE_AD_HEIGHT, "keyboardHidden")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, 128, "orientation")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, 256, "screenLayout")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, 512, "uiMode")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, 1024, "screenSize")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, 2048, "smallestScreenSize")) {
                b = Boolean.valueOf(false);
            }
        }
        return b.booleanValue();
    }

    public static String d(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        switch (activeNetworkInfo.getType()) {
            case R.styleable.com_admob_android_ads_AdView_testing:
                return "ed";
            case R.styleable.com_admob_android_ads_AdView_backgroundColor:
                return "wi";
            default:
                return "unknown";
        }
    }

    public static boolean d() {
        return g;
    }

    public static String e(Context context) {
        if (d == null) {
            StringBuilder stringBuilder = new StringBuilder();
            PackageManager packageManager = context.getPackageManager();
            List queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536);
            if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
                stringBuilder.append(AdActivity.TYPE_PARAM);
            }
            queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 65536);
            if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append("a");
            }
            List queryIntentActivities2 = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("tel://6509313940")), 65536);
            if (queryIntentActivities2 == null || queryIntentActivities2.size() == 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append("t");
            }
            d = stringBuilder.toString();
        }
        return d;
    }

    public static String f(Context context) {
        if (e != null) {
            return e;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads")), 65536);
            if (resolveActivity == null) {
                return null;
            }
            ActivityInfo activityInfo = resolveActivity.activityInfo;
            if (activityInfo == null) {
                return null;
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo == null) {
                return null;
            }
            e = packageInfo.versionCode + "." + activityInfo.packageName;
            return e;
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public static a g(Context context) {
        if (f == null) {
            f = (AudioManager) context.getSystemService("audio");
        }
        a aVar = a.f;
        int mode = f.getMode();
        if (c()) {
            return a.e;
        }
        if (f.isMusicActive() || f.isSpeakerphoneOn() || mode == 2 || mode == 1) {
            return a.d;
        }
        mode = f.getRingerMode();
        return (mode == 0 || mode == 1) ? a.d : a.b;
    }

    public static void h(Context context) {
        if (!h) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(new UserActivityReceiver(), intentFilter);
            h = true;
        }
    }

    public static String i(Context context) {
        if (i == null) {
            String userAgentString = new WebView(context).getSettings().getUserAgentString();
            if (userAgentString == null || userAgentString.length() == 0 || userAgentString.equals("Java0")) {
                String property = System.getProperty("os.name", "Linux");
                String str = "Android " + VERSION.RELEASE;
                Locale locale = Locale.getDefault();
                userAgentString = locale.getLanguage().toLowerCase(Locale.US);
                if (userAgentString.length() == 0) {
                    userAgentString = "en";
                }
                String toLowerCase = locale.getCountry().toLowerCase(Locale.US);
                if (toLowerCase.length() > 0) {
                    userAgentString = userAgentString + "-" + toLowerCase;
                }
                userAgentString = "Mozilla/5.0 (" + property + "; U; " + str + "; " + userAgentString + "; " + (Build.MODEL + " Build/" + Build.ID) + ") AppleWebKit/0.0 (KHTML, like " + "Gecko) Version/0.0 Mobile Safari/0.0";
            }
            i = userAgentString + " (Mobile; " + "afma-sdk-a-v" + AdRequest.VERSION + ")";
        }
        return i;
    }
}