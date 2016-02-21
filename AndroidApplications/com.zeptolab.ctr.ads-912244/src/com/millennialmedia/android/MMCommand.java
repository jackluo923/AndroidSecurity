package com.millennialmedia.android;

import android.net.Uri;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class MMCommand implements Runnable {
    private static final String a = "MMBanner";
    private static final String b = "MMCachedVideo";
    private static final String c = "MMCalendar";
    private static final String d = "MMDevice";
    private static final String e = "MMInlineVideo";
    private static final String f = "MMInterstitial";
    private static final String g = "MMMedia";
    private static final String h = "MMNotification";
    private static final String i = "MMSpeechkit";
    private static final String j = "MMCommand";
    private WeakReference k;
    private String l;
    private String m;
    private String n;
    private Map o;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ MMWebView a;
        final /* synthetic */ MMJSResponse b;

        AnonymousClass_1(MMWebView mMWebView, MMJSResponse mMJSResponse) {
            this.a = mMWebView;
            this.b = mMJSResponse;
        }

        public void run() {
            if (MMCommand.this.m.equals("expandWithProperties")) {
                this.a.f = true;
            }
            this.a.loadUrl(String.format("javascript:%s(%s);", new Object[]{MMCommand.this.n, this.b.c()}));
        }
    }

    static {
        ComponentRegistry.a(new BridgeMMBanner());
        ComponentRegistry.a(new BridgeMMCachedVideo());
        ComponentRegistry.a(new BridgeMMCalendar());
        ComponentRegistry.a(new BridgeMMDevice());
        ComponentRegistry.a(new BridgeMMInlineVideo());
        ComponentRegistry.a(new BridgeMMInterstitial());
        ComponentRegistry.a(new BridgeMMMedia());
        ComponentRegistry.a(new BridgeMMNotification());
        ComponentRegistry.a(new BridgeMMSpeechkit());
    }

    MMCommand(MMWebView mMWebView, String str) {
        int i = 1;
        int i2 = 0;
        this.k = new WeakReference(mMWebView);
        try {
            String[] split = Uri.parse(str).getHost().split("\\.");
            if (split.length == 2) {
                this.l = split[0];
                this.m = split[1];
                this.o = new HashMap();
                String[] split2 = str.substring(str.indexOf(63) + 1).split("&");
                int length = split2.length;
                int i3 = i2;
                while (i3 < length) {
                    String[] split3 = split2[i3].split("=");
                    if (split3.length >= 2) {
                        this.o.put(Uri.decode(split3[0]), Uri.decode(split3[1]));
                        if (split3[0].equalsIgnoreCase("callback")) {
                            this.n = Uri.decode(split3[1]);
                        }
                    }
                    i3++;
                }
            }
        } catch (Exception e) {
            Throwable th = e;
            String str2 = j;
            String str3 = "Exception while executing javascript call %s ";
            Object[] objArr = new Object[i];
            objArr[i2] = str;
            MMLog.e(str2, String.format(str3, objArr), th);
            th.printStackTrace();
        }
    }

    private MMJSObject a(String str) {
        if (str == null) {
            return null;
        }
        if (a.equals(str)) {
            return ComponentRegistry.b();
        }
        if (b.equals(str)) {
            return ComponentRegistry.c();
        }
        if (c.equals(str)) {
            return ComponentRegistry.d();
        }
        if (d.equals(str)) {
            return ComponentRegistry.e();
        }
        if (e.equals(str)) {
            return ComponentRegistry.f();
        }
        if (f.equals(str)) {
            return ComponentRegistry.g();
        }
        if (g.equals(str)) {
            return ComponentRegistry.h();
        }
        if (h.equals(str)) {
            return ComponentRegistry.i();
        }
        return i.equals(str) ? ComponentRegistry.j() : null;
    }

    private String b() {
        return this.l.replaceFirst("Bridge", AdTrackerConstants.BLANK);
    }

    boolean a() {
        return this.m != null ? "resize".equals(this.m) : false;
    }

    public void run() {
        MMWebView mMWebView;
        MMJSResponse mMJSResponse = null;
        try {
            if (this.l == null || this.m == null) {
                mMJSResponse = MMJSResponse.b("The service or service method was not defined.");
            } else {
                MMJSResponse a;
                try {
                    mMWebView = (MMWebView) this.k.get();
                    if (mMWebView != null) {
                        MMJSObject a2 = a(this.l);
                        if (a2 != null) {
                            a2.c(mMWebView.getContext());
                            a2.a(mMWebView);
                            mMWebView.a(this.o);
                            a = a2.a(this.m, this.o);
                        } else {
                            a = MMJSResponse.b("Service: " + this.l + " does not exist.");
                        }
                    } else {
                        a = mMJSResponse;
                    }
                } catch (Exception e) {
                    Throwable th = e;
                    MMLog.e(j, "Exception while executing javascript call " + this.m, th);
                    a = MMJSResponse.b("Unexpected exception, " + th.getClass().getName() + " received.");
                }
                mMJSResponse = a;
            }
            if (!TextUtils.isEmpty(this.n)) {
                mMWebView = (MMWebView) this.k.get();
                if (mMWebView != null) {
                    if (mMJSResponse == null) {
                        mMJSResponse = MMJSResponse.b(this.m);
                    }
                    if (mMJSResponse.b == null) {
                        mMJSResponse.b = this.m;
                    }
                    if (mMJSResponse.a == null) {
                        mMJSResponse.a = b();
                    }
                    MMSDK.a(new AnonymousClass_1(mMWebView, mMJSResponse));
                }
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (!TextUtils.isEmpty(this.n)) {
                mMWebView = (MMWebView) this.k.get();
                if (mMWebView != null) {
                    if (mMJSResponse == null) {
                        mMJSResponse = MMJSResponse.b(this.m);
                    }
                    if (mMJSResponse.b == null) {
                        mMJSResponse.b = this.m;
                    }
                    if (mMJSResponse.a == null) {
                        mMJSResponse.a = b();
                    }
                    MMSDK.a(new AnonymousClass_1(mMWebView, mMJSResponse));
                }
            }
        }
    }
}