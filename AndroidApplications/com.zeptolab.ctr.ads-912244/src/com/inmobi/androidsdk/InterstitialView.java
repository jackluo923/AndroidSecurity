package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.location.LocationRequest;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.androidsdk.impl.ConnBroadcastReciever;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.ref.WeakReference;

public class InterstitialView {
    private static ConnBroadcastReciever o;
    long a;
    boolean b;
    private State c;
    private AdRequest d;
    private Activity e;
    private String f;
    private long g;
    private InterstitialViewListener h;
    private String i;
    private long j;
    private long k;
    private UserInfo l;
    private IMWebView m;
    private String n;
    private String p;
    private long q;
    private RequestResponseManager r;
    private Mode s;
    private boolean t;
    private HttpRequestCallback u;
    private c v;
    private IMWebViewListener w;

    public enum State {
        INIT,
        READY,
        LOADING,
        ACTIVE;

        static {
            INIT = new com.inmobi.androidsdk.InterstitialView.State("INIT", 0);
            READY = new com.inmobi.androidsdk.InterstitialView.State("READY", 1);
            LOADING = new com.inmobi.androidsdk.InterstitialView.State("LOADING", 2);
            ACTIVE = new com.inmobi.androidsdk.InterstitialView.State("ACTIVE", 3);
            a = new com.inmobi.androidsdk.InterstitialView.State[]{INIT, READY, LOADING, ACTIVE};
        }
    }

    class a implements Runnable {
        final /* synthetic */ int a;
        final /* synthetic */ ErrorCode b;

        a(int i, ErrorCode errorCode) {
            this.a = i;
            this.b = errorCode;
        }

        public void run() {
            switch (this.a) {
                case MMException.UNKNOWN_ERROR:
                    InterstitialView.this.h.onAdRequestLoaded(InterstitialView.this);
                case IMBrowserActivity.INTERSTITIAL_ACTIVITY:
                    switch (b.a[this.b.ordinal()]) {
                        case GoogleScorer.CLIENT_GAMES:
                            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_CLICK);
                            break;
                        case GoogleScorer.CLIENT_PLUS:
                            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_AD_DOWNLOAD);
                            break;
                        default:
                            Log.debug(ConfigConstants.LOGGING_TAG, this.b.toString());
                            break;
                    }
                    InterstitialView.this.h.onAdRequestFailed(InterstitialView.this, this.b);
                case IMBrowserActivity.EXPAND_ACTIVITY:
                    InterstitialView.this.h.onShowAdScreen(InterstitialView.this);
                case 103:
                    InterstitialView.this.h.onDismissAdScreen(InterstitialView.this);
                case LocationRequest.PRIORITY_LOW_POWER:
                    InterstitialView.this.h.onLeaveApplication(InterstitialView.this);
                default:
                    Log.debug(ConfigConstants.LOGGING_TAG, this.b.toString());
            }
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ErrorCode.values().length];
            try {
                a[ErrorCode.AD_CLICK_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[ErrorCode.AD_DOWNLOAD_IN_PROGRESS.ordinal()] = 2;
        }
    }

    static class c extends Handler {
        private final WeakReference a;

        public c(InterstitialView interstitialView) {
            this.a = new WeakReference(interstitialView);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void handleMessage(android.os.Message r9) {
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.androidsdk.InterstitialView.c.handleMessage(android.os.Message):void");
            /*
            r8 = this;
            r0 = r8.a;
            r0 = r0.get();
            r0 = (com.inmobi.androidsdk.InterstitialView) r0;
            if (r0 == 0) goto L_0x000f;
        L_0x000a:
            r1 = r9.what;	 Catch:{ Exception -> 0x00bf }
            switch(r1) {
                case 303: goto L_0x0202;
                case 304: goto L_0x0262;
                case 305: goto L_0x0273;
                case 306: goto L_0x0198;
                case 307: goto L_0x0119;
                case 308: goto L_0x0010;
                case 309: goto L_0x00e8;
                case 310: goto L_0x00fd;
                default: goto L_0x000f;
            };	 Catch:{ Exception -> 0x00bf }
        L_0x000f:
            return;
        L_0x0010:
            r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r3 = r0.k;	 Catch:{ Exception -> 0x00bf }
            r1 = r1 - r3;
            r3 = r0.t;	 Catch:{ Exception -> 0x00bf }
            if (r3 == 0) goto L_0x0040;
        L_0x001f:
            r3 = new org.json.JSONObject;	 Catch:{ Exception -> 0x00bf }
            r3.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "ad";
            r5 = r0.n;	 Catch:{ JSONException -> 0x00c9 }
            r3.put(r4, r5);	 Catch:{ JSONException -> 0x00c9 }
            r4 = "t";
            r3.put(r4, r1);	 Catch:{ JSONException -> 0x00c9 }
        L_0x0032:
            r4 = com.inmobi.androidsdk.bootstrapper.Initializer.getLogger();	 Catch:{ Exception -> 0x00bf }
            r5 = new com.inmobi.commons.metric.EventLog;	 Catch:{ Exception -> 0x00bf }
            r6 = com.inmobi.androidsdk.bootstrapper.NetworkEventType.FETCH_COMPLETE;	 Catch:{ Exception -> 0x00bf }
            r5.<init>(r6, r3);	 Catch:{ Exception -> 0x00bf }
            r4.logEvent(r5);	 Catch:{ Exception -> 0x00bf }
        L_0x0040:
            r3 = 306; // 0x132 float:4.29E-43 double:1.51E-321;
            r8.removeMessages(r3);	 Catch:{ Exception -> 0x00bf }
            r3 = r0.m;	 Catch:{ Exception -> 0x00a9 }
            if (r3 != 0) goto L_0x007a;
        L_0x004b:
            r3 = new com.inmobi.re.container.IMWebView;	 Catch:{ Exception -> 0x00a9 }
            r4 = r0.e;	 Catch:{ Exception -> 0x00a9 }
            r5 = r0.w;	 Catch:{ Exception -> 0x00a9 }
            r6 = 1;
            r7 = 0;
            r3.<init>(r4, r5, r6, r7);	 Catch:{ Exception -> 0x00a9 }
            r0.m = r3;	 Catch:{ Exception -> 0x00a9 }
            r3 = r0.b;	 Catch:{ Exception -> 0x00a9 }
            if (r3 != 0) goto L_0x0068;
        L_0x0061:
            r3 = r0.m;	 Catch:{ Exception -> 0x00a9 }
            r3.disableHardwareAcceleration();	 Catch:{ Exception -> 0x00a9 }
        L_0x0068:
            r3 = r0.m;	 Catch:{ Exception -> 0x00a9 }
            r4 = new com.inmobi.androidsdk.impl.imai.IMAIController;	 Catch:{ Exception -> 0x00a9 }
            r5 = r0.m;	 Catch:{ Exception -> 0x00a9 }
            r4.<init>(r5);	 Catch:{ Exception -> 0x00a9 }
            r5 = "imaiController";
            r3.addJavascriptInterface(r4, r5);	 Catch:{ Exception -> 0x00a9 }
        L_0x007a:
            r3 = r0.i;	 Catch:{ Exception -> 0x00a9 }
            if (r3 == 0) goto L_0x00a0;
        L_0x0080:
            r3 = r0.i;	 Catch:{ Exception -> 0x00a9 }
            r4 = "@__imm_aft@";
            r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00a9 }
            r5.<init>();	 Catch:{ Exception -> 0x00a9 }
            r6 = "";
            r5 = r5.append(r6);	 Catch:{ Exception -> 0x00a9 }
            r1 = r5.append(r1);	 Catch:{ Exception -> 0x00a9 }
            r1 = r1.toString();	 Catch:{ Exception -> 0x00a9 }
            r1 = r3.replace(r4, r1);	 Catch:{ Exception -> 0x00a9 }
            r0.i = r1;	 Catch:{ Exception -> 0x00a9 }
        L_0x00a0:
            r1 = r0.i;	 Catch:{ Exception -> 0x00a9 }
            r0.a(r1);	 Catch:{ Exception -> 0x00a9 }
            goto L_0x000f;
        L_0x00a9:
            r1 = move-exception;
            r2 = "[InMobi]-[Network]-4.4.1";
            r3 = "Error retrieving ad ";
            com.inmobi.commons.internal.Log.debug(r2, r3, r1);	 Catch:{ Exception -> 0x00bf }
            r1 = com.inmobi.androidsdk.InterstitialView.State.INIT;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
            r2 = com.inmobi.androidsdk.AdRequest.ErrorCode.INTERNAL_ERROR;	 Catch:{ Exception -> 0x00bf }
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x00bf:
            r0 = move-exception;
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = "Exception handling message in Interstitial";
            com.inmobi.commons.internal.Log.internal(r1, r2, r0);
            goto L_0x000f;
        L_0x00c9:
            r4 = move-exception;
            r4 = "[InMobi]-[Network]-4.4.1";
            r5 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00bf }
            r5.<init>();	 Catch:{ Exception -> 0x00bf }
            r6 = "Error creating metric logs for fetch_complete at ";
            r5 = r5.append(r6);	 Catch:{ Exception -> 0x00bf }
            r6 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r5 = r5.append(r6);	 Catch:{ Exception -> 0x00bf }
            r5 = r5.toString();	 Catch:{ Exception -> 0x00bf }
            com.inmobi.commons.internal.Log.internal(r4, r5);	 Catch:{ Exception -> 0x00bf }
            goto L_0x0032;
        L_0x00e8:
            r1 = 306; // 0x132 float:4.29E-43 double:1.51E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = com.inmobi.androidsdk.InterstitialView.State.INIT;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = r9.obj;	 Catch:{ Exception -> 0x00bf }
            r1 = (com.inmobi.androidsdk.AdRequest.ErrorCode) r1;	 Catch:{ Exception -> 0x00bf }
            r2 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
            r0.a(r2, r1);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x00fd:
            r1 = 307; // 0x133 float:4.3E-43 double:1.517E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = com.inmobi.androidsdk.InterstitialView.State.INIT;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = 0;
            r0.m = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
            r2 = com.inmobi.androidsdk.AdRequest.ErrorCode.INTERNAL_ERROR;	 Catch:{ Exception -> 0x00bf }
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x0119:
            r1 = 310; // 0x136 float:4.34E-43 double:1.53E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = com.inmobi.androidsdk.InterstitialView.State.INIT;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = r0.m;	 Catch:{ Exception -> 0x00bf }
            r1.cancelLoad();	 Catch:{ Exception -> 0x00bf }
            r1 = r0.m;	 Catch:{ Exception -> 0x00bf }
            r1.stopLoading();	 Catch:{ Exception -> 0x00bf }
            r1 = r0.m;	 Catch:{ Exception -> 0x00bf }
            r1.deinit();	 Catch:{ Exception -> 0x00bf }
            r1 = 0;
            r0.m = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = r0.t;	 Catch:{ Exception -> 0x00bf }
            if (r1 == 0) goto L_0x0171;
        L_0x0147:
            r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r3 = r0.j;	 Catch:{ Exception -> 0x00bf }
            r1 = r1 - r3;
            r3 = new org.json.JSONObject;	 Catch:{ Exception -> 0x00bf }
            r3.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "ad";
            r5 = r0.n;	 Catch:{ JSONException -> 0x017a }
            r3.put(r4, r5);	 Catch:{ JSONException -> 0x017a }
            r4 = "t";
            r3.put(r4, r1);	 Catch:{ JSONException -> 0x017a }
        L_0x0163:
            r1 = com.inmobi.androidsdk.bootstrapper.Initializer.getLogger();	 Catch:{ Exception -> 0x00bf }
            r2 = new com.inmobi.commons.metric.EventLog;	 Catch:{ Exception -> 0x00bf }
            r4 = com.inmobi.androidsdk.bootstrapper.NetworkEventType.RENDER_TIMEOUT;	 Catch:{ Exception -> 0x00bf }
            r2.<init>(r4, r3);	 Catch:{ Exception -> 0x00bf }
            r1.logEvent(r2);	 Catch:{ Exception -> 0x00bf }
        L_0x0171:
            r1 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
            r2 = com.inmobi.androidsdk.AdRequest.ErrorCode.AD_RENDERING_TIMEOUT;	 Catch:{ Exception -> 0x00bf }
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x017a:
            r1 = move-exception;
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00bf }
            r2.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "Error creating metric logs for fetch_complete at ";
            r2 = r2.append(r4);	 Catch:{ Exception -> 0x00bf }
            r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r2 = r2.append(r4);	 Catch:{ Exception -> 0x00bf }
            r2 = r2.toString();	 Catch:{ Exception -> 0x00bf }
            com.inmobi.commons.internal.Log.internal(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x0163;
        L_0x0198:
            r1 = 308; // 0x134 float:4.32E-43 double:1.52E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = 309; // 0x135 float:4.33E-43 double:1.527E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = com.inmobi.androidsdk.InterstitialView.State.INIT;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r3 = r0.k;	 Catch:{ Exception -> 0x00bf }
            r1 = r1 - r3;
            r3 = r0.t;	 Catch:{ Exception -> 0x00bf }
            if (r3 == 0) goto L_0x01d4;
        L_0x01b6:
            r3 = new org.json.JSONObject;	 Catch:{ Exception -> 0x00bf }
            r3.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "t";
            r3.put(r4, r1);	 Catch:{ JSONException -> 0x01e4 }
            r1 = "m";
            r2 = 1;
            r3.put(r1, r2);	 Catch:{ JSONException -> 0x01e4 }
        L_0x01c6:
            r1 = com.inmobi.androidsdk.bootstrapper.Initializer.getLogger();	 Catch:{ Exception -> 0x00bf }
            r2 = new com.inmobi.commons.metric.EventLog;	 Catch:{ Exception -> 0x00bf }
            r4 = com.inmobi.androidsdk.bootstrapper.NetworkEventType.CONNECT_ERROR;	 Catch:{ Exception -> 0x00bf }
            r2.<init>(r4, r3);	 Catch:{ Exception -> 0x00bf }
            r1.logEvent(r2);	 Catch:{ Exception -> 0x00bf }
        L_0x01d4:
            r1 = r0.r;	 Catch:{ Exception -> 0x00bf }
            r1.doCancel();	 Catch:{ Exception -> 0x00bf }
            r1 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
            r2 = com.inmobi.androidsdk.AdRequest.ErrorCode.AD_FETCH_TIMEOUT;	 Catch:{ Exception -> 0x00bf }
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x01e4:
            r1 = move-exception;
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00bf }
            r2.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "Error creating metric logs for error at ";
            r2 = r2.append(r4);	 Catch:{ Exception -> 0x00bf }
            r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r2 = r2.append(r4);	 Catch:{ Exception -> 0x00bf }
            r2 = r2.toString();	 Catch:{ Exception -> 0x00bf }
            com.inmobi.commons.internal.Log.internal(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x01c6;
        L_0x0202:
            r1 = r0.t;	 Catch:{ Exception -> 0x00bf }
            if (r1 == 0) goto L_0x0232;
        L_0x0208:
            r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r3 = r0.j;	 Catch:{ Exception -> 0x00bf }
            r1 = r1 - r3;
            r3 = new org.json.JSONObject;	 Catch:{ Exception -> 0x00bf }
            r3.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "ad";
            r5 = r0.n;	 Catch:{ JSONException -> 0x0244 }
            r3.put(r4, r5);	 Catch:{ JSONException -> 0x0244 }
            r4 = "t";
            r3.put(r4, r1);	 Catch:{ JSONException -> 0x0244 }
        L_0x0224:
            r1 = com.inmobi.androidsdk.bootstrapper.Initializer.getLogger();	 Catch:{ Exception -> 0x00bf }
            r2 = new com.inmobi.commons.metric.EventLog;	 Catch:{ Exception -> 0x00bf }
            r4 = com.inmobi.androidsdk.bootstrapper.NetworkEventType.RENDER_COMPLETE;	 Catch:{ Exception -> 0x00bf }
            r2.<init>(r4, r3);	 Catch:{ Exception -> 0x00bf }
            r1.logEvent(r2);	 Catch:{ Exception -> 0x00bf }
        L_0x0232:
            r1 = 307; // 0x133 float:4.3E-43 double:1.517E-321;
            r8.removeMessages(r1);	 Catch:{ Exception -> 0x00bf }
            r1 = com.inmobi.androidsdk.InterstitialView.State.READY;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = 100;
            r2 = 0;
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x0244:
            r1 = move-exception;
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00bf }
            r2.<init>();	 Catch:{ Exception -> 0x00bf }
            r4 = "Error creating metric logs for RENDER_COMPLETE at ";
            r2 = r2.append(r4);	 Catch:{ Exception -> 0x00bf }
            r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00bf }
            r2 = r2.append(r4);	 Catch:{ Exception -> 0x00bf }
            r2 = r2.toString();	 Catch:{ Exception -> 0x00bf }
            com.inmobi.commons.internal.Log.internal(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x0224;
        L_0x0262:
            r1 = com.inmobi.androidsdk.InterstitialView.State.INIT;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = 103; // 0x67 float:1.44E-43 double:5.1E-322;
            r2 = 0;
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            r1 = 0;
            r0.m = r1;	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
        L_0x0273:
            r1 = com.inmobi.androidsdk.InterstitialView.State.ACTIVE;	 Catch:{ Exception -> 0x00bf }
            r0.c = r1;	 Catch:{ Exception -> 0x00bf }
            r1 = 102; // 0x66 float:1.43E-43 double:5.04E-322;
            r2 = 0;
            r0.a(r1, r2);	 Catch:{ Exception -> 0x00bf }
            goto L_0x000f;
            */
        }
    }

    static {
        o = null;
    }

    public InterstitialView(Activity activity, String str) {
        this.c = State.INIT;
        this.d = new AdRequest();
        this.g = -1;
        this.p = "http://i.w.inmobi.com/showad.asm";
        this.q = 0;
        this.s = Mode.AD_NETWORK;
        this.a = 0;
        this.b = true;
        this.u = new f(this);
        this.v = new c(this);
        this.w = new e(this);
        a(activity, str);
    }

    public InterstitialView(Activity activity, String str, long j) {
        this.c = State.INIT;
        this.d = new AdRequest();
        this.g = -1;
        this.p = "http://i.w.inmobi.com/showad.asm";
        this.q = 0;
        this.s = Mode.AD_NETWORK;
        this.a = 0;
        this.b = true;
        this.u = new f(this);
        this.v = new c(this);
        this.w = new e(this);
        this.g = j;
        a(activity, str);
    }

    private void a() {
        int displayHeight;
        Display defaultDisplay = ((WindowManager) this.e.getSystemService("window")).getDefaultDisplay();
        if (this.l == null) {
            this.l = new UserInfo(this.e);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.e.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f = displayMetrics.density;
            int displayWidth = (int) (((float) WrapperFunctions.getDisplayWidth(defaultDisplay)) / f);
            displayHeight = (int) (((float) WrapperFunctions.getDisplayHeight(defaultDisplay)) / f);
            this.l.setScreenDensity(String.valueOf(f));
            this.l.setScreenSize(AdTrackerConstants.BLANK + displayWidth + "X" + displayHeight);
            try {
                if (this.l.getPhoneDefaultUserAgent().equals(AdTrackerConstants.BLANK)) {
                    this.l.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(this.e.getApplicationContext()));
                }
            } catch (Exception e) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception occured while setting user agent" + e);
            }
        }
        this.l.updateInfo(this.f, this.d);
        displayHeight = MMException.REQUEST_NOT_FILLED;
        if (InternalSDKUtil.isTablet(this.e.getApplicationContext())) {
            displayHeight = ZBuildConfig.$targetsdk;
        }
        this.l.setAdUnitSlot(String.valueOf(displayHeight));
        if (this.g != -1) {
            this.l.setSlotId(Long.toString(this.g));
        }
    }

    private void a(int i, ErrorCode errorCode) {
        if (this.h != null) {
            this.e.runOnUiThread(new a(i, errorCode));
        }
    }

    private void a(Activity activity, String str) {
        if (activity == null) {
            Log.debug(ConfigConstants.LOGGING_TAG, Constants.NULL_ACTIVITY);
        } else {
            InternalSDKUtil.getUserAgent(activity.getApplicationContext());
            try {
                SDKUtil.validateAdConfiguration(activity);
            } catch (ConfigException e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "IMConfigException occured while initializing interstitial while validating adConfig", e);
            }
            this.e = SDKUtil.getRootActivity(activity);
            IMWebView.setIMAIController(IMAIController.class);
            InternalSDKUtil.printPublisherTestId();
            this.f = str;
            a();
            try {
                if (o == null) {
                    o = new ConnBroadcastReciever();
                }
                this.e.getApplicationContext().registerReceiver(o, new IntentFilter(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION));
            } catch (Exception e2) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Cannot register network receiver", e2);
            }
        }
    }

    private void a(String str) {
        if (str != null) {
            if (VERSION.SDK_INT <= 8) {
                str.replaceAll("%", "%25");
            }
            this.m.requestOnPageFinishedCallback(this.v.obtainMessage(303));
            this.j = System.currentTimeMillis();
            this.v.sendEmptyMessageDelayed(307, (long) Initializer.getConfigParams().getRenderTimeOut());
            this.m.loadDataWithBaseURL(AdTrackerConstants.BLANK, str, WebRequest.CONTENT_TYPE_HTML, null, null);
        } else {
            this.c = State.INIT;
            Log.debug(ConfigConstants.LOGGING_TAG, "Cannot load Ad. Invalid Ad Response");
            a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.INTERNAL_ERROR);
        }
    }

    public void destroy() {
        try {
            if (this.m != null) {
                this.m.destroy();
            }
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Unable to destroy webview, or it has been destroyed already.");
        }
        this.m = null;
    }

    public void disableHardwareAcceleration() {
        this.b = false;
        if (this.m != null) {
            this.m.disableHardwareAcceleration();
        }
    }

    public String getAppId() {
        return this.f;
    }

    public InterstitialViewListener getIMAdInterstitialListener() {
        return this.h;
    }

    public AdRequest getIMAdRequest() {
        return this.d;
    }

    public long getSlotId() {
        return this.g;
    }

    public State getState() {
        return this.c;
    }

    public void loadNewAd() {
        ConfigParams configParams = Initializer.getConfigParams();
        this.t = Initializer.getLogger().startNewSample();
        Log.debug(ConfigConstants.LOGGING_TAG, " >>>> Start loading new Interstitial Ad <<<<");
        InternalSDKUtil.printPublisherTestId();
        if (!InternalSDKUtil.checkNetworkAvailibility(this.e.getApplicationContext())) {
            a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.NETWORK_ERROR);
        } else if (this.c == State.LOADING) {
            a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
        } else if (this.c == State.ACTIVE) {
            Log.debug(ConfigConstants.LOGGING_TAG, ConfigConstants.MSG_INVALID_AD_CONFIG);
            a((int)IMBrowserActivity.INTERSTITIAL_ACTIVITY, ErrorCode.INVALID_REQUEST);
        } else {
            this.c = State.LOADING;
            CARB.getInstance().startCarb();
            a();
            this.a = System.currentTimeMillis();
            this.k = System.currentTimeMillis();
            this.v.sendEmptyMessageDelayed(306, (long) configParams.getFetchTimeOut());
            this.r = new RequestResponseManager();
            this.r.asyncRequestSecuredAd(this.l, ActionType.AdRequest_Interstitial, this.s == Mode.APP_GALLERY ? configParams.getAppAppGalleryConfigParams().getUrl() : this.p, this.u);
        }
    }

    public void loadNewAd(AdRequest adRequest) {
        this.d = adRequest;
        loadNewAd();
    }

    public void setAdServerUrl(String str) {
        this.p = str;
    }

    public void setAppId(String str) {
        this.f = str;
    }

    public void setIMAdInterstitialListener(InterstitialViewListener interstitialViewListener) {
        this.h = interstitialViewListener;
    }

    public void setIMAdRequest(AdRequest adRequest) {
        this.d = adRequest;
    }

    public void setMode(Mode mode) {
        this.s = mode;
    }

    public void setSlotId(long j) {
        this.g = j;
    }

    public void show() {
        try {
            Log.debug(ConfigConstants.LOGGING_TAG, "Showing the Interstitial Ad. ");
            if (this.c != State.READY) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Interstitial ad is not in the 'READY' state. Current state: " + this.c);
            } else if (this.i != null) {
                a((int)IMBrowserActivity.EXPAND_ACTIVITY, null);
                this.m.requestOnInterstitialClosed(this.v.obtainMessage(304));
                this.m.requestOnInterstitialShown(this.v.obtainMessage(305));
                Intent intent = new Intent(this.e, IMBrowserActivity.class);
                intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, IMBrowserActivity.INTERSTITIAL_ACTIVITY);
                intent.putExtra(IMBrowserActivity.ANIMATED, this.q);
                IMBrowserActivity.setWebview(this.m);
                IMBrowserActivity.setOriginalActivity(this.e);
                this.e.startActivity(intent);
            }
        } catch (Exception e) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Error showing ad ", e);
        }
    }

    public void show(long j) {
        this.q = j;
        show();
    }

    public void stopLoading() {
        if (this.v.hasMessages(306)) {
            this.v.removeMessages(306);
            this.v.sendEmptyMessage(306);
        } else if (this.v.hasMessages(307)) {
            this.v.removeMessages(307);
            this.v.sendEmptyMessage(307);
        }
    }
}