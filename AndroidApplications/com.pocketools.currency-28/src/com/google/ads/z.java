package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.internal.AdVideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.pocketools.currency.R;
import java.util.HashMap;

public class z implements n {
    private static final a a;

    static {
        a = (a) a.a.b();
    }

    protected int a(HashMap<String, String> hashMap, String str, int i, DisplayMetrics displayMetrics) {
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

    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
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
                    if (equals && d.getAdVideoView() == null) {
                        d.newAdVideoView(a2, a3, a4, a5);
                    } else {
                        d.moveAdVideoView(a2, a3, a4, a5);
                    }
                } else {
                    AdVideoView adVideoView = d.getAdVideoView();
                    if (adVideoView == null) {
                        a.a(adWebView, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
                    } else if (str.equals("click")) {
                        a = AdUtil.a(d);
                        int a6 = a(hashMap, "x", 0, a);
                        a2 = a(hashMap, "y", 0, a);
                        long uptimeMillis = SystemClock.uptimeMillis();
                        adVideoView.a(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) a6, (float) a2, 0));
                    } else if (str.equals("controls")) {
                        str = (String) hashMap.get("enabled");
                        if (str == null) {
                            b.a("No \"enabled\" parameter in a controls video gmsg.");
                        } else if (str.equals("true")) {
                            adVideoView.setMediaControllerEnabled(true);
                        } else {
                            adVideoView.setMediaControllerEnabled(false);
                        }
                    } else if (str.equals("currentTime")) {
                        str = (String) hashMap.get("time");
                        if (str == null) {
                            b.a("No \"time\" parameter in a currentTime video gmsg.");
                        } else {
                            try {
                                adVideoView.a((int) (Float.parseFloat(str) * 1000.0f));
                            } catch (NumberFormatException e) {
                                b.a("Could not parse \"time\" parameter: " + str);
                            }
                        }
                    } else if (str.equals("hide")) {
                        adVideoView.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
                    } else if (str.equals("load")) {
                        adVideoView.b();
                    } else if (str.equals("pause")) {
                        adVideoView.c();
                    } else if (str.equals("play")) {
                        adVideoView.d();
                    } else if (str.equals("show")) {
                        adVideoView.setVisibility(0);
                    } else if (str.equals("src")) {
                        adVideoView.setSrc((String) hashMap.get("src"));
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