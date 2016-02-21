package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.b.c;
import com.google.ads.b.e;
import com.google.ads.b.h;
import com.google.ads.b.w;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.util.HashMap;

public final class m implements br {
    private static final h a;

    static {
        a = (h) h.a.a();
    }

    private static int a(HashMap hashMap, String str, int i, DisplayMetrics displayMetrics) {
        String str2 = (String) hashMap.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            return (int) TypedValue.applyDimension(1, (float) Integer.parseInt(str2), displayMetrics);
        } catch (NumberFormatException e) {
            g.a(new StringBuilder("Could not parse \"").append(str).append("\" in a video gmsg: ").append(str2).toString());
            return i;
        }
    }

    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("action");
        if (str == null) {
            g.a("No \"action\" parameter in a video gmsg.");
        } else if (webView instanceof e) {
            e eVar = (e) webView;
            Activity i = eVar.i();
            if (i == null) {
                g.a("Could not get adActivity for a video gmsg.");
            } else {
                boolean equals = str.equals("new");
                boolean equals2 = str.equals("position");
                DisplayMetrics a;
                int a2;
                if (equals || equals2) {
                    a = AdUtil.a(i);
                    a2 = a(hashMap, "x", 0, a);
                    int a3 = a(hashMap, "y", 0, a);
                    int a4 = a(hashMap, "w", -1, a);
                    int a5 = a(hashMap, "h", -1, a);
                    if (equals && i.a() == null) {
                        i.b(a2, a3, a4, a5);
                    } else {
                        i.a(a2, a3, a4, a5);
                    }
                } else {
                    c a6 = i.a();
                    if (a6 == null) {
                        h hVar = a;
                        h.a(eVar, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
                    } else if (str.equals("click")) {
                        a = AdUtil.a(i);
                        int a7 = a(hashMap, "x", 0, a);
                        a2 = a(hashMap, "y", 0, a);
                        long uptimeMillis = SystemClock.uptimeMillis();
                        a6.a(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) a7, (float) a2, 0));
                    } else if (str.equals("controls")) {
                        str = (String) hashMap.get("enabled");
                        if (str == null) {
                            g.a("No \"enabled\" parameter in a controls video gmsg.");
                        } else if (str.equals("true")) {
                            a6.a(true);
                        } else {
                            a6.a(false);
                        }
                    } else if (str.equals("currentTime")) {
                        str = (String) hashMap.get("time");
                        if (str == null) {
                            g.a("No \"time\" parameter in a currentTime video gmsg.");
                        } else {
                            try {
                                a6.a((int) (Float.parseFloat(str) * 1000.0f));
                            } catch (NumberFormatException e) {
                                g.a(new StringBuilder("Could not parse \"time\" parameter: ").append(str).toString());
                            }
                        }
                    } else if (str.equals("hide")) {
                        a6.setVisibility(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
                    } else if (str.equals("load")) {
                        a6.a();
                    } else if (str.equals("pause")) {
                        a6.b();
                    } else if (str.equals("play")) {
                        a6.c();
                    } else if (str.equals("show")) {
                        a6.setVisibility(0);
                    } else if (str.equals("src")) {
                        a6.a((String) hashMap.get("src"));
                    } else {
                        g.a(new StringBuilder("Unknown video action: ").append(str).toString());
                    }
                }
            }
        } else {
            g.a("Could not get adWebView for a video gmsg.");
        }
    }
}