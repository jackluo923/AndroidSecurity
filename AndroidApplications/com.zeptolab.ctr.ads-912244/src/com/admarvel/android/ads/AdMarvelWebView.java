package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.GravityCompat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.Utils.PROTOCOL_TYPE;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventType;
import com.brightcove.player.util.ErrorUtil;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.ads.AdSize;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.re.container.IMWebView;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"ViewConstructor", "SimpleDateFormat", "DefaultLocale", "NewApi"})
public class AdMarvelWebView extends RelativeLayout {
    private static String g;
    private static String h;
    private static String i;
    private static String j;
    private static String k;
    private static String l;
    private static String m;
    private static final Map p;
    private boolean A;
    private String B;
    private boolean C;
    private final AtomicBoolean D;
    private final AtomicBoolean E;
    private final AtomicBoolean F;
    private final File G;
    private final String H;
    private final Handler I;
    private WeakReference J;
    private d K;
    private int L;
    private int M;
    private boolean N;
    private boolean O;
    private boolean P;
    private AdMarvelInternalWebView Q;
    private WeakReference R;
    private AdMarvelAd S;
    private boolean T;
    private String U;
    private int V;
    private int W;
    private int Z;
    public final AtomicBoolean a;
    private int aa;
    private int ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private String ag;
    private String ah;
    private String ai;
    private String aj;
    private String ak;
    private al al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private final boolean ap;
    private final boolean aq;
    int b;
    String c;
    String d;
    final String e;
    public int f;
    private String n;
    private String o;
    private boolean q;
    private final AtomicBoolean r;
    private final boolean s;
    private final boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private String y;
    private z z;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ int a;

        AnonymousClass_1(int i) {
            this.a = i;
        }

        public void run() {
            AdMarvelWebView.this.Q.setFocusable(true);
            AdMarvelWebView.this.Q.setClickable(true);
            AdMarvelWebView.this.Q.setBackgroundColor(this.a);
            AdMarvelWebView.this.Q.setScrollContainer(false);
            AdMarvelWebView.this.Q.setVerticalScrollBarEnabled(false);
            AdMarvelWebView.this.Q.setHorizontalScrollBarEnabled(false);
            if (Version.getAndroidSDKVersion() < 11) {
                AdMarvelWebView.this.Q.setWebViewClient((WebViewClient) new WeakReference(new c()).get());
            } else {
                AdMarvelWebView.this.Q.setWebViewClient((WebViewClient) new WeakReference(new b()).get());
            }
            AdMarvelWebView.this.R = new WeakReference(AdMarvelWebView.this.Q);
            AdMarvelWebView.this.addView((View) AdMarvelWebView.this.R.get());
            AdMarvelWebView.this.Q.addJavascriptInterface(new WeakReference(new com.admarvel.android.ads.AdMarvelWebView.InnerJS((AdMarvelInternalWebView) AdMarvelWebView.this.R.get(), AdMarvelWebView.this.S, AdMarvelWebView.this.I, AdMarvelWebView.this, AdMarvelWebView.this.getContext())).get(), "ADMARVEL");
            if (AdMarvelView.b) {
                AdMarvelWebView.this.Q.loadDataWithBaseURL(AdMarvelWebView.this.S.getOfflineBaseUrl() + "/", AdMarvelWebView.this.n, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
            } else if (Version.getAndroidSDKVersion() < 11) {
                AdMarvelWebView.this.Q.loadDataWithBaseURL("content://" + AdMarvelWebView.this.getContext().getPackageName() + ".AdMarvelLocalFileContentProvider", AdMarvelWebView.this.n, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
            } else {
                AdMarvelWebView.this.Q.loadDataWithBaseURL("http://baseurl.admarvel.com", AdMarvelWebView.this.n, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
            }
        }
    }

    public static class InnerJS {
        final AdMarvelAd adMarvelAd;
        final WeakReference adMarvelInternalWebViewReference;
        private final WeakReference adMarvelWebViewReference;
        private final WeakReference contextReference;
        private final Handler handler;
        private String lockedOrientation;

        class AnonymousClass_10 implements Runnable {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_10(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$callback = str;
            }

            public void run() {
                this.val$adMarvelInternalWebView.loadUrl("javascript:" + this.val$callback + "(NO)");
            }
        }

        class AnonymousClass_11 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_11(String str, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.val$callback = str;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (this.val$callback != null) {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new Runnable() {
                        public void run() {
                            AnonymousClass_11.this.val$adMarvelInternalWebView.loadUrl("javascript:" + AnonymousClass_11.this.val$callback + "(\"NO\")");
                        }
                    });
                }
                dialogInterface.cancel();
            }
        }

        class AnonymousClass_12 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ AdMarvelWebView val$adMarvelWebView;
            final /* synthetic */ String val$callback;
            final /* synthetic */ String val$redirectUrl;

            AnonymousClass_12(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
                this.val$adMarvelWebView = adMarvelWebView;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$redirectUrl = str;
                this.val$callback = str2;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (Version.getAndroidSDKVersion() < 8) {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new ak(this.val$adMarvelWebView, this.val$adMarvelInternalWebView, this.val$redirectUrl, this.val$callback));
                } else {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new aj(this.val$adMarvelWebView, this.val$adMarvelInternalWebView, this.val$redirectUrl, this.val$callback));
                }
            }
        }

        class AnonymousClass_13 implements Runnable {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_13(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$callback = str;
            }

            public void run() {
                this.val$adMarvelInternalWebView.loadUrl("javascript:" + this.val$callback + "(\"NO\")");
            }
        }

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String val$mCallback;
            final /* synthetic */ String val$supportedScreenOrientationParam;
            final /* synthetic */ AdMarvelInternalWebView val$view;

            AnonymousClass_1(AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
                this.val$view = adMarvelInternalWebView;
                this.val$mCallback = str;
                this.val$supportedScreenOrientationParam = str2;
            }

            public void run() {
                this.val$view.loadUrl("javascript:" + this.val$mCallback + "(" + this.val$supportedScreenOrientationParam + ")");
            }
        }

        class AnonymousClass_3 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ AdMarvelWebView val$adMarvelWebView;
            final /* synthetic */ String val$date;
            final /* synthetic */ String val$description;
            final /* synthetic */ String val$title;

            AnonymousClass_3(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelWebView adMarvelWebView, String str, String str2, String str3) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$adMarvelWebView = adMarvelWebView;
                this.val$date = str;
                this.val$title = str2;
                this.val$description = str3;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (Version.getAndroidSDKVersion() >= 14) {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new l(this.val$adMarvelInternalWebView, this.val$adMarvelWebView, this.val$date, this.val$title, this.val$description));
                } else {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new k(this.val$adMarvelInternalWebView, this.val$adMarvelWebView, this.val$date, this.val$title, this.val$description));
                }
            }
        }

        class AnonymousClass_5 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ AdMarvelWebView val$adMarvelWebView;
            final /* synthetic */ String val$allday;
            final /* synthetic */ String val$date;
            final /* synthetic */ String val$description;
            final /* synthetic */ String val$endDate;
            final /* synthetic */ String val$location;
            final /* synthetic */ int val$reminderoffset;
            final /* synthetic */ String val$title;

            AnonymousClass_5(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelWebView adMarvelWebView, String str, String str2, String str3, String str4, String str5, String str6, int i) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$adMarvelWebView = adMarvelWebView;
                this.val$date = str;
                this.val$title = str2;
                this.val$description = str3;
                this.val$location = str4;
                this.val$allday = str5;
                this.val$endDate = str6;
                this.val$reminderoffset = i;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (Version.getAndroidSDKVersion() >= 14) {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new l(this.val$adMarvelInternalWebView, this.val$adMarvelWebView, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset));
                } else {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new k(this.val$adMarvelInternalWebView, this.val$adMarvelWebView, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset));
                }
            }
        }

        class AnonymousClass_6 implements Runnable {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_6(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$callback = str;
            }

            public void run() {
                this.val$adMarvelInternalWebView.loadUrl("javascript:" + this.val$callback + "(NO)");
            }
        }

        class AnonymousClass_7 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_7(String str, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.val$callback = str;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (this.val$callback != null) {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new Runnable() {
                        public void run() {
                            AnonymousClass_7.this.val$adMarvelInternalWebView.loadUrl("javascript:" + AnonymousClass_7.this.val$callback + "(\"NO\")");
                        }
                    });
                }
                dialogInterface.cancel();
            }
        }

        class AnonymousClass_8 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ AdMarvelWebView val$adMarvelWebView;
            final /* synthetic */ String val$allday;
            final /* synthetic */ int val$availability;
            final /* synthetic */ String val$callback;
            final /* synthetic */ String val$date;
            final /* synthetic */ String val$description;
            final /* synthetic */ String val$endDate;
            final /* synthetic */ String val$exceptionDateString;
            final /* synthetic */ String val$location;
            final /* synthetic */ String val$recurrenceRules;
            final /* synthetic */ int val$reminderoffset;
            final /* synthetic */ int val$status;
            final /* synthetic */ String val$timezone;
            final /* synthetic */ String val$title;
            final /* synthetic */ String val$url;

            AnonymousClass_8(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelWebView adMarvelWebView, String str, String str2, String str3, String str4, String str5, String str6, int i, String str7, String str8, String str9, String str10, int i2, int i3, String str11) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$adMarvelWebView = adMarvelWebView;
                this.val$date = str;
                this.val$title = str2;
                this.val$description = str3;
                this.val$location = str4;
                this.val$allday = str5;
                this.val$endDate = str6;
                this.val$reminderoffset = i;
                this.val$timezone = str7;
                this.val$url = str8;
                this.val$recurrenceRules = str9;
                this.val$exceptionDateString = str10;
                this.val$status = i2;
                this.val$availability = i3;
                this.val$callback = str11;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (Version.getAndroidSDKVersion() >= 14) {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new l(this.val$adMarvelInternalWebView, this.val$adMarvelWebView, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset, this.val$timezone, this.val$url, this.val$recurrenceRules, this.val$exceptionDateString, this.val$status, this.val$availability, this.val$callback));
                } else {
                    com.admarvel.android.ads.AdMarvelWebView.InnerJS.this.handler.post(new k(this.val$adMarvelInternalWebView, this.val$adMarvelWebView, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset, this.val$timezone, this.val$url, this.val$recurrenceRules, this.val$exceptionDateString, this.val$status, this.val$availability, this.val$callback));
                }
            }
        }

        class AnonymousClass_9 implements Runnable {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_9(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$callback = str;
            }

            public void run() {
                this.val$adMarvelInternalWebView.loadUrl("javascript:" + this.val$callback + "(\"NO\")");
            }
        }

        public InnerJS(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelAd adMarvelAd, Handler handler, AdMarvelWebView adMarvelWebView, Context context) {
            this.lockedOrientation = null;
            this.adMarvelInternalWebViewReference = new WeakReference(adMarvelInternalWebView);
            this.adMarvelWebViewReference = new WeakReference(adMarvelWebView);
            this.contextReference = new WeakReference(context);
            this.adMarvelAd = adMarvelAd;
            this.handler = handler;
        }

        @JavascriptInterface
        public void cacheitem(String str, String str2, int i) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null) {
                    return;
                }
                if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                    return;
                }
                if (Version.getAndroidSDKVersion() >= 11) {
                    this.handler.post(new a(adMarvelWebView.getContext(), adMarvelInternalWebView, str, str2, i, adMarvelWebView.G));
                } else {
                    new h(adMarvelWebView.getContext(), adMarvelInternalWebView, adMarvelWebView.G).execute(new Object[]{str, str2, Integer.valueOf(i)});
                }
            }
        }

        @JavascriptInterface
        public void checkForApplicationSupportedOrientations(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null) {
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    Context context = adMarvelInternalWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        String[] split = Utils.getSupportedInterfaceOrientations((Activity) context).split(",");
                        HashMap hashMap = new HashMap();
                        hashMap.put(DeviceInfo.ORIENTATION_PORTRAIT, "NO");
                        hashMap.put("landscapeLeft", "NO");
                        hashMap.put("landscapeRight", "NO");
                        hashMap.put("portraitUpsideDown", "NO");
                        int length = split.length;
                        int i = 0;
                        while (i < length) {
                            String str2 = split[i];
                            if (str2.equals("0")) {
                                hashMap.put(DeviceInfo.ORIENTATION_PORTRAIT, "YES");
                            } else if (str2.equals("90")) {
                                hashMap.put("landscapeLeft", "YES");
                            } else if (str2.equals("-90")) {
                                hashMap.put("landscapeRight", "YES");
                            } else if (str2.equals("180")) {
                                hashMap.put("portraitUpsideDown", "YES");
                            }
                            i++;
                        }
                        String str3 = "\"{portrait:" + ((String) hashMap.get(DeviceInfo.ORIENTATION_PORTRAIT)) + "," + "landscapeLeft:" + ((String) hashMap.get("landscapeLeft")) + "," + "landscapeRight:" + ((String) hashMap.get("landscapeRight")) + "," + "portraitUpsideDown:" + ((String) hashMap.get("portraitUpsideDown")) + "}\"";
                        if (adMarvelInternalWebView != null) {
                            this.handler.post(new AnonymousClass_1(adMarvelInternalWebView, str, str3));
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void checkFrameValues(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    if (Version.getAndroidSDKVersion() >= 9) {
                        this.handler.post(new t(adMarvelWebView));
                    }
                    this.handler.post(new f(str, adMarvelInternalWebView, adMarvelWebView));
                }
            }
        }

        @JavascriptInterface
        public void checkNetworkAvailable(String str) {
            if (((AdMarvelWebView) this.adMarvelWebViewReference.get()) != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    this.handler.post(new g(adMarvelInternalWebView, str));
                }
            }
        }

        @JavascriptInterface
        public void cleanup() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.cleanup()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null && ((AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get()) != null) {
                    this.handler.post(new h(adMarvelWebView));
                }
            }
        }

        @JavascriptInterface
        public void close() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    this.handler.post(new j(adMarvelWebView));
                }
            }
        }

        @JavascriptInterface
        public void createcalendarevent(String str, String str2, String str3) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR")) {
                    Context context = adMarvelWebView.getContext();
                    if (context instanceof Activity) {
                        Builder builder = new Builder((Activity) context);
                        builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_3(adMarvelInternalWebView, adMarvelWebView, str, str2, str3)).setNegativeButton("No", new OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                dialogInterface.cancel();
                            }
                        });
                        builder.create().show();
                    }
                }
            }
        }

        @JavascriptInterface
        public void createcalendarevent(String str, String str2, String str3, String str4, String str5, String str6, int i) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR")) {
                    Context context = adMarvelWebView.getContext();
                    if (context instanceof Activity) {
                        Builder builder = new Builder((Activity) context);
                        builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_5(adMarvelInternalWebView, adMarvelWebView, str, str2, str3, str4, str5, str6, i)).setNegativeButton("No", new OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                dialogInterface.cancel();
                            }
                        });
                        builder.create().show();
                    }
                }
            }
        }

        @JavascriptInterface
        public void createcalendarevent(String str, String str2, String str3, String str4, String str5, String str6, int i, String str7, String str8, String str9, String str10, int i2, int i3, String str11) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    if (Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR")) {
                        Context context = adMarvelWebView.getContext();
                        if (context instanceof Activity) {
                            Activity activity = (Activity) context;
                            Builder builder = builder;
                            builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_8(adMarvelInternalWebView, adMarvelWebView, str, str2, str3, str4, str5, str6, i, str7, str8, str9, str10, i2, i3, str11)).setNegativeButton("No", new AnonymousClass_7(str11, adMarvelInternalWebView));
                            builder.create().show();
                        } else {
                            this.handler.post(new AnonymousClass_9(adMarvelInternalWebView, str11));
                        }
                    } else if (str11 != null) {
                        this.handler.post(new AnonymousClass_6(adMarvelInternalWebView, str11));
                    }
                }
            }
        }

        @JavascriptInterface
        public void delaydisplay() {
            if (this.adMarvelInternalWebViewReference != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                    return;
                }
            }
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                adMarvelWebView.D.set(true);
            }
        }

        @JavascriptInterface
        public void detectlocation(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                i a = i.a();
                if (a != null) {
                    a.a(adMarvelInternalWebView, str);
                }
            }
        }

        @JavascriptInterface
        public void detectsizechange(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                adMarvelInternalWebView.sizeChangeCallback = str;
            }
        }

        @JavascriptInterface
        public void detectvisibility(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                adMarvelInternalWebView.visibilityCallback = str;
            }
        }

        @JavascriptInterface
        public void disableRotationForExpand() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelWebView.N = true;
                    this.lockedOrientation = null;
                    if (adMarvelWebView.O && adMarvelWebView.P) {
                        disablerotations(this.lockedOrientation);
                    }
                }
            }
        }

        @JavascriptInterface
        public void disableRotationForExpand(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelWebView.N = true;
                    this.lockedOrientation = str;
                    if (adMarvelWebView.O && adMarvelWebView.P) {
                        disablerotations(str);
                    }
                }
            }
        }

        @JavascriptInterface
        public void disableautodetect() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelWebView.F.set(false);
                }
            }
        }

        @JavascriptInterface
        public void disablerotations() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    Activity activity;
                    Context context = adMarvelWebView.getContext();
                    activity = (context == null || !context instanceof Activity) ? null : (Activity) context;
                    if (activity != null) {
                        int i = adMarvelWebView.getResources().getConfiguration().orientation;
                        if (i == 1) {
                            activity.setRequestedOrientation(1);
                        } else if (i == 2) {
                            activity.setRequestedOrientation(0);
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void disablerotations(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    Activity activity = null;
                    Context context = adMarvelWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        activity = (Activity) context;
                    }
                    if (activity != null) {
                        int i;
                        if (Version.getAndroidSDKVersion() < 9) {
                            i = adMarvelWebView.getResources().getConfiguration().orientation;
                        } else {
                            Object tVar = new t(adMarvelWebView);
                            this.handler.post(tVar);
                            i = Integer.MIN_VALUE;
                            while (i == Integer.MIN_VALUE) {
                                i = tVar.a();
                            }
                        }
                        if (str != null) {
                            if (adMarvelWebView.N) {
                                if (Version.getAndroidSDKVersion() >= 9) {
                                    this.handler.post(new ah(activity, str));
                                } else if (str.equalsIgnoreCase("Portrait")) {
                                    activity.setRequestedOrientation(1);
                                } else if (str.equalsIgnoreCase("LandscapeLeft")) {
                                    activity.setRequestedOrientation(0);
                                }
                            } else if (Version.getAndroidSDKVersion() < 9) {
                                if (str.equalsIgnoreCase("Portrait") && i == 1) {
                                    activity.setRequestedOrientation(1);
                                } else if (str.equalsIgnoreCase("LandscapeLeft") && i == 2) {
                                    activity.setRequestedOrientation(0);
                                }
                            } else if (str.equalsIgnoreCase("Portrait") && i == 0) {
                                activity.setRequestedOrientation(1);
                            } else if (str.equalsIgnoreCase("LandscapeLeft") && i == 1) {
                                activity.setRequestedOrientation(0);
                            }
                        } else if (Version.getAndroidSDKVersion() < 9) {
                            if (i == 1) {
                                activity.setRequestedOrientation(1);
                            } else if (i == 2) {
                                activity.setRequestedOrientation(0);
                            }
                        } else if (i == 0) {
                            this.handler.post(new ah(activity, "Portrait"));
                        } else if (i == 1) {
                            this.handler.post(new ah(activity, "LandscapeLeft"));
                        } else {
                            this.handler.post(new ah(activity, "none"));
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void enableautodetect() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelWebView.F.set(true);
                }
            }
        }

        @JavascriptInterface
        public void enablerotations() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    Activity activity;
                    Context context = adMarvelWebView.getContext();
                    activity = (context == null || !context instanceof Activity) ? null : (Activity) context;
                    if (activity != null) {
                        activity.setRequestedOrientation(adMarvelWebView.L);
                        adMarvelWebView.N = false;
                    }
                }
            }
        }

        @JavascriptInterface
        public void expandto(int i, int i2) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    Context context = adMarvelInternalWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (adMarvelWebView.O) {
                            this.handler.post(new n(adMarvelWebView, activity, i, i2));
                        } else {
                            this.handler.post(new o(adMarvelWebView, activity, i, i2, this.adMarvelAd));
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void expandto(int i, int i2, int i3, int i4, String str, String str2) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    Context context = adMarvelInternalWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (str2 == null || str2.length() <= 0) {
                            if (str != null) {
                                adMarvelWebView.c = str;
                            }
                            if (adMarvelWebView.O) {
                                this.handler.post(new n(adMarvelWebView, activity, i, i2, i3, i4));
                            } else {
                                this.handler.post(new o(adMarvelWebView, activity, i, i2, i3, i4, this.adMarvelAd));
                            }
                        } else {
                            expandtofullscreen(str, str2);
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void expandto(int i, int i2, String str, String str2) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    Context context = adMarvelInternalWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (str2 == null || str2.length() <= 0) {
                            if (str != null) {
                                adMarvelWebView.c = str;
                            }
                            if (adMarvelWebView.O) {
                                this.handler.post(new n(adMarvelWebView, activity, i, i2));
                            } else {
                                this.handler.post(new o(adMarvelWebView, activity, i, i2, this.adMarvelAd));
                            }
                        } else {
                            expandtofullscreen(str, str2);
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void expandtofullscreen() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    Context context = adMarvelInternalWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        adMarvelWebView.P = true;
                        if (adMarvelWebView.N) {
                            disablerotations(this.lockedOrientation);
                        }
                        if (adMarvelWebView.O) {
                            this.handler.post(new n(adMarvelWebView, activity, 0, 0, -1, -1));
                        } else {
                            this.handler.post(new o(adMarvelWebView, activity, 0, 0, -1, -1, this.adMarvelAd));
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void expandtofullscreen(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    Context context = adMarvelInternalWebView.getContext();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        adMarvelWebView.P = true;
                        if (str != null) {
                            adMarvelWebView.c = str;
                        }
                        if (adMarvelWebView.N) {
                            disablerotations(this.lockedOrientation);
                        }
                        if (adMarvelWebView.O) {
                            this.handler.post(new n(adMarvelWebView, activity, 0, 0, -1, -1));
                        } else {
                            this.handler.post(new o(adMarvelWebView, activity, 0, 0, -1, -1, this.adMarvelAd));
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void expandtofullscreen(String str, String str2) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    Context context = adMarvelInternalWebView.getContext();
                    Activity activity = null;
                    if (context != null && context instanceof Activity) {
                        activity = (Activity) context;
                    } else if (str2 == null) {
                        return;
                    } else {
                        if (str2.length() == 0) {
                            return;
                        }
                    }
                    if (str != null) {
                        adMarvelWebView.c = str;
                    }
                    adMarvelWebView.P = true;
                    if (str2 != null && str2.length() > 0) {
                        adMarvelWebView.d = str2;
                        adMarvelWebView.A = true;
                    }
                    if (adMarvelWebView.N) {
                        if (!adMarvelWebView.A) {
                            disablerotations(this.lockedOrientation);
                        } else if (this.lockedOrientation == null || this.lockedOrientation.length() <= 0) {
                            adMarvelWebView.B = "Current";
                        } else {
                            adMarvelWebView.B = this.lockedOrientation;
                        }
                    }
                    if (str2 != null && str2.length() > 0) {
                        this.handler.post(new p(adMarvelWebView, str2, this.adMarvelAd));
                    } else if (adMarvelWebView.O) {
                        this.handler.post(new n(adMarvelWebView, activity, 0, 0, -1, -1));
                    } else {
                        this.handler.post(new o(adMarvelWebView, activity, 0, 0, -1, -1, this.adMarvelAd));
                    }
                }
            }
        }

        @JavascriptInterface
        public void fetchWebViewHtmlContent(String str) {
            if (this.adMarvelAd != null) {
                this.adMarvelAd.setHtmlJson(str);
            }
        }

        @JavascriptInterface
        public void finishVideo() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.finishVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null && ((AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get()) != null) {
                    this.handler.post(new q(adMarvelWebView));
                }
            }
        }

        @JavascriptInterface
        public void firePixel(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    this.handler.post(new r(adMarvelInternalWebView, adMarvelWebView, str));
                }
            }
        }

        @JavascriptInterface
        public int getAndroidOSVersionAPI() {
            return Version.getAndroidSDKVersion();
        }

        @JavascriptInterface
        public void getLocation(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                this.handler.post(new s(adMarvelInternalWebView, str));
            }
        }

        @JavascriptInterface
        public void initAdMarvel(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    if (Version.getAndroidSDKVersion() >= 9) {
                        this.handler.post(new t(adMarvelWebView));
                    }
                    this.handler.post(new u(str, adMarvelInternalWebView, adMarvelWebView));
                }
            }
        }

        @JavascriptInterface
        public void initVideo(String str) {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.setVideoUrl(\"" + str + "\")");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    adMarvelWebView.U = str;
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && adMarvelWebView.U != null && adMarvelWebView.U.length() > 0) {
                        this.handler.post(new v(str, adMarvelWebView, adMarvelInternalWebView));
                    }
                }
            }
        }

        @JavascriptInterface
        public int isinitialload() {
            return 1;
        }

        @JavascriptInterface
        public int isinstalled(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView == null) {
                return 0;
            }
            if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                return 0;
            }
            return Utils.isAppInstalled(adMarvelInternalWebView.getContext(), str) ? 1 : 0;
        }

        @JavascriptInterface
        public int isvideocached() {
            if (Version.getAndroidSDKVersion() < 14) {
                return 0;
            }
            Logging.log("window.ADMARVEL.isvideocached()");
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView == null) {
                return 0;
            }
            return Version.getAndroidSDKVersion() >= 14 ? new w().a(adMarvelWebView) : 0;
        }

        @JavascriptInterface
        public void loadVideo() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.loadVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && adMarvelWebView.U != null && adMarvelWebView.U.length() > 0) {
                        this.handler.post(new x(adMarvelWebView.U, adMarvelWebView, adMarvelInternalWebView));
                    }
                }
            }
        }

        @JavascriptInterface
        public void notifyInAppBrowserCloseAction(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                adMarvelInternalWebView.mInAppBrowserCloseCallback = str;
            }
        }

        @JavascriptInterface
        public void pauseVideo() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.pauseVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null) {
                        this.handler.post(new aa(adMarvelWebView, adMarvelInternalWebView));
                    }
                }
            }
        }

        @JavascriptInterface
        public void playVideo() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.playVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null && adMarvelWebView.U != null && adMarvelWebView.U.length() > 0) {
                        this.handler.post(new ab(adMarvelWebView, adMarvelInternalWebView));
                    }
                }
            }
        }

        @JavascriptInterface
        public void readyfordisplay() {
            if (this.adMarvelInternalWebViewReference != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                    return;
                }
            }
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView == null) {
                return;
            }
            if (!adMarvelWebView.E.get()) {
                adMarvelWebView.D.set(false);
            } else if (adMarvelWebView.r.compareAndSet(true, false) && AdMarvelWebView.a(adMarvelWebView.e) != null) {
                AdMarvelWebView.a(adMarvelWebView.e).a(adMarvelWebView, this.adMarvelAd);
            }
        }

        @JavascriptInterface
        public void redirect(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if ((adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) || adMarvelInternalWebView == null) {
                    return;
                }
                if (!adMarvelInternalWebView.b() && (str != null && str.length() > 0)) {
                    if (!(str.startsWith("admarvelsdk") || str.startsWith("admarvelinternal"))) {
                        return;
                    }
                    adMarvelWebView.d(str);
                }
            }
        }

        @JavascriptInterface
        public void registerEventsForAdMarvelVideo(String str, String str2) {
            if (Version.getAndroidSDKVersion() >= 14 && str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView == null) {
                    return;
                }
                if (str.equals("loadeddata")) {
                    adMarvelWebView.ac = str2;
                } else if (str.equals(EventType.PLAY)) {
                    adMarvelWebView.ad = str2;
                } else if (str.equals("canplay")) {
                    adMarvelWebView.ae = str2;
                } else if (str.equals("timeupdate")) {
                    adMarvelWebView.af = str2;
                } else if (str.equals("ended")) {
                    adMarvelWebView.ag = str2;
                } else if (str.equals(EventType.PAUSE)) {
                    adMarvelWebView.ah = str2;
                } else if (str.equals("resume")) {
                    adMarvelWebView.ai = str2;
                } else if (str.equals(EventType.STOP)) {
                    adMarvelWebView.aj = str2;
                } else if (str.equals(ErrorUtil.ERROR)) {
                    adMarvelWebView.ak = str2;
                }
            }
        }

        @JavascriptInterface
        public void registeraccelerationevent(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    k a = k.a();
                    if (a != null && a.a(adMarvelWebView.getContext())) {
                        a.b(str);
                        a.a(adMarvelWebView.getContext(), adMarvelInternalWebView);
                    }
                }
            }
        }

        @JavascriptInterface
        public void registerheadingevent(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    k a = k.a();
                    if (a != null && a.a(adMarvelWebView.getContext())) {
                        a.c(str);
                        a.a(adMarvelWebView.getContext(), adMarvelInternalWebView);
                    }
                }
            }
        }

        @JavascriptInterface
        public void registernetworkchangeevent(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                b.a(adMarvelInternalWebView, str);
            }
        }

        @JavascriptInterface
        public void registershakeevent(String str, String str2, String str3) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    k a = k.a();
                    if (a != null && a.a(adMarvelWebView.getContext())) {
                        a.a(str);
                        a.a(str2, str3);
                        a.a(adMarvelWebView.getContext(), adMarvelInternalWebView);
                    }
                }
            }
        }

        @JavascriptInterface
        public void reportAdMarvelAdHistory() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                Context context = adMarvelWebView.getContext();
                if (context != null) {
                    AdMarvelUtils.reportAdMarvelAdHistory(context);
                }
            }
        }

        @JavascriptInterface
        public void reportAdMarvelAdHistory(int i) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                Context context = adMarvelWebView.getContext();
                if (context != null) {
                    AdMarvelUtils.reportAdMarvelAdHistory(i, context);
                }
            }
        }

        @JavascriptInterface
        public void resumeVideo() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.resumeVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null) {
                        this.handler.post(new ae(adMarvelWebView, adMarvelInternalWebView));
                    }
                }
            }
        }

        @JavascriptInterface
        public void sdkclosebutton(String str, String str2) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelWebView.v = false;
                    adMarvelWebView.w = false;
                    adMarvelWebView.x = false;
                    if (str != null && str.equals("true")) {
                        adMarvelWebView.v = true;
                        adMarvelWebView.x = true;
                    } else if (str != null && str.equals("false") && str2 != null && str2.equals("true")) {
                        adMarvelWebView.v = true;
                        adMarvelWebView.w = true;
                        adMarvelWebView.x = false;
                    }
                }
            }
        }

        @JavascriptInterface
        public void sdkclosebutton(String str, String str2, String str3) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelWebView.v = false;
                    adMarvelWebView.w = false;
                    adMarvelWebView.x = false;
                    if (str != null && str.equals("true")) {
                        adMarvelWebView.v = true;
                        adMarvelWebView.x = true;
                    } else if (str != null && str.equals("false") && str2 != null && str2.equals("true")) {
                        adMarvelWebView.v = true;
                        adMarvelWebView.w = true;
                        adMarvelWebView.x = false;
                    }
                    if (str3 != null && str3.length() > 0) {
                        adMarvelWebView.y = str3;
                    }
                }
            }
        }

        @JavascriptInterface
        public void seekVideoTo(float f) {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.seekToVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null && adMarvelWebView.U != null && adMarvelWebView.U.length() > 0) {
                        this.handler.post(new af(adMarvelWebView, adMarvelInternalWebView, f));
                    }
                }
            }
        }

        @JavascriptInterface
        public void setInitialAudioState(String str) {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.setInitialAudioState()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null && str != null && str.trim().length() > 0) {
                    if (str.equalsIgnoreCase("mute")) {
                        adMarvelWebView.am = true;
                    } else if (str.equalsIgnoreCase("unmute")) {
                        adMarvelWebView.am = false;
                    }
                }
            }
        }

        @JavascriptInterface
        public void setVideoContainerHeight(int i) {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("ADMARVEL.setVideoContainerHeight " + i);
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    adMarvelWebView.ab = i;
                }
            }
        }

        @JavascriptInterface
        public void setVideoDimensions(int i, int i2, int i3, int i4) {
            Logging.log("ADMARVEL.setVideoDimensions " + i + " " + i2 + " " + i3 + " " + i4);
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null && Version.getAndroidSDKVersion() >= 14) {
                adMarvelWebView.V = i3;
                adMarvelWebView.W = i4;
                adMarvelWebView.Z = i;
                adMarvelWebView.aa = i2;
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    this.handler.post(new ac(adMarvelWebView, adMarvelInternalWebView, i, i2, i3, i4));
                }
            }
        }

        @JavascriptInterface
        public void setbackgroundcolor(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    int i;
                    if ("0".equals(str)) {
                        i = 0;
                    } else {
                        long parseLong = Long.parseLong(str.replace("#", AdTrackerConstants.BLANK), MMException.REQUEST_NOT_PERMITTED);
                        if (str.length() == 7 || str.length() == 6) {
                            parseLong |= -16777216;
                        }
                        i = (int) parseLong;
                    }
                    adMarvelInternalWebView.setBackgroundColor(i);
                    adMarvelWebView.b = i;
                    this.handler.post(new ag(adMarvelWebView));
                }
            }
        }

        @JavascriptInterface
        public void setsoftwarelayer() {
            if (((AdMarvelWebView) this.adMarvelWebViewReference.get()) != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && Version.getAndroidSDKVersion() >= 11) {
                    this.handler.post(new ao(adMarvelInternalWebView));
                }
            }
        }

        @JavascriptInterface
        public void stopVideo() {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.stopVideo()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                    if (adMarvelInternalWebView != null) {
                        this.handler.post(new ai(adMarvelWebView, adMarvelInternalWebView));
                    }
                }
            }
        }

        @JavascriptInterface
        public void storepicture(String str, String str2) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    String redirectURLCheck = Utils.redirectURLCheck(str, adMarvelWebView.getContext());
                    if (Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") && "mounted".equals(Environment.getExternalStorageState())) {
                        Context context = adMarvelWebView.getContext();
                        if (context instanceof Activity) {
                            Builder builder = new Builder((Activity) context);
                            builder.setMessage("Allow storing image in your Gallery?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_12(adMarvelWebView, adMarvelInternalWebView, redirectURLCheck, str2)).setNegativeButton("No", new AnonymousClass_11(str2, adMarvelInternalWebView));
                            builder.create().show();
                        } else {
                            this.handler.post(new AnonymousClass_13(adMarvelInternalWebView, str2));
                        }
                    } else if (str2 != null) {
                        this.handler.post(new AnonymousClass_10(adMarvelInternalWebView, str2));
                    }
                }
            }
        }

        @JavascriptInterface
        public void triggerVibration(String str) {
            int parseInt;
            AdMarvelWebView adMarvelWebView;
            boolean z = AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT;
            if (str != null && str.trim().length() > 0) {
                try {
                    int i;
                    parseInt = Integer.parseInt(str);
                    if (parseInt > 10000) {
                        Logging.log("Time mentioned is greater than Max duration ");
                    } else {
                        i = parseInt;
                    }
                    parseInt = i;
                } catch (NumberFormatException e) {
                    Logging.log("NumberFormatException so setting vibrate time to 500 Milli Sec");
                }
                adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView == null) {
                    Utils.vibrate(adMarvelWebView.getContext(), parseInt);
                }
            }
            parseInt = 500;
            adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView == null) {
                Utils.vibrate(adMarvelWebView.getContext(), parseInt);
            }
        }

        @JavascriptInterface
        public void updateAudioState(String str) {
            if (Version.getAndroidSDKVersion() >= 14) {
                Logging.log("window.ADMARVEL.updateAudioState()");
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
                if (adMarvelWebView != null) {
                    this.handler.post(new am(adMarvelWebView, str));
                }
            }
        }

        @JavascriptInterface
        public void updatestate(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.adMarvelWebViewReference.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    this.handler.post(new an(str, adMarvelWebView));
                }
            }
        }
    }

    private static class a implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private final String c;
        private final String d;
        private final int e;
        private final File f;

        public a(Context context, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2, int i, File file) {
            this.a = new WeakReference(context);
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = str;
            this.d = str2;
            this.e = i;
            this.f = file;
        }

        public void run() {
            if (this.a.get() != null && this.b.get() != null) {
                new h((Context) this.a.get(), (AdMarvelInternalWebView) this.b.get(), this.f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[]{this.c, this.d, Integer.valueOf(this.e)});
            }
        }
    }

    private static class aa implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public aa(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null) {
                        if (cVar.isPlaying()) {
                            cVar.pause();
                        } else {
                            cVar.c();
                        }
                        if (adMarvelWebView.ah != null && adMarvelWebView.ah.length() > 0) {
                            adMarvelInternalWebView.injectJavaScript(adMarvelWebView.ah + "()");
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class ab implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ c a;
            final /* synthetic */ AdMarvelWebView b;
            final /* synthetic */ AdMarvelInternalWebView c;

            AnonymousClass_1(c cVar, AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = cVar;
                this.b = adMarvelWebView;
                this.c = adMarvelInternalWebView;
            }

            public void run() {
                if (this.a.getHeight() != 0 || this.b.ak == null || this.b.ak.length() <= 0) {
                    this.a.f();
                } else {
                    this.c.injectJavaScript(this.b.ak + "()");
                }
            }
        }

        public ab(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        @TargetApi(14)
        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null) {
                        if (cVar.getHeight() == 0) {
                            adMarvelWebView.I.postDelayed(new AnonymousClass_1(cVar, adMarvelWebView, adMarvelInternalWebView), 500);
                        } else {
                            cVar.f();
                        }
                        if (adMarvelWebView.ad != null && adMarvelWebView.ad.length() > 0) {
                            adMarvelInternalWebView.injectJavaScript(adMarvelWebView.ad + "()");
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class ac implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private int c;
        private int d;
        private int e;
        private int f;

        public ac(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView, int i, int i2, int i3, int i4) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        @TargetApi(14)
        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar;
                    cVar = adMarvelWebView != null ? (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO") : null;
                    if (cVar != null) {
                        cVar.a(this.e, this.f, this.c, this.d);
                        cVar.i();
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class ad implements Runnable {
        private String a;
        private final WeakReference b;
        private final AdMarvelAd c;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ Intent a;

            AnonymousClass_1(Intent intent) {
                this.a = intent;
            }

            public void run() {
                ((AdMarvelWebView) ad.this.get()).getContext().startActivity(this.a);
            }
        }

        public ad(String str, AdMarvelWebView adMarvelWebView, AdMarvelAd adMarvelAd) {
            this.a = str;
            this.b = new WeakReference(adMarvelWebView);
            this.c = adMarvelAd;
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.b.get();
                if (adMarvelWebView != null) {
                    if (adMarvelWebView.q) {
                        Context context = adMarvelWebView.getContext();
                        if (!AdMarvelView.b || Utils.checkIfPrivateProtocol(this.a)) {
                            if (!Utils.checkIfPrivateProtocol(this.a) && Utils.handledBySpecialIntents(adMarvelWebView.getContext(), this.a, adMarvelWebView.aq)) {
                                new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                                if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                                    AdMarvelWebView.a(adMarvelWebView.e).a(this.c, this.a);
                                    return;
                                } else {
                                    return;
                                }
                            }
                        } else if (!URLUtil.isNetworkUrl(this.a) || !Utils.handledBySpecialIntents(context, this.a, adMarvelWebView.aq)) {
                            String offlinekeyUrl = adMarvelWebView.getAdMarvelAd().getOfflinekeyUrl();
                            if (Utils.handledBySpecialIntents(context, offlinekeyUrl.substring(0, offlinekeyUrl.lastIndexOf("/")) + "/" + this.a, adMarvelWebView.aq)) {
                                if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                                    AdMarvelWebView.a(adMarvelWebView.e).a(this.c, this.a);
                                    return;
                                } else {
                                    return;
                                }
                            }
                        } else if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                            AdMarvelWebView.a(adMarvelWebView.e).a(this.c, this.a);
                            return;
                        } else {
                            return;
                        }
                        if (this.a != null && Utils.isPrivateProtocol(this.a, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                            if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                                AdMarvelWebView.a(adMarvelWebView.e).a(this.c, Utils.parsePrivateProtocol(this.a, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(this.a, "admarvelsdk"), adMarvelWebView.getContext()));
                            }
                            new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                            return;
                        } else if (this.a != null && Utils.isPrivateProtocol(this.a, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                            if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                                AdMarvelWebView.a(adMarvelWebView.e).a(this.c, Utils.parsePrivateProtocol(this.a, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(this.a, "admarvelinternal"), adMarvelWebView.getContext()));
                            }
                            new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                            return;
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && Utils.isPrivateProtocol(this.a, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                            String parsePrivateProtocol = Utils.parsePrivateProtocol(this.a, "admarvelvideo", "http://", Utils.isPrivateProtocol(this.a, "admarvelvideo"), adMarvelWebView.getContext());
                            intent = new Intent("android.intent.action.VIEW");
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                            if (Utils.isIntentAvailable(adMarvelWebView.getContext(), intent)) {
                                adMarvelWebView.getContext().startActivity(intent);
                            }
                            new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && Utils.isPrivateProtocol(this.a, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(this.a, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(this.a, "admarvelexternal"), adMarvelWebView.getContext())));
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            if (Utils.isIntentAvailable(adMarvelWebView.getContext(), intent2)) {
                                adMarvelWebView.getContext().startActivity(intent2);
                            }
                            new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && Utils.isPrivateProtocol(this.a, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE) {
                            intent = new Intent(adMarvelWebView.getContext(), AdMarvelVideoActivity.class);
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            this.c.removeNonStringEntriesTargetParam();
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                                objectOutputStream.writeObject(this.c);
                                objectOutputStream.close();
                                intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, this.a);
                            intent.putExtra("isCustomUrl", true);
                            intent.putExtra("xml", adMarvelWebView.H);
                            intent.putExtra(Event.SOURCE, adMarvelWebView.o);
                            intent.putExtra("GUID", adMarvelWebView.e);
                            try {
                                new Handler(Looper.getMainLooper()).post(new AnonymousClass_1(intent));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && this.a.length() > 0) {
                            intent = adMarvelWebView.aq ? new Intent(adMarvelWebView.getContext(), AdMarvelPostitialActivity.class) : new Intent(adMarvelWebView.getContext(), AdMarvelActivity.class);
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            if (adMarvelWebView.aq) {
                                intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                            }
                            intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, this.a);
                            intent.putExtra("isInterstitial", false);
                            intent.putExtra("isInterstitialClick", false);
                            intent.putExtra("xml", adMarvelWebView.H);
                            intent.putExtra(Event.SOURCE, adMarvelWebView.o);
                            intent.putExtra("GUID", adMarvelWebView.e);
                            this.c.removeNonStringEntriesTargetParam();
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                                objectOutputStream.writeObject(this.c);
                                objectOutputStream.close();
                                intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                            adMarvelWebView.getContext().startActivity(intent);
                            new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                        }
                    }
                    if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                        AdMarvelWebView.a(adMarvelWebView.e).a(this.c, this.a);
                    }
                }
            } catch (Exception e4) {
                Logging.log(e4.getMessage() + " Exception in RedirectRunnable ");
            }
        }
    }

    private static class ae implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public ae(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null && !cVar.isPlaying()) {
                        cVar.g();
                        if (adMarvelWebView.ai != null && adMarvelWebView.ai.length() > 0) {
                            adMarvelInternalWebView.injectJavaScript(adMarvelWebView.ai + "()");
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class af implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private float c;

        public af(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView, float f) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = f;
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null) {
                        cVar.seekTo((int) (this.c * 1000.0f));
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class ag implements Runnable {
        private final WeakReference a;

        public ag(AdMarvelWebView adMarvelWebView) {
            this.a = new WeakReference(adMarvelWebView);
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
            if (adMarvelWebView != null) {
                adMarvelWebView.setBackgroundColor(adMarvelWebView.b);
            }
        }
    }

    private static class ah implements Runnable {
        private final WeakReference a;
        private String b;
        private Activity c;

        public ah(Activity activity, String str) {
            this.b = null;
            this.c = null;
            this.a = new WeakReference(activity);
            this.b = str;
        }

        public void run() {
            this.c = (Activity) this.a.get();
            if (this.c != null) {
                Display defaultDisplay = ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay();
                if (this.b.equalsIgnoreCase("Portrait")) {
                    this.c.setRequestedOrientation(1);
                } else if (this.b.equalsIgnoreCase("LandscapeLeft")) {
                    this.c.setRequestedOrientation(0);
                    if (defaultDisplay.getRotation() != 1) {
                        this.c.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                    }
                } else if (this.b.equalsIgnoreCase("PortraitUpSideDown")) {
                    this.c.setRequestedOrientation(ZBuildConfig.$minsdk);
                } else if (this.b.equalsIgnoreCase("LandscapeRight")) {
                    this.c.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                    if (defaultDisplay.getRotation() != 3) {
                        this.c.setRequestedOrientation(0);
                    }
                } else if (!this.b.equalsIgnoreCase("none")) {
                } else {
                    if (defaultDisplay.getRotation() == 2) {
                        this.c.setRequestedOrientation(ZBuildConfig.$minsdk);
                    } else if (defaultDisplay.getRotation() == 3) {
                        this.c.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                        if (defaultDisplay.getRotation() != 3) {
                            this.c.setRequestedOrientation(0);
                        }
                    }
                }
            }
        }
    }

    private static class ai implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public ai(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null && cVar.isPlaying()) {
                        cVar.c();
                        if (adMarvelWebView.aj != null && adMarvelWebView.aj.length() > 0) {
                            adMarvelInternalWebView.injectJavaScript(adMarvelWebView.aj + "()");
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class aj implements Runnable {
        String a;
        String b;
        InputStream c;
        Bitmap d;
        private final WeakReference e;
        private final WeakReference f;

        public aj(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
            this.c = null;
            this.d = null;
            this.e = new WeakReference(adMarvelWebView);
            this.f = new WeakReference(adMarvelInternalWebView);
            this.a = str;
            this.b = str2;
        }

        @TargetApi(14)
        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.e.get();
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.f.get();
            if (adMarvelInternalWebView != null && adMarvelWebView != null) {
                String str = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString() + "/";
                try {
                    Thread thread;
                    if (this.a.startsWith("/mnt/sdcard")) {
                        if (new File(this.a).exists()) {
                            this.d = BitmapFactory.decodeFile(this.a);
                        } else {
                            adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                        }
                    } else if (this.a.startsWith("http:") || this.a.startsWith("https:")) {
                        this.a = Utils.redirectURLCheck(this.a, adMarvelWebView.getContext());
                        thread = new Thread(new Runnable() {
                            public void run() {
                                try {
                                    aj.this.c = new URL(aj.this).openStream();
                                } catch (MalformedURLException e) {
                                    e.printStackTrace();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                        });
                        thread.start();
                        thread.join();
                    } else if (this.a.startsWith("file:///android_asset/")) {
                        this.c = adMarvelWebView.getContext().getAssets().open(this.a.substring("file:///android_asset/".length()));
                    }
                    if (this.d == null && this.c != null) {
                        thread = new Thread(new Runnable() {
                            public void run() {
                                aj.this.d = BitmapFactory.decodeStream(aj.this.c);
                            }
                        });
                        thread.start();
                        thread.join();
                    }
                    if (this.d == null) {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    } else {
                        File file = new File(str);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        str = str + System.currentTimeMillis() + ".jpg";
                        OutputStream fileOutputStream = new FileOutputStream(str);
                        if (!(fileOutputStream == null || this.d == null)) {
                            this.d.compress(CompressFormat.JPEG, AdSize.LARGE_AD_HEIGHT, fileOutputStream);
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                        intent.setData(Uri.fromFile(new File(str)));
                        adMarvelWebView.getContext().sendBroadcast(intent);
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"YES\")");
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    }
                } catch (Exception e) {
                    Throwable th = e;
                    try {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                        Logging.log(Log.getStackTraceString(th));
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    } catch (Throwable th2) {
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    }
                }
            }
        }
    }

    private static class ak implements Runnable {
        String a;
        String b;
        InputStream c;
        Bitmap d;
        private final WeakReference e;
        private final WeakReference f;

        public ak(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
            this.c = null;
            this.d = null;
            this.e = new WeakReference(adMarvelWebView);
            this.f = new WeakReference(adMarvelInternalWebView);
            this.a = str;
            this.b = str2;
        }

        @TargetApi(14)
        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.e.get();
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.f.get();
            if (adMarvelInternalWebView != null && adMarvelWebView != null) {
                String str = Environment.getExternalStorageDirectory().toString() + "/Pictures/";
                try {
                    Thread thread;
                    if (this.a.startsWith("/mnt/sdcard")) {
                        if (new File(this.a).exists()) {
                            this.d = BitmapFactory.decodeFile(this.a);
                        } else {
                            adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                        }
                    } else if (this.a.startsWith("http:") || this.a.startsWith("https:")) {
                        this.a = Utils.redirectURLCheck(this.a, adMarvelWebView.getContext());
                        thread = new Thread(new Runnable() {
                            public void run() {
                                try {
                                    ak.this.c = new URL(ak.this).openStream();
                                } catch (MalformedURLException e) {
                                    e.printStackTrace();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                        });
                        thread.start();
                        thread.join();
                    } else if (this.a.startsWith("file:///android_asset/")) {
                        this.c = adMarvelWebView.getContext().getAssets().open(this.a.substring("file:///android_asset/".length()));
                    }
                    if (this.d == null && this.c != null) {
                        thread = new Thread(new Runnable() {
                            public void run() {
                                ak.this.d = BitmapFactory.decodeStream(ak.this.c);
                            }
                        });
                        thread.start();
                        thread.join();
                    }
                    if (this.d == null) {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    } else {
                        File file = new File(str);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        str = str + System.currentTimeMillis() + ".jpg";
                        OutputStream fileOutputStream = new FileOutputStream(str);
                        if (!(fileOutputStream == null || this.d == null)) {
                            this.d.compress(CompressFormat.JPEG, AdSize.LARGE_AD_HEIGHT, fileOutputStream);
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                        intent.setData(Uri.fromFile(new File(str)));
                        adMarvelWebView.getContext().sendBroadcast(intent);
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"YES\")");
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    }
                } catch (Exception e) {
                    Throwable th = e;
                    try {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                        Logging.log(Log.getStackTraceString(th));
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    } catch (Throwable th2) {
                        if (this.d != null) {
                            this.d.recycle();
                            this.d = null;
                        }
                    }
                }
            }
        }
    }

    private static class al implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public al(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (!(adMarvelInternalWebView == null || cVar == null)) {
                        try {
                            if (adMarvelWebView.af != null && adMarvelWebView.af.length() > 0) {
                                adMarvelInternalWebView.injectJavaScript(adMarvelWebView.af + "(" + (((float) cVar.h()) / 1000.0f) + ")");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    adMarvelWebView.I.postDelayed(adMarvelWebView.al, 500);
                }
            } catch (Exception e2) {
                Logging.log(Log.getStackTraceString(e2));
            }
        }
    }

    private static class am implements Runnable {
        private final WeakReference a;
        private String b;

        public am(AdMarvelWebView adMarvelWebView, String str) {
            this.a = new WeakReference(adMarvelWebView);
            this.b = str;
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                if (adMarvelWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null && this.b != null && this.b.trim().length() > 0) {
                        if (this.b.equalsIgnoreCase("mute")) {
                            cVar.d();
                        } else if (this.b.equalsIgnoreCase("unmute")) {
                            cVar.e();
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class an implements Runnable {
        private final WeakReference a;
        private String b;

        public an(String str, AdMarvelWebView adMarvelWebView) {
            this.b = null;
            this.b = str;
            this.a = new WeakReference(adMarvelWebView);
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "INTERNAL");
                if (adMarvelInternalWebView != null) {
                    int visibility = adMarvelInternalWebView.getVisibility();
                    if (this.b.equals("show") && visibility != 0) {
                        adMarvelInternalWebView.setVisibility(0);
                    }
                    if (this.b.equals("hide") && visibility == 0) {
                        adMarvelInternalWebView.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                    }
                }
            }
        }
    }

    private static class ao implements Runnable {
        private final WeakReference a;

        public ao(AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null) {
                adMarvelInternalWebView.setLayerType(1, null);
            }
        }
    }

    class b extends WebViewClient {
        b() {
        }

        public void onLoadResource(WebView webView, String str) {
            Logging.log("Load Ad : onLoadResource URL - " + str);
            super.onLoadResource(webView, str);
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AdMarvelWebView.this.T = true;
            Logging.log("Load Ad: onPageFinished");
            if (AdMarvelUtils.isLogDumpEnabled()) {
                webView.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
            }
            if (!AdMarvelWebView.this.D.get() && AdMarvelWebView.this.r.compareAndSet(true, false)) {
                if (AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                    AdMarvelInternalWebView.a(AdMarvelWebView.this.e, (d) AdMarvelWebView.this.J.get());
                    AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this, AdMarvelWebView.this.S);
                } else {
                    Logging.log("Load Ad: onPageFinished - No listener found");
                }
            }
            AdMarvelWebView.this.E.set(true);
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            Logging.log("Load Ad: onPageStarted");
            AdMarvelWebView.this.E.set(false);
            if (Version.getAndroidSDKVersion() > 18) {
                Logging.log(" adding onpagefinsihed callback reciever with delay of 5 sec" + Constants.WAIT_FOR_ON_PAGE_FINISHED);
                AdMarvelWebView.this.I.postDelayed(new y(str), Constants.WAIT_FOR_ON_PAGE_FINISHED);
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            AdMarvelInternalWebView.b(AdMarvelWebView.this.e);
            Logging.log("Load Ad: onReceivedError - Failing Url " + str2);
            super.onReceivedError(webView, i, str, str2);
            if (AdMarvelWebView.this.r.compareAndSet(true, false) && AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this, AdMarvelWebView.this.S, 305, Utils.getErrorReason(305));
            }
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            int i = 0;
            Logging.log("Load Ad : shouldInterceptRequest URL - " + str);
            if (!str.equals("http://baseurl.admarvel.com/mraid.js")) {
                return super.shouldInterceptRequest(webView, str);
            }
            String str2 = AdTrackerConstants.BLANK;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js").openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoOutput(false);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpURLConnection.setRequestProperty("Content-Length", "0");
                httpURLConnection.setConnectTimeout(GamesStatusCodes.STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS);
                httpURLConnection.setReadTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
                int responseCode = httpURLConnection.getResponseCode();
                int contentLength = httpURLConnection.getContentLength();
                Logging.log("Mraid Connection Status Code: " + responseCode);
                Logging.log("Mraid Content Length: " + contentLength);
                if (responseCode != 200) {
                    return super.shouldInterceptRequest(webView, str);
                }
                String str3;
                InputStream inputStream = (InputStream) httpURLConnection.getContent();
                List arrayList = new ArrayList();
                responseCode = 0;
                contentLength = 8192;
                while (contentLength != -1) {
                    byte[] bArr = new byte[8192];
                    contentLength = inputStream.read(bArr, 0, AsyncHttpClient.DEFAULT_SOCKET_BUFFER_SIZE);
                    if (contentLength > 0) {
                        e eVar = new e();
                        AdMarvelWebView.this = bArr;
                        eVar.b = contentLength;
                        responseCode += contentLength;
                        arrayList.add(eVar);
                    }
                }
                inputStream.close();
                if (responseCode > 0) {
                    Object obj = new Object[responseCode];
                    int i2 = 0;
                    while (i2 < arrayList.size()) {
                        e eVar2 = (e) arrayList.get(i2);
                        System.arraycopy(AdMarvelWebView.this, 0, obj, i, eVar2.b);
                        i += eVar2.b;
                        i2++;
                    }
                    str3 = new String(obj);
                } else {
                    str3 = str2;
                }
                return new WebResourceResponse(WebRequest.CONTENT_TYPE_CSS, HTMLEncoder.ENCODE_NAME_DEFAULT, new ByteArrayInputStream(str3.getBytes()));
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                return super.shouldInterceptRequest(webView, str);
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Logging.log("Load Ad : shouldOverrideUrlLoading URL - " + str);
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) AdMarvelWebView.this.findViewWithTag(AdMarvelWebView.this.e + "INTERNAL");
            if (adMarvelInternalWebView == null && AdMarvelWebView.this.O) {
                Context context = AdMarvelWebView.this.getContext();
                if (context != null && context instanceof Activity) {
                    adMarvelInternalWebView = (AdMarvelInternalWebView) ((ViewGroup) ((Activity) context).getWindow().findViewById(16908290)).findViewWithTag(AdMarvelWebView.this.e + "INTERNAL");
                }
            }
            if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                return false;
            }
            if (Utils.isNoLink(str)) {
                return true;
            }
            if (AdMarvelWebView.this.q) {
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.b() && (str == null || str.length() <= 0 || (!str.startsWith("admarvelsdk") && !str.startsWith("admarvelinternal")))) {
                    return true;
                }
                if (Utils.handledBySpecialIntents(AdMarvelWebView.this.getContext(), str, AdMarvelWebView.this.aq)) {
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                    if (AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                        AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this.S, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), AdMarvelWebView.this.getContext()));
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                    if (AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                        AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this.S, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), AdMarvelWebView.this.getContext()));
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                    String parsePrivateProtocol = Utils.parsePrivateProtocol(str, "admarvelvideo", "http://", Utils.isPrivateProtocol(str, "admarvelvideo"), AdMarvelWebView.this.getContext());
                    intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                    if (Utils.isIntentAvailable(AdMarvelWebView.this.getContext(), intent)) {
                        AdMarvelWebView.this.getContext().startActivity(intent);
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(str, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelexternal"), AdMarvelWebView.this.getContext())));
                    intent2.addFlags(DriveFile.MODE_READ_ONLY);
                    if (Utils.isIntentAvailable(AdMarvelWebView.this.getContext(), intent2)) {
                        AdMarvelWebView.this.getContext().startActivity(intent2);
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (!(str == null || Utils.isPrivateProtocol(str, "admarvelcustomvideo") == PROTOCOL_TYPE.NONE)) {
                    intent = new Intent(AdMarvelWebView.this.getContext(), AdMarvelVideoActivity.class);
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    AdMarvelWebView.this.S.removeNonStringEntriesTargetParam();
                    try {
                        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                        objectOutputStream.writeObject(AdMarvelWebView.this.S);
                        objectOutputStream.close();
                        intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                    intent.putExtra("isCustomUrl", true);
                    intent.putExtra("xml", AdMarvelWebView.this.H);
                    intent.putExtra(Event.SOURCE, AdMarvelWebView.this.o);
                    intent.putExtra("GUID", AdMarvelWebView.this.e);
                    AdMarvelWebView.this.getContext().startActivity(intent);
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                }
            }
            if (AdMarvelWebView.this.F.get() || (adMarvelInternalWebView != null && adMarvelInternalWebView.b())) {
                AdMarvelWebView.this.d(str);
            }
            return true;
        }
    }

    class c extends WebViewClient {
        c() {
        }

        public void onLoadResource(WebView webView, String str) {
            Logging.log("Load Ad : onLoadResource URL - " + str);
            super.onLoadResource(webView, str);
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            Logging.log("Load Ad: onPageFinished");
            if (AdMarvelUtils.isLogDumpEnabled()) {
                webView.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
            }
            if (!(AdMarvelWebView.this.D.get() || !AdMarvelWebView.this.r.compareAndSet(true, false) || AdMarvelWebView.a(AdMarvelWebView.this.e) == null)) {
                AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this, AdMarvelWebView.this.S);
            }
            AdMarvelWebView.this.E.set(true);
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            Logging.log("Load Ad: onPageStarted");
            AdMarvelWebView.this.E.set(false);
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            Logging.log("Load Ad : onReceivedError Failing URL - " + str2);
            super.onReceivedError(webView, i, str, str2);
            if (AdMarvelWebView.this.r.compareAndSet(true, false) && AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this, AdMarvelWebView.this.S, 305, Utils.getErrorReason(305));
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Logging.log("Load Ad : shouldOverrideUrlLoading URL - " + str);
            if (str == null) {
                return false;
            }
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) AdMarvelWebView.this.findViewWithTag(AdMarvelWebView.this.e + "INTERNAL");
                if (adMarvelInternalWebView == null && AdMarvelWebView.this.O) {
                    Context context = AdMarvelWebView.this.getContext();
                    if (context != null && context instanceof Activity) {
                        adMarvelInternalWebView = (AdMarvelInternalWebView) ((ViewGroup) ((Activity) context).getWindow().findViewById(16908290)).findViewWithTag(AdMarvelWebView.this.e + "INTERNAL");
                    }
                }
                if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                    return false;
                }
                if (Utils.isNoLink(str)) {
                    return true;
                }
                if (AdMarvelWebView.this.q && Utils.handledBySpecialIntents(AdMarvelWebView.this.getContext(), str, AdMarvelWebView.this.aq)) {
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                    if (AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                        AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this.S, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), AdMarvelWebView.this.getContext()));
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                    if (AdMarvelWebView.a(AdMarvelWebView.this.e) != null) {
                        AdMarvelWebView.a(AdMarvelWebView.this.e).a(AdMarvelWebView.this.S, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), AdMarvelWebView.this.getContext()));
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                    String parsePrivateProtocol = Utils.parsePrivateProtocol(str, "admarvelvideo", "http://", Utils.isPrivateProtocol(str, "admarvelvideo"), AdMarvelWebView.this.getContext());
                    intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                    if (Utils.isIntentAvailable(AdMarvelWebView.this.getContext(), intent)) {
                        AdMarvelWebView.this.getContext().startActivity(intent);
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (str != null && Utils.isPrivateProtocol(str, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(str, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelexternal"), AdMarvelWebView.this.getContext())));
                    intent2.addFlags(DriveFile.MODE_READ_ONLY);
                    if (Utils.isIntentAvailable(AdMarvelWebView.this.getContext(), intent2)) {
                        AdMarvelWebView.this.getContext().startActivity(intent2);
                    }
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                } else if (!(str == null || Utils.isPrivateProtocol(str, "admarvelcustomvideo") == PROTOCOL_TYPE.NONE)) {
                    intent = new Intent(AdMarvelWebView.this.getContext(), AdMarvelVideoActivity.class);
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                    AdMarvelWebView.this.S.removeNonStringEntriesTargetParam();
                    try {
                        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                        objectOutputStream.writeObject(AdMarvelWebView.this.S);
                        objectOutputStream.close();
                        intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    intent.putExtra("isCustomUrl", true);
                    intent.putExtra("xml", AdMarvelWebView.this.H);
                    intent.putExtra(Event.SOURCE, AdMarvelWebView.this.o);
                    intent.putExtra("GUID", AdMarvelWebView.this.e);
                    AdMarvelWebView.this.getContext().startActivity(intent);
                    new Utils(AdMarvelWebView.this.getContext(), AdMarvelWebView.this.I).registerTrackingEvent(AdMarvelWebView.this.H);
                    return true;
                }
                if (AdMarvelWebView.this.F.get() || adMarvelInternalWebView.b()) {
                    AdMarvelWebView.this.d(str);
                }
                return true;
            } catch (Exception e2) {
                Logging.log(e2.getMessage() + "exception in shouldOverrideUrlLoading");
            }
        }
    }

    private static class d implements d, l {
        private final WeakReference a;

        public d(AdMarvelWebView adMarvelWebView) {
            this.a = new WeakReference(adMarvelWebView);
        }

        public void a() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "INTERNAL");
                if (adMarvelInternalWebView != null) {
                    adMarvelWebView.P = false;
                    adMarvelWebView.A = false;
                    if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                        AdMarvelWebView.a(adMarvelWebView.e).b();
                    }
                    if (adMarvelWebView.c != null) {
                        adMarvelInternalWebView.loadUrl("javascript:" + adMarvelWebView.c + "()");
                    }
                }
            }
        }

        public void a(String str) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
            if (adMarvelWebView != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) adMarvelWebView.findViewWithTag(str + "INTERNAL");
                if (adMarvelInternalWebView != null && adMarvelInternalWebView.mInAppBrowserCloseCallback != null && adMarvelInternalWebView.mInAppBrowserCloseCallback.length() > 0) {
                    adMarvelInternalWebView.loadUrl("javascript:" + adMarvelInternalWebView.mInAppBrowserCloseCallback + "()");
                }
            }
        }

        public void b() {
            this.a.clear();
        }
    }

    private static class e {
        public byte[] a;
        public int b;

        private e() {
            this.a = null;
            this.b = 0;
        }
    }

    private static class f implements Runnable {
        private final String a;
        private final WeakReference b;
        private final WeakReference c;

        public f(String str, AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelWebView adMarvelWebView) {
            this.a = str;
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = new WeakReference(adMarvelWebView);
        }

        public void run() {
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.c.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    int i;
                    int i2;
                    String str;
                    String str2;
                    String str3;
                    StringBuilder append;
                    boolean z;
                    String toString;
                    String str4;
                    AdMarvelView adMarvelView;
                    int[] iArr;
                    Activity activity;
                    ViewGroup viewGroup;
                    DisplayMetrics displayMetrics;
                    int measuredHeight;
                    int i3;
                    int i4;
                    int width;
                    int height;
                    int[] iArr2;
                    int i5;
                    int i6;
                    int i7;
                    int i8;
                    int i9;
                    int i10;
                    String str5;
                    int top;
                    Activity activity2;
                    String supportedInterfaceOrientations;
                    ViewGroup viewGroup2;
                    int height2;
                    String str6;
                    Location location = null;
                    String str7 = AdTrackerConstants.BLANK;
                    if (Version.getAndroidSDKVersion() < 9) {
                        i = adMarvelWebView.getResources().getConfiguration().orientation;
                        if (i == 1) {
                            i2 = 0;
                        } else {
                            if (i == 2) {
                                i2 = 90;
                            }
                            i2 = -1;
                        }
                    } else {
                        i = adMarvelWebView.M;
                        if (i == 0) {
                            i2 = 0;
                        } else if (i == 1) {
                            i2 = 90;
                        } else if (i == 2) {
                            i2 = 180;
                        } else {
                            if (i == 3) {
                                i2 = -90;
                            }
                            i2 = -1;
                        }
                    }
                    str7 = "NO";
                    String deviceConnectivitiy = Utils.getDeviceConnectivitiy(adMarvelWebView.getContext());
                    if (!deviceConnectivitiy.equals("wifi")) {
                        if (!deviceConnectivitiy.equals("mobile")) {
                            str = "NO";
                            if (Utils.isFeatureSupported(adMarvelWebView.getContext(), "location")) {
                                location = i.a().a(adMarvelInternalWebView);
                            }
                            str2 = location == null ? "{lat:" + location.getLatitude() + ", lon:" + location.getLongitude() + ", acc:" + location.getAccuracy() + "}" : "null";
                            str3 = Version.SDK_VERSION;
                            append = new StringBuilder().append("{screen: true, orientation: true, heading: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "compass")).append(", location : ");
                            z = Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.ACCESS_FINE_LOCATION");
                            append = append.append(z).append(",shake: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(",tilt: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(", network: true, sms:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", phone:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", email:true,calendar:");
                            z = Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR");
                            toString = append.append(z).append(", camera: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                            str4 = "Banner";
                            adMarvelView = (AdMarvelView) adMarvelInternalWebView.adMarvelViewReference.get();
                            if (adMarvelView == null) {
                                iArr = new int[2];
                                try {
                                    adMarvelInternalWebView.getLocationOnScreen(iArr);
                                } catch (Exception e) {
                                    iArr[0] = 0;
                                    iArr[1] = 0;
                                } catch (NullPointerException e2) {
                                    Logging.log(Log.getStackTraceString(e2));
                                }
                                if (adMarvelWebView.getContext() instanceof Activity) {
                                    activity = (Activity) adMarvelWebView.getContext();
                                    if (activity != null) {
                                        if (adMarvelWebView.f == Integer.MIN_VALUE || adMarvelWebView.f < 0) {
                                            viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                                            displayMetrics = new DisplayMetrics();
                                            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                                            measuredHeight = displayMetrics.heightPixels - viewGroup.getMeasuredHeight();
                                            if (measuredHeight >= 0 && adMarvelWebView.f == Integer.MIN_VALUE) {
                                                adMarvelWebView.f = measuredHeight;
                                            }
                                            i3 = iArr[0];
                                            i4 = iArr[1] - measuredHeight;
                                            width = adMarvelInternalWebView.getWidth();
                                            height = adMarvelInternalWebView.getHeight();
                                            iArr2 = new int[2];
                                            adMarvelView.getLocationOnScreen(iArr2);
                                            i5 = iArr2[1] - measuredHeight;
                                            i6 = iArr2[0];
                                            i7 = height;
                                            i8 = width;
                                            i9 = i4;
                                            i10 = i3;
                                            i4 = adMarvelView.getHeight();
                                            i3 = adMarvelView.getWidth();
                                        } else {
                                            measuredHeight = adMarvelWebView.f;
                                            i3 = iArr[0];
                                            i4 = iArr[1] - measuredHeight;
                                            width = adMarvelInternalWebView.getWidth();
                                            height = adMarvelInternalWebView.getHeight();
                                            iArr2 = new int[2];
                                            adMarvelView.getLocationOnScreen(iArr2);
                                            i5 = iArr2[1] - measuredHeight;
                                            i6 = iArr2[0];
                                            i7 = height;
                                            i8 = width;
                                            i9 = i4;
                                            i10 = i3;
                                            i4 = adMarvelView.getHeight();
                                            i3 = adMarvelView.getWidth();
                                        }
                                    }
                                }
                                measuredHeight = 0;
                                i3 = iArr[0];
                                i4 = iArr[1] - measuredHeight;
                                width = adMarvelInternalWebView.getWidth();
                                height = adMarvelInternalWebView.getHeight();
                                iArr2 = new int[2];
                                adMarvelView.getLocationOnScreen(iArr2);
                                i5 = iArr2[1] - measuredHeight;
                                i6 = iArr2[0];
                                i7 = height;
                                i8 = width;
                                i9 = i4;
                                i10 = i3;
                                i4 = adMarvelView.getHeight();
                                i3 = adMarvelView.getWidth();
                            } else {
                                i6 = 0;
                                i7 = 0;
                                i8 = 0;
                                i9 = 0;
                                i10 = 0;
                                i5 = 0;
                                i4 = 0;
                                i3 = 0;
                            }
                            str5 = "0,90";
                            height = adMarvelWebView.getRootView().getLeft();
                            top = adMarvelWebView.getRootView().getTop();
                            i = adMarvelWebView.getRootView().getWidth();
                            measuredHeight = adMarvelWebView.getRootView().getHeight();
                            if (adMarvelWebView.getContext() instanceof Activity) {
                                activity2 = (Activity) adMarvelWebView.getContext();
                                if (activity2 != null) {
                                    supportedInterfaceOrientations = Utils.getSupportedInterfaceOrientations(activity2);
                                    viewGroup2 = (ViewGroup) activity2.getWindow().findViewById(16908290);
                                    top = viewGroup2.getLeft();
                                    i = viewGroup2.getTop();
                                    measuredHeight = viewGroup2.getWidth();
                                    height2 = viewGroup2.getHeight();
                                    try {
                                        str6 = "javascript:" + this.a + "({x:" + i10 + ",y:" + i9 + ",width:" + i8 + ",height:" + i7 + ",appX:" + top + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height2 + ",orientation:" + i2 + ",defaultX:" + i6 + ",defaultY:" + i5 + ",defaultWidth:" + i3 + ",defaultHeight:" + i4 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                                        adMarvelInternalWebView.loadUrl(str6);
                                        Logging.log("Updating Frame values : " + str6);
                                    } catch (Exception e3) {
                                        Logging.log(Log.getStackTraceString(e3));
                                    } catch (NullPointerException e22) {
                                        Logging.log(Log.getStackTraceString(e22));
                                    }
                                }
                            }
                            height2 = measuredHeight;
                            measuredHeight = i;
                            i = top;
                            top = height;
                            supportedInterfaceOrientations = str5;
                            str6 = "javascript:" + this.a + "({x:" + i10 + ",y:" + i9 + ",width:" + i8 + ",height:" + i7 + ",appX:" + top + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height2 + ",orientation:" + i2 + ",defaultX:" + i6 + ",defaultY:" + i5 + ",defaultWidth:" + i3 + ",defaultHeight:" + i4 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                            adMarvelInternalWebView.loadUrl(str6);
                            Logging.log("Updating Frame values : " + str6);
                        }
                    }
                    str = "YES";
                    if (Utils.isFeatureSupported(adMarvelWebView.getContext(), "location")) {
                        location = i.a().a(adMarvelInternalWebView);
                    }
                    if (location == null) {
                    }
                    str3 = Version.SDK_VERSION;
                    append = new StringBuilder().append("{screen: true, orientation: true, heading: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "compass")).append(", location : ");
                    append = append.append(z).append(",shake: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(",tilt: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(", network: true, sms:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", phone:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", email:true,calendar:");
                    toString = append.append(z).append(", camera: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                    str4 = "Banner";
                    adMarvelView = (AdMarvelView) adMarvelInternalWebView.adMarvelViewReference.get();
                    if (adMarvelView == null) {
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        i5 = 0;
                        i4 = 0;
                        i3 = 0;
                    } else {
                        iArr = new int[2];
                        adMarvelInternalWebView.getLocationOnScreen(iArr);
                        if (adMarvelWebView.getContext() instanceof Activity) {
                            activity = (Activity) adMarvelWebView.getContext();
                            if (activity != null) {
                                viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                                displayMetrics = new DisplayMetrics();
                                activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                                measuredHeight = displayMetrics.heightPixels - viewGroup.getMeasuredHeight();
                                adMarvelWebView.f = measuredHeight;
                                i3 = iArr[0];
                                i4 = iArr[1] - measuredHeight;
                                width = adMarvelInternalWebView.getWidth();
                                height = adMarvelInternalWebView.getHeight();
                                iArr2 = new int[2];
                                adMarvelView.getLocationOnScreen(iArr2);
                                i5 = iArr2[1] - measuredHeight;
                                i6 = iArr2[0];
                                i7 = height;
                                i8 = width;
                                i9 = i4;
                                i10 = i3;
                                i4 = adMarvelView.getHeight();
                                i3 = adMarvelView.getWidth();
                            }
                        }
                        measuredHeight = 0;
                        i3 = iArr[0];
                        i4 = iArr[1] - measuredHeight;
                        width = adMarvelInternalWebView.getWidth();
                        height = adMarvelInternalWebView.getHeight();
                        iArr2 = new int[2];
                        adMarvelView.getLocationOnScreen(iArr2);
                        i5 = iArr2[1] - measuredHeight;
                        i6 = iArr2[0];
                        i7 = height;
                        i8 = width;
                        i9 = i4;
                        i10 = i3;
                        i4 = adMarvelView.getHeight();
                        i3 = adMarvelView.getWidth();
                    }
                    str5 = "0,90";
                    height = adMarvelWebView.getRootView().getLeft();
                    top = adMarvelWebView.getRootView().getTop();
                    i = adMarvelWebView.getRootView().getWidth();
                    measuredHeight = adMarvelWebView.getRootView().getHeight();
                    if (adMarvelWebView.getContext() instanceof Activity) {
                        activity2 = (Activity) adMarvelWebView.getContext();
                        if (activity2 != null) {
                            supportedInterfaceOrientations = Utils.getSupportedInterfaceOrientations(activity2);
                            viewGroup2 = (ViewGroup) activity2.getWindow().findViewById(16908290);
                            top = viewGroup2.getLeft();
                            i = viewGroup2.getTop();
                            measuredHeight = viewGroup2.getWidth();
                            height2 = viewGroup2.getHeight();
                            str6 = "javascript:" + this.a + "({x:" + i10 + ",y:" + i9 + ",width:" + i8 + ",height:" + i7 + ",appX:" + top + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height2 + ",orientation:" + i2 + ",defaultX:" + i6 + ",defaultY:" + i5 + ",defaultWidth:" + i3 + ",defaultHeight:" + i4 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                            adMarvelInternalWebView.loadUrl(str6);
                            Logging.log("Updating Frame values : " + str6);
                        }
                    }
                    height2 = measuredHeight;
                    measuredHeight = i;
                    i = top;
                    top = height;
                    supportedInterfaceOrientations = str5;
                    str6 = "javascript:" + this.a + "({x:" + i10 + ",y:" + i9 + ",width:" + i8 + ",height:" + i7 + ",appX:" + top + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height2 + ",orientation:" + i2 + ",defaultX:" + i6 + ",defaultY:" + i5 + ",defaultWidth:" + i3 + ",defaultHeight:" + i4 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                    adMarvelInternalWebView.loadUrl(str6);
                    Logging.log("Updating Frame values : " + str6);
                }
            } catch (NullPointerException e222) {
                Logging.log(Log.getStackTraceString(e222));
            } catch (Exception e4) {
                Logging.log(Log.getStackTraceString(e4));
            }
        }
    }

    private static class g implements Runnable {
        private final WeakReference a;
        private final String b;

        public g(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = str;
        }

        public void run() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null) {
                if (Utils.isNetworkAvailable(adMarvelInternalWebView.getContext())) {
                    adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"YES\")");
                } else {
                    adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                }
            }
        }
    }

    private static class h implements Runnable {
        private final WeakReference a;

        public h(AdMarvelWebView adMarvelWebView) {
            this.a = new WeakReference(adMarvelWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                if (adMarvelWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null) {
                        cVar.c();
                        cVar.b();
                        adMarvelWebView.removeView(cVar);
                        cVar.a = null;
                    }
                    if (adMarvelWebView.al != null) {
                        adMarvelWebView.I.removeCallbacks(adMarvelWebView.al);
                        adMarvelWebView.al = null;
                    }
                    Utils.cleanCachedEmebededVideo(adMarvelWebView.getContext());
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "INTERNAL");
                    if (adMarvelInternalWebView != null) {
                        adMarvelInternalWebView.g();
                        adMarvelInternalWebView.visibilityCallback = null;
                        adMarvelInternalWebView.invalidate();
                        adMarvelInternalWebView.requestLayout();
                    }
                    LayoutParams layoutParams = (LayoutParams) adMarvelWebView.getLayoutParams();
                    layoutParams.height = -2;
                    adMarvelWebView.setLayoutParams(layoutParams);
                    adMarvelWebView.forceLayout();
                    adMarvelWebView.requestLayout();
                    adMarvelWebView.invalidate();
                    adMarvelWebView.requestFocus();
                    this.a.clear();
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class i extends LinearLayout {
        private final WeakReference a;

        class AnonymousClass_1 implements View.OnClickListener {
            final /* synthetic */ AdMarvelWebView a;

            AnonymousClass_1(AdMarvelWebView adMarvelWebView) {
                this.a = adMarvelWebView;
            }

            public void onClick(View view) {
                this.a.I.post(new j(this.a));
            }
        }

        public i(Context context, AdMarvelWebView adMarvelWebView) {
            super(context);
            this.a = new WeakReference(adMarvelWebView);
            a(context);
        }

        private void a(Context context) {
            setBackgroundColor(0);
            ViewGroup.LayoutParams layoutParams = new LayoutParams(Utils.dipValue(50.0f, context), Utils.dipValue(50.0f, context));
            layoutParams.weight = 1.0f;
            layoutParams.width = 0;
            layoutParams.gravity = 17;
            setLayoutParams(layoutParams);
            LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            layoutParams2.weight = 25.0f;
            layoutParams2.gravity = 17;
            float applyDimension = TypedValue.applyDimension(1, 36.0f, getResources().getDisplayMetrics());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) applyDimension, (int) applyDimension);
            layoutParams3.addRule(R.styleable.MapAttrs_zOrderOnTop);
            a(context, layoutParams3, layoutParams);
        }

        private void a(Context context, RelativeLayout.LayoutParams layoutParams, LayoutParams layoutParams2) {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
            if (adMarvelWebView != null) {
                View imageView = new ImageView(context);
                imageView.setLayoutParams(layoutParams);
                Drawable bitMapDrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", context);
                imageView.setTag("BTN_CLOSE_IMAGE");
                if (adMarvelWebView.w) {
                    imageView.setBackgroundColor(0);
                } else {
                    imageView.setImageDrawable(bitMapDrawable);
                }
                View relativeLayout = new RelativeLayout(context);
                relativeLayout.setLayoutParams(layoutParams2);
                relativeLayout.addView(imageView);
                relativeLayout.setOnClickListener(new AnonymousClass_1(adMarvelWebView));
                addView(relativeLayout);
            }
        }
    }

    private static class j implements Runnable {
        private final WeakReference a;

        public j(AdMarvelWebView adMarvelWebView) {
            this.a = new WeakReference(adMarvelWebView);
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
            if (adMarvelWebView != null) {
                adMarvelWebView.d();
            }
        }
    }

    private static class k implements Runnable {
        SimpleDateFormat a;
        Long b;
        Long c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        int j;
        private final WeakReference k;
        private final WeakReference l;

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public k(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelWebView r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.k.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelWebView, java.lang.String, java.lang.String, java.lang.String):void");
            /*
            r4 = this;
            r2 = 0;
            r4.<init>();
            r0 = new java.text.SimpleDateFormat;
            r1 = "yyyyMMddhhmm";
            r0.<init>(r1);
            r4.a = r0;
            r4.b = r2;
            r4.c = r2;
            r0 = 1;
            r4.j = r0;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r6);
            r4.k = r0;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r5);
            r4.l = r0;
            if (r7 == 0) goto L_0x0048;
        L_0x0024:
            r0 = r4.a;	 Catch:{ Exception -> 0x004d }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x004d }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x004d }
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x004d }
            r4.b = r0;	 Catch:{ Exception -> 0x004d }
            r0 = r4.a;	 Catch:{ Exception -> 0x004d }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x004d }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x004d }
            r2 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
            r0 = r0 + r2;
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x004d }
            r4.c = r0;	 Catch:{ Exception -> 0x004d }
        L_0x0048:
            r4.d = r8;	 Catch:{ Exception -> 0x004d }
            r4.e = r9;	 Catch:{ Exception -> 0x004d }
        L_0x004c:
            return;
        L_0x004d:
            r0 = move-exception;
            r0 = android.util.Log.getStackTraceString(r0);
            com.admarvel.android.util.Logging.log(r0);
            goto L_0x004c;
            */
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public k(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelWebView r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, int r13) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.k.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelWebView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):void");
            /*
            r4 = this;
            r2 = 0;
            r4.<init>();
            r0 = new java.text.SimpleDateFormat;
            r1 = "yyyyMMddhhmm";
            r0.<init>(r1);
            r4.a = r0;
            r4.b = r2;
            r4.c = r2;
            r0 = 1;
            r4.j = r0;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r6);
            r4.k = r0;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r5);
            r4.l = r0;
            if (r7 == 0) goto L_0x0034;
        L_0x0024:
            r0 = r4.a;	 Catch:{ Exception -> 0x006a }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x006a }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x006a }
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x006a }
            r4.b = r0;	 Catch:{ Exception -> 0x006a }
        L_0x0034:
            if (r12 == 0) goto L_0x0055;
        L_0x0036:
            r0 = r4.a;	 Catch:{ Exception -> 0x006a }
            r0 = r0.parse(r12);	 Catch:{ Exception -> 0x006a }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x006a }
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x006a }
            r4.c = r0;	 Catch:{ Exception -> 0x006a }
        L_0x0046:
            r4.d = r8;	 Catch:{ Exception -> 0x006a }
            r4.e = r9;	 Catch:{ Exception -> 0x006a }
            r4.f = r10;	 Catch:{ Exception -> 0x006a }
            r4.g = r11;	 Catch:{ Exception -> 0x006a }
            if (r13 > 0) goto L_0x0054;
        L_0x0050:
            r0 = r13 / 60;
            r4.j = r0;	 Catch:{ Exception -> 0x006a }
        L_0x0054:
            return;
        L_0x0055:
            r0 = r4.a;	 Catch:{ Exception -> 0x006a }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x006a }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x006a }
            r2 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
            r0 = r0 + r2;
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x006a }
            r4.c = r0;	 Catch:{ Exception -> 0x006a }
            goto L_0x0046;
        L_0x006a:
            r0 = move-exception;
            r0.printStackTrace();
            goto L_0x0054;
            */
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public k(com.admarvel.android.ads.AdMarvelInternalWebView r6, com.admarvel.android.ads.AdMarvelWebView r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, int r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, int r19, int r20, java.lang.String r21) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.k.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelWebView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, java.lang.String):void");
            /*
            r5 = this;
            r5.<init>();
            r1 = new java.text.SimpleDateFormat;
            r2 = "yyyyMMddhhmm";
            r1.<init>(r2);
            r5.a = r1;
            r1 = 0;
            r5.b = r1;
            r1 = 0;
            r5.c = r1;
            r1 = 1;
            r5.j = r1;
            r1 = new java.lang.ref.WeakReference;
            r1.<init>(r7);
            r5.k = r1;
            r1 = new java.lang.ref.WeakReference;
            r1.<init>(r6);
            r5.l = r1;
            if (r8 == 0) goto L_0x0035;
        L_0x0025:
            r1 = r5.a;	 Catch:{ Exception -> 0x0079 }
            r1 = r1.parse(r8);	 Catch:{ Exception -> 0x0079 }
            r1 = r1.getTime();	 Catch:{ Exception -> 0x0079 }
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ Exception -> 0x0079 }
            r5.b = r1;	 Catch:{ Exception -> 0x0079 }
        L_0x0035:
            if (r13 == 0) goto L_0x0064;
        L_0x0037:
            r1 = r5.a;	 Catch:{ Exception -> 0x0079 }
            r1 = r1.parse(r13);	 Catch:{ Exception -> 0x0079 }
            r1 = r1.getTime();	 Catch:{ Exception -> 0x0079 }
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ Exception -> 0x0079 }
            r5.c = r1;	 Catch:{ Exception -> 0x0079 }
        L_0x0047:
            r5.d = r9;	 Catch:{ Exception -> 0x0079 }
            r5.e = r10;	 Catch:{ Exception -> 0x0079 }
            r5.f = r11;	 Catch:{ Exception -> 0x0079 }
            r5.g = r12;	 Catch:{ Exception -> 0x0079 }
            if (r14 > 0) goto L_0x0055;
        L_0x0051:
            r1 = r14 / 60;
            r5.j = r1;	 Catch:{ Exception -> 0x0079 }
        L_0x0055:
            if (r15 == 0) goto L_0x005f;
        L_0x0057:
            r1 = r15.length();	 Catch:{ Exception -> 0x0079 }
            if (r1 <= 0) goto L_0x005f;
        L_0x005d:
            r5.h = r15;	 Catch:{ Exception -> 0x0079 }
        L_0x005f:
            r0 = r21;
            r5.i = r0;	 Catch:{ Exception -> 0x0079 }
        L_0x0063:
            return;
        L_0x0064:
            r1 = r5.a;	 Catch:{ Exception -> 0x0079 }
            r1 = r1.parse(r8);	 Catch:{ Exception -> 0x0079 }
            r1 = r1.getTime();	 Catch:{ Exception -> 0x0079 }
            r3 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
            r1 = r1 + r3;
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ Exception -> 0x0079 }
            r5.c = r1;	 Catch:{ Exception -> 0x0079 }
            goto L_0x0047;
        L_0x0079:
            r1 = move-exception;
            r1.printStackTrace();
            goto L_0x0063;
            */
        }

        String a() {
            return Version.getAndroidSDKVersion() >= 8 ? "content://com.android.calendar/" : "content://calendar/";
        }

        public void run() {
            Cursor query;
            Exception exception;
            Throwable th;
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.k.get();
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.l.get();
            if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                ContentResolver contentResolver = adMarvelWebView.getContext().getContentResolver();
                try {
                    query = contentResolver.query(Uri.parse(a() + "calendars"), new String[]{AnalyticsSQLiteHelper.GENERAL_ID, "displayname"}, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                String[] strArr = new String[query.getCount()];
                                int[] iArr = new int[query.getCount()];
                                int i = 0;
                                while (i < strArr.length) {
                                    iArr[i] = query.getInt(0);
                                    strArr[i] = query.getString(1);
                                    query.moveToNext();
                                    i++;
                                }
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("calendar_id", Integer.valueOf(iArr[0]));
                                if (this.d != null) {
                                    contentValues.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, this.d);
                                }
                                if (this.e != null) {
                                    contentValues.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, this.e);
                                }
                                if (this.f != null) {
                                    contentValues.put("eventLocation", this.f);
                                }
                                if (this.b != null) {
                                    contentValues.put("dtstart", this.b);
                                }
                                if (this.c != null) {
                                    contentValues.put("dtend", this.c);
                                }
                                if (this.g != null) {
                                    if (this.g.toLowerCase().equals("true") || this.g.toLowerCase().equals("yes")) {
                                        contentValues.put("allDay", Integer.valueOf(1));
                                    }
                                }
                                if (this.j <= 0) {
                                    contentValues.put("hasAlarm", Integer.valueOf(1));
                                }
                                if (this.h != null && this.h.length() > 0) {
                                    contentValues.put("eventTimezone", this.h);
                                }
                                Uri parse = Uri.parse(a() + "events");
                                Uri parse2 = Uri.parse(a() + "reminders");
                                Uri insert = contentResolver.insert(parse, contentValues);
                                if (insert != null) {
                                    if (this.j <= 0) {
                                        ContentValues contentValues2 = new ContentValues();
                                        contentValues2.put("event_id", Long.valueOf(Long.parseLong(insert.getLastPathSegment())));
                                        contentValues2.put("method", Integer.valueOf(1));
                                        contentValues2.put("minutes", Integer.valueOf(Math.abs(this.j)));
                                        contentResolver.insert(parse2, contentValues2);
                                    }
                                    if (this.i != null && this.i.length() > 0) {
                                        adMarvelInternalWebView.loadUrl("javascript:" + this.i + "(\"YES\")");
                                    }
                                } else if (this.i != null && this.i.length() > 0) {
                                    adMarvelInternalWebView.loadUrl("javascript:" + this.i + "(\"NO\")");
                                }
                            }
                        } catch (Exception e) {
                            exception = e;
                            try {
                                if (this.i != null && this.i.length() > 0) {
                                    adMarvelInternalWebView.loadUrl("javascript:" + this.i + "(\"NO\")");
                                }
                                exception.printStackTrace();
                                if (query != null) {
                                    query.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (query != null) {
                                    query.close();
                                }
                                throw th;
                            }
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (Exception e2) {
                    exception = e2;
                    query = null;
                    adMarvelInternalWebView.loadUrl("javascript:" + this.i + "(\"NO\")");
                    exception.printStackTrace();
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    query = null;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        }
    }

    private static class l implements Runnable {
        SimpleDateFormat a;
        Long b;
        Long c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        int l;
        int m;
        int n;
        private final WeakReference o;
        private final WeakReference p;

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public l(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelWebView r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.l.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelWebView, java.lang.String, java.lang.String, java.lang.String):void");
            /*
            r4 = this;
            r3 = 0;
            r2 = 0;
            r4.<init>();
            r0 = new java.text.SimpleDateFormat;
            r1 = "yyyyMMddhhmm";
            r0.<init>(r1);
            r4.a = r0;
            r4.b = r3;
            r4.c = r3;
            r0 = 1;
            r4.l = r0;
            r4.m = r2;
            r4.n = r2;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r6);
            r4.o = r0;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r5);
            r4.p = r0;
            if (r7 == 0) goto L_0x004d;
        L_0x0029:
            r0 = r4.a;	 Catch:{ Exception -> 0x0052 }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x0052 }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x0052 }
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x0052 }
            r4.b = r0;	 Catch:{ Exception -> 0x0052 }
            r0 = r4.a;	 Catch:{ Exception -> 0x0052 }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x0052 }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x0052 }
            r2 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
            r0 = r0 + r2;
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x0052 }
            r4.c = r0;	 Catch:{ Exception -> 0x0052 }
        L_0x004d:
            r4.d = r8;	 Catch:{ Exception -> 0x0052 }
            r4.e = r9;	 Catch:{ Exception -> 0x0052 }
        L_0x0051:
            return;
        L_0x0052:
            r0 = move-exception;
            r0.printStackTrace();
            goto L_0x0051;
            */
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public l(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelWebView r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, int r13) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.l.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelWebView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):void");
            /*
            r4 = this;
            r3 = 0;
            r2 = 0;
            r4.<init>();
            r0 = new java.text.SimpleDateFormat;
            r1 = "yyyyMMddhhmm";
            r0.<init>(r1);
            r4.a = r0;
            r4.b = r3;
            r4.c = r3;
            r0 = 1;
            r4.l = r0;
            r4.m = r2;
            r4.n = r2;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r6);
            r4.o = r0;
            r0 = new java.lang.ref.WeakReference;
            r0.<init>(r5);
            r4.p = r0;
            if (r7 == 0) goto L_0x0039;
        L_0x0029:
            r0 = r4.a;	 Catch:{ Exception -> 0x006f }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x006f }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x006f }
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x006f }
            r4.b = r0;	 Catch:{ Exception -> 0x006f }
        L_0x0039:
            if (r12 == 0) goto L_0x005a;
        L_0x003b:
            r0 = r4.a;	 Catch:{ Exception -> 0x006f }
            r0 = r0.parse(r12);	 Catch:{ Exception -> 0x006f }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x006f }
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x006f }
            r4.c = r0;	 Catch:{ Exception -> 0x006f }
        L_0x004b:
            r4.d = r8;	 Catch:{ Exception -> 0x006f }
            r4.e = r9;	 Catch:{ Exception -> 0x006f }
            r4.f = r10;	 Catch:{ Exception -> 0x006f }
            r4.g = r11;	 Catch:{ Exception -> 0x006f }
            if (r13 > 0) goto L_0x0059;
        L_0x0055:
            r0 = r13 / 60;
            r4.l = r0;	 Catch:{ Exception -> 0x006f }
        L_0x0059:
            return;
        L_0x005a:
            r0 = r4.a;	 Catch:{ Exception -> 0x006f }
            r0 = r0.parse(r7);	 Catch:{ Exception -> 0x006f }
            r0 = r0.getTime();	 Catch:{ Exception -> 0x006f }
            r2 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
            r0 = r0 + r2;
            r0 = java.lang.Long.valueOf(r0);	 Catch:{ Exception -> 0x006f }
            r4.c = r0;	 Catch:{ Exception -> 0x006f }
            goto L_0x004b;
        L_0x006f:
            r0 = move-exception;
            r0.printStackTrace();
            goto L_0x0059;
            */
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public l(com.admarvel.android.ads.AdMarvelInternalWebView r6, com.admarvel.android.ads.AdMarvelWebView r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, int r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, int r19, int r20, java.lang.String r21) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.l.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelWebView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, java.lang.String):void");
            /*
            r5 = this;
            r5.<init>();
            r1 = new java.text.SimpleDateFormat;
            r2 = "yyyyMMddhhmm";
            r1.<init>(r2);
            r5.a = r1;
            r1 = 0;
            r5.b = r1;
            r1 = 0;
            r5.c = r1;
            r1 = 1;
            r5.l = r1;
            r1 = 0;
            r5.m = r1;
            r1 = 0;
            r5.n = r1;
            r1 = new java.lang.ref.WeakReference;
            r1.<init>(r7);
            r5.o = r1;
            r1 = new java.lang.ref.WeakReference;
            r1.<init>(r6);
            r5.p = r1;
            if (r8 == 0) goto L_0x003b;
        L_0x002b:
            r1 = r5.a;	 Catch:{ Exception -> 0x00cb }
            r1 = r1.parse(r8);	 Catch:{ Exception -> 0x00cb }
            r1 = r1.getTime();	 Catch:{ Exception -> 0x00cb }
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ Exception -> 0x00cb }
            r5.b = r1;	 Catch:{ Exception -> 0x00cb }
        L_0x003b:
            if (r13 == 0) goto L_0x00b6;
        L_0x003d:
            r1 = r5.a;	 Catch:{ Exception -> 0x00cb }
            r1 = r1.parse(r13);	 Catch:{ Exception -> 0x00cb }
            r1 = r1.getTime();	 Catch:{ Exception -> 0x00cb }
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ Exception -> 0x00cb }
            r5.c = r1;	 Catch:{ Exception -> 0x00cb }
        L_0x004d:
            r5.d = r9;	 Catch:{ Exception -> 0x00cb }
            r5.e = r10;	 Catch:{ Exception -> 0x00cb }
            r5.f = r11;	 Catch:{ Exception -> 0x00cb }
            r5.g = r12;	 Catch:{ Exception -> 0x00cb }
            if (r14 > 0) goto L_0x005b;
        L_0x0057:
            r1 = r14 / 60;
            r5.l = r1;	 Catch:{ Exception -> 0x00cb }
        L_0x005b:
            if (r15 == 0) goto L_0x00a1;
        L_0x005d:
            r1 = r15.length();	 Catch:{ Exception -> 0x00cb }
            if (r1 <= 0) goto L_0x00a1;
        L_0x0063:
            r1 = 0;
            r2 = ":";
            r2 = r15.split(r2);	 Catch:{ Exception -> 0x0130 }
            r3 = r2.length;	 Catch:{ Exception -> 0x0130 }
            r4 = 2;
            if (r3 != r4) goto L_0x00f4;
        L_0x006e:
            r3 = 0;
            r3 = r2[r3];	 Catch:{ Exception -> 0x0130 }
            r4 = "+";
            r3 = r3.startsWith(r4);	 Catch:{ Exception -> 0x0130 }
            if (r3 == 0) goto L_0x00d0;
        L_0x0079:
            r1 = 0;
            r1 = r2[r1];	 Catch:{ Exception -> 0x0130 }
            r3 = 1;
            r1 = r1.substring(r3);	 Catch:{ Exception -> 0x0130 }
            r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x0130 }
            r1 = r1 * 60;
            r3 = 1;
            r2 = r2[r3];	 Catch:{ Exception -> 0x0130 }
            r2 = java.lang.Integer.parseInt(r2);	 Catch:{ Exception -> 0x0130 }
            r1 = r1 + r2;
        L_0x008f:
            r1 = r1 * 60;
            r1 = r1 * 1000;
            r1 = java.util.TimeZone.getAvailableIDs(r1);	 Catch:{ Exception -> 0x0130 }
            if (r1 == 0) goto L_0x00a1;
        L_0x0099:
            r2 = r1.length;	 Catch:{ Exception -> 0x0130 }
            if (r2 <= 0) goto L_0x00a1;
        L_0x009c:
            r2 = 0;
            r1 = r1[r2];	 Catch:{ Exception -> 0x0130 }
            r5.h = r1;	 Catch:{ Exception -> 0x0130 }
        L_0x00a1:
            r0 = r17;
            r5.i = r0;	 Catch:{ Exception -> 0x00cb }
            r0 = r18;
            r5.j = r0;	 Catch:{ Exception -> 0x00cb }
            r0 = r21;
            r5.k = r0;	 Catch:{ Exception -> 0x00cb }
            r0 = r19;
            r5.m = r0;	 Catch:{ Exception -> 0x00cb }
            r0 = r20;
            r5.n = r0;	 Catch:{ Exception -> 0x00cb }
        L_0x00b5:
            return;
        L_0x00b6:
            r1 = r5.a;	 Catch:{ Exception -> 0x00cb }
            r1 = r1.parse(r8);	 Catch:{ Exception -> 0x00cb }
            r1 = r1.getTime();	 Catch:{ Exception -> 0x00cb }
            r3 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
            r1 = r1 + r3;
            r1 = java.lang.Long.valueOf(r1);	 Catch:{ Exception -> 0x00cb }
            r5.c = r1;	 Catch:{ Exception -> 0x00cb }
            goto L_0x004d;
        L_0x00cb:
            r1 = move-exception;
            r1.printStackTrace();
            goto L_0x00b5;
        L_0x00d0:
            r3 = 0;
            r3 = r2[r3];	 Catch:{ Exception -> 0x0130 }
            r4 = "-";
            r3 = r3.startsWith(r4);	 Catch:{ Exception -> 0x0130 }
            if (r3 == 0) goto L_0x008f;
        L_0x00db:
            r1 = 0;
            r1 = r2[r1];	 Catch:{ Exception -> 0x0130 }
            r3 = 1;
            r1 = r1.substring(r3);	 Catch:{ Exception -> 0x0130 }
            r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x0130 }
            r1 = r1 * 60;
            r3 = 1;
            r2 = r2[r3];	 Catch:{ Exception -> 0x0130 }
            r2 = java.lang.Integer.parseInt(r2);	 Catch:{ Exception -> 0x0130 }
            r1 = r1 + r2;
            r1 = r1 * -1;
            goto L_0x008f;
        L_0x00f4:
            r3 = r2.length;	 Catch:{ Exception -> 0x0130 }
            r4 = 1;
            if (r3 != r4) goto L_0x008f;
        L_0x00f8:
            r3 = 0;
            r3 = r2[r3];	 Catch:{ Exception -> 0x0130 }
            r4 = "+";
            r3 = r3.startsWith(r4);	 Catch:{ Exception -> 0x0130 }
            if (r3 == 0) goto L_0x0113;
        L_0x0103:
            r1 = 0;
            r1 = r2[r1];	 Catch:{ Exception -> 0x0130 }
            r2 = 1;
            r1 = r1.substring(r2);	 Catch:{ Exception -> 0x0130 }
            r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x0130 }
            r1 = r1 * 60;
            goto L_0x008f;
        L_0x0113:
            r3 = 0;
            r3 = r2[r3];	 Catch:{ Exception -> 0x0130 }
            r4 = "-";
            r3 = r3.startsWith(r4);	 Catch:{ Exception -> 0x0130 }
            if (r3 == 0) goto L_0x008f;
        L_0x011e:
            r1 = 0;
            r1 = r2[r1];	 Catch:{ Exception -> 0x0130 }
            r2 = 1;
            r1 = r1.substring(r2);	 Catch:{ Exception -> 0x0130 }
            r1 = java.lang.Integer.parseInt(r1);	 Catch:{ Exception -> 0x0130 }
            r1 = r1 * 60;
            r1 = r1 * -1;
            goto L_0x008f;
        L_0x0130:
            r1 = move-exception;
            r1.printStackTrace();	 Catch:{ Exception -> 0x00cb }
            goto L_0x00a1;
            */
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        @android.annotation.TargetApi(14)
        public void run() {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelWebView.l.run():void");
            /*
            r9 = this;
            r7 = 0;
            r8 = 0;
            r0 = r9.o;
            r0 = r0.get();
            r0 = (com.admarvel.android.ads.AdMarvelWebView) r0;
            r1 = r9.p;
            r1 = r1.get();
            r6 = r1;
            r6 = (com.admarvel.android.ads.AdMarvelInternalWebView) r6;
            if (r0 == 0) goto L_0x0017;
        L_0x0015:
            if (r6 != 0) goto L_0x0018;
        L_0x0017:
            return;
        L_0x0018:
            r0 = r0.getContext();
            r0 = r0.getContentResolver();
            r1 = android.provider.CalendarContract.Calendars.CONTENT_URI;	 Catch:{ Exception -> 0x0247, all -> 0x0244 }
            r2 = 2;
            r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x0247, all -> 0x0244 }
            r3 = 0;
            r4 = "_id";
            r2[r3] = r4;	 Catch:{ Exception -> 0x0247, all -> 0x0244 }
            r3 = 1;
            r4 = "calendar_displayName";
            r2[r3] = r4;	 Catch:{ Exception -> 0x0247, all -> 0x0244 }
            r3 = 0;
            r4 = 0;
            r5 = 0;
            r1 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x0247, all -> 0x0244 }
            if (r1 == 0) goto L_0x0218;
        L_0x0038:
            r2 = r1.moveToFirst();	 Catch:{ Exception -> 0x01b1 }
            if (r2 == 0) goto L_0x0218;
        L_0x003e:
            r2 = r1.getCount();	 Catch:{ Exception -> 0x01b1 }
            r3 = new java.lang.String[r2];	 Catch:{ Exception -> 0x01b1 }
            r2 = r1.getCount();	 Catch:{ Exception -> 0x01b1 }
            r4 = new int[r2];	 Catch:{ Exception -> 0x01b1 }
            r2 = r8;
        L_0x004b:
            r5 = r3.length;	 Catch:{ Exception -> 0x01b1 }
            if (r2 >= r5) goto L_0x0062;
        L_0x004e:
            r5 = 0;
            r5 = r1.getInt(r5);	 Catch:{ Exception -> 0x01b1 }
            r4[r2] = r5;	 Catch:{ Exception -> 0x01b1 }
            r5 = 1;
            r5 = r1.getString(r5);	 Catch:{ Exception -> 0x01b1 }
            r3[r2] = r5;	 Catch:{ Exception -> 0x01b1 }
            r1.moveToNext();	 Catch:{ Exception -> 0x01b1 }
            r2 = r2 + 1;
            goto L_0x004b;
        L_0x0062:
            r2 = new android.content.ContentValues;	 Catch:{ Exception -> 0x01b1 }
            r2.<init>();	 Catch:{ Exception -> 0x01b1 }
            r3 = "calendar_id";
            r5 = 0;
            r4 = r4[r5];	 Catch:{ Exception -> 0x01b1 }
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
            r3 = r9.d;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x007e;
        L_0x0077:
            r3 = "title";
            r4 = r9.d;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x007e:
            r3 = r9.e;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x0089;
        L_0x0082:
            r3 = "description";
            r4 = r9.e;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x0089:
            r3 = r9.f;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x0094;
        L_0x008d:
            r3 = "eventLocation";
            r4 = r9.f;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x0094:
            r3 = r9.b;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x009f;
        L_0x0098:
            r3 = "dtstart";
            r4 = r9.b;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x009f:
            r3 = r9.c;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x00aa;
        L_0x00a3:
            r3 = "dtend";
            r4 = r9.c;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x00aa:
            r3 = r9.g;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x00d4;
        L_0x00ae:
            r3 = r9.g;	 Catch:{ Exception -> 0x01b1 }
            r3 = r3.toLowerCase();	 Catch:{ Exception -> 0x01b1 }
            r4 = "true";
            r3 = r3.equals(r4);	 Catch:{ Exception -> 0x01b1 }
            if (r3 != 0) goto L_0x00ca;
        L_0x00bc:
            r3 = r9.g;	 Catch:{ Exception -> 0x01b1 }
            r3 = r3.toLowerCase();	 Catch:{ Exception -> 0x01b1 }
            r4 = "yes";
            r3 = r3.equals(r4);	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x00d4;
        L_0x00ca:
            r3 = "allDay";
            r4 = 1;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x00d4:
            r3 = r9.l;	 Catch:{ Exception -> 0x01b1 }
            if (r3 > 0) goto L_0x00e2;
        L_0x00d8:
            r3 = "hasAlarm";
            r4 = 1;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x00e2:
            r3 = r9.h;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x01a2;
        L_0x00e6:
            r3 = r9.h;	 Catch:{ Exception -> 0x01b1 }
            r3 = r3.length();	 Catch:{ Exception -> 0x01b1 }
            if (r3 <= 0) goto L_0x01a2;
        L_0x00ee:
            r3 = "eventTimezone";
            r4 = r9.h;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x00f5:
            r3 = r9.i;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x0108;
        L_0x00f9:
            r3 = r9.i;	 Catch:{ Exception -> 0x01b1 }
            r3 = r3.length();	 Catch:{ Exception -> 0x01b1 }
            if (r3 <= 0) goto L_0x0108;
        L_0x0101:
            r3 = "rrule";
            r4 = r9.i;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x0108:
            r3 = r9.j;	 Catch:{ Exception -> 0x01b1 }
            if (r3 == 0) goto L_0x011b;
        L_0x010c:
            r3 = r9.j;	 Catch:{ Exception -> 0x01b1 }
            r3 = r3.length();	 Catch:{ Exception -> 0x01b1 }
            if (r3 <= 0) goto L_0x011b;
        L_0x0114:
            r3 = "exdate";
            r4 = r9.j;	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
        L_0x011b:
            r3 = "eventStatus";
            r4 = r9.m;	 Catch:{ Exception -> 0x01b1 }
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
            r3 = "availability";
            r4 = r9.n;	 Catch:{ Exception -> 0x01b1 }
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r2.put(r3, r4);	 Catch:{ Exception -> 0x01b1 }
            r3 = android.provider.CalendarContract.Events.CONTENT_URI;	 Catch:{ Exception -> 0x01b1 }
            r2 = r0.insert(r3, r2);	 Catch:{ Exception -> 0x01b1 }
            if (r2 == 0) goto L_0x01e6;
        L_0x0139:
            r3 = r9.l;	 Catch:{ Exception -> 0x01b1 }
            if (r3 > 0) goto L_0x0171;
        L_0x013d:
            r3 = new android.content.ContentValues;	 Catch:{ Exception -> 0x01b1 }
            r3.<init>();	 Catch:{ Exception -> 0x01b1 }
            r4 = "event_id";
            r2 = r2.getLastPathSegment();	 Catch:{ Exception -> 0x01b1 }
            r7 = java.lang.Long.parseLong(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = java.lang.Long.valueOf(r7);	 Catch:{ Exception -> 0x01b1 }
            r3.put(r4, r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = "method";
            r4 = 1;
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r3.put(r2, r4);	 Catch:{ Exception -> 0x01b1 }
            r2 = "minutes";
            r4 = r9.l;	 Catch:{ Exception -> 0x01b1 }
            r4 = java.lang.Math.abs(r4);	 Catch:{ Exception -> 0x01b1 }
            r4 = java.lang.Integer.valueOf(r4);	 Catch:{ Exception -> 0x01b1 }
            r3.put(r2, r4);	 Catch:{ Exception -> 0x01b1 }
            r2 = android.provider.CalendarContract.Reminders.CONTENT_URI;	 Catch:{ Exception -> 0x01b1 }
            r0.insert(r2, r3);	 Catch:{ Exception -> 0x01b1 }
        L_0x0171:
            r0 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            if (r0 == 0) goto L_0x019b;
        L_0x0175:
            r0 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.length();	 Catch:{ Exception -> 0x01b1 }
            if (r0 <= 0) goto L_0x019b;
        L_0x017d:
            r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01b1 }
            r0.<init>();	 Catch:{ Exception -> 0x01b1 }
            r2 = "javascript:";
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = "(\"YES\")";
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.toString();	 Catch:{ Exception -> 0x01b1 }
            r6.loadUrl(r0);	 Catch:{ Exception -> 0x01b1 }
        L_0x019b:
            if (r1 == 0) goto L_0x0017;
        L_0x019d:
            r1.close();
            goto L_0x0017;
        L_0x01a2:
            r3 = java.util.TimeZone.getDefault();	 Catch:{ Exception -> 0x01b1 }
            r4 = "eventTimezone";
            r3 = r3.getID();	 Catch:{ Exception -> 0x01b1 }
            r2.put(r4, r3);	 Catch:{ Exception -> 0x01b1 }
            goto L_0x00f5;
        L_0x01b1:
            r0 = move-exception;
        L_0x01b2:
            r0.printStackTrace();	 Catch:{ all -> 0x0211 }
            r0 = r9.k;	 Catch:{ all -> 0x0211 }
            if (r0 == 0) goto L_0x01df;
        L_0x01b9:
            r0 = r9.k;	 Catch:{ all -> 0x0211 }
            r0 = r0.length();	 Catch:{ all -> 0x0211 }
            if (r0 <= 0) goto L_0x01df;
        L_0x01c1:
            r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0211 }
            r0.<init>();	 Catch:{ all -> 0x0211 }
            r2 = "javascript:";
            r0 = r0.append(r2);	 Catch:{ all -> 0x0211 }
            r2 = r9.k;	 Catch:{ all -> 0x0211 }
            r0 = r0.append(r2);	 Catch:{ all -> 0x0211 }
            r2 = "(\"NO\")";
            r0 = r0.append(r2);	 Catch:{ all -> 0x0211 }
            r0 = r0.toString();	 Catch:{ all -> 0x0211 }
            r6.loadUrl(r0);	 Catch:{ all -> 0x0211 }
        L_0x01df:
            if (r1 == 0) goto L_0x0017;
        L_0x01e1:
            r1.close();
            goto L_0x0017;
        L_0x01e6:
            r0 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            if (r0 == 0) goto L_0x019b;
        L_0x01ea:
            r0 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.length();	 Catch:{ Exception -> 0x01b1 }
            if (r0 <= 0) goto L_0x019b;
        L_0x01f2:
            r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01b1 }
            r0.<init>();	 Catch:{ Exception -> 0x01b1 }
            r2 = "javascript:";
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = "(\"NO\")";
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.toString();	 Catch:{ Exception -> 0x01b1 }
            r6.loadUrl(r0);	 Catch:{ Exception -> 0x01b1 }
            goto L_0x019b;
        L_0x0211:
            r0 = move-exception;
        L_0x0212:
            if (r1 == 0) goto L_0x0217;
        L_0x0214:
            r1.close();
        L_0x0217:
            throw r0;
        L_0x0218:
            r0 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            if (r0 == 0) goto L_0x019b;
        L_0x021c:
            r0 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.length();	 Catch:{ Exception -> 0x01b1 }
            if (r0 <= 0) goto L_0x019b;
        L_0x0224:
            r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01b1 }
            r0.<init>();	 Catch:{ Exception -> 0x01b1 }
            r2 = "javascript:";
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = r9.k;	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r2 = "(\"NO\")";
            r0 = r0.append(r2);	 Catch:{ Exception -> 0x01b1 }
            r0 = r0.toString();	 Catch:{ Exception -> 0x01b1 }
            r6.loadUrl(r0);	 Catch:{ Exception -> 0x01b1 }
            goto L_0x019b;
        L_0x0244:
            r0 = move-exception;
            r1 = r7;
            goto L_0x0212;
        L_0x0247:
            r0 = move-exception;
            r1 = r7;
            goto L_0x01b2;
            */
        }
    }

    private static class m implements Runnable {
        private final AdMarvelAd a;
        private final Context b;

        public m(AdMarvelAd adMarvelAd, Context context) {
            this.a = adMarvelAd;
            this.b = context;
        }

        public void run() {
            com.admarvel.android.util.a b = com.admarvel.android.util.a.b(this.b);
            if (b != null) {
                int adHistoryCounter = this.a.getAdHistoryCounter();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("/sse_");
                stringBuilder.append(adHistoryCounter);
                stringBuilder.append(".jpg");
                b.a(stringBuilder.toString());
            }
        }
    }

    private static class n implements Runnable {
        private int a;
        private int b;
        private int c;
        private int d;
        private final WeakReference e;
        private final WeakReference f;

        public n(AdMarvelWebView adMarvelWebView, Activity activity, int i, int i2) {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = new WeakReference(adMarvelWebView);
            this.f = new WeakReference(activity);
            this.a = i;
            this.b = i2;
        }

        public n(AdMarvelWebView adMarvelWebView, Activity activity, int i, int i2, int i3, int i4) {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = new WeakReference(adMarvelWebView);
            this.f = new WeakReference(activity);
            this.a = i3;
            this.b = i4;
            this.c = i;
            this.d = i2;
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.e.get();
            if (adMarvelWebView != null) {
                Activity activity = (Activity) this.f.get();
                if (activity != null) {
                    ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) viewGroup.findViewWithTag(adMarvelWebView.e + "INTERNAL");
                    if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && adMarvelWebView.O) {
                        RelativeLayout relativeLayout = (RelativeLayout) viewGroup.findViewWithTag(adMarvelWebView.e + "EXPAND_LAYOUT");
                        if (relativeLayout != null) {
                            FrameLayout frameLayout = (FrameLayout) viewGroup.findViewWithTag(adMarvelWebView.e + "EXPAND_BG");
                            if (frameLayout != null) {
                                frameLayout.setFocusableInTouchMode(true);
                                frameLayout.requestFocus();
                                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
                                if (layoutParams != null) {
                                    layoutParams.width = this.a;
                                    layoutParams.height = this.b;
                                    layoutParams.leftMargin = this.c;
                                    layoutParams.topMargin = this.d;
                                    if (this.c != 0) {
                                        layoutParams.gravity = 0;
                                    }
                                }
                                adMarvelInternalWebView.a(this.c, this.d, this.a, this.b);
                                if (adMarvelWebView.u) {
                                    LinearLayout linearLayout = (LinearLayout) viewGroup.findViewWithTag(adMarvelWebView.e + "BTN_CLOSE");
                                    if (linearLayout != null) {
                                        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                                        int measuredHeight = viewGroup.getMeasuredHeight();
                                        AdMarvelWebView.b(linearLayout, layoutParams2, adMarvelWebView.y, this.c, this.d, this.a, this.b, viewGroup.getMeasuredWidth(), measuredHeight, (int) TypedValue.applyDimension(1, BitmapDescriptorFactory.HUE_ORANGE, adMarvelWebView.getContext().getResources().getDisplayMetrics()));
                                        linearLayout.removeAllViews();
                                        linearLayout.addView(new i(adMarvelWebView.getContext(), adMarvelWebView));
                                    } else {
                                        return;
                                    }
                                }
                                adMarvelWebView.C = true;
                                viewGroup.invalidate();
                                viewGroup.requestLayout();
                                adMarvelWebView.a.set(true);
                                adMarvelWebView.invalidate();
                                adMarvelWebView.requestLayout();
                                if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                                    AdMarvelWebView.a(adMarvelWebView.e).a();
                                }
                                adMarvelWebView.invalidate();
                                adMarvelWebView.requestLayout();
                            }
                        }
                    }
                }
            }
        }
    }

    private static class o implements Runnable {
        private int a;
        private int b;
        private int c;
        private int d;
        private final WeakReference e;
        private final WeakReference f;
        private final AdMarvelAd g;

        class AnonymousClass_2 implements OnKeyListener {
            final /* synthetic */ AdMarvelWebView a;

            AnonymousClass_2(AdMarvelWebView adMarvelWebView) {
                this.a = adMarvelWebView;
            }

            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (keyEvent.getAction() != 0 || i != 4) {
                    return false;
                }
                this.a.d();
                return true;
            }
        }

        public o(AdMarvelWebView adMarvelWebView, Activity activity, int i, int i2, int i3, int i4, AdMarvelAd adMarvelAd) {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = new WeakReference(adMarvelWebView);
            this.f = new WeakReference(activity);
            this.a = i3;
            this.b = i4;
            this.c = i;
            this.d = i2;
            this.g = adMarvelAd;
        }

        public o(AdMarvelWebView adMarvelWebView, Activity activity, int i, int i2, AdMarvelAd adMarvelAd) {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = new WeakReference(adMarvelWebView);
            this.f = new WeakReference(activity);
            this.a = i;
            this.b = i2;
            this.g = adMarvelAd;
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.e.get();
                if (adMarvelWebView != null) {
                    Context context = (Activity) this.f.get();
                    if (context != null) {
                        ViewGroup viewGroup = (ViewGroup) context.getWindow().findViewById(16908290);
                        View view = (AdMarvelInternalWebView) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "INTERNAL");
                        if (view != null && !view.isSignalShutdown()) {
                            view.isAdExpanding = true;
                            View frameLayout = new FrameLayout(adMarvelWebView.getContext());
                            frameLayout.setTag(adMarvelWebView.e + "EXPAND_BG");
                            frameLayout.setOnTouchListener(new OnTouchListener() {
                                public boolean onTouch(View view, MotionEvent motionEvent) {
                                    return true;
                                }
                            });
                            frameLayout.setFocusableInTouchMode(true);
                            frameLayout.requestFocus();
                            frameLayout.setOnKeyListener(new AnonymousClass_2(adMarvelWebView));
                            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                            View relativeLayout = new RelativeLayout(adMarvelWebView.getContext());
                            relativeLayout.setTag(adMarvelWebView.e + "EXPAND_LAYOUT");
                            ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.a, this.b);
                            if (this.c == 0) {
                                layoutParams2.gravity = 1;
                            } else if (Version.getAndroidSDKVersion() < 11) {
                                layoutParams2.gravity = 48;
                            }
                            relativeLayout.setGravity(1);
                            layoutParams2.leftMargin = this.c;
                            layoutParams2.topMargin = this.d;
                            int childCount = adMarvelWebView.getChildCount();
                            int i = 0;
                            while (i < childCount && adMarvelWebView.getChildAt(i) != view) {
                                i++;
                            }
                            View frameLayout2 = new FrameLayout(adMarvelWebView.getContext());
                            frameLayout2.setTag(adMarvelWebView.e + "EXPAND_PLACE_HOLDER");
                            adMarvelWebView.addView(frameLayout2, i, new RelativeLayout.LayoutParams(view.getWidth(), view.getHeight()));
                            adMarvelWebView.removeView(view);
                            if (view != null) {
                                view.a(this.c, this.d, this.a, this.b);
                            }
                            relativeLayout.addView(view);
                            adMarvelWebView.O = true;
                            frameLayout.addView(relativeLayout, layoutParams2);
                            viewGroup.addView(frameLayout, layoutParams);
                            relativeLayout.bringToFront();
                            if (adMarvelWebView.v && !adMarvelWebView.C) {
                                View linearLayout = new LinearLayout(adMarvelWebView.getContext());
                                linearLayout.setBackgroundColor(0);
                                linearLayout.setTag(adMarvelWebView.e + "BTN_CLOSE");
                                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(Utils.dipValue(50.0f, adMarvelWebView.getContext()), Utils.dipValue(50.0f, adMarvelWebView.getContext()));
                                int measuredHeight = viewGroup.getMeasuredHeight();
                                AdMarvelWebView.b(linearLayout, layoutParams3, adMarvelWebView.y, this.c, this.d, this.a, this.b, viewGroup.getMeasuredWidth(), measuredHeight, (int) TypedValue.applyDimension(1, BitmapDescriptorFactory.HUE_ORANGE, adMarvelWebView.getContext().getResources().getDisplayMetrics()));
                                linearLayout.addView(new i(adMarvelWebView.getContext(), adMarvelWebView));
                                relativeLayout.addView(linearLayout);
                                adMarvelWebView.u = true;
                                adMarvelWebView.z = new z(adMarvelWebView, context, 3);
                                if (adMarvelWebView.z.canDetectOrientation()) {
                                    adMarvelWebView.z.enable();
                                }
                            }
                            viewGroup.invalidate();
                            viewGroup.requestLayout();
                            adMarvelWebView.a.set(true);
                            adMarvelWebView.invalidate();
                            adMarvelWebView.requestLayout();
                            if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                                AdMarvelWebView.a(adMarvelWebView.e).a();
                            }
                            adMarvelWebView.invalidate();
                            adMarvelWebView.requestLayout();
                            view.isAdExpanding = false;
                            if (AdMarvelUtils.isLogDumpEnabled()) {
                                new Handler().postDelayed(new m(this.g, context), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static class p implements Runnable {
        private String a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public p(AdMarvelWebView adMarvelWebView, String str, AdMarvelAd adMarvelAd) {
            this.a = null;
            this.b = new WeakReference(adMarvelWebView);
            this.a = str;
            this.c = adMarvelAd;
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.b.get();
            if (adMarvelWebView != null) {
                if (this.a == null || !URLUtil.isNetworkUrl(this.a) || Utils.isNetworkAvailable(adMarvelWebView.getContext())) {
                    Intent intent;
                    AdMarvelInternalWebView.a(adMarvelWebView.e, (l) adMarvelWebView.J.get());
                    intent = adMarvelWebView.aq ? new Intent(adMarvelWebView.getContext(), AdMarvelPostitialActivity.class) : new Intent(adMarvelWebView.getContext(), AdMarvelActivity.class);
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    if (adMarvelWebView.aq) {
                        intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
                    }
                    intent.putExtra(IMWebView.EXPAND_URL, this.a);
                    intent.putExtra("closeBtnEnabled", adMarvelWebView.x);
                    intent.putExtra("closeAreaEnabled", adMarvelWebView.w);
                    if (adMarvelWebView.N) {
                        intent.putExtra("orientationState", adMarvelWebView.B);
                    }
                    intent.putExtra("isInterstitial", false);
                    intent.putExtra("isInterstitialClick", false);
                    intent.putExtra(Event.SOURCE, adMarvelWebView.o);
                    intent.putExtra("GUID", adMarvelWebView.e);
                    this.c.removeNonStringEntriesTargetParam();
                    try {
                        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                        objectOutputStream.writeObject(this.c);
                        objectOutputStream.close();
                        intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    adMarvelWebView.getContext().startActivity(intent);
                    if (AdMarvelWebView.a(adMarvelWebView.e) != null) {
                        AdMarvelWebView.a(adMarvelWebView.e).a();
                    }
                    new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).registerTrackingEvent(adMarvelWebView.H);
                }
            }
        }
    }

    private static class q implements Runnable {
        private final WeakReference a;

        public q(AdMarvelWebView adMarvelWebView) {
            this.a = new WeakReference(adMarvelWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                if (adMarvelWebView != null) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null) {
                        cVar.c();
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class r implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private final String c;

        public r(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelWebView adMarvelWebView, String str) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = new WeakReference(adMarvelWebView);
            this.c = str;
        }

        public void run() {
            if (((AdMarvelInternalWebView) this.a.get()) != null) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.b.get();
                if (adMarvelWebView != null && this.c != null && this.c.length() != 0) {
                    if (AdMarvelView.b) {
                        try {
                            new com.admarvel.android.util.a.b().a(this.c, adMarvelWebView.getContext(), adMarvelWebView.I);
                        } catch (Exception e) {
                        }
                    } else {
                        new Utils(adMarvelWebView.getContext(), adMarvelWebView.I).firePixel(this.c);
                    }
                }
            }
        }
    }

    private static class s implements Runnable {
        private final WeakReference a;
        private final String b;
        private String c;

        public s(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
            this.c = "null";
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = str;
        }

        public void run() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null) {
                if (!Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                    adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(" + this.c + ")");
                } else if (Utils.isFeatureSupported(adMarvelInternalWebView.getContext(), "location")) {
                    Location a = i.a().a(adMarvelInternalWebView);
                    if (a != null) {
                        this.c = a.getLatitude() + "," + a.getLongitude() + "," + a.getAccuracy();
                    }
                    adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(" + this.c + ")");
                }
            }
        }
    }

    private static class t implements Runnable {
        private static int a;
        private final WeakReference b;

        static {
            a = Integer.MIN_VALUE;
        }

        public t(AdMarvelWebView adMarvelWebView) {
            this.b = new WeakReference(adMarvelWebView);
        }

        private int a() {
            return a;
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.b.get();
            if (adMarvelWebView != null) {
                Context context = adMarvelWebView.getContext();
                if (context != null) {
                    a = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
                    adMarvelWebView.M = a;
                }
            }
        }
    }

    private static class u implements Runnable {
        private final String a;
        private final WeakReference b;
        private final WeakReference c;

        public u(String str, AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelWebView adMarvelWebView) {
            this.a = str;
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = new WeakReference(adMarvelWebView);
        }

        public void run() {
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.c.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null) {
                    int i;
                    int i2;
                    String str;
                    String str2;
                    String str3;
                    StringBuilder append;
                    boolean z;
                    String toString;
                    String str4;
                    AdMarvelView adMarvelView;
                    int[] iArr;
                    Activity activity;
                    ViewGroup viewGroup;
                    DisplayMetrics displayMetrics;
                    int measuredHeight;
                    int i3;
                    int height;
                    int i4;
                    int i5;
                    int i6;
                    int i7;
                    String str5;
                    int left;
                    Activity activity2;
                    String supportedInterfaceOrientations;
                    ViewGroup viewGroup2;
                    String str6;
                    Location location = null;
                    String str7 = AdTrackerConstants.BLANK;
                    str7 = "NO";
                    String deviceConnectivitiy = Utils.getDeviceConnectivitiy(adMarvelWebView.getContext());
                    if (Version.getAndroidSDKVersion() < 9) {
                        i = adMarvelWebView.getResources().getConfiguration().orientation;
                        if (i == 1) {
                            i2 = 0;
                        } else {
                            if (i == 2) {
                                i2 = 90;
                            }
                            i2 = -1;
                        }
                    } else {
                        i = adMarvelWebView.M;
                        if (i == 0) {
                            i2 = 0;
                        } else if (i == 1) {
                            i2 = 90;
                        } else if (i == 2) {
                            i2 = 180;
                        } else {
                            if (i == 3) {
                                i2 = -90;
                            }
                            i2 = -1;
                        }
                    }
                    if (!deviceConnectivitiy.equals("wifi")) {
                        if (!deviceConnectivitiy.equals("mobile")) {
                            str = "NO";
                            if (Utils.isFeatureSupported(adMarvelWebView.getContext(), "location")) {
                                location = i.a().a(adMarvelInternalWebView);
                            }
                            str2 = location == null ? "{lat:" + location.getLatitude() + ", lon:" + location.getLongitude() + ", acc:" + location.getAccuracy() + "}" : "null";
                            str3 = Version.SDK_VERSION;
                            append = new StringBuilder().append("{screen: true, orientation: true, heading: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "compass")).append(", location : ");
                            z = Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.ACCESS_FINE_LOCATION");
                            append = append.append(z).append(",shake: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(",tilt: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(", network: true, sms:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", phone:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", email:true,calendar:");
                            z = Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelWebView.getContext(), "android.permission.WRITE_CALENDAR");
                            toString = append.append(z).append(", camera: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                            str4 = "Banner";
                            adMarvelView = (AdMarvelView) adMarvelInternalWebView.adMarvelViewReference.get();
                            if (adMarvelView == null) {
                                iArr = new int[2];
                                try {
                                    adMarvelInternalWebView.getLocationOnScreen(iArr);
                                } catch (Exception e) {
                                    iArr[0] = 0;
                                    iArr[1] = 0;
                                } catch (NullPointerException e2) {
                                    Logging.log(Log.getStackTraceString(e2));
                                }
                                if (adMarvelWebView.getContext() instanceof Activity) {
                                    activity = (Activity) adMarvelWebView.getContext();
                                    if (activity != null) {
                                        if (adMarvelWebView.f == Integer.MIN_VALUE || adMarvelWebView.f < 0) {
                                            viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                                            displayMetrics = new DisplayMetrics();
                                            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                                            measuredHeight = displayMetrics.heightPixels - viewGroup.getMeasuredHeight();
                                            if (measuredHeight >= 0 && adMarvelWebView.f == Integer.MIN_VALUE) {
                                                adMarvelWebView.f = measuredHeight;
                                            }
                                            i3 = iArr[0];
                                            i = iArr[1] - measuredHeight;
                                            measuredHeight = adMarvelView.getWidth();
                                            height = adMarvelView.getHeight();
                                            adMarvelInternalWebView.mInitLayoutX = i3;
                                            adMarvelInternalWebView.mInitLayoutY = i;
                                            i4 = height;
                                            i5 = measuredHeight;
                                            i6 = i;
                                            i7 = i3;
                                        } else {
                                            measuredHeight = adMarvelWebView.f;
                                            i3 = iArr[0];
                                            i = iArr[1] - measuredHeight;
                                            measuredHeight = adMarvelView.getWidth();
                                            height = adMarvelView.getHeight();
                                            adMarvelInternalWebView.mInitLayoutX = i3;
                                            adMarvelInternalWebView.mInitLayoutY = i;
                                            i4 = height;
                                            i5 = measuredHeight;
                                            i6 = i;
                                            i7 = i3;
                                        }
                                    }
                                }
                                measuredHeight = 0;
                                i3 = iArr[0];
                                i = iArr[1] - measuredHeight;
                                measuredHeight = adMarvelView.getWidth();
                                height = adMarvelView.getHeight();
                                adMarvelInternalWebView.mInitLayoutX = i3;
                                adMarvelInternalWebView.mInitLayoutY = i;
                                i4 = height;
                                i5 = measuredHeight;
                                i6 = i;
                                i7 = i3;
                            } else {
                                i4 = 0;
                                i5 = 0;
                                i6 = 0;
                                i7 = 0;
                            }
                            str5 = "0,90";
                            left = adMarvelWebView.getRootView().getLeft();
                            i3 = adMarvelWebView.getRootView().getTop();
                            i = adMarvelWebView.getRootView().getWidth();
                            measuredHeight = adMarvelWebView.getRootView().getHeight();
                            if (adMarvelWebView.getContext() instanceof Activity) {
                                activity2 = (Activity) adMarvelWebView.getContext();
                                if (activity2 != null) {
                                    supportedInterfaceOrientations = Utils.getSupportedInterfaceOrientations(activity2);
                                    viewGroup2 = (ViewGroup) activity2.getWindow().findViewById(16908290);
                                    i3 = viewGroup2.getLeft();
                                    i = viewGroup2.getTop();
                                    measuredHeight = viewGroup2.getWidth();
                                    height = viewGroup2.getHeight();
                                    try {
                                        str6 = "javascript:" + this.a + "({x:" + i7 + ",y:" + i6 + ",width:" + i5 + ",height:" + i4 + ",appX:" + i3 + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height + ",orientation:" + i2 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                                        Logging.log("Initial Frame Values : " + str6);
                                        adMarvelInternalWebView.loadUrl(str6);
                                    } catch (Exception e3) {
                                        Logging.log(Log.getStackTraceString(e3));
                                    } catch (NullPointerException e22) {
                                        Logging.log(Log.getStackTraceString(e22));
                                    }
                                }
                            }
                            height = measuredHeight;
                            measuredHeight = i;
                            i = i3;
                            i3 = left;
                            supportedInterfaceOrientations = str5;
                            str6 = "javascript:" + this.a + "({x:" + i7 + ",y:" + i6 + ",width:" + i5 + ",height:" + i4 + ",appX:" + i3 + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height + ",orientation:" + i2 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                            Logging.log("Initial Frame Values : " + str6);
                            adMarvelInternalWebView.loadUrl(str6);
                        }
                    }
                    str = "YES";
                    if (Utils.isFeatureSupported(adMarvelWebView.getContext(), "location")) {
                        location = i.a().a(adMarvelInternalWebView);
                    }
                    if (location == null) {
                    }
                    str3 = Version.SDK_VERSION;
                    append = new StringBuilder().append("{screen: true, orientation: true, heading: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "compass")).append(", location : ");
                    append = append.append(z).append(",shake: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(",tilt: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "accelerometer")).append(", network: true, sms:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", phone:").append(Utils.isTelephonySupported(adMarvelWebView.getContext())).append(", email:true,calendar:");
                    toString = append.append(z).append(", camera: ").append(Utils.isFeatureSupported(adMarvelWebView.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                    str4 = "Banner";
                    adMarvelView = (AdMarvelView) adMarvelInternalWebView.adMarvelViewReference.get();
                    if (adMarvelView == null) {
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                    } else {
                        iArr = new int[2];
                        adMarvelInternalWebView.getLocationOnScreen(iArr);
                        if (adMarvelWebView.getContext() instanceof Activity) {
                            activity = (Activity) adMarvelWebView.getContext();
                            if (activity != null) {
                                viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                                displayMetrics = new DisplayMetrics();
                                activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                                measuredHeight = displayMetrics.heightPixels - viewGroup.getMeasuredHeight();
                                adMarvelWebView.f = measuredHeight;
                                i3 = iArr[0];
                                i = iArr[1] - measuredHeight;
                                measuredHeight = adMarvelView.getWidth();
                                height = adMarvelView.getHeight();
                                adMarvelInternalWebView.mInitLayoutX = i3;
                                adMarvelInternalWebView.mInitLayoutY = i;
                                i4 = height;
                                i5 = measuredHeight;
                                i6 = i;
                                i7 = i3;
                            }
                        }
                        measuredHeight = 0;
                        i3 = iArr[0];
                        i = iArr[1] - measuredHeight;
                        measuredHeight = adMarvelView.getWidth();
                        height = adMarvelView.getHeight();
                        adMarvelInternalWebView.mInitLayoutX = i3;
                        adMarvelInternalWebView.mInitLayoutY = i;
                        i4 = height;
                        i5 = measuredHeight;
                        i6 = i;
                        i7 = i3;
                    }
                    str5 = "0,90";
                    left = adMarvelWebView.getRootView().getLeft();
                    i3 = adMarvelWebView.getRootView().getTop();
                    i = adMarvelWebView.getRootView().getWidth();
                    measuredHeight = adMarvelWebView.getRootView().getHeight();
                    if (adMarvelWebView.getContext() instanceof Activity) {
                        activity2 = (Activity) adMarvelWebView.getContext();
                        if (activity2 != null) {
                            supportedInterfaceOrientations = Utils.getSupportedInterfaceOrientations(activity2);
                            viewGroup2 = (ViewGroup) activity2.getWindow().findViewById(16908290);
                            i3 = viewGroup2.getLeft();
                            i = viewGroup2.getTop();
                            measuredHeight = viewGroup2.getWidth();
                            height = viewGroup2.getHeight();
                            str6 = "javascript:" + this.a + "({x:" + i7 + ",y:" + i6 + ",width:" + i5 + ",height:" + i4 + ",appX:" + i3 + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height + ",orientation:" + i2 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                            Logging.log("Initial Frame Values : " + str6);
                            adMarvelInternalWebView.loadUrl(str6);
                        }
                    }
                    height = measuredHeight;
                    measuredHeight = i;
                    i = i3;
                    i3 = left;
                    supportedInterfaceOrientations = str5;
                    str6 = "javascript:" + this.a + "({x:" + i7 + ",y:" + i6 + ",width:" + i5 + ",height:" + i4 + ",appX:" + i3 + ",appY:" + i + ",appWidth:" + measuredHeight + ",appHeight:" + height + ",orientation:" + i2 + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(adMarvelWebView.getContext()) + ",screenHeight:" + Utils.getDeviceHeight(adMarvelWebView.getContext()) + ",adType:" + "'" + str4 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str3 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + supportedInterfaceOrientations + "'" + "})";
                    Logging.log("Initial Frame Values : " + str6);
                    adMarvelInternalWebView.loadUrl(str6);
                }
            } catch (NullPointerException e222) {
                Logging.log(Log.getStackTraceString(e222));
            } catch (Exception e4) {
                Logging.log(Log.getStackTraceString(e4));
            }
        }
    }

    private static class v implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private String c;

        class AnonymousClass_1 implements com.admarvel.android.ads.c.a {
            final /* synthetic */ AdMarvelWebView a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_1(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelWebView;
                this.b = adMarvelInternalWebView;
            }

            public void a() {
                if (this.a.ak != null && this.a.ak.length() > 0) {
                    this.b.setLayerType(GoogleScorer.CLIENT_PLUS, null);
                    this.b.injectJavaScript(this.a.ak + "()");
                    this.b.requestLayout();
                    this.b.invalidate();
                    this.a.I.postDelayed(new Runnable() {
                        public void run() {
                            AnonymousClass_1.this.b.setLayerType(1, null);
                        }
                    }, 500);
                }
                this.a.I.post(new h(this.a));
            }
        }

        class AnonymousClass_2 implements OnPreparedListener {
            final /* synthetic */ AdMarvelWebView a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_2(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelWebView;
                this.b = adMarvelInternalWebView;
            }

            public void onPrepared(MediaPlayer mediaPlayer) {
                if (this.a.am) {
                    mediaPlayer.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    this.a.am = false;
                }
                if (this.a.ac != null && this.a.ac.length() > 0) {
                    this.b.injectJavaScript(this.a.ac + "()");
                }
                if (this.a.ae != null && this.a.ae.length() > 0) {
                    this.b.injectJavaScript(this.a.ae + "()");
                }
                if (this.a.al == null) {
                    this.a.al = new al(this.a, this.b);
                    this.a.I.postDelayed(this.a.al, 500);
                }
            }
        }

        class AnonymousClass_3 implements OnCompletionListener {
            final /* synthetic */ AdMarvelWebView a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_3(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelWebView;
                this.b = adMarvelInternalWebView;
            }

            public void onCompletion(MediaPlayer mediaPlayer) {
                if (this.a.ag != null && this.a.ag.length() > 0) {
                    this.b.injectJavaScript(this.a.ag + "()");
                }
            }
        }

        class AnonymousClass_4 implements OnErrorListener {
            final /* synthetic */ AdMarvelWebView a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_4(AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelWebView;
                this.b = adMarvelInternalWebView;
            }

            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                if (this.a.ak != null && this.a.ak.length() > 0) {
                    this.b.injectJavaScript(this.a.ak + "()");
                }
                return false;
            }
        }

        public v(String str, AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.c = str;
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        @TargetApi(14)
        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null && this.c != null && this.c.length() > 0) {
                    View view;
                    View view2 = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (view2 == null) {
                        view2 = new c(adMarvelWebView.getContext(), false, this.c);
                        view2.setTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                        view = view2;
                    } else {
                        view = view2;
                    }
                    view.a(adMarvelWebView.V, adMarvelWebView.W, adMarvelWebView.Z, adMarvelWebView.aa);
                    float f = adMarvelWebView.getContext().getResources().getDisplayMetrics().density;
                    if (adMarvelWebView.ab > 0) {
                        LayoutParams layoutParams = (LayoutParams) adMarvelWebView.getLayoutParams();
                        layoutParams.height = (int) (f * ((float) adMarvelWebView.ab));
                        adMarvelWebView.setLayoutParams(layoutParams);
                    }
                    adMarvelWebView.removeAllViews();
                    adMarvelWebView.addView(view);
                    adMarvelWebView.addView(adMarvelInternalWebView);
                    adMarvelInternalWebView.setBackgroundColor(0);
                    adMarvelInternalWebView.setBackgroundDrawable(null);
                    adMarvelInternalWebView.setLayerType(1, null);
                    view.a(this.c, 0);
                    view.a(new AnonymousClass_1(adMarvelWebView, adMarvelInternalWebView));
                    view.a(new AnonymousClass_2(adMarvelWebView, adMarvelInternalWebView));
                    view.a(new AnonymousClass_3(adMarvelWebView, adMarvelInternalWebView));
                    view.a(new AnonymousClass_4(adMarvelWebView, adMarvelInternalWebView));
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    static class w {
        w() {
        }

        public int a(AdMarvelWebView adMarvelWebView) {
            c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
            if (cVar == null) {
                return 0;
            }
            return cVar.b(cVar.a().toString()) ? 1 : 0;
        }
    }

    private static class x implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private String c;

        public x(String str, AdMarvelWebView adMarvelWebView, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.c = str;
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelWebView != null && adMarvelInternalWebView != null && this.c != null && this.c.length() > 0) {
                    c cVar = (c) adMarvelWebView.findViewWithTag(adMarvelWebView.e + "EMBEDDED_VIDEO");
                    if (cVar != null) {
                        cVar.e(this.c);
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private class y implements Runnable {
        private final String b;

        public y(String str) {
            this.b = str;
        }

        public void run() {
            if (!AdMarvelWebView.this.T) {
                Logging.log("onPagFinished is not  called after delay" + Constants.WAIT_FOR_ON_PAGE_FINISHED);
                AdMarvelWebView.this.d();
                AdMarvelWebView.this.c();
                AdMarvelWebView.this.c(this.b);
            }
        }
    }

    private static class z extends OrientationEventListener {
        private final WeakReference a;
        private final WeakReference b;
        private int c;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ AdMarvelWebView a;
            final /* synthetic */ int b;

            AnonymousClass_1(AdMarvelWebView adMarvelWebView, int i) {
                this.a = adMarvelWebView;
                this.b = i;
            }

            public void run() {
                Activity activity = (Activity) z.this.b.get();
                if (activity != null && this.a.O) {
                    ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                    RelativeLayout relativeLayout = (RelativeLayout) viewGroup.findViewWithTag(this.a.e + "EXPAND_LAYOUT");
                    if (relativeLayout != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
                        LinearLayout linearLayout = (LinearLayout) viewGroup.findViewWithTag(this.a.e + "BTN_CLOSE");
                        if (linearLayout != null) {
                            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                            int height = viewGroup.getHeight();
                            AdMarvelWebView.b(linearLayout, layoutParams2, this.a.y, layoutParams.leftMargin, layoutParams.topMargin, layoutParams.width, layoutParams.height, viewGroup.getWidth(), height, (int) TypedValue.applyDimension(1, BitmapDescriptorFactory.HUE_ORANGE, this.a.getContext().getResources().getDisplayMetrics()));
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                z.this = this.b;
            }
        }

        public z(AdMarvelWebView adMarvelWebView, Activity activity, int i) {
            super(activity, i);
            this.c = -1;
            this.a = new WeakReference(adMarvelWebView);
            this.b = new WeakReference(activity);
        }

        public void onOrientationChanged(int i) {
            if (this.c == -1) {
                this.c = i;
            } else if (Math.abs(i - this.c) >= 90 && Math.abs(i - this.c) <= 270) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.a.get();
                if (adMarvelWebView != null) {
                    adMarvelWebView.I.postDelayed(new AnonymousClass_1(adMarvelWebView, i), 500);
                }
            }
        }
    }

    static {
        g = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>";
        h = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type='text/javascript' src='http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js'></script>";
        i = "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>";
        j = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0;padding:0;} .bl span{display:table-cell;vertical-align:middle;height:38px;text-align:center;width:500px;} .bl {margin:2px;padding: 2px 15px;display:block;vertical-align:middle;text-align:center;line-height: 15px;font-size:12px;font-family: Helvetica;font-weight: bold;text-decoration: none;color:rgb(%d,%d,%d);text-shadow: #222222 0px 1px 2px; background-color:rgb(%d,%d,%d);background-image: url('http://admarvel.s3.amazonaws.com/btn_bg_trns.png');border: 2px rgb(%d, %d, %d) solid;-webkit-border-radius: 10px;}</style>";
        k = "<html><head>%s</head><body><div class=\"bl\"><a href=\"%s\" style=\"text-decoration: none; color: #000;\" ><span>%s</span></a></div>";
        l = "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />";
        m = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />";
        p = new ConcurrentHashMap();
    }

    AdMarvelWebView(Context context, boolean z, boolean z2, File file, String str, AdMarvelAd adMarvelAd, Handler handler, boolean z3, boolean z4) {
        super(context);
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = "top-right";
        this.A = false;
        this.B = null;
        this.C = false;
        this.L = -1;
        this.M = Integer.MIN_VALUE;
        this.f = Integer.MIN_VALUE;
        this.N = false;
        this.O = false;
        this.P = false;
        this.S = null;
        this.T = false;
        this.U = null;
        this.V = -1;
        this.W = -1;
        this.Z = -1;
        this.aa = -1;
        this.ab = -1;
        this.ac = null;
        this.ad = null;
        this.ae = null;
        this.af = null;
        this.ag = null;
        this.ah = null;
        this.ai = null;
        this.aj = null;
        this.ak = null;
        this.al = null;
        this.am = true;
        this.an = false;
        this.ao = false;
        this.ap = z3;
        this.aq = z4;
        this.H = str;
        this.s = z;
        this.t = z2;
        this.e = UUID.randomUUID().toString();
        this.I = handler;
        this.a = new AtomicBoolean(false);
        this.r = new AtomicBoolean(false);
        this.D = new AtomicBoolean(false);
        this.E = new AtomicBoolean(false);
        this.F = new AtomicBoolean(false);
        this.G = file;
        this.K = new d(this);
        if (context instanceof Activity) {
            this.L = ((Activity) context).getRequestedOrientation();
        }
        this.J = new WeakReference(this.K);
        this.S = adMarvelAd;
    }

    public static p a(String str) {
        return (p) p.get(str);
    }

    public static synchronized void a(String str, p pVar) {
        synchronized (AdMarvelWebView.class) {
            p.put(str, pVar);
        }
    }

    private static void b(LinearLayout linearLayout, RelativeLayout.LayoutParams layoutParams, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        layoutParams.rightMargin = 0;
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = 0;
        layoutParams.bottomMargin = 0;
        if (i3 == -1) {
            i3 = i5;
        }
        if (i4 == -1) {
            i4 = i6;
        }
        int i8;
        if (str == null || str.length() <= 0) {
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            i8 = i + i3 - i5;
            if (i8 > 0) {
                layoutParams.rightMargin = i8;
            } else {
                layoutParams.rightMargin = 0;
            }
            if (i2 < 0) {
                layoutParams.topMargin = Math.abs(i2);
            } else {
                layoutParams.topMargin = 0;
            }
        } else if ("top-right".equals(str)) {
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            i8 = i + i3 - i5;
            if (i == 0 && i8 > 0) {
                layoutParams.rightMargin = i8 / 2;
            } else if (i8 > 0) {
                layoutParams.rightMargin = i8;
            } else {
                layoutParams.rightMargin = 0;
            }
            if (i2 < 0) {
                layoutParams.topMargin = Math.abs(i2);
            } else {
                layoutParams.topMargin = 0;
            }
        } else if ("top-left".equals(str)) {
            layoutParams.addRule(ZBuildConfig.$minsdk);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            if (i < 0) {
                layoutParams.leftMargin = Math.abs(i);
            } else if (i == 0) {
                i8 = (i3 - i5) / 2;
                if (i8 > 0) {
                    layoutParams.leftMargin = i8;
                }
            } else {
                layoutParams.leftMargin = 0;
            }
            if (i2 < 0) {
                layoutParams.topMargin = Math.abs(i2);
            } else {
                layoutParams.topMargin = 0;
            }
        } else if ("bottom-right".equals(str)) {
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            i8 = i + i3 - i5;
            if (i == 0 && i8 > 0) {
                layoutParams.rightMargin = i8 / 2;
            } else if (i8 > 0) {
                layoutParams.rightMargin = i8;
            } else {
                layoutParams.rightMargin = 0;
            }
            i8 = i6 - i2 + i4;
            if (i8 < 0) {
                layoutParams.bottomMargin = Math.abs(i8);
            } else {
                layoutParams.bottomMargin = 0;
            }
        } else if ("bottom-left".equals(str)) {
            layoutParams.addRule(ZBuildConfig.$minsdk);
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            if (i < 0) {
                layoutParams.leftMargin = Math.abs(i);
            } else if (i == 0) {
                i8 = (i3 - i5) / 2;
                if (i8 > 0) {
                    layoutParams.leftMargin = i8;
                }
            } else {
                layoutParams.leftMargin = 0;
            }
            i8 = i6 - i2 + i4;
            if (i8 < 0) {
                layoutParams.bottomMargin = Math.abs(i8);
            } else {
                layoutParams.bottomMargin = 0;
            }
        } else if ("center".equals(str)) {
            if (i + i3 <= i5) {
                if (i <= 0) {
                    layoutParams.leftMargin = (i + i3) / 2 + Math.abs(i) - i7 / 2;
                } else {
                    layoutParams.leftMargin = i3 / 2 - i7 / 2;
                }
            } else if (i <= 0) {
                layoutParams.leftMargin = i5 / 2 + Math.abs(i) - i7 / 2;
            } else {
                layoutParams.leftMargin = (i5 - i) / 2 - i7 / 2;
            }
            layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            if (i2 < 0) {
                i8 = i4 / 2 + i2;
                if (i8 < 0) {
                    layoutParams.topMargin = Math.abs(i8) + i4 / 2;
                    layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
                } else {
                    layoutParams.topMargin = 0;
                    layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
                }
            } else {
                i8 = i6 - i4 / 2 + i2;
                if (i8 < 0) {
                    layoutParams.bottomMargin = Math.abs(i8) + i4 / 2;
                    layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
                } else {
                    layoutParams.bottomMargin = 0;
                    layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
                }
            }
        } else if ("bottom-center".equals(str)) {
            i8 = i6 - i2 + i4;
            if (i8 < 0) {
                layoutParams.bottomMargin = Math.abs(i8);
            } else {
                layoutParams.bottomMargin = 0;
            }
            layoutParams.addRule(ZBuildConfig.$minsdk);
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            if (i + i3 <= i5) {
                if (i <= 0) {
                    layoutParams.leftMargin = (i + i3) / 2 + Math.abs(i) - i7 / 2;
                } else {
                    layoutParams.leftMargin = i3 / 2 - i7 / 2;
                }
            } else if (i <= 0) {
                layoutParams.leftMargin = i5 / 2 + Math.abs(i) - i7 / 2;
            } else {
                layoutParams.leftMargin = (i5 - i) / 2 - i7 / 2;
            }
        } else if ("top-center".equals(str)) {
            layoutParams.addRule(MMException.REQUEST_NOT_FILLED);
            if (i2 < 0) {
                layoutParams.topMargin = Math.abs(i2);
            } else {
                layoutParams.topMargin = 0;
            }
            if (i + i3 <= i5) {
                if (i <= 0) {
                    layoutParams.leftMargin = (i + i3) / 2 + Math.abs(i) - i7 / 2;
                } else {
                    layoutParams.leftMargin = i3 / 2 - i7 / 2;
                }
            } else if (i <= 0) {
                layoutParams.leftMargin = i5 / 2 + Math.abs(i) - i7 / 2;
            } else {
                layoutParams.leftMargin = (i5 - i) / 2 - i7 / 2;
            }
        } else {
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            i8 = i + i3 - i5;
            if (i8 > 0) {
                layoutParams.rightMargin = i8;
            } else {
                layoutParams.rightMargin = 0;
            }
            if (i2 < 0) {
                layoutParams.topMargin = Math.abs(i2);
            } else {
                layoutParams.topMargin = 0;
            }
        }
        linearLayout.setLayoutParams(layoutParams);
    }

    public static void b(String str) {
        p.remove(str);
    }

    private void c(String str) {
        if (this.r.compareAndSet(true, false) && a(this.e) != null) {
            a(this.e).a(this, this.S, 308, Utils.getErrorReason(308));
        }
    }

    private void d(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    this.I.post(new ad(str, this, this.S));
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    void a() {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) findViewWithTag(this.e + "INTERNAL");
        if (adMarvelInternalWebView == null && this.O) {
            Context context = getContext();
            if (context != null && context instanceof Activity) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) ((ViewGroup) ((Activity) context).getWindow().findViewById(16908290)).findViewWithTag(this.e + "INTERNAL");
            }
        }
        if (adMarvelInternalWebView != null) {
            adMarvelInternalWebView.e();
        }
    }

    void a(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        requestLayout();
    }

    void a(int i, int i2, int i3, int i4, AdMarvelView adMarvelView) {
        if (this.S != null) {
            if (!(this.S == null || this.S.getSource() == null)) {
                this.o = this.S.getSource();
            }
            try {
                int deviceHeight;
                int deviceHeight2;
                int imageWidth;
                int imageHeight;
                String str;
                if (this.S.getAdType().equals(AdType.IMAGE) && this.S.hasImage()) {
                    if (this.S.getImageWidth() <= 0 || this.S.getImageHeight() <= 0) {
                        this.n = String.format(i, new Object[]{g + l, this.S.getXhtml()});
                    } else if (Version.getAndroidSDKVersion() < 7) {
                        deviceHeight = Utils.getScreenOrientation(getContext()) == 2 ? Utils.getDeviceHeight(getContext()) : Utils.getDeviceWidth(getContext());
                        deviceHeight2 = Utils.getScreenOrientation(getContext()) == 1 ? Utils.getDeviceHeight(getContext()) : Utils.getDeviceWidth(getContext());
                        if (this.s) {
                            imageWidth = (int) (((float) this.S.getImageWidth()) * Utils.getScalingFactor(getContext(), deviceHeight, this.S.getImageWidth()));
                            imageHeight = (int) (((float) this.S.getImageHeight()) * Utils.getScalingFactor(getContext(), deviceHeight, this.S.getImageWidth()));
                        } else {
                            imageWidth = this.S.getImageWidth();
                            imageHeight = this.S.getImageHeight();
                        }
                        str = "<a href=\"" + this.S.getClickURL() + "\"><img src=\"" + this.S.getImageURL() + "\" width=\"" + imageWidth + "\" height=\"" + Math.min(imageHeight, deviceHeight2) + "\" /></a>";
                        this.n = String.format(i, new Object[]{g + l, str});
                    } else if (!AdMarvelUtils.isTabletDevice(getContext()) || this.t) {
                        str = "<a href=\"" + this.S.getClickURL() + "\"><img src=\"" + this.S.getImageURL() + "\" width=\"" + (((float) (Utils.getDeviceWidth(getContext()) < Utils.getDeviceHeight(getContext()) ? Utils.getDeviceWidth(getContext()) : Utils.getDeviceHeight(getContext()))) / Utils.getDeviceDensity(getContext())) + "\"\" /></a>";
                        this.n = String.format(i, new Object[]{g + m, str});
                    } else {
                        float imageWidth2 = (float) this.S.getImageWidth();
                        float imageHeight2 = (float) this.S.getImageHeight();
                        if (Version.getAndroidSDKVersion() >= 19) {
                            float deviceWidth = ((float) (Utils.getDeviceWidth(getContext()) < Utils.getDeviceHeight(getContext()) ? Utils.getDeviceWidth(getContext()) : Utils.getDeviceHeight(getContext()))) / Utils.getDeviceDensity(getContext());
                            Logging.log("Device Relative Screen Width :" + deviceWidth);
                            if (imageWidth2 > deviceWidth) {
                                deviceWidth /= imageWidth2;
                                Logging.log("Device Image Ad Scaling factpr :" + deviceWidth);
                                imageWidth2 *= deviceWidth;
                                imageHeight2 *= deviceWidth;
                            }
                        }
                        str = "<a href=\"" + this.S.getClickURL() + "\"><img src=\"" + this.S.getImageURL() + "\" width=\"" + imageWidth2 + "\" height=\"" + imageHeight2 + "\" /></a>";
                        this.n = String.format(i, new Object[]{g + l, str});
                    }
                } else if (this.S.getAdType().equals(AdType.TEXT) && this.S.getText() != null && this.S.getText().length() > 0) {
                    imageHeight = (i >> 16) & 255;
                    imageWidth = (i >> 8) & 255;
                    deviceHeight2 = i & 255;
                    deviceHeight = (i3 >> 16) & 255;
                    int i5 = (i3 >> 8) & 255;
                    int i6 = i3 & 255;
                    int i7 = (i2 >> 16) & 255;
                    int i8 = (i2 >> 8) & 255;
                    int i9 = i2 & 255;
                    str = String.format(j, new Object[]{Integer.valueOf(imageHeight), Integer.valueOf(imageWidth), Integer.valueOf(deviceHeight2), Integer.valueOf(deviceHeight), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9)});
                    this.n = String.format(k, new Object[]{str, this.S.getClickURL(), this.S.getText()});
                } else if (this.S.getXhtml().contains("ORMMA_API")) {
                    this.n = String.format(i, new Object[]{h, this.S.getXHTML()});
                } else {
                    this.n = String.format(i, new Object[]{g, this.S.getXHTML() + Utils.WEB_VIEW_HTML_DYNAMIC_VIEWPORT});
                }
                this.Q = new AdMarvelInternalWebView(getContext(), false, this.H, this.e, this.I, adMarvelView, null, this.S);
                this.Q.setTag(this.e + "INTERNAL");
                this.I.post(new AnonymousClass_1(i4));
                this.r.set(true);
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                if (a(this.e) != null) {
                    a(this.e).a(this, this.S, 305, Utils.getErrorReason(305));
                }
            }
        } else if (a(this.e) != null) {
            a(this.e).a(this, this.S, 305, Utils.getErrorReason(305));
        }
    }

    void b() {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) findViewWithTag(this.e + "INTERNAL");
        if (adMarvelInternalWebView == null && this.O) {
            Context context = getContext();
            if (context != null && context instanceof Activity) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) ((ViewGroup) ((Activity) context).getWindow().findViewById(16908290)).findViewWithTag(this.e + "INTERNAL");
            }
        }
        if (webView != null) {
            webView.f();
            if (webView instanceof AdMarvelInternalWebView) {
                webView.a(this);
            }
            if (Version.getAndroidSDKVersion() >= 11) {
                ae.a(webView);
            } else {
                af.a(webView);
            }
        }
    }

    void c() {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) findViewWithTag(this.e + "INTERNAL");
        if (adMarvelInternalWebView == null && this.O) {
            Context context = getContext();
            if (context != null && context instanceof Activity) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) ((ViewGroup) ((Activity) context).getWindow().findViewById(16908290)).findViewWithTag(this.e + "INTERNAL");
            }
        }
        AdMarvelInternalWebView.b(this.e);
        AdMarvelInternalWebView.a(this.e);
        b(this.e);
        if (adMarvelInternalWebView != null) {
            if (Version.getAndroidSDKVersion() >= 14) {
                this.I.post(new h(this));
            }
            if (Version.getAndroidSDKVersion() >= 15) {
                adMarvelInternalWebView.setWebChromeClient(null);
            }
            adMarvelInternalWebView.setWebViewClient(null);
            adMarvelInternalWebView.a();
            if (this.R != null) {
                this.R.clear();
            }
            this.S = null;
            if (this.K != null) {
                this.K.b();
                this.K = null;
                this.J = null;
            }
        }
    }

    void d() {
        int i = 0;
        try {
            if (this.z != null) {
                this.z.disable();
            }
            Context context = getContext();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            if (this.N && this.P && !this.A && activity != null) {
                activity.setRequestedOrientation(this.L);
                this.N = false;
            }
            if (this.a.compareAndSet(true, false) && activity != null) {
                ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) viewGroup.findViewWithTag(this.e + "INTERNAL");
                if (adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.isAdClosing = true;
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewWithTag(this.e + "EXPAND_BG");
                RelativeLayout relativeLayout = (RelativeLayout) viewGroup.findViewWithTag(this.e + "EXPAND_LAYOUT");
                if (this.u) {
                    LinearLayout linearLayout = (LinearLayout) viewGroup.findViewWithTag(this.e + "BTN_CLOSE");
                    if (linearLayout != null) {
                        relativeLayout.removeView(linearLayout);
                    }
                    this.u = false;
                }
                if (!(frameLayout == null || adMarvelInternalWebView == null)) {
                    View view = (FrameLayout) findViewWithTag(this.e + "EXPAND_PLACE_HOLDER");
                    int childCount = getChildCount();
                    while (i < childCount && getChildAt(i) != view) {
                        i++;
                    }
                    relativeLayout.removeView(adMarvelInternalWebView);
                    frameLayout.removeView(relativeLayout);
                    viewGroup.removeView(frameLayout);
                    viewGroup.invalidate();
                    viewGroup.requestLayout();
                    removeAllViews();
                    addView(adMarvelInternalWebView, i);
                    removeView(view);
                    adMarvelInternalWebView.h();
                    this.O = false;
                    this.C = false;
                }
                invalidate();
                requestLayout();
                if (a(this.e) != null) {
                    a(this.e).b();
                }
                if (adMarvelInternalWebView != null) {
                    if (this.c != null) {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.c + "()");
                    }
                    adMarvelInternalWebView.isAdClosing = false;
                }
            }
        } catch (Exception e) {
            Logging.log(Log.getStackTraceString(e));
        }
    }

    void e() {
        View findViewWithTag = findViewWithTag(this.e + "INTERNAL");
        if (findViewWithTag != null && findViewWithTag instanceof AdMarvelInternalWebView && !findViewWithTag.hasFocus()) {
            findViewWithTag.requestFocus();
        }
    }

    public AdMarvelAd getAdMarvelAd() {
        return this.S;
    }

    public void setEnableClickRedirect(boolean z) {
        this.q = z;
    }
}