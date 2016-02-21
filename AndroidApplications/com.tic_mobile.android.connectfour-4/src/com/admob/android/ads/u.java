package com.admob.android.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.Log;
import com.tic_mobile.android.connectfour.R;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

// compiled from: AdRequester.java
final class u {
    private static String a;
    private static int b;
    private static long c;
    private static String d;

    static {
        a = "http://r.admob.com/ad_source.php";
        d = null;
    }

    u() {
    }

    static com.admob.android.ads.d a(com.admob.android.ads.d.a r14, android.content.Context r15, java.lang.String r16, java.lang.String r17, int r18, int r19, int r20, com.admob.android.ads.g r21, int r22) {
        throw new UnsupportedOperationException("Method not decompiled: com.admob.android.ads.u.a(com.admob.android.ads.d$a, android.content.Context, java.lang.String, java.lang.String, int, int, int, com.admob.android.ads.g, int):com.admob.android.ads.d");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Wrong literal type: java.lang.String for value: 3
	at jadx.core.dex.instructions.args.LiteralArg.<init>(LiteralArg.java:16)
	at jadx.core.dex.instructions.args.InsnArg.lit(InsnArg.java:34)
	at jadx.core.dex.visitors.ConstInlinerVisitor.replaceConst(ConstInlinerVisitor.java:87)
	at jadx.core.dex.visitors.ConstInlinerVisitor.checkInsn(ConstInlinerVisitor.java:70)
	at jadx.core.dex.visitors.ConstInlinerVisitor.visit(ConstInlinerVisitor.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r4 = "android.permission.INTERNET";
        r4 = r15.checkCallingOrSelfPermission(r4);
        r5 = -1;
        if (r4 != r5) goto L_0x000e;
    L_0x0009:
        r4 = "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />";
        com.admob.android.ads.AdManager.clientError(r4);
    L_0x000e:
        com.admob.android.ads.o.a(r15);
        r11 = 0;
        r12 = android.os.SystemClock.uptimeMillis();
        r0 = r15;
        r1 = r16;
        r2 = r17;
        r3 = r22;
        r10 = a(r0, r1, r2, r3);
        r4 = a;
        r5 = 0;
        r6 = com.admob.android.ads.AdManager.getUserId(r15);
        r7 = 0;
        r8 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        r9 = 0;
        r15 = com.admob.android.ads.e.a(r4, r5, r6, r7, r8, r9, r10);
        r16 = "AdMobSDK";
        r17 = 3;
        r16 = android.util.Log.isLoggable(r16, r17);
        if (r16 == 0) goto L_0x0059;
    L_0x003a:
        r16 = "AdMobSDK";
        r17 = new java.lang.StringBuilder;
        r17.<init>();
        r22 = "Requesting an ad with POST params:  ";
        r0 = r17;
        r1 = r22;
        r17 = r0.append(r1);
        r0 = r17;
        r1 = r10;
        r17 = r0.append(r1);
        r17 = r17.toString();
        android.util.Log.d(r16, r17);
    L_0x0059:
        r16 = 0;
        r17 = r15.a();
        if (r17 == 0) goto L_0x0103;
    L_0x0061:
        r15 = r15.d();
        r16 = new java.lang.String;
        r0 = r16;
        r1 = r15;
        r0.<init>(r1);
        r15 = r16;
    L_0x006f:
        if (r17 == 0) goto L_0x0101;
    L_0x0071:
        r16 = "AdMobSDK";
        r17 = 3;
        r16 = android.util.Log.isLoggable(r16, r17);
        if (r16 == 0) goto L_0x0082;
    L_0x007b:
        r16 = "AdMobSDK";
        r17 = "Ad response: ";
        android.util.Log.d(r16, r17);
    L_0x0082:
        r16 = "";
        r16 = r15.equals(r16);
        if (r16 != 0) goto L_0x0101;
    L_0x008a:
        r16 = new org.json.JSONTokener;
        r0 = r16;
        r1 = r15;
        r0.<init>(r1);
        r5 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00f5 }
        r0 = r5;
        r1 = r16;
        r0.<init>(r1);	 Catch:{ JSONException -> 0x00f5 }
        r15 = "AdMobSDK";
        r16 = 3;
        r15 = android.util.Log.isLoggable(r15, r16);	 Catch:{ JSONException -> 0x00f5 }
        if (r15 == 0) goto L_0x00b2;
    L_0x00a4:
        r15 = "AdMobSDK";
        r16 = 4;
        r0 = r5;
        r1 = r16;
        r16 = r0.toString(r1);	 Catch:{ JSONException -> 0x00f5 }
        android.util.Log.d(r15, r16);	 Catch:{ JSONException -> 0x00f5 }
    L_0x00b2:
        r4 = r14;
        r6 = r18;
        r7 = r19;
        r8 = r20;
        r9 = r21;
        r14 = com.admob.android.ads.d.a(r4, r5, r6, r7, r8, r9);	 Catch:{ JSONException -> 0x00f5 }
    L_0x00bf:
        r15 = "AdMobSDK";
        r16 = 4;
        r15 = android.util.Log.isLoggable(r15, r16);
        if (r15 == 0) goto L_0x00f4;
    L_0x00c9:
        r15 = android.os.SystemClock.uptimeMillis();
        r15 = r15 - r12;
        if (r14 != 0) goto L_0x00f4;
    L_0x00d0:
        r17 = "AdMobSDK";
        r18 = new java.lang.StringBuilder;
        r18.<init>();
        r19 = "No fill.  Server replied that no ads are available (";
        r18 = r18.append(r19);
        r0 = r18;
        r1 = r15;
        r15 = r0.append(r1);
        r16 = "ms)";
        r15 = r15.append(r16);
        r15 = r15.toString();
        r0 = r17;
        r1 = r15;
        android.util.Log.i(r0, r1);
    L_0x00f4:
        return r14;
    L_0x00f5:
        r14 = move-exception;
        r15 = "AdMobSDK";
        r16 = "Problem decoding ad response.  Cannot display ad.";
        r0 = r15;
        r1 = r16;
        r2 = r14;
        android.util.Log.w(r0, r1, r2);
    L_0x0101:
        r14 = r11;
        goto L_0x00bf;
    L_0x0103:
        r15 = r16;
        goto L_0x006f;
        */
    }

    static String a() {
        return a;
    }

    static String a(Context context, String str, String str2, int i) {
        String str3 = ",";
        String str4 = "android.intent.action.VIEW";
        String str5 = AdManager.LOG;
        String str6 = AdManager.LOG;
        if (Log.isLoggable(str5, R.styleable.com_admob_android_ads_AdView_keywords)) {
            str6 = AdManager.LOG;
            Log.d(str5, "Ad request:");
        }
        StringBuilder stringBuilder = new StringBuilder();
        long currentTimeMillis = System.currentTimeMillis();
        stringBuilder.append("z").append("=").append(currentTimeMillis / 1000).append(".").append(currentTimeMillis % 1000);
        a(stringBuilder, "rt", "0");
        String publisherId = AdManager.getPublisherId(context);
        if (publisherId == null) {
            throw new IllegalStateException("Publisher ID is not set!  To serve ads you must set your publisher ID assigned from www.admob.com.  Either add it to AndroidManifest.xml under the <application> tag or call AdManager.setPublisherId().");
        }
        a(stringBuilder, "s", publisherId);
        a(stringBuilder, "l", o.a());
        a(stringBuilder, "f", "jsonp");
        a(stringBuilder, "client_sdk", "1");
        a(stringBuilder, "ex", "1");
        a(stringBuilder, "v", AdManager.SDK_VERSION);
        a(stringBuilder, "isu", AdManager.getUserId(context));
        a(stringBuilder, "so", AdManager.getOrientation(context));
        if (i > 0) {
            a(stringBuilder, "screen_width", String.valueOf(i));
        }
        a(stringBuilder, "d[coord]", AdManager.a(context));
        a(stringBuilder, "d[coord_timestamp]", AdManager.a());
        a(stringBuilder, "d[pc]", AdManager.getPostalCode());
        a(stringBuilder, "d[dob]", AdManager.b());
        a(stringBuilder, "d[gender]", AdManager.c());
        a(stringBuilder, "k", str);
        a(stringBuilder, "search", str2);
        a(stringBuilder, "density", String.valueOf(g.c()));
        if (AdManager.isTestDevice(context)) {
            publisherId = AdManager.LOG;
            if (Log.isLoggable(str5, R.styleable.com_admob_android_ads_AdView_refreshInterval)) {
                publisherId = AdManager.LOG;
                Log.i(str5, "Making ad request in test mode");
            }
            a(stringBuilder, "m", "test");
            a(stringBuilder, "test_action", AdManager.getTestAction());
        }
        if (d == null) {
            StringBuilder stringBuilder2 = new StringBuilder();
            PackageManager packageManager = context.getPackageManager();
            String str7 = "android.intent.action.VIEW";
            List queryIntentActivities = packageManager.queryIntentActivities(new Intent(str4, Uri.parse("geo:0,0?q=donuts")), 65536);
            if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
                stringBuilder2.append("m");
            }
            str7 = "android.intent.action.VIEW";
            queryIntentActivities = packageManager.queryIntentActivities(new Intent(str4, Uri.parse("market://search?q=pname:com.admob")), 65536);
            if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
                if (stringBuilder2.length() > 0) {
                    String str8 = ",";
                    stringBuilder2.append(str3);
                }
                stringBuilder2.append("a");
            }
            str7 = "android.intent.action.VIEW";
            List queryIntentActivities2 = packageManager.queryIntentActivities(new Intent(str4, Uri.parse("tel://6509313940")), 65536);
            if (queryIntentActivities2 == null || queryIntentActivities2.size() == 0) {
                if (stringBuilder2.length() > 0) {
                    String str9 = ",";
                    stringBuilder2.append(str3);
                }
                stringBuilder2.append("t");
            }
            d = stringBuilder2.toString();
        }
        publisherId = d;
        if (publisherId != null && publisherId.length() > 0) {
            a(stringBuilder, "ic", publisherId);
        }
        int i2 = b + 1;
        b = i2;
        if (i2 == 1) {
            c = System.currentTimeMillis();
            a(stringBuilder, "pub_data[identifier]", AdManager.getApplicationPackageName(context));
            a(stringBuilder, "pub_data[version]", String.valueOf(AdManager.getApplicationVersion(context)));
        } else {
            a(stringBuilder, "stats[reqs]", String.valueOf(b));
            a(stringBuilder, "stats[time]", String.valueOf((System.currentTimeMillis() - c) / 1000));
        }
        return stringBuilder.toString();
    }

    static void a(String str) {
        String str2;
        String str3 = "http://r.admob.com/ad_source.php";
        if (str == null) {
            str2 = "http://r.admob.com/ad_source.php";
            str2 = str3;
        } else {
            str2 = str;
        }
        String str4 = "http://r.admob.com/ad_source.php";
        if (!str3.equals(str2)) {
            Log.w(AdManager.LOG, "NOT USING PRODUCTION AD SERVER!  Using " + str2);
        }
        a = str2;
    }

    private static void a(StringBuilder stringBuilder, String str, String str2) {
        String str3 = "UTF-8";
        String str4 = AdManager.LOG;
        if (str2 != null && str2.length() > 0) {
            try {
                stringBuilder.append("&").append(URLEncoder.encode(str, "UTF-8")).append("=").append(URLEncoder.encode(str2, "UTF-8"));
                if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                    Log.d(AdManager.LOG, "    " + str + ": " + str2);
                }
            } catch (UnsupportedEncodingException e) {
                Throwable th = e;
                String str5 = AdManager.LOG;
                Log.e(str4, "UTF-8 encoding is not supported on this device.  Ad requests are impossible.", th);
            }
        }
    }
}