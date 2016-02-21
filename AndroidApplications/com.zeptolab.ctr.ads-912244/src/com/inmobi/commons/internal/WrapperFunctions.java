package com.inmobi.commons.internal;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.WebView;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

public class WrapperFunctions {
    private static int a;

    private static void a(WebView webView, int i) {
        try {
            webView.getClass().getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(webView, new Object[]{Integer.valueOf(i), null});
        } catch (NoSuchMethodException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e);
        } catch (IllegalArgumentException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e2);
        } catch (IllegalAccessException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e3);
        } catch (InvocationTargetException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e4);
        }
    }

    public static void disableHardwareAccl(WebView webView) {
        a(webView, 1);
    }

    public static int getCurrentOrientationInFixedValues(Context context) {
        int rotation;
        switch (context.getResources().getConfiguration().orientation) {
            case GoogleScorer.CLIENT_GAMES:
                if (VERSION.SDK_INT < 8) {
                    return 1;
                }
                rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
                return (rotation == 1 || rotation == 2) ? ZBuildConfig.$minsdk : 1;
            case GoogleScorer.CLIENT_PLUS:
                if (VERSION.SDK_INT < 8) {
                    return 0;
                }
                rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
                return (rotation == 0 || rotation == 1) ? 0 : 8;
            default:
                return 1;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int getDisplayHeight(android.view.Display r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.internal.WrapperFunctions.getDisplayHeight(android.view.Display):int");
        /*
        r2 = 0;
        r3 = 1;
        r1 = 0;
        r0 = new java.lang.Class[r3];
        r4 = android.graphics.Point.class;
        r0[r1] = r4;
        r4 = android.view.Display.class;
        r5 = "getSize";
        r0 = r4.getMethod(r5, r0);	 Catch:{ NoSuchMethodException -> 0x0026 }
        r2 = r0;
        r0 = r3;
    L_0x0013:
        if (r0 == 0) goto L_0x003f;
    L_0x0015:
        r0 = new android.graphics.Point;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0.<init>();	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r4 = 0;
        r3[r4] = r0;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r2.invoke(r6, r3);	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = r0.y;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
    L_0x0025:
        return r0;
    L_0x0026:
        r0 = move-exception;
        r3 = android.view.Display.class;
        r4 = "getHeight";
        r0 = 0;
        r0 = (java.lang.Class[]) r0;	 Catch:{ NoSuchMethodException -> 0x0035 }
        r0 = r3.getMethod(r4, r0);	 Catch:{ NoSuchMethodException -> 0x0035 }
        r2 = r0;
        r0 = r1;
        goto L_0x0013;
    L_0x0035:
        r0 = move-exception;
        r3 = "[InMobi]-4.4.1";
        r4 = "Cannot get display height";
        com.inmobi.commons.internal.Log.internal(r3, r4, r0);
        r0 = r1;
        goto L_0x0013;
    L_0x003f:
        r0 = 0;
        r0 = (java.lang.Object[]) r0;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = r2.invoke(r6, r0);	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = (java.lang.Integer) r0;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = r0.intValue();	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        goto L_0x0025;
    L_0x004d:
        r0 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Cannot get display height";
        com.inmobi.commons.internal.Log.internal(r2, r3, r0);
        r0 = r1;
        goto L_0x0025;
    L_0x0057:
        r0 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Cannot get display height";
        com.inmobi.commons.internal.Log.internal(r2, r3, r0);
        r0 = r1;
        goto L_0x0025;
    L_0x0061:
        r0 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Cannot get display height";
        com.inmobi.commons.internal.Log.internal(r2, r3, r0);
        r0 = r1;
        goto L_0x0025;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int getDisplayWidth(android.view.Display r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.internal.WrapperFunctions.getDisplayWidth(android.view.Display):int");
        /*
        r2 = 0;
        r3 = 1;
        r1 = 0;
        r0 = new java.lang.Class[r3];
        r4 = android.graphics.Point.class;
        r0[r1] = r4;
        r4 = android.view.Display.class;
        r5 = "getSize";
        r0 = r4.getMethod(r5, r0);	 Catch:{ NoSuchMethodException -> 0x0026 }
        r2 = r0;
        r0 = r3;
    L_0x0013:
        if (r0 == 0) goto L_0x003f;
    L_0x0015:
        r0 = new android.graphics.Point;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0.<init>();	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r4 = 0;
        r3[r4] = r0;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r2.invoke(r6, r3);	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = r0.x;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
    L_0x0025:
        return r0;
    L_0x0026:
        r0 = move-exception;
        r3 = android.view.Display.class;
        r4 = "getWidth";
        r0 = 0;
        r0 = (java.lang.Class[]) r0;	 Catch:{ NoSuchMethodException -> 0x0035 }
        r0 = r3.getMethod(r4, r0);	 Catch:{ NoSuchMethodException -> 0x0035 }
        r2 = r0;
        r0 = r1;
        goto L_0x0013;
    L_0x0035:
        r0 = move-exception;
        r3 = "[InMobi]-4.4.1";
        r4 = "Cannot get display width";
        com.inmobi.commons.internal.Log.internal(r3, r4, r0);
        r0 = r1;
        goto L_0x0013;
    L_0x003f:
        r0 = 0;
        r0 = (java.lang.Object[]) r0;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = r2.invoke(r6, r0);	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = (java.lang.Integer) r0;	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        r0 = r0.intValue();	 Catch:{ IllegalArgumentException -> 0x004d, IllegalAccessException -> 0x0057, InvocationTargetException -> 0x0061 }
        goto L_0x0025;
    L_0x004d:
        r0 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Cannot get display width";
        com.inmobi.commons.internal.Log.internal(r2, r3, r0);
        r0 = r1;
        goto L_0x0025;
    L_0x0057:
        r0 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Cannot get display width";
        com.inmobi.commons.internal.Log.internal(r2, r3, r0);
        r0 = r1;
        goto L_0x0025;
    L_0x0061:
        r0 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Cannot get display width";
        com.inmobi.commons.internal.Log.internal(r2, r3, r0);
        r0 = r1;
        goto L_0x0025;
        */
    }

    public static int getParamConfigScreenSize() {
        int i = 0;
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("CONFIG_SCREEN_SIZE");
            return field != null ? field.getInt(activityInfo) : i;
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get screen size", e);
            return i;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get screen size", e2);
            return i;
        }
    }

    public static int getParamConfigSmallestScreenSize() {
        int i = 0;
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("CONFIG_SMALLEST_SCREEN_SIZE");
            return field != null ? field.getInt(activityInfo) : i;
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get smallest screen size", e);
            return i;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get smallest screen size", e2);
            return i;
        }
    }

    public static int getParamFillParent() {
        if (a == 0) {
            synchronized (WrapperFunctions.class) {
                if (a == 0) {
                    Field field;
                    LayoutParams layoutParams = new LayoutParams(1, 1);
                    Class cls = LayoutParams.class;
                    Field field2 = null;
                    try {
                        field = cls.getField("MATCH_PARENT");
                    } catch (NoSuchFieldException e) {
                        try {
                            field = cls.getField("FILL_PARENT");
                        } catch (NoSuchFieldException e2) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get fill parent param", e2);
                            field = field2;
                        }
                    }
                    if (field != null) {
                        try {
                            a = field.getInt(layoutParams);
                        } catch (Exception e3) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get fill parent param", e3);
                        }
                    }
                }
            }
        }
        return a;
    }

    public static int getParamLandscapeOrientation(int i) {
        if (i != 3) {
            return 0;
        }
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_LANDSCAPE");
            return field != null ? field.getInt(activityInfo) : 0;
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get landscape orientation", e);
            return 0;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get landscape orientation", e2);
            return 0;
        }
    }

    public static int getParamPortraitOrientation(int i) {
        if (i != 2) {
            return 1;
        }
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_PORTRAIT");
            return field != null ? field.getInt(activityInfo) : 1;
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get portrait orientation", e);
            return 1;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get portrait orientation", e2);
            return 1;
        }
    }

    public static String getSSLErrorUrl(SslError sslError) {
        try {
            return Class.forName("android.net.http.SslError").getDeclaredMethod("getUrl", new Class[0]).invoke(sslError, new Object[0]).toString();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get SSL Url", e);
            return null;
        }
    }

    public static Bitmap getVideoBitmap(String str) {
        try {
            return (Bitmap) Class.forName("android.media.ThumbnailUtils").getDeclaredMethod("createVideoThumbnail", new Class[]{String.class, Integer.TYPE}).invoke(null, new Object[]{str, Integer.valueOf(1)});
        } catch (Exception e) {
            Throwable th = e;
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get video bitmap", th);
            throw th;
        }
    }
}