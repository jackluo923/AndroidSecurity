package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.Signature;
import android.os.Looper;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.Display;
import android.view.WindowManager;
import com.chartboost.sdk.Chartboost;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

public final class CBUtility {
    private static Boolean a;
    private static final X500Principal b;

    static {
        a = null;
        b = new X500Principal("CN=Android Debug,O=Android,C=US");
    }

    private CBUtility() {
    }

    public static int a(int i, Context context) {
        return Math.round(((float) i) * b(context));
    }

    public static SharedPreferences a() {
        Chartboost sharedChartboost = Chartboost.sharedChartboost();
        if (sharedChartboost.getContext() != null) {
            return sharedChartboost.getContext().getSharedPreferences("cbPrefs", 0);
        }
        throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before modifying or accessing preferences.");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.util.Map r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.Libraries.CBUtility.a(java.util.Map):java.lang.String");
        /*
        if (r5 != 0) goto L_0x0005;
    L_0x0002:
        r0 = "";
    L_0x0004:
        return r0;
    L_0x0005:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r0 = r5.keySet();
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x0019;
    L_0x0014:
        r0 = "?";
        r1.append(r0);
    L_0x0019:
        r0 = r5.keySet();
        r2 = r0.iterator();
    L_0x0021:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x006c;
    L_0x0027:
        r0 = r2.next();
        r0 = (java.lang.String) r0;
        r3 = r1.length();
        r4 = 1;
        if (r3 <= r4) goto L_0x0039;
    L_0x0034:
        r3 = "&";
        r1.append(r3);
    L_0x0039:
        r3 = r5.get(r0);
        r3 = r3.toString();
        if (r0 == 0) goto L_0x0066;
    L_0x0043:
        r4 = "UTF-8";
        r0 = java.net.URLEncoder.encode(r0, r4);	 Catch:{ UnsupportedEncodingException -> 0x005d }
    L_0x0049:
        r1.append(r0);	 Catch:{ UnsupportedEncodingException -> 0x005d }
        r0 = "=";
        r1.append(r0);	 Catch:{ UnsupportedEncodingException -> 0x005d }
        if (r3 == 0) goto L_0x0069;
    L_0x0053:
        r0 = "UTF-8";
        r0 = java.net.URLEncoder.encode(r3, r0);	 Catch:{ UnsupportedEncodingException -> 0x005d }
    L_0x0059:
        r1.append(r0);	 Catch:{ UnsupportedEncodingException -> 0x005d }
        goto L_0x0021;
    L_0x005d:
        r0 = move-exception;
        r1 = new java.lang.RuntimeException;
        r2 = "This method requires UTF-8 encoding support";
        r1.<init>(r2, r0);
        throw r1;
    L_0x0066:
        r0 = "";
        goto L_0x0049;
    L_0x0069:
        r0 = "";
        goto L_0x0059;
    L_0x006c:
        r0 = r1.toString();
        goto L_0x0004;
        */
    }

    public static void a(HttpEntity httpEntity) {
        try {
            httpEntity.consumeContent();
        } catch (Exception e) {
            CBLogging.a("CBUtility", "Exception raised calling entity.consumeContent()", e);
        }
    }

    public static void a(HttpResponse httpResponse) {
        if (httpResponse != null) {
            try {
                if (httpResponse.getEntity() != null) {
                    a(httpResponse.getEntity());
                }
            } catch (Exception e) {
                CBLogging.a("CBUtility", "Exception raised calling consumeQuietly over http response", e);
            }
        }
    }

    public static boolean a(Context context) {
        int i;
        if (a == null) {
            int equals;
            try {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS).signatures;
                int i2 = 0;
                boolean z = false;
                while (i2 < signatureArr.length) {
                    try {
                        equals = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[i2].toByteArray()))).getSubjectX500Principal().equals(b);
                        if (equals != 0) {
                            break;
                        }
                        i2++;
                        i = equals;
                    } catch (Exception e) {
                        equals = i;
                    }
                }
                equals = i;
            } catch (Exception e2) {
                equals = 0;
            }
            a = Boolean.valueOf(equals | ((context.getApplicationInfo().flags & 2) != 0 ? 1 : 0));
        }
        return a.booleanValue();
    }

    public static float b(int i, Context context) {
        return ((float) i) * b(context);
    }

    public static float b(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static CBOrientation c(Context context) {
        boolean z;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int i = context.getResources().getConfiguration().orientation;
        int rotation = defaultDisplay.getRotation();
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            z = true;
        } else if (defaultDisplay.getWidth() < defaultDisplay.getHeight()) {
            z = true;
        } else {
            z = true;
        }
        if (z) {
            z = true;
        } else if (z) {
            z = false;
        } else {
            if (z && i == 1) {
                z = true;
            } else if (i == 2) {
                z = false;
            }
            z = true;
        }
        if (!(rotation == 0 || rotation == 2)) {
            int i2 = i == 0;
        }
        if (i2 != 0) {
            switch (rotation) {
                case GoogleScorer.CLIENT_GAMES:
                    return CBOrientation.LANDSCAPE_LEFT;
                case GoogleScorer.CLIENT_PLUS:
                    return CBOrientation.PORTRAIT_REVERSE;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return CBOrientation.LANDSCAPE_RIGHT;
                default:
                    return CBOrientation.PORTRAIT;
            }
        } else {
            switch (rotation) {
                case GoogleScorer.CLIENT_GAMES:
                    return CBOrientation.PORTRAIT_LEFT;
                case GoogleScorer.CLIENT_PLUS:
                    return CBOrientation.LANDSCAPE_REVERSE;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return CBOrientation.PORTRAIT_RIGHT;
                default:
                    return CBOrientation.LANDSCAPE;
            }
        }
    }

    public static void throwProguardError(Exception exception) {
        if (exception instanceof NoSuchMethodException) {
            throw new IllegalStateException("Chartboost library error! Have you used proguard on your application? Make sure to add the line '-keep class com.chartboost.sdk.** { *; }' to your proguard config file.");
        }
        throw new RuntimeException(exception);
    }
}