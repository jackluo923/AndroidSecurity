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
import android.support.v4.app.NotificationCompat;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.webkit.WebView;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.Menu;
import com.google.ads.AdActivity;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
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

    public class UserActivityReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                AdUtil.a(true);
            } else if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                AdUtil.a(false);
            }
        }
    }

    static {
        a = b(VERSION.SDK);
        b = null;
        c = null;
        e = null;
        g = true;
        h = false;
        i = null;
    }

    public static int a() {
        return a >= 9 ? FragmentManagerImpl.ANIM_STYLE_FADE_EXIT : 0;
    }

    public static int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    public static int a(Context context, DisplayMetrics displayMetrics) {
        return a >= 4 ? n.a(context, displayMetrics) : displayMetrics.heightPixels;
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
            string = (string == null || c()) ? a("emulator") : a(string);
            if (string == null) {
                return null;
            }
            c = string.toUpperCase(Locale.US);
        }
        return c;
    }

    public static String a(Readable readable) {
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

    public static String a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            MessageDigest.getInstance("MD5").update(str.getBytes(), 0, str.length());
            return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, messageDigest.digest())});
        } catch (NoSuchAlgorithmException e) {
            return str.substring(0, 32);
        }
    }

    public static String a(Map map) {
        String str = null;
        try {
            return b(map).toString();
        } catch (JSONException e) {
            g.d("JsonException in serialization: ", e);
            return str;
        }
    }

    public static HashMap a(Location location) {
        if (location == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("time", Long.valueOf(location.getTime() * 1000));
        hashMap.put("lat", Long.valueOf((long) (location.getLatitude() * 1.0E7d)));
        hashMap.put("long", Long.valueOf((long) (location.getLongitude() * 1.0E7d)));
        hashMap.put("radius", Long.valueOf((long) (location.getAccuracy() * 1000.0f)));
        return hashMap;
    }

    private static JSONArray a(Set set) {
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
                    g.d("Unknown map type in json serialization: ", e);
                }
            } else if (next instanceof Set) {
                try {
                    jSONArray.put(a((Set) next));
                } catch (ClassCastException e2) {
                    g.d("Unknown map type in json serialization: ", e2);
                }
            } else {
                g.e(new StringBuilder("Unknown value in json serialization: ").append(next).toString());
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

    private static boolean a(int i, int i2, String str) {
        if ((i & i2) != 0) {
            return true;
        }
        g.b(new StringBuilder("The android:configChanges value of the com.google.ads.AdActivity must include ").append(str).append(".").toString());
        return false;
    }

    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static boolean a(Intent intent, Context context) {
        return context.getPackageManager().resolveActivity(intent, Menu.CATEGORY_CONTAINER) != null;
    }

    public static boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    public static int b() {
        return a >= 9 ? 7 : 1;
    }

    public static int b(Context context, DisplayMetrics displayMetrics) {
        return a >= 4 ? n.b(context, displayMetrics) : displayMetrics.widthPixels;
    }

    private static int b(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            g.e(new StringBuilder("The Android SDK version couldn't be parsed to an int: ").append(VERSION.SDK).toString());
            g.e("Defaulting to Android SDK version 3.");
            return FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER;
        }
    }

    public static HashMap b(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
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

    private static JSONObject b(Map map) {
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
                    g.d("Unknown map type in json serialization: ", e);
                }
            } else if (obj instanceof Set) {
                try {
                    jSONObject.put(str, a((Set) obj));
                } catch (ClassCastException e2) {
                    g.d("Unknown map type in json serialization: ", e2);
                }
            } else {
                g.e(new StringBuilder("Unknown value in json serialization: ").append(obj).toString());
            }
        }
        return jSONObject;
    }

    public static boolean b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        if (packageManager.checkPermission("android.permission.INTERNET", packageName) == -1) {
            g.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            return false;
        } else if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", packageName) != -1) {
            return true;
        } else {
            g.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
    }

    public static boolean c() {
        m mVar = m.d;
        return mVar.equals(m.e) || mVar.equals(m.f);
    }

    public static boolean c(Context context) {
        if (b != null) {
            return b.booleanValue();
        }
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent(context, AdActivity.class), Menu.CATEGORY_CONTAINER);
        b = Boolean.valueOf(true);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            g.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
            b = Boolean.valueOf(false);
        } else {
            if (!a(resolveActivity.activityInfo.configChanges, Menu.CATEGORY_SHIFT, "keyboard")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, 32, "keyboardHidden")) {
                b = Boolean.valueOf(false);
            }
            if (!a(resolveActivity.activityInfo.configChanges, NotificationCompat.FLAG_HIGH_PRIORITY, "orientation")) {
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
            case IcsToast.LENGTH_SHORT:
                return "ed";
            case IcsToast.LENGTH_LONG:
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
            List queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), Menu.CATEGORY_CONTAINER);
            if (queryIntentActivities == null || queryIntentActivities.isEmpty()) {
                stringBuilder.append("m");
            }
            List queryIntentActivities2 = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), Menu.CATEGORY_CONTAINER);
            if (queryIntentActivities2 == null || queryIntentActivities2.isEmpty()) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append("a");
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
            ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads")), Menu.CATEGORY_CONTAINER);
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
            String str = packageInfo.versionCode + "." + activityInfo.packageName;
            e = str;
            return str;
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

    private static String i(Context context) {
        if (i == null) {
            String userAgentString = new WebView(context).getSettings().getUserAgentString();
            if (userAgentString == null || userAgentString.length() == 0 || userAgentString.equals("Java0")) {
                String property = System.getProperty("os.name", "Linux");
                String toString = new StringBuilder("Android ").append(VERSION.RELEASE).toString();
                Locale locale = Locale.getDefault();
                userAgentString = locale.getLanguage().toLowerCase(Locale.US);
                if (userAgentString.length() == 0) {
                    userAgentString = "en";
                }
                String toLowerCase = locale.getCountry().toLowerCase(Locale.US);
                if (toLowerCase.length() > 0) {
                    userAgentString = userAgentString + "-" + toLowerCase;
                }
                userAgentString = new StringBuilder("Mozilla/5.0 (").append(property).append("; U; ").append(toString).append("; ").append(userAgentString).append("; ").append(Build.MODEL + " Build/" + Build.ID).append(") AppleWebKit/0.0 (KHTML, like Gecko) Version/0.0 Mobile Safari/0.0").toString();
            }
            i = userAgentString + " (Mobile; afma-sdk-a-v6.4.1)";
        }
        return i;
    }
}