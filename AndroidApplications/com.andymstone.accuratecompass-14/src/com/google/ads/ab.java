package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.andymstone.core.o;
import com.google.ads.internal.AdVideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import java.util.HashMap;

public class ab implements n {
    private static final a a;

    static {
        a = (a) a.a.b();
    }

    protected int a(HashMap hashMap, String str, int i, DisplayMetrics displayMetrics) {
        String str2 = (String) hashMap.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            return (int) TypedValue.applyDimension(1, (float) Integer.parseInt(str2), displayMetrics);
        } catch (NumberFormatException e) {
            b.a("Could not parse \"" + str + "\" in a video gmsg: " + str2);
            return i;
        }
    }

    public void a(d dVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("action");
        if (str == null) {
            b.a("No \"action\" parameter in a video gmsg.");
        } else if (webView instanceof AdWebView) {
            AdWebView adWebView = (AdWebView) webView;
            Activity d = adWebView.d();
            if (d == null) {
                b.a("Could not get adActivity for a video gmsg.");
            } else {
                boolean equals = str.equals("new");
                boolean equals2 = str.equals("position");
                DisplayMetrics a;
                int a2;
                if (equals || equals2) {
                    a = AdUtil.a(d);
                    a2 = a(hashMap, "x", 0, a);
                    int a3 = a(hashMap, "y", 0, a);
                    int a4 = a(hashMap, "w", -1, a);
                    int a5 = a(hashMap, "h", -1, a);
                    if (equals && d.a() == null) {
                        d.b(a2, a3, a4, a5);
                    } else {
                        d.a(a2, a3, a4, a5);
                    }
                } else {
                    AdVideoView a6 = d.a();
                    if (a6 == null) {
                        a.a(adWebView, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
                    } else if (str.equals("click")) {
                        a = AdUtil.a(d);
                        int a7 = a(hashMap, "x", 0, a);
                        a2 = a(hashMap, "y", 0, a);
                        long uptimeMillis = SystemClock.uptimeMillis();
                        a6.a(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) a7, (float) a2, 0));
                    } else if (str.equals("controls")) {
                        str = (String) hashMap.get("enabled");
                        if (str == null) {
                            b.a("No \"enabled\" parameter in a controls video gmsg.");
                        } else if (str.equals("true")) {
                            a6.setMediaControllerEnabled(true);
                        } else {
                            a6.setMediaControllerEnabled(false);
                        }
                    } else if (str.equals("currentTime")) {
                        str = (String) hashMap.get("time");
                        if (str == null) {
                            b.a("No \"time\" parameter in a currentTime video gmsg.");
                        } else {
                            try {
                                a6.a((int) (Float.parseFloat(str) * 1000.0f));
                            } catch (NumberFormatException e) {
                                b.a("Could not parse \"time\" parameter: " + str);
                            }
                        }
                    } else if (str.equals("hide")) {
                        a6.setVisibility(o.MyAlertDialog_MAD_buttonBarStyle);
                    } else if (str.equals("load")) {
                        a6.b();
                    } else if (str.equals("pause")) {
                        a6.c();
                    } else if (str.equals("play")) {
                        a6.d();
                    } else if (str.equals("show")) {
                        a6.setVisibility(0);
                    } else if (str.equals("src")) {
                        a6.setSrc((String) hashMap.get("src"));
                    } else {
                        b.a("Unknown video action: " + str);
                    }
                }
            }
        } else {
            b.a("Could not get adWebView for a video gmsg.");
        }
    }
}