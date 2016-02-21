package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.WindowManager.BadTokenException;
import android.webkit.URLUtil;
import android.widget.Toast;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.ErrorFields;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.a.a.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class HandShake {
    private static final String A = "HandShake";
    private static String I = null;
    static String a = null;
    static final String k = "http://androidsdk.ads.mp.mydas.mobi/";
    static final String l = "getAd.php5?";
    private static final String n = "handshake_cachedvideos5.0";
    private static final String o = "http://";
    private static final String p = "https://";
    private static final String q = "ads.mp.mydas.mobi/";
    private static final String r = "appConfigServlet?apid=";
    private static final String s = "?apid=";
    private static final String t = "http://ads.mp.mydas.mobi/appConfigServlet?apid=";
    private static String u;
    private static boolean v;
    private static HandShake w;
    private long B;
    private String C;
    private final LinkedHashMap D;
    private final ArrayList E;
    private String F;
    private long G;
    private long H;
    private final Runnable J;
    boolean b;
    String c;
    long d;
    boolean e;
    String f;
    String g;
    long h;
    String i;
    NuanceCredentials j;
    DTOCachedVideo[] m;
    private WeakReference x;
    private WeakReference y;
    private final Handler z;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ boolean a;

        AnonymousClass_1(boolean z) {
            this.a = z;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.HandShake.AnonymousClass_1.run():void");
            /*
            r11 = this;
            r10 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
            r2 = 0;
            r0 = com.millennialmedia.android.HandShake.this;
            r0 = r0.x;
            r0 = r0.get();
            r0 = (android.content.Context) r0;
            if (r0 != 0) goto L_0x0208;
        L_0x0011:
            r0 = com.millennialmedia.android.HandShake.this;
            r0 = r0.y;
            r0 = r0.get();
            r0 = (android.content.Context) r0;
            r4 = r0;
        L_0x001e:
            if (r4 != 0) goto L_0x0021;
        L_0x0020:
            return;
        L_0x0021:
            r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r5.<init>();	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r0 = new java.util.TreeMap;	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r0.<init>();	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r1 = "ua";
            r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r3.<init>();	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r6 = "Android:";
            r3 = r3.append(r6);	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r6 = android.os.Build.MODEL;	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r3 = r3.append(r6);	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r3 = r3.toString();	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r0.put(r1, r3);	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r1 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            r1 = r1.d(r4);	 Catch:{ IOException -> 0x0204, Exception -> 0x0201, all -> 0x01fd }
            if (r1 == 0) goto L_0x0054;
        L_0x004d:
            r3 = "firstlaunch";
            r6 = "1";
            r0.put(r3, r6);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
        L_0x0054:
            r3 = r11.a;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            if (r3 == 0) goto L_0x005f;
        L_0x0058:
            r3 = "init";
            r6 = "1";
            r0.put(r3, r6);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
        L_0x005f:
            com.millennialmedia.android.MMSDK.a(r4, r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.entrySet();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = r0.iterator();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
        L_0x006a:
            r0 = r3.hasNext();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            if (r0 == 0) goto L_0x00ac;
        L_0x0070:
            r0 = r3.next();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = (java.util.Map.Entry) r0;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r6 = "&%s=%s";
            r7 = 2;
            r7 = new java.lang.Object[r7];	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r8 = 0;
            r9 = r0.getKey();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r7[r8] = r9;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r8 = 1;
            r0 = r0.getValue();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = (java.lang.String) r0;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r9 = "UTF-8";
            r0 = java.net.URLEncoder.encode(r0, r9);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r7[r8] = r0;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = java.lang.String.format(r6, r7);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r5.append(r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            goto L_0x006a;
        L_0x0099:
            r0 = move-exception;
        L_0x009a:
            r2 = "HandShake";
            r3 = "Could not get a handshake. ";
            com.millennialmedia.android.MMLog.e(r2, r3, r0);	 Catch:{ all -> 0x00a3 }
            goto L_0x0020;
        L_0x00a3:
            r0 = move-exception;
        L_0x00a4:
            if (r1 == 0) goto L_0x00ab;
        L_0x00a6:
            r1 = com.millennialmedia.android.HandShake.this;
            r1.e(r4);
        L_0x00ab:
            throw r0;
        L_0x00ac:
            r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0.<init>();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = u;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.append(r3);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = a;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.append(r3);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = r5.toString();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.append(r3);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.toString();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = "HandShake";
            r6 = "Performing handshake: %s";
            r7 = 1;
            r7 = new java.lang.Object[r7];	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r8 = 0;
            r7[r8] = r0;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r6 = java.lang.String.format(r6, r7);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            com.millennialmedia.android.MMLog.a(r3, r6);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = 0;
            r6 = new com.millennialmedia.android.HttpGetRequest;	 Catch:{ IOException -> 0x01d3, Exception -> 0x01dd }
            r7 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
            r6.<init>(r7);	 Catch:{ IOException -> 0x01d3, Exception -> 0x01dd }
            r3 = r6.a(r0);	 Catch:{ IOException -> 0x01d3, Exception -> 0x01dd }
        L_0x00e8:
            if (r3 == 0) goto L_0x00f4;
        L_0x00ea:
            r0 = r3.getStatusLine();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.getStatusCode();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            if (r0 == r10) goto L_0x013c;
        L_0x00f4:
            r0 = u;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6 = "https://";
            r7 = "http://";
            r0 = r0.replaceFirst(r6, r7);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            u = r0;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r0.<init>();	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6 = u;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r0 = r0.append(r6);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6 = a;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r0 = r0.append(r6);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6 = r5.toString();	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r0 = r0.append(r6);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r0 = r0.toString();	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6 = "HandShake";
            r7 = "Performing handshake (HTTP Fallback): %s";
            r8 = 1;
            r8 = new java.lang.Object[r8];	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r9 = 0;
            r8[r9] = r0;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r7 = java.lang.String.format(r7, r8);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            com.millennialmedia.android.MMLog.a(r6, r7);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6 = new com.millennialmedia.android.HttpGetRequest;	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r6.<init>();	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
            r3 = r6.a(r0);	 Catch:{ IOException -> 0x01e7, Exception -> 0x01dd }
        L_0x013c:
            if (r3 == 0) goto L_0x0148;
        L_0x013e:
            r0 = r3.getStatusLine();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.getStatusCode();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            if (r0 == r10) goto L_0x01f9;
        L_0x0148:
            r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r0.<init>();	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r6 = "http://ads.mp.mydas.mobi/appConfigServlet?apid=";
            r0 = r0.append(r6);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r6 = a;	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r0 = r0.append(r6);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r5 = r5.toString();	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r0 = r0.append(r5);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r0 = r0.toString();	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r5 = "HandShake";
            r6 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r6.<init>();	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r7 = "Performing handshake (HTTP Fallback Original): ";
            r6 = r6.append(r7);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r6 = r6.append(r0);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r6 = r6.toString();	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            com.millennialmedia.android.MMLog.a(r5, r6);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r5 = new com.millennialmedia.android.HttpGetRequest;	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r5.<init>();	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
            r0 = r5.a(r0);	 Catch:{ IOException -> 0x01f1, Exception -> 0x01dd }
        L_0x0186:
            if (r0 == 0) goto L_0x01fb;
        L_0x0188:
            r3 = r0.getStatusLine();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = r3.getStatusCode();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            if (r3 != r10) goto L_0x01fb;
        L_0x0192:
            r2 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.getEntity();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.getContent();	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = com.millennialmedia.android.HttpGetRequest.a(r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r3.g(r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r2.a(r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0.g(r4);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = r0.z;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r2 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r2 = r2.J;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r3 = com.millennialmedia.android.HandShake.this;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r5 = r3.H;	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0.postDelayed(r2, r5);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            r0 = "HandShake";
            r2 = "Obtained a new handshake";
            com.millennialmedia.android.MMLog.a(r0, r2);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
        L_0x01ca:
            if (r1 == 0) goto L_0x0020;
        L_0x01cc:
            r0 = com.millennialmedia.android.HandShake.this;
            r0.e(r4);
            goto L_0x0020;
        L_0x01d3:
            r0 = move-exception;
            r6 = "HandShake";
            r7 = "Could not get a handshake. ";
            com.millennialmedia.android.MMLog.e(r6, r7, r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            goto L_0x00e8;
        L_0x01dd:
            r0 = move-exception;
        L_0x01de:
            r2 = "HandShake";
            r3 = "Could not get a handshake. ";
            com.millennialmedia.android.MMLog.e(r2, r3, r0);	 Catch:{ all -> 0x00a3 }
            goto L_0x0020;
        L_0x01e7:
            r0 = move-exception;
            r6 = "HandShake";
            r7 = "Could not get a handshake. ";
            com.millennialmedia.android.MMLog.e(r6, r7, r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
            goto L_0x013c;
        L_0x01f1:
            r0 = move-exception;
            r5 = "HandShake";
            r6 = "Could not get a handshake. ";
            com.millennialmedia.android.MMLog.e(r5, r6, r0);	 Catch:{ IOException -> 0x0099, Exception -> 0x01dd }
        L_0x01f9:
            r0 = r3;
            goto L_0x0186;
        L_0x01fb:
            r1 = r2;
            goto L_0x01ca;
        L_0x01fd:
            r0 = move-exception;
            r1 = r2;
            goto L_0x00a4;
        L_0x0201:
            r0 = move-exception;
            r1 = r2;
            goto L_0x01de;
        L_0x0204:
            r0 = move-exception;
            r1 = r2;
            goto L_0x009a;
        L_0x0208:
            r4 = r0;
            goto L_0x001e;
            */
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ String b;

        AnonymousClass_3(Context context, String str) {
            this.a = context;
            this.b = str;
        }

        public void run() {
            try {
                Toast.makeText(this.a, "Error: " + this.b, 1).show();
            } catch (BadTokenException e) {
                MMLog.e(A, "Error with toast token", e);
            }
        }
    }

    private class AdTypeHandShake {
        long a;
        long b;
        boolean c;

        AdTypeHandShake() {
            this.a = 0;
            this.b = 0;
        }

        void a(Context context, String str) {
            this.a = System.currentTimeMillis();
            c(context, str);
        }

        void a(Editor editor, String str) {
            editor.putLong("handshake_lastvideo_" + str, this.a);
            editor.putLong("handshake_videointerval_" + str, this.b);
        }

        void a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.b = jSONObject.optLong("videointerval") * 1000;
            }
        }

        boolean a(long j) {
            return System.currentTimeMillis() - j < HandShake.this.G;
        }

        boolean a(Context context) {
            long currentTimeMillis = System.currentTimeMillis();
            MMLog.b(A, "canRequestVideo() Current Time:" + currentTimeMillis + " Last Video: " + (this.a / 1000) + "  Diff: " + ((currentTimeMillis - this.a) / 1000) + "  Video interval: " + (this.b / 1000));
            return System.currentTimeMillis() - this.a > this.b;
        }

        boolean a(SharedPreferences sharedPreferences, String str) {
            boolean z = 0;
            if (sharedPreferences.contains("handshake_lastvideo_" + str)) {
                this.a = sharedPreferences.getLong("handshake_lastvideo_" + str, this.a);
                z = true;
            }
            if (!sharedPreferences.contains("handshake_videointerval_" + str)) {
                return z;
            }
            this.b = sharedPreferences.getLong("handshake_videointerval_" + str, this.b);
            return true;
        }

        void b(Context context, String str) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
            if (sharedPreferences != null && sharedPreferences.contains("handshake_lastvideo_" + str)) {
                this.a = sharedPreferences.getLong("handshake_lastvideo_" + str, this.a);
            }
        }

        void c(Context context, String str) {
            Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            a(edit, str);
            edit.commit();
        }
    }

    static class NuanceCredentials {
        String a;
        String b;
        String c;
        int d;
        String e;

        private NuanceCredentials() {
        }

        public String toString() {
            return "Credentials: appid=" + this.a + " server=" + this.c + " port=" + this.d + " appKey=" + this.b + "sessionID=" + this.e;
        }
    }

    private class Scheme {
        String a;
        int b;

        Scheme() {
        }

        Scheme(String str, int i) {
            this.a = str;
            this.b = i;
        }

        void a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.a = jSONObject.optString("scheme", null);
                this.b = jSONObject.optInt("schemeid");
            }
        }

        boolean a(Context context) {
            return context.getPackageManager().queryIntentActivities(this.a.contains("://") ? new Intent("android.intent.action.VIEW", Uri.parse(this.a)) : new Intent("android.intent.action.VIEW", Uri.parse(new StringBuilder().append(this.a).append("://").toString())), Cast.MAX_MESSAGE_LENGTH).size() > 0;
        }
    }

    static {
        a = MMSDK.DEFAULT_BANNER_APID;
        u = "https://ads.mp.mydas.mobi/appConfigServlet?apid=";
        I = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
    }

    private HandShake() {
        this.z = new Handler(Looper.getMainLooper());
        this.D = new LinkedHashMap();
        this.E = new ArrayList();
        this.G = 3600000;
        this.b = false;
        this.H = 86400000;
        this.d = 259200000;
        this.J = new Runnable() {
            public void run() {
                Context context = (Context) HandShake.this.x.get();
                if (context == null) {
                    context = (Context) HandShake.this.y.get();
                }
                if (context != null) {
                    HandShake.a(context);
                }
            }
        };
    }

    private HandShake(Context context) {
        this.z = new Handler(Looper.getMainLooper());
        this.D = new LinkedHashMap();
        this.E = new ArrayList();
        this.G = 3600000;
        this.b = false;
        this.H = 86400000;
        this.d = 259200000;
        this.J = new Runnable() {
            public void run() {
                Context context = (Context) HandShake.this.x.get();
                if (context == null) {
                    context = (Context) HandShake.this.y.get();
                }
                if (context != null) {
                    HandShake.a(context);
                }
            }
        };
        this.x = new WeakReference(context);
        this.y = new WeakReference(context.getApplicationContext());
        if (v || !f(context) || System.currentTimeMillis() - this.B > this.H) {
            v = false;
            this.B = System.currentTimeMillis();
            a(false);
        }
    }

    static synchronized HandShake a(Context context) {
        HandShake handShake;
        synchronized (HandShake.class) {
            if (a == null) {
                MMLog.e(A, "No apid set for the handshake.");
                handShake = null;
            } else {
                if (w == null) {
                    w = new HandShake(context);
                } else if (System.currentTimeMillis() - w.B > w.H) {
                    MMLog.b(A, "Handshake expired, requesting new handshake from the server.");
                    w = new HandShake(context);
                }
                handShake = w;
            }
        }
        return handShake;
    }

    static String a() {
        return (TextUtils.isEmpty(I) || !URLUtil.isHttpUrl(I.replace(l, AdTrackerConstants.BLANK))) ? "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?" : I;
    }

    static synchronized void a(Context context, String str) {
        synchronized (HandShake.class) {
            if (b(str)) {
                v = true;
                w = new HandShake(context);
            }
        }
    }

    static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.endsWith("/")) {
                I = str + l;
            } else {
                I = str + "/" + l;
            }
        }
    }

    private void a(JSONObject jSONObject) {
        Context context = (Context) this.x.get();
        Context context2 = context == null ? (Context) this.y.get() : context;
        if (context2 == null) {
            MMLog.e(A, "No context for handshake");
        } else if (jSONObject != null) {
            try {
                int i;
                JSONArray optJSONArray = jSONObject.optJSONArray(Event.ERRORS);
                if (optJSONArray != null) {
                    i = 0;
                    while (i < optJSONArray.length()) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString(ErrorFields.MESSAGE, null);
                            String optString2 = optJSONObject.optString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, null);
                            if (!(optString == null || optString2 == null)) {
                                if (optString2.equalsIgnoreCase("log")) {
                                    MMLog.e(A, optString);
                                } else if (optString2.equalsIgnoreCase("prompt")) {
                                    this.z.post(new AnonymousClass_3(context2, optString));
                                }
                            }
                        }
                        i++;
                    }
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("adtypes");
                if (optJSONObject2 != null) {
                    String[] l = MMAdImpl.l();
                    i = 0;
                    while (i < l.length) {
                        JSONObject optJSONObject3 = optJSONObject2.optJSONObject(l[i]);
                        if (optJSONObject3 != null) {
                            AdTypeHandShake adTypeHandShake = new AdTypeHandShake();
                            adTypeHandShake.a(optJSONObject3);
                            adTypeHandShake.b(context2, l[i]);
                            this.D.put(l[i], adTypeHandShake);
                        }
                        i++;
                    }
                }
                synchronized (this) {
                    optJSONArray = jSONObject.optJSONArray("schemes");
                    if (optJSONArray != null) {
                        if (this.E != null && this.E.size() > 0) {
                            this.E.removeAll(this.E);
                        }
                        i = 0;
                        while (i < optJSONArray.length()) {
                            JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
                            if (optJSONObject4 != null) {
                                Scheme scheme = new Scheme();
                                scheme.a(optJSONObject4);
                                this.E.add(scheme);
                            }
                            i++;
                        }
                    }
                }
                this.h = jSONObject.optLong("adrefresh", 0);
                this.G = jSONObject.optLong("deferredviewtimeout", 3600) * 1000;
                this.b = jSONObject.optBoolean("kill");
                a(jSONObject.optString("baseURL"));
                this.H = jSONObject.optLong("handshakecallback", 86400) * 1000;
                this.d = jSONObject.optLong("creativeCacheTimeout", 259200) * 1000;
                this.e = jSONObject.optBoolean("hardwareAccelerationEnabled");
                this.f = jSONObject.optString("startSessionURL");
                this.g = jSONObject.optString("endSessionURL");
                this.j = (NuanceCredentials) new k().a(jSONObject.optString("nuanceCredentials"), NuanceCredentials.class);
                this.i = jSONObject.optString("mmjs");
                a(jSONObject, context2);
                if (TextUtils.isEmpty(this.i) || MRaid.d(context2, this.i)) {
                    MMLog.d(A, "Not downloading MMJS - (" + this.i + ")");
                } else {
                    MRaid.b((Context) this.y.get(), this.i);
                }
            } catch (Exception e) {
                MMLog.e(A, "Error deserializing handshake", e);
            }
        }
    }

    private void a(JSONObject jSONObject, Context context) {
        JSONArray optJSONArray = jSONObject.optJSONArray("cachedVideos");
        if (optJSONArray != null) {
            this.m = (DTOCachedVideo[]) new k().a(optJSONArray.toString(), DTOCachedVideo[].class);
            MMLog.b(A, this.m.toString());
        }
        this.C = jSONObject.optString("noVideosToCacheURL");
        if (this.m != null) {
            PreCacheWorker.a(this.m, context, this.C);
        }
    }

    private void a(boolean z) {
        Context context = (Context) this.x.get();
        if (context != null) {
            String string = context.getSharedPreferences("MillennialMediaSettings", 0).getString("handShakeUrl", null);
            if (string != null) {
                b(string);
            }
        }
        ThreadUtils.a(new AnonymousClass_1(z));
    }

    static synchronized boolean b(String str) {
        boolean z;
        synchronized (HandShake.class) {
            if (TextUtils.isEmpty(str)) {
                z = false;
            } else {
                if (str.startsWith(o)) {
                    str = str.replaceFirst(o, p);
                }
                u = str + s;
                z = true;
            }
        }
        return z;
    }

    private boolean d(Context context) {
        return context == null ? false : context.getSharedPreferences("MillennialMediaSettings", 0).getBoolean("firstlaunchHandshake", true);
    }

    private void e(Context context) {
        if (context != null) {
            Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            edit.putBoolean("firstlaunchHandshake", false);
            edit.commit();
        }
    }

    private boolean f(Context context) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        if (sharedPreferences != null) {
            boolean z2;
            String string;
            if (sharedPreferences.contains("handshake_deferredviewtimeout")) {
                this.G = sharedPreferences.getLong("handshake_deferredviewtimeout", this.G);
                z2 = true;
            } else {
                z2 = false;
            }
            if (sharedPreferences.contains("handshake_baseUrl")) {
                I = sharedPreferences.getString("handshake_baseUrl", I);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_callback")) {
                this.H = sharedPreferences.getLong("handshake_callback", this.H);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_hardwareAccelerationEnabled")) {
                this.e = sharedPreferences.getBoolean("handshake_hardwareAccelerationEnabled", false);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_startSessionURL")) {
                this.f = sharedPreferences.getString("handshake_startSessionURL", AdTrackerConstants.BLANK);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_endSessionURL")) {
                this.g = sharedPreferences.getString("handshake_endSessionURL", AdTrackerConstants.BLANK);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_nuanceCredentials")) {
                this.j = (NuanceCredentials) new k().a(sharedPreferences.getString("handshake_nuanceCredentials", AdTrackerConstants.BLANK), NuanceCredentials.class);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_mmdid")) {
                a(context, sharedPreferences.getString("handshake_mmdid", this.c), false);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_creativecachetimeout")) {
                this.d = sharedPreferences.getLong("handshake_creativecachetimeout", this.d);
                z2 = true;
            }
            if (sharedPreferences.contains("handshake_mmjs")) {
                this.i = sharedPreferences.getString("handshake_mmjs", this.i);
                z2 = true;
            }
            String[] l = MMAdImpl.l();
            boolean z3 = z2;
            int i = 0;
            while (i < l.length) {
                AdTypeHandShake adTypeHandShake = new AdTypeHandShake();
                if (adTypeHandShake.a(sharedPreferences, l[i])) {
                    this.D.put(l[i], adTypeHandShake);
                    z3 = true;
                }
                i++;
            }
            synchronized (this) {
                if (sharedPreferences.contains("handshake_schemes")) {
                    string = sharedPreferences.getString("handshake_schemes", AdTrackerConstants.BLANK);
                    if (string.length() > 0) {
                        String[] split = string.split(Constants.FORMATTER);
                        int length = split.length;
                        int i2;
                        while (i2 < length) {
                            l = split[i2].split("\t");
                            if (l.length >= 2) {
                                this.E.add(new Scheme(l[0], Integer.parseInt(l[1])));
                            }
                            i2++;
                        }
                        z = true;
                    }
                }
                z = z3;
            }
            if (sharedPreferences.contains(n)) {
                string = sharedPreferences.getString(n, AdTrackerConstants.BLANK);
                if (string.length() > 0) {
                    this.m = (DTOCachedVideo[]) new k().a(string, DTOCachedVideo[].class);
                }
            }
            if (sharedPreferences.contains("handshake_lasthandshake")) {
                this.B = sharedPreferences.getLong("handshake_lasthandshake", this.B);
                z = true;
            }
            if (z) {
                MMLog.b(A, "Handshake successfully loaded from shared preferences.");
                if (System.currentTimeMillis() - this.B < this.H) {
                    this.z.postDelayed(this.J, this.H - System.currentTimeMillis() - this.B);
                }
                this.C = sharedPreferences.getString("handshake_novideostocacheurl", AdTrackerConstants.BLANK);
                if (this.m != null) {
                    PreCacheWorker.a(this.m, context, this.C);
                }
            }
        }
        return z;
    }

    private JSONObject g(String str) {
        MMLog.b(A, String.format("JSON String: %s", new Object[]{str}));
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                MMLog.a(A, jSONObject.toString());
                if (jSONObject.has("mmishake")) {
                    return jSONObject.getJSONObject("mmishake");
                }
            } catch (JSONException e) {
                MMLog.e(A, "Error parsing json", e);
            }
        }
        return null;
    }

    private void g(Context context) {
        Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
        edit.putLong("handshake_deferredviewtimeout", this.G);
        edit.putBoolean("handshake_kill", this.b);
        edit.putString("handshake_baseUrl", I);
        edit.putLong("handshake_callback", this.H);
        edit.putBoolean("handshake_hardwareAccelerationEnabled", this.e);
        edit.putString("handshake_startSessionURL", this.f);
        if (this.j != null) {
            edit.putString("handshake_nuanceCredentials", new k().b(this.j));
        }
        edit.putString("handshake_endSessionURL", this.g);
        edit.putLong("handshake_creativecaetimeout", this.d);
        edit.putString("handshake_mmjs", this.i);
        Iterator it = this.D.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ((AdTypeHandShake) this.D.get(str)).a(edit, str);
        }
        synchronized (this) {
            StringBuilder stringBuilder = new StringBuilder();
            int i = 0;
            while (i < this.E.size()) {
                Scheme scheme = (Scheme) this.E.get(i);
                if (i > 0) {
                    stringBuilder.append(Constants.FORMATTER);
                }
                stringBuilder.append(scheme.a + "\t" + scheme.b);
                i++;
            }
            edit.putString("handshake_schemes", stringBuilder.toString());
        }
        if (this.m != null) {
            edit.putString(n, new k().b(this.m));
        }
        edit.putString("handshake_novideostocacheurl", this.C);
        edit.putLong("handshake_lasthandshake", this.B);
        edit.commit();
    }

    synchronized void a(Context context, String str, boolean z) {
        if (str != null) {
            if (str.length() == 0 || str.equals("NULL")) {
                this.c = null;
                MMSDK.a(this.c);
                if (z) {
                    Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
                    edit.putString("handshake_mmdid", this.c);
                    edit.commit();
                }
            }
        }
        this.c = str;
        MMSDK.a(this.c);
        if (z) {
            Editor edit2 = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            edit2.putString("handshake_mmdid", this.c);
            edit2.commit();
        }
    }

    synchronized boolean a(String str, long j) {
        AdTypeHandShake adTypeHandShake;
        adTypeHandShake = (AdTypeHandShake) this.D.get(str);
        return adTypeHandShake != null ? adTypeHandShake.a(j) : true;
    }

    synchronized String b(Context context) {
        if (this.F == null && this.E.size() > 0) {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = this.E.iterator();
            while (it.hasNext()) {
                Scheme scheme = (Scheme) it.next();
                if (scheme.a(context)) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append("," + scheme.b);
                    } else {
                        stringBuilder.append(Integer.toString(scheme.b));
                    }
                }
            }
            if (stringBuilder.length() > 0) {
                this.F = stringBuilder.toString();
            }
        }
        return this.F;
    }

    void b() {
        a(true);
    }

    synchronized boolean b(Context context, String str) {
        AdTypeHandShake adTypeHandShake;
        adTypeHandShake = (AdTypeHandShake) this.D.get(str);
        return adTypeHandShake != null ? adTypeHandShake.a(context) : true;
    }

    synchronized JSONArray c(Context context) {
        JSONArray jSONArray;
        jSONArray = new JSONArray();
        if (this.E.size() > 0) {
            Iterator it = this.E.iterator();
            while (it.hasNext()) {
                Scheme scheme = (Scheme) it.next();
                if (scheme.a(context)) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("scheme", scheme.a);
                        jSONObject.put("schemeid", scheme.b);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        MMLog.e(A, "Json error getting scheme", e);
                    }
                }
            }
        }
        return jSONArray;
    }

    void c() {
        if (!TextUtils.isEmpty(this.f)) {
            HttpUtils.a(this.f);
        }
    }

    synchronized void c(Context context, String str) {
        AdTypeHandShake adTypeHandShake = (AdTypeHandShake) this.D.get(str);
        if (adTypeHandShake != null) {
            adTypeHandShake.a(context, str);
        }
    }

    synchronized boolean c(String str) {
        AdTypeHandShake adTypeHandShake;
        adTypeHandShake = (AdTypeHandShake) this.D.get(str);
        return adTypeHandShake != null ? adTypeHandShake.c : false;
    }

    void d() {
        if (!TextUtils.isEmpty(this.g)) {
            HttpUtils.a(this.g);
        }
    }

    void d(Context context, String str) {
        a(context, str, true);
    }

    synchronized void d(String str) {
        AdTypeHandShake adTypeHandShake = (AdTypeHandShake) this.D.get(str);
        if (adTypeHandShake != null) {
            adTypeHandShake.c = true;
        }
    }

    synchronized void e(String str) {
        AdTypeHandShake adTypeHandShake = (AdTypeHandShake) this.D.get(str);
        if (adTypeHandShake != null) {
            adTypeHandShake.c = false;
        }
    }
}