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
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.location.Location;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.Reminders;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.admarvel.android.ads.Utils.PROTOCOL_TYPE;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventType;
import com.brightcove.player.util.ErrorUtil;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.ads.AdSize;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.re.container.IMWebView;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.TimeZone;

@SuppressLint({"NewApi", "HandlerLeak", "DefaultLocale", "SimpleDateFormat"})
public class AdMarvelActivity extends Activity {
    static int b;
    private String A;
    private String B;
    private String C;
    private String D;
    private boolean E;
    private String F;
    private boolean G;
    private boolean H;
    private boolean I;
    private String J;
    private Handler K;
    private Handler L;
    WeakReference a;
    public boolean c;
    public boolean d;
    public String e;
    public String f;
    private boolean g;
    private boolean h;
    private b i;
    private int j;
    private Runnable k;
    private Runnable l;
    private String m;
    private String n;
    private String o;
    private int p;
    private boolean q;
    private boolean r;
    private String s;
    private final Handler t;
    private String u;
    private AdMarvelAd v;
    private aa w;
    private String x;
    private String y;
    private String z;

    static class BrightRollInnerInterstitialJS {
        private final WeakReference adMarvelActivityReference;
        private final WeakReference adMarvelInternalWebViewReference;
        private String videoUrl;

        public BrightRollInnerInterstitialJS(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelActivity adMarvelActivity) {
            this.adMarvelInternalWebViewReference = new WeakReference(adMarvelInternalWebView);
            this.adMarvelActivityReference = new WeakReference(adMarvelActivity);
        }

        @JavascriptInterface
        public void browseTo(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    if (Utils.isIntentAvailable(adMarvelActivity.getBaseContext(), intent)) {
                        adMarvelActivity.startActivity(intent);
                    }
                    finish();
                }
            }
        }

        @JavascriptInterface
        public void cleanup() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.t.post(new d(adMarvelActivity));
                }
            }
        }

        @JavascriptInterface
        public void didPixel(String str) {
        }

        @JavascriptInterface
        public void enableVideoCloseInBackground() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                adMarvelActivity.E = true;
            }
        }

        @JavascriptInterface
        public void finish() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.K.sendEmptyMessage(0);
                }
            }
        }

        @JavascriptInterface
        public void hide() {
            didPixel("Hide");
            finish();
        }

        @JavascriptInterface
        public void load() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelInternalWebView.a(true);
                    if (this.videoUrl != null && this.videoUrl.length() > 0) {
                        adMarvelActivity.t.post(new q(this.videoUrl, adMarvelActivity, adMarvelInternalWebView));
                        adMarvelActivity.d = false;
                    }
                }
            }
        }

        @JavascriptInterface
        public void onBackPressed() {
            finish();
        }

        @JavascriptInterface
        public void play() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && this.videoUrl != null && this.videoUrl.length() > 0) {
                    adMarvelActivity.t.post(new s(adMarvelActivity, adMarvelInternalWebView));
                }
            }
        }

        @JavascriptInterface
        public void positionVideo(float f, float f2, float f3, float f4) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && this.videoUrl != null && this.videoUrl.length() > 0) {
                    adMarvelActivity.t.post(new t(adMarvelActivity, adMarvelInternalWebView, f, f2, f3, f4));
                }
            }
        }

        @JavascriptInterface
        public void seekTo(float f) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && this.videoUrl != null && this.videoUrl.length() > 0) {
                    adMarvelActivity.t.post(new v(adMarvelActivity, adMarvelInternalWebView, f));
                }
            }
        }

        @JavascriptInterface
        public void setVideoUrl(String str) {
            this.videoUrl = str;
        }

        @JavascriptInterface
        boolean videoIsLoaded() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity == null) {
                return false;
            }
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                return false;
            }
            return adMarvelActivity.w != null ? 1 : false;
        }
    }

    static class InnerInterstitialJS {
        private final WeakReference adMarvelActivityReference;
        private final AdMarvelAd adMarvelAd;
        private final WeakReference adMarvelInternalWebViewReference;
        private int lastOrientation;
        private String videoUrl;

        class AnonymousClass_10 implements OnClickListener {
            final /* synthetic */ AdMarvelActivity val$adMarvelActivity;
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_10(String str, AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.val$callback = str;
                this.val$adMarvelActivity = adMarvelActivity;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (this.val$callback != null) {
                    this.val$adMarvelActivity.t.post(new Runnable() {
                        public void run() {
                            AnonymousClass_10.this.val$adMarvelInternalWebView.loadUrl("javascript:" + AnonymousClass_10.this.val$callback + "(\"NO\")");
                        }
                    });
                }
                dialogInterface.cancel();
            }
        }

        class AnonymousClass_11 implements OnClickListener {
            final /* synthetic */ AdMarvelActivity val$adMarvelActivity;
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;
            final /* synthetic */ String val$url;

            AnonymousClass_11(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
                this.val$adMarvelActivity = adMarvelActivity;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$url = str;
                this.val$callback = str2;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (Version.getAndroidSDKVersion() < 8) {
                    this.val$adMarvelActivity.t.post(new z(this.val$adMarvelInternalWebView, this.val$url, this.val$callback));
                } else {
                    this.val$adMarvelActivity.t.post(new y(this.val$adMarvelInternalWebView, this.val$url, this.val$callback));
                }
            }
        }

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$mCallback;
            final /* synthetic */ String val$supportedScreenOrientationParam;

            AnonymousClass_1(AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$mCallback = str;
                this.val$supportedScreenOrientationParam = str2;
            }

            public void run() {
                this.val$adMarvelInternalWebView.loadUrl("javascript:" + this.val$mCallback + "(" + this.val$supportedScreenOrientationParam + ")");
            }
        }

        class AnonymousClass_3 implements OnClickListener {
            final /* synthetic */ AdMarvelActivity val$adMarvelActivity;
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$date;
            final /* synthetic */ String val$description;
            final /* synthetic */ String val$title;

            AnonymousClass_3(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2, String str3) {
                this.val$adMarvelActivity = adMarvelActivity;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
                this.val$date = str;
                this.val$title = str2;
                this.val$description = str3;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (Version.getAndroidSDKVersion() >= 14) {
                    this.val$adMarvelActivity.t.post(new f(this.val$adMarvelInternalWebView, this.val$adMarvelActivity, this.val$date, this.val$title, this.val$description));
                } else {
                    this.val$adMarvelActivity.t.post(new e(this.val$adMarvelInternalWebView, this.val$adMarvelActivity, this.val$date, this.val$title, this.val$description));
                }
            }
        }

        class AnonymousClass_5 implements OnClickListener {
            final /* synthetic */ AdMarvelActivity val$adMarvelActivity;
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$allday;
            final /* synthetic */ String val$date;
            final /* synthetic */ String val$description;
            final /* synthetic */ String val$endDate;
            final /* synthetic */ String val$location;
            final /* synthetic */ int val$reminderoffset;
            final /* synthetic */ String val$title;

            AnonymousClass_5(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2, String str3, String str4, String str5, String str6, int i) {
                this.val$adMarvelActivity = adMarvelActivity;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
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
                    this.val$adMarvelActivity.t.post(new f(this.val$adMarvelInternalWebView, this.val$adMarvelActivity, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset));
                } else {
                    this.val$adMarvelActivity.t.post(new e(this.val$adMarvelInternalWebView, this.val$adMarvelActivity, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset));
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
            final /* synthetic */ AdMarvelActivity val$adMarvelActivity;
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
            final /* synthetic */ String val$callback;

            AnonymousClass_7(String str, AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.val$callback = str;
                this.val$adMarvelActivity = adMarvelActivity;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                if (this.val$callback != null) {
                    this.val$adMarvelActivity.t.post(new Runnable() {
                        public void run() {
                            AnonymousClass_7.this.val$adMarvelInternalWebView.loadUrl("javascript:" + AnonymousClass_7.this.val$callback + "(\"NO\")");
                        }
                    });
                }
                dialogInterface.cancel();
            }
        }

        class AnonymousClass_8 implements OnClickListener {
            final /* synthetic */ AdMarvelActivity val$adMarvelActivity;
            final /* synthetic */ AdMarvelInternalWebView val$adMarvelInternalWebView;
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

            AnonymousClass_8(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2, String str3, String str4, String str5, String str6, int i, String str7, String str8, String str9, String str10, int i2, int i3, String str11) {
                this.val$adMarvelActivity = adMarvelActivity;
                this.val$adMarvelInternalWebView = adMarvelInternalWebView;
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
                    this.val$adMarvelActivity.t.post(new f(this.val$adMarvelInternalWebView, this.val$adMarvelActivity, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset, this.val$timezone, this.val$url, this.val$recurrenceRules, this.val$exceptionDateString, this.val$status, this.val$availability, this.val$callback));
                } else {
                    this.val$adMarvelActivity.t.post(new e(this.val$adMarvelInternalWebView, this.val$adMarvelActivity, this.val$date, this.val$title, this.val$description, this.val$location, this.val$allday, this.val$endDate, this.val$reminderoffset, this.val$timezone, this.val$url, this.val$recurrenceRules, this.val$exceptionDateString, this.val$status, this.val$availability, this.val$callback));
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
                this.val$adMarvelInternalWebView.loadUrl("javascript:" + this.val$callback + "(NO)");
            }
        }

        public InnerInterstitialJS(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelActivity adMarvelActivity, AdMarvelAd adMarvelAd) {
            this.adMarvelInternalWebViewReference = new WeakReference(adMarvelInternalWebView);
            this.adMarvelActivityReference = new WeakReference(adMarvelActivity);
            this.adMarvelAd = adMarvelAd;
            this.lastOrientation = adMarvelActivity.getRequestedOrientation();
        }

        @JavascriptInterface
        public void admarvelCheckFrameValues(String str) {
        }

        @JavascriptInterface
        public void checkForApplicationSupportedOrientations(String str) {
            if (this.adMarvelInternalWebViewReference != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
                    if (adMarvelActivity != null) {
                        String[] split = Utils.getSupportedInterfaceOrientations(adMarvelActivity).split(",");
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
                        if (adMarvelInternalWebView != null && str != null) {
                            adMarvelActivity.t.post(new AnonymousClass_1(adMarvelInternalWebView, str, str3));
                        }
                    }
                }
            }
        }

        @JavascriptInterface
        public void checkNetworkAvailable(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.t.post(new c(adMarvelInternalWebView, str));
                }
            }
        }

        @JavascriptInterface
        public void cleanup() {
            Logging.log("window.ADMARVEL.cleanup()");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null && ((AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get()) != null) {
                adMarvelActivity.t.post(new d(adMarvelActivity));
            }
        }

        @JavascriptInterface
        public void closeinterstitialad() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.K.sendEmptyMessage(0);
                }
            }
        }

        @JavascriptInterface
        public void createcalendarevent(String str, String str2, String str3) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && Utils.isPermissionGranted(adMarvelActivity, "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelActivity, "android.permission.WRITE_CALENDAR")) {
                    Builder builder = new Builder(adMarvelActivity);
                    builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_3(adMarvelActivity, adMarvelInternalWebView, str, str2, str3)).setNegativeButton("No", new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.cancel();
                        }
                    });
                    builder.create().show();
                }
            }
        }

        @JavascriptInterface
        public void createcalendarevent(String str, String str2, String str3, String str4, String str5, String str6, int i) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && Utils.isPermissionGranted(adMarvelActivity, "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelActivity, "android.permission.WRITE_CALENDAR")) {
                    Builder builder = new Builder(adMarvelActivity);
                    builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_5(adMarvelActivity, adMarvelInternalWebView, str, str2, str3, str4, str5, str6, i)).setNegativeButton("No", new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.cancel();
                        }
                    });
                    builder.create().show();
                }
            }
        }

        @JavascriptInterface
        public void createcalendarevent(String str, String str2, String str3, String str4, String str5, String str6, int i, String str7, String str8, String str9, String str10, int i2, int i3, String str11) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    if (Utils.isPermissionGranted(adMarvelActivity, "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(adMarvelActivity, "android.permission.WRITE_CALENDAR")) {
                        Builder builder = builder;
                        builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_8(adMarvelActivity, adMarvelInternalWebView, str, str2, str3, str4, str5, str6, i, str7, str8, str9, str10, i2, i3, str11)).setNegativeButton("No", new AnonymousClass_7(str11, adMarvelActivity, adMarvelInternalWebView));
                        builder.create().show();
                    } else if (str11 != null) {
                        adMarvelActivity.t.post(new AnonymousClass_6(adMarvelInternalWebView, str11));
                    }
                }
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
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && !adMarvelInternalWebView.isLastStateVisible) {
                adMarvelInternalWebView.visibilityCallback = str;
                if (adMarvelInternalWebView.isInterstitialAdDisplayed) {
                    adMarvelInternalWebView.injectJavaScript(str + "(" + true + ")");
                    adMarvelInternalWebView.isLastStateVisible = true;
                }
            }
        }

        @JavascriptInterface
        public void disableautodetect() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                adMarvelInternalWebView.getEnableAutoDetect().set(false);
            }
        }

        @JavascriptInterface
        public void disablebackbutton() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    if (adMarvelActivity.l != null) {
                        adMarvelActivity.t.removeCallbacks(adMarvelActivity.l);
                    }
                    adMarvelActivity.h = true;
                }
            }
        }

        @JavascriptInterface
        public void disablebackbutton(int i) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && i > 0) {
                    adMarvelActivity.h = true;
                    if (adMarvelActivity.l != null) {
                        adMarvelActivity.t.removeCallbacks(adMarvelActivity.l);
                    }
                    adMarvelActivity.t.postDelayed(adMarvelActivity.l, (long) i);
                }
            }
        }

        @JavascriptInterface
        public void disableclosebutton(String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if ((adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown()) && str != null && str.equals("true")) {
                sdkclosebutton("false", "false");
            }
        }

        @JavascriptInterface
        public void disablerotations() {
            if ((this.adMarvelInternalWebViewReference.get() == null || !((AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get()).isSignalShutdown()) && ((AdMarvelActivity) this.adMarvelActivityReference.get()) != null) {
                disablerotations(null);
            }
        }

        @JavascriptInterface
        public void disablerotations(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                if (this.adMarvelInternalWebViewReference.get() == null || !((AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get()).isSignalShutdown()) {
                    int i;
                    this.lastOrientation = adMarvelActivity.getRequestedOrientation();
                    if (Version.getAndroidSDKVersion() < 9) {
                        i = adMarvelActivity.getResources().getConfiguration().orientation;
                    } else {
                        Object nVar = new n(adMarvelActivity);
                        adMarvelActivity.t.post(nVar);
                        i = Integer.MIN_VALUE;
                        while (i == Integer.MIN_VALUE) {
                            i = nVar.a();
                        }
                    }
                    if (str != null) {
                        if (Version.getAndroidSDKVersion() < 9) {
                            if (str.equalsIgnoreCase("Portrait")) {
                                adMarvelActivity.setRequestedOrientation(1);
                            } else if (str.equalsIgnoreCase("LandscapeLeft")) {
                                adMarvelActivity.setRequestedOrientation(0);
                            }
                        } else if (str.equalsIgnoreCase("Portrait")) {
                            adMarvelActivity.setRequestedOrientation(1);
                        } else if (str.equalsIgnoreCase("LandscapeLeft")) {
                            adMarvelActivity.setRequestedOrientation(0);
                        } else {
                            adMarvelActivity.t.post(new w(adMarvelActivity, str));
                        }
                    } else if (Version.getAndroidSDKVersion() < 9) {
                        if (i == 1) {
                            adMarvelActivity.setRequestedOrientation(1);
                        } else if (i == 2) {
                            adMarvelActivity.setRequestedOrientation(0);
                        }
                    } else if (i == 0) {
                        adMarvelActivity.t.post(new w(adMarvelActivity, "Portrait"));
                    } else if (i == 1) {
                        adMarvelActivity.t.post(new w(adMarvelActivity, "LandscapeLeft"));
                    } else {
                        adMarvelActivity.t.post(new w(adMarvelActivity, "none"));
                    }
                }
            }
        }

        @JavascriptInterface
        public void enableVideoCloseInBackground() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                adMarvelActivity.E = true;
            }
        }

        @JavascriptInterface
        public void enableautodetect() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                adMarvelInternalWebView.getEnableAutoDetect().set(true);
            }
        }

        @JavascriptInterface
        public void enablebackbutton() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.h = false;
                }
            }
        }

        @JavascriptInterface
        public void enablerotations() {
            if (this.adMarvelInternalWebViewReference.get() == null || !((AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get()).isSignalShutdown()) {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
                if (adMarvelActivity != null) {
                    adMarvelActivity.setRequestedOrientation(this.lastOrientation);
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
        public void firePixel(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.t.post(new l(adMarvelInternalWebView, adMarvelActivity, str));
                }
            }
        }

        @JavascriptInterface
        public int getAndroidOSVersionAPI() {
            return Version.getAndroidSDKVersion();
        }

        @JavascriptInterface
        public void getLocation(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.t.post(new m(adMarvelInternalWebView, str));
                }
            }
        }

        @JavascriptInterface
        public void initAdMarvel(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    adMarvelActivity.t.post(new p(str, adMarvelInternalWebView, adMarvelActivity));
                }
            }
        }

        @JavascriptInterface
        public int isinstalled(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity == null) {
                return 0;
            }
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                return 0;
            }
            return Utils.isAppInstalled(adMarvelActivity, str) ? 1 : 0;
        }

        @JavascriptInterface
        public void loadVideo() {
            Logging.log("window.ADMARVEL.loadVideo()");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null) {
                    adMarvelActivity.d = true;
                    if (this.videoUrl != null && this.videoUrl.length() > 0) {
                        adMarvelActivity.t.post(new q(this.videoUrl, adMarvelActivity, adMarvelInternalWebView));
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
        public void notifyInterstitialBackgroundState(String str) {
            if (str != null && str.length() > 0) {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
                if (adMarvelActivity != null) {
                    adMarvelActivity.f = str;
                }
            }
        }

        @JavascriptInterface
        public void pauseVideo() {
            Logging.log("window.ADMARVEL.pauseVideo()");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null) {
                    adMarvelActivity.t.post(new r(adMarvelActivity, adMarvelInternalWebView));
                }
            }
        }

        @JavascriptInterface
        public void playVideo() {
            Logging.log("window.ADMARVEL.playVideo()");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && this.videoUrl != null && this.videoUrl.length() > 0) {
                    adMarvelActivity.t.post(new s(adMarvelActivity, adMarvelInternalWebView));
                }
            }
        }

        @JavascriptInterface
        public void redirect(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && str != null && str.length() > 0) {
                    adMarvelActivity.t.post(new u(str, adMarvelActivity, this.adMarvelAd));
                }
            }
        }

        @JavascriptInterface
        public void registerEventsForAdMarvelVideo(String str, String str2) {
            if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
                if (adMarvelActivity == null) {
                    return;
                }
                if (str.equals("loadeddata")) {
                    adMarvelActivity.x = str2;
                } else if (str.equals(EventType.PLAY)) {
                    adMarvelActivity.y = str2;
                } else if (str.equals("canplay")) {
                    adMarvelActivity.z = str2;
                } else if (str.equals("timeupdate")) {
                    adMarvelActivity.A = str2;
                } else if (str.equals("ended")) {
                    adMarvelActivity.B = str2;
                } else if (str.equals(EventType.PAUSE)) {
                    adMarvelActivity.C = str2;
                } else if (str.equals(ErrorUtil.ERROR)) {
                    adMarvelActivity.D = str2;
                }
            }
        }

        @JavascriptInterface
        public void registerInterstitialCloseCallback(String str) {
            if (str != null && str.length() > 0) {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
                if (adMarvelActivity != null) {
                    adMarvelActivity.e = str;
                }
            }
        }

        @JavascriptInterface
        public void registeraccelerationevent(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    k a = k.a();
                    if (a.a(adMarvelActivity.getBaseContext())) {
                        a.b(str);
                        a.a(adMarvelActivity.getBaseContext(), adMarvelInternalWebView);
                    }
                }
            }
        }

        @JavascriptInterface
        public void registerheadingevent(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    k a = k.a();
                    if (a != null && a.a(adMarvelActivity.getBaseContext())) {
                        a.c(str);
                        a.a(adMarvelActivity.getBaseContext(), adMarvelInternalWebView);
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
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    k a = k.a();
                    if (a.a(adMarvelActivity.getBaseContext())) {
                        a.a(str);
                        a.a(str2, str3);
                        a.a(adMarvelActivity.getBaseContext(), adMarvelInternalWebView);
                    }
                }
            }
        }

        @JavascriptInterface
        public void reportAdMarvelAdHistory() {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelUtils.reportAdMarvelAdHistory(adMarvelActivity);
            }
        }

        @JavascriptInterface
        public void reportAdMarvelAdHistory(int i) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelUtils.reportAdMarvelAdHistory(i, adMarvelActivity);
            }
        }

        @JavascriptInterface
        public void sdkclosebutton(String str, String str2) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
            if (adMarvelInternalWebView != null) {
                if (adMarvelInternalWebView != null && adMarvelInternalWebView.isSignalShutdown()) {
                    return;
                }
                if (str == null || !str.equals("false")) {
                    if (str != null && str.equals("true")) {
                        adMarvelInternalWebView.j();
                    }
                } else if (str2 == null || !str2.equals("true")) {
                    if (adMarvelInternalWebView != null) {
                        adMarvelInternalWebView.a(false);
                    }
                } else if (adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.a(true);
                }
            }
        }

        @JavascriptInterface
        public void seekVideoTo(float f) {
            Logging.log("window.ADMARVEL.seekToVideo()");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && this.videoUrl != null && this.videoUrl.length() > 0) {
                    adMarvelActivity.t.post(new v(adMarvelActivity, adMarvelInternalWebView, f));
                }
            }
        }

        @JavascriptInterface
        public void setVideoUrl(String str) {
            Logging.log("window.ADMARVEL.setVideoUrl(\"" + str + "\")");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                this.videoUrl = str;
                adMarvelActivity.d = true;
            }
        }

        @JavascriptInterface
        public void setbackgroundcolor(String str) {
            if (this.adMarvelInternalWebViewReference != null) {
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
                }
            }
        }

        @JavascriptInterface
        public void stopVideo() {
            Logging.log("window.ADMARVEL.stopVideo()");
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null) {
                    adMarvelActivity.t.post(new x(adMarvelActivity, adMarvelInternalWebView));
                }
            }
        }

        @JavascriptInterface
        public void storepicture(String str, String str2) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.adMarvelInternalWebViewReference.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    if (Utils.isPermissionGranted(adMarvelInternalWebView.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") && "mounted".equals(Environment.getExternalStorageState())) {
                        Builder builder = new Builder(adMarvelActivity);
                        builder.setMessage("Allow storing image in your Gallery?").setCancelable(false).setPositiveButton("Yes", new AnonymousClass_11(adMarvelActivity, adMarvelInternalWebView, str, str2)).setNegativeButton("No", new AnonymousClass_10(str2, adMarvelActivity, adMarvelInternalWebView));
                        builder.create().show();
                    } else if (str2 != null) {
                        adMarvelActivity.t.post(new AnonymousClass_9(adMarvelInternalWebView, str2));
                    }
                }
            }
        }

        @JavascriptInterface
        public void triggerVibration(String str) {
            int parseInt;
            AdMarvelActivity adMarvelActivity;
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
                adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
                if (adMarvelActivity == null) {
                    Utils.vibrate(adMarvelActivity, parseInt);
                }
            }
            parseInt = 500;
            adMarvelActivity = (AdMarvelActivity) this.adMarvelActivityReference.get();
            if (adMarvelActivity == null) {
                Utils.vibrate(adMarvelActivity, parseInt);
            }
        }
    }

    private static class a extends AsyncTask {
        private final WeakReference a;
        private final AdMarvelAd b;

        public a(AdMarvelActivity adMarvelActivity, AdMarvelAd adMarvelAd) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = adMarvelAd;
        }

        protected Object doInBackground(Object... objArr) {
            Context context = this.a != null ? (AdMarvelActivity) this.a.get() : null;
            if (context != null) {
                try {
                    if (context.m != null && Utils.isPrivateProtocol(context.m, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                        if (context.r && AdMarvelInterstitialAds.getListener() != null) {
                            AdMarvelInterstitialAds.getListener().a(context, Utils.parsePrivateProtocol(context.m, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(context.m, "admarvelsdk"), context), this.b.getSiteId(), this.b.getId(), this.b.getTargetParams(), this.b.getIpAddress());
                        } else if (AdMarvelWebView.a(context.u) != null) {
                            AdMarvelWebView.a(context.u).a(this.b, Utils.parsePrivateProtocol(context.m, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(context.m, "admarvelsdk"), context));
                        }
                        context.K.sendEmptyMessage(0);
                    } else if (context.m != null && Utils.isPrivateProtocol(context.m, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                        if (context.r) {
                            AdMarvelInterstitialAds.getListener().a(context, Utils.parsePrivateProtocol(context.m, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(context.m, "admarvelinternal"), context), this.b.getSiteId(), this.b.getId(), this.b.getTargetParams(), this.b.getIpAddress());
                        } else if (AdMarvelWebView.a(context.u) != null) {
                            AdMarvelWebView.a(context.u).a(this.b, Utils.parsePrivateProtocol(context.m, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(context.m, "admarvelinternal"), context));
                        }
                        context.K.sendEmptyMessage(0);
                    } else if (context.m != null && Utils.isPrivateProtocol(context.m, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                        if (context.r) {
                            AdMarvelInterstitialAds.getListener().a(context, context.m, this.b.getSiteId(), this.b.getId(), this.b.getTargetParams(), this.b.getIpAddress());
                        } else if (AdMarvelWebView.a(context.u) != null) {
                            AdMarvelWebView.a(context.u).a(this.b, context.m);
                        }
                        String parsePrivateProtocol = Utils.parsePrivateProtocol(context.m, "admarvelvideo", "http://", Utils.isPrivateProtocol(context.m, "admarvelvideo"), context);
                        intent = new Intent("android.intent.action.VIEW");
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                        if (Utils.isIntentAvailable(context.getBaseContext(), intent)) {
                            context.startActivity(intent);
                        }
                        context.K.sendEmptyMessage(0);
                    } else if (context.m != null && Utils.isPrivateProtocol(context.m, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE) {
                        if (context.r) {
                            AdMarvelInterstitialAds.getListener().a(context, context.m, this.b.getSiteId(), this.b.getId(), this.b.getTargetParams(), this.b.getIpAddress());
                        } else if (AdMarvelWebView.a(context.u) != null) {
                            AdMarvelWebView.a(context.u).a(this.b, context.m);
                        }
                        intent = new Intent(context, AdMarvelVideoActivity.class);
                        this.b.removeNonStringEntriesTargetParam();
                        try {
                            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                            objectOutputStream.writeObject(this.b);
                            objectOutputStream.close();
                            intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, context.m);
                        intent.putExtra("isCustomUrl", true);
                        intent.putExtra("xml", context.s);
                        intent.putExtra(Event.SOURCE, context.n);
                        intent.putExtra("GUID", context.u);
                        context.startActivity(intent);
                        new Utils(context, context.t).registerTrackingEvent(context.s);
                        context.K.sendEmptyMessage(0);
                    } else if (context.m != null && Utils.isPrivateProtocol(context.m, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(context.m, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(context.m, "admarvelexternal"), context)));
                        intent2.addFlags(DriveFile.MODE_READ_ONLY);
                        if (Utils.isIntentAvailable(context.getBaseContext(), intent2)) {
                            context.startActivity(intent2);
                        }
                        if (context.s != null) {
                            new Utils(context, context.t).registerTrackingEvent(context.s);
                        }
                        context.K.sendEmptyMessage(0);
                    } else if (Utils.handledBySpecialIntents(context, context.m, false)) {
                        new Utils(context, context.t).registerTrackingEvent(context.s);
                        context.K.sendEmptyMessage(0);
                        if (AdMarvelWebView.a(context.u) != null) {
                            AdMarvelWebView.a(context.u).a(this.b, context.m);
                        }
                    } else {
                        context.L.sendEmptyMessage(0);
                    }
                } catch (Exception e2) {
                    Logging.log(Log.getStackTraceString(e2));
                    context.finish();
                }
            }
            return null;
        }
    }

    private static class aa implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public aa(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                    m mVar = (m) ((RelativeLayout) adMarvelActivity.findViewById(b)).findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    if (!(adMarvelInternalWebView == null || mVar == null)) {
                        try {
                            if (!adMarvelActivity.d) {
                                adMarvelInternalWebView.loadUrl("javascript:AdApp.videoView().setCurrentTime(" + (mVar.getCurrentPosition() / 1000) + ")");
                            } else if (adMarvelActivity.A != null && adMarvelActivity.A.length() > 0) {
                                adMarvelInternalWebView.loadUrl("javascript:" + adMarvelActivity.A + "(" + (((float) mVar.getCurrentPosition()) / 1000.0f) + ")");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    adMarvelActivity.t.postDelayed(adMarvelActivity.w, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                }
            } catch (Exception e2) {
                Logging.log(Log.getStackTraceString(e2));
            }
        }
    }

    private static class b implements d {
        private final WeakReference a;

        public b(AdMarvelActivity adMarvelActivity) {
            this.a = new WeakReference(adMarvelActivity);
        }

        public void a(String str) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
            if (adMarvelActivity != null) {
                RelativeLayout relativeLayout = (RelativeLayout) adMarvelActivity.findViewById(b);
                if (relativeLayout != null) {
                    AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(str + "WEBVIEW");
                    if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown() && adMarvelInternalWebView.mInAppBrowserCloseCallback != null && adMarvelInternalWebView.mInAppBrowserCloseCallback.length() > 0) {
                        adMarvelInternalWebView.loadUrl("javascript:" + adMarvelInternalWebView.mInAppBrowserCloseCallback + "()");
                    }
                }
            }
        }
    }

    private static class c implements Runnable {
        private final WeakReference a;
        private final String b;

        public c(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = str;
        }

        public void run() {
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
                if (adMarvelInternalWebView != null) {
                    if (Utils.isNetworkAvailable(adMarvelInternalWebView.getContext())) {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"YES\")");
                    } else {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class d implements Runnable {
        private final WeakReference a;

        public d(AdMarvelActivity adMarvelActivity) {
            this.a = new WeakReference(adMarvelActivity);
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                if (adMarvelActivity != null) {
                    adMarvelActivity.c = false;
                    RelativeLayout relativeLayout = (RelativeLayout) adMarvelActivity.findViewById(b);
                    m mVar = (m) relativeLayout.findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    if (mVar != null) {
                        mVar.a();
                        relativeLayout.removeView(mVar);
                    }
                    if (adMarvelActivity.w != null) {
                        adMarvelActivity.t.removeCallbacks(adMarvelActivity.w);
                        adMarvelActivity.w = null;
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    private static class e implements Runnable {
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
        public e(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelActivity r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelActivity.e.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelActivity, java.lang.String, java.lang.String, java.lang.String):void");
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
            r0.printStackTrace();
            goto L_0x004c;
            */
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public e(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelActivity r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, int r13) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelActivity.e.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelActivity, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):void");
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
        public e(com.admarvel.android.ads.AdMarvelInternalWebView r6, com.admarvel.android.ads.AdMarvelActivity r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, int r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, int r19, int r20, java.lang.String r21) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelActivity.e.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelActivity, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, java.lang.String):void");
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
            Cursor cursor = null;
            AdMarvelActivity adMarvelActivity = this.k != null ? (AdMarvelActivity) this.k.get() : null;
            AdMarvelInternalWebView adMarvelInternalWebView = this.l != null ? (AdMarvelInternalWebView) this.l.get() : null;
            if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                ContentResolver contentResolver = adMarvelActivity.getContentResolver();
                try {
                    cursor = contentResolver.query(Uri.parse(a() + "calendars"), new String[]{AnalyticsSQLiteHelper.GENERAL_ID, "displayname"}, null, null, null);
                    if (cursor != null && cursor.moveToFirst()) {
                        String[] strArr = new String[cursor.getCount()];
                        int[] iArr = new int[cursor.getCount()];
                        int i = 0;
                        while (i < strArr.length) {
                            iArr[i] = cursor.getInt(0);
                            strArr[i] = cursor.getString(1);
                            cursor.moveToNext();
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
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e) {
                    Exception exception = e;
                    try {
                        if (this.i != null && this.i.length() > 0) {
                            adMarvelInternalWebView.loadUrl("javascript:" + this.i + "(\"NO\")");
                        }
                        exception.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
        }
    }

    private static class f implements Runnable {
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
        public f(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelActivity r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelActivity.f.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelActivity, java.lang.String, java.lang.String, java.lang.String):void");
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
        public f(com.admarvel.android.ads.AdMarvelInternalWebView r5, com.admarvel.android.ads.AdMarvelActivity r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, int r13) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelActivity.f.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelActivity, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int):void");
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
        public f(com.admarvel.android.ads.AdMarvelInternalWebView r6, com.admarvel.android.ads.AdMarvelActivity r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, int r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, int r19, int r20, java.lang.String r21) {
            throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelActivity.f.<init>(com.admarvel.android.ads.AdMarvelInternalWebView, com.admarvel.android.ads.AdMarvelActivity, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, java.lang.String):void");
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

        public void run() {
            Cursor cursor = null;
            AdMarvelActivity adMarvelActivity = this.o != null ? (AdMarvelActivity) this.o.get() : null;
            AdMarvelInternalWebView adMarvelInternalWebView = this.p != null ? (AdMarvelInternalWebView) this.p.get() : null;
            if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                ContentResolver contentResolver = adMarvelActivity.getContentResolver();
                try {
                    cursor = contentResolver.query(Calendars.CONTENT_URI, new String[]{AnalyticsSQLiteHelper.GENERAL_ID, "calendar_displayName"}, null, null, null);
                    if (cursor != null && cursor.moveToFirst()) {
                        String[] strArr = new String[cursor.getCount()];
                        int[] iArr = new int[cursor.getCount()];
                        int i = 0;
                        while (i < strArr.length) {
                            iArr[i] = cursor.getInt(0);
                            strArr[i] = cursor.getString(1);
                            cursor.moveToNext();
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
                        if (this.l <= 0) {
                            contentValues.put("hasAlarm", Integer.valueOf(1));
                        }
                        if (this.h == null || this.h.length() <= 0) {
                            contentValues.put("eventTimezone", TimeZone.getDefault().getID());
                        } else {
                            contentValues.put("eventTimezone", this.h);
                        }
                        if (this.i != null && this.i.length() > 0) {
                            contentValues.put("rrule", this.i);
                        }
                        if (this.j != null && this.j.length() > 0) {
                            contentValues.put("exdate", this.j);
                        }
                        contentValues.put("eventStatus", Integer.valueOf(this.m));
                        contentValues.put("availability", Integer.valueOf(this.n));
                        Uri insert = contentResolver.insert(Events.CONTENT_URI, contentValues);
                        if (insert != null) {
                            if (this.l <= 0) {
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("event_id", Long.valueOf(Long.parseLong(insert.getLastPathSegment())));
                                contentValues2.put("method", Integer.valueOf(1));
                                contentValues2.put("minutes", Integer.valueOf(Math.abs(this.l)));
                                contentResolver.insert(Reminders.CONTENT_URI, contentValues2);
                            }
                            if (this.k != null && this.k.length() > 0) {
                                adMarvelInternalWebView.loadUrl("javascript:" + this.k + "(\"YES\")");
                            }
                        } else if (this.k != null && this.k.length() > 0) {
                            adMarvelInternalWebView.loadUrl("javascript:" + this.k + "(\"NO\")");
                        }
                    } else if (this.k != null && this.k.length() > 0) {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.k + "(\"NO\")");
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e) {
                    try {
                        e.printStackTrace();
                        if (this.k != null && this.k.length() > 0) {
                            adMarvelInternalWebView.loadUrl("javascript:" + this.k + "(\"NO\")");
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
        }
    }

    public class g extends RelativeLayout {
        TextView a;
        ProgressBar b;
        private final Context d;
        private boolean e;
        private boolean f;
        private boolean g;
        private int h;

        public g(Context context) {
            super(context);
            this.e = false;
            this.f = true;
            this.g = true;
            this.h = 0;
            this.d = context;
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            setLayoutParams(layoutParams);
            setBackgroundColor(getResources().getColor(17170445));
            int a = a(100.0f);
            this.a = new TextView(context);
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            this.a.setLayoutParams(layoutParams2);
            if (Version.getAndroidSDKVersion() < 9) {
                this.b = new ProgressBar(this.d, null, 16842872);
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            } else {
                this.b = new ProgressBar(this.d, null, 16843401);
                layoutParams = new RelativeLayout.LayoutParams(a(50.0f), a(50.0f));
            }
            this.b.setId(189523436);
            this.b.setVisibility(0);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            addView(this.b, layoutParams);
            layoutParams2.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.b.getId());
            layoutParams2.addRule(MMException.REQUEST_NOT_FILLED);
            layoutParams2.addRule(R.styleable.MapAttrs_zOrderOnTop);
            addView(this.a);
            this.a.setText("Loading..." + this.h + "% ");
            if (AdMarvelActivity.this.q) {
                this.f = false;
                AdMarvelActivity.this.g = true;
                AdMarvelActivity.this.t.postDelayed(AdMarvelActivity.this.k, 5000);
            }
        }

        private int a(float f) {
            return (int) TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
        }

        private void d() {
            AdMarvelActivity adMarvelActivity = AdMarvelActivity.this;
            adMarvelActivity.g = false;
            RelativeLayout relativeLayout = (RelativeLayout) adMarvelActivity.findViewById(b);
            if (relativeLayout != null) {
                s sVar = (s) relativeLayout.findViewWithTag(adMarvelActivity.u + "CONTROLS");
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(adMarvelActivity.u + "WEBVIEW");
                if (this.e) {
                    if (adMarvelInternalWebView != null) {
                        adMarvelInternalWebView.stopLoading();
                        adMarvelInternalWebView.d();
                        adMarvelInternalWebView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                    }
                    if (sVar != null) {
                        sVar.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                    }
                    relativeLayout.requestLayout();
                } else if (sVar != null && adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.clearHistory();
                    adMarvelInternalWebView.setVisibility(0);
                    sVar.setVisibility(0);
                    relativeLayout.requestLayout();
                }
            }
        }

        public boolean a() {
            return this.g;
        }

        public void b() {
            this.e = true;
        }

        public void c() {
            setShowing(false);
            this.b.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }

        public int getProgress() {
            return this.h;
        }

        public void setCancelable(boolean z) {
            this.f = z;
        }

        public void setProgress(int i) {
            this.h = i;
            this.b.setProgress(i);
            if (i >= 100) {
                c();
            }
            this.a.setText("Loading..." + i + "% ");
            this.a.invalidate();
        }

        public void setShowing(boolean z) {
            this.g = z;
        }
    }

    public static class h implements Runnable {
        private final AdMarvelAd a;
        private final Context b;

        public h(AdMarvelAd adMarvelAd, Context context) {
            this.a = adMarvelAd;
            this.b = context;
        }

        public void run() {
            if (this.a != null) {
                this.a.setResponseJson();
            }
            com.admarvel.android.util.a b = com.admarvel.android.util.a.b(this.b);
            if (b != null && this.a != null) {
                int a = b.a(this.b);
                this.a.setAdHistoryCounter(a);
                b.a(this.a.getAdHistoryDumpString(), a);
            }
        }
    }

    private static class i implements Runnable {
        private final AdMarvelAd a;
        private final Context b;

        public i(AdMarvelAd adMarvelAd, Context context) {
            this.a = adMarvelAd;
            this.b = context;
        }

        public void run() {
            com.admarvel.android.util.a b = com.admarvel.android.util.a.b(this.b);
            if (b != null && this.a != null) {
                int adHistoryCounter = this.a.getAdHistoryCounter();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("/ssr_");
                stringBuilder.append(adHistoryCounter);
                stringBuilder.append(".jpg");
                b.a(stringBuilder.toString());
            }
        }
    }

    private class j implements Runnable {
        private final AdMarvelAd b;

        public j(AdMarvelAd adMarvelAd) {
            this.b = adMarvelAd;
        }

        public void run() {
            int i = 0;
            try {
                new a(AdMarvelActivity.this, this.b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                AdMarvelActivity.this.K.sendEmptyMessage(i);
            }
        }
    }

    private class k implements Runnable {
        private k() {
        }

        public void run() {
            int i = 0;
            try {
                PowerManager powerManager = (PowerManager) AdMarvelActivity.this.getSystemService("power");
                if (!AdMarvelActivity.this.isFinishing() && powerManager != null && powerManager.isScreenOn()) {
                    RelativeLayout relativeLayout = (RelativeLayout) AdMarvelActivity.this.findViewById(b);
                    if (relativeLayout != null) {
                        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(AdMarvelActivity.this.u + "WEBVIEW");
                        if (!(adMarvelInternalWebView == null || adMarvelInternalWebView.isSignalShutdown() || adMarvelInternalWebView.visibilityCallback == null || adMarvelInternalWebView.visibilityCallback.length() <= 0 || !adMarvelInternalWebView.isLastStateVisible)) {
                            adMarvelInternalWebView.injectJavaScript(adMarvelInternalWebView.visibilityCallback + "(" + false + ")");
                            adMarvelInternalWebView.isLastStateVisible = false;
                        }
                    }
                    if (AdMarvelActivity.this.d) {
                        if (((m) ((RelativeLayout) AdMarvelActivity.this.findViewById(b)).findViewWithTag(AdMarvelActivity.this.u + "BR_VIDEO")) != null && AdMarvelActivity.this.E) {
                            if (!(AdMarvelActivity.this.e == null || AdMarvelActivity.this.e.length() <= 0 || relativeLayout == null)) {
                                AdMarvelInternalWebView adMarvelInternalWebView2 = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(AdMarvelActivity.this.u + "WEBVIEW");
                                if (adMarvelInternalWebView2 != null) {
                                    adMarvelInternalWebView2.loadUrl("javascript:" + AdMarvelActivity.this.e + "()");
                                }
                            }
                            AdMarvelActivity.this.g();
                        }
                    } else if (AdMarvelActivity.this.c && AdMarvelActivity.this.E && ((m) ((RelativeLayout) AdMarvelActivity.this.findViewById(b)).findViewWithTag(AdMarvelActivity.this.u + "BR_VIDEO")) != null) {
                        AdMarvelActivity.this.g();
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                AdMarvelActivity.this.K.sendEmptyMessage(i);
            }
        }
    }

    private static class l implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private final String c;

        public l(AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelActivity adMarvelActivity, String str) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = new WeakReference(adMarvelActivity);
            this.c = str;
        }

        public void run() {
            try {
                if (((AdMarvelInternalWebView) this.a.get()) != null) {
                    Context context = (AdMarvelActivity) this.b.get();
                    if (context != null && this.c != null && this.c.length() > 0) {
                        if (AdMarvelInterstitialAds.enableOfflineSDK) {
                            new com.admarvel.android.util.a.b().a(this.c, context, context.t);
                        } else {
                            new Utils(context, context.t).firePixel(this.c);
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class m implements Runnable {
        private final WeakReference a;
        private final String b;
        private String c;

        public m(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
            this.c = "null";
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = str;
        }

        public void run() {
            try {
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
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class n implements Runnable {
        private static int a;
        private final WeakReference b;

        static {
            a = Integer.MIN_VALUE;
        }

        public n(Activity activity) {
            this.b = new WeakReference(activity);
        }

        private int a() {
            return a;
        }

        public void run() {
            try {
                if (this.b.get() != null) {
                    a = ((WindowManager) ((Activity) this.b.get()).getSystemService("window")).getDefaultDisplay().getRotation();
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class o {
        static void a(Activity activity) {
            activity.getWindow().setFlags(16777216, 16777216);
        }
    }

    private static class p implements Runnable {
        private final String a;
        private final WeakReference b;
        private final WeakReference c;

        public p(String str, AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelActivity adMarvelActivity) {
            this.a = str;
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = new WeakReference(adMarvelActivity);
        }

        public void run() {
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = this.b != null ? (AdMarvelInternalWebView) this.b.get() : null;
                Activity activity = this.c != null ? (AdMarvelActivity) this.c.get() : null;
                if (activity != null && adMarvelInternalWebView != null) {
                    int i;
                    String str;
                    Location a;
                    String str2;
                    String str3;
                    boolean z;
                    String str4 = "NO";
                    String deviceConnectivitiy = Utils.getDeviceConnectivitiy(activity.getBaseContext());
                    int screenOrientation = Utils.getScreenOrientation(activity.getBaseContext());
                    if (screenOrientation == 1) {
                        i = 0;
                    } else if (screenOrientation == 2) {
                        i = 90;
                    } else {
                        i = -1;
                    }
                    str = (deviceConnectivitiy.equals("wifi") || deviceConnectivitiy.equals("mobile")) ? "YES" : "NO";
                    a = Utils.isFeatureSupported(activity.getBaseContext(), "location") ? i.a().a(adMarvelInternalWebView) : null;
                    str2 = a != null ? "{lat:" + a.getLatitude() + ", lon:" + a.getLongitude() + ", acc:" + a.getAccuracy() + "}" : "null";
                    String str5 = Version.SDK_VERSION;
                    str3 = activity.G ? "Expanded" : "Interstitial";
                    StringBuilder append = new StringBuilder().append("{screen: true, orientation: true, heading: ").append(Utils.isFeatureSupported(activity.getBaseContext(), "compass")).append(", location : ");
                    z = Utils.isPermissionGranted(activity.getBaseContext(), "android.permission.ACCESS_COARSE_LOCATION") || Utils.isPermissionGranted(activity.getBaseContext(), "android.permission.ACCESS_FINE_LOCATION");
                    append = append.append(z).append(",shake: ").append(Utils.isFeatureSupported(activity.getBaseContext(), "accelerometer")).append(",tilt: ").append(Utils.isFeatureSupported(activity.getBaseContext(), "accelerometer")).append(", network: true, sms:").append(Utils.isTelephonySupported(activity.getBaseContext())).append(", phone:").append(Utils.isTelephonySupported(activity.getBaseContext())).append(", email:true,calendar:");
                    z = Utils.isPermissionGranted(activity.getBaseContext(), "android.permission.READ_CALENDAR") && Utils.isPermissionGranted(activity.getBaseContext(), "android.permission.WRITE_CALENDAR");
                    String toString = append.append(z).append(", camera: ").append(Utils.isFeatureSupported(activity.getBaseContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                    ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                    viewGroup.getWidth();
                    try {
                        adMarvelInternalWebView.loadUrl("javascript:" + this.a + "({x:" + adMarvelInternalWebView.getLeft() + ",y:" + adMarvelInternalWebView.getTop() + ",width:" + adMarvelInternalWebView.getWidth() + ",height:" + adMarvelInternalWebView.getHeight() + ",appX:" + viewGroup.getLeft() + ",appY:" + viewGroup.getTop() + ",appWidth:" + viewGroup.getWidth() + ",appHeight:" + viewGroup.getHeight() + ",orientation:" + i + ",networkType:" + "'" + deviceConnectivitiy + "'" + ",network:" + "'" + str + "'" + ",screenWidth:" + Utils.getDeviceWidth(activity.getBaseContext()) + ",screenHeight:" + Utils.getDeviceHeight(activity.getBaseContext()) + ",adType:" + "'" + str3 + "'" + ",supportedFeatures:" + toString + ",sdkVersion:" + "'" + str5 + "'" + ",location:" + str2 + ",applicationSupportedOrientations:" + "'" + Utils.getSupportedInterfaceOrientations(activity) + "'" + "})");
                    } catch (Exception e) {
                        Logging.log(Log.getStackTraceString(e));
                    }
                }
            } catch (Exception e2) {
                Logging.log(e2.getMessage() + " Exception in InitAdMarvel ");
            }
        }
    }

    private static class q implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private String c;

        class AnonymousClass_1 implements OnPreparedListener {
            final /* synthetic */ AdMarvelActivity a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_1(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelActivity;
                this.b = adMarvelInternalWebView;
            }

            public void onPrepared(MediaPlayer mediaPlayer) {
                if (this.a.d) {
                    if (this.a.x != null && this.a.x.length() > 0) {
                        this.b.loadUrl("javascript:" + this.a.x + "()");
                    }
                    if (this.a.z != null && this.a.z.length() > 0) {
                        this.b.loadUrl("javascript:" + this.a.z + "()");
                    }
                } else {
                    this.b.loadUrl("javascript:AdApp.videoView().setDuration(" + (mediaPlayer.getDuration() / 1000) + ")");
                    this.b.loadUrl("javascript:AdApp.videoView().setCanPlay(true)");
                    this.b.loadUrl("javascript:AdApp.adView().play()");
                }
            }
        }

        class AnonymousClass_2 implements OnCompletionListener {
            final /* synthetic */ AdMarvelActivity a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_2(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelActivity;
                this.b = adMarvelInternalWebView;
            }

            public void onCompletion(MediaPlayer mediaPlayer) {
                if (!this.a.d) {
                    this.b.loadUrl("javascript:AdApp.videoView().end();");
                } else if (this.a.B != null && this.a.B.length() > 0) {
                    this.b.loadUrl("javascript:" + this.a.B + "()");
                }
                this.a.t.post(new d(this.a));
            }
        }

        class AnonymousClass_3 implements OnErrorListener {
            final /* synthetic */ AdMarvelActivity a;
            final /* synthetic */ AdMarvelInternalWebView b;

            AnonymousClass_3(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelActivity;
                this.b = adMarvelInternalWebView;
            }

            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                this.a.t.post(new d(this.a));
                if (this.a.d && this.a.D != null && this.a.D.length() > 0) {
                    this.b.loadUrl("javascript:" + this.a.D + "()");
                }
                return false;
            }
        }

        public q(String str, AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.c = str;
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                View view = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && view != null && this.c != null && this.c.length() > 0) {
                    adMarvelActivity.c = true;
                    RelativeLayout relativeLayout = (RelativeLayout) adMarvelActivity.findViewById(b);
                    m mVar = (m) relativeLayout.findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    if (mVar == null) {
                        View mVar2 = new m(adMarvelActivity);
                        mVar2.setTag(adMarvelActivity.u + "BR_VIDEO");
                        if (adMarvelActivity.d) {
                            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
                            mVar2.setLayoutParams(layoutParams);
                            int childCount = relativeLayout.getChildCount();
                            int i = 0;
                            while (i < childCount && relativeLayout.getChildAt(i) != view) {
                                i++;
                            }
                            relativeLayout.addView(mVar2, i);
                            relativeLayout.removeView(view);
                            view.setBackgroundColor(0);
                            view.setBackgroundDrawable(null);
                            if (Version.getAndroidSDKVersion() >= 11) {
                                try {
                                    View.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(view, new Object[]{Integer.valueOf(1), null});
                                } catch (Exception e) {
                                }
                            }
                            relativeLayout.addView(view);
                        } else {
                            mVar2.setLayoutParams(new RelativeLayout.LayoutParams(1, 1));
                            relativeLayout.addView(mVar2);
                        }
                        mVar2.a(Uri.parse(this.c));
                        mVar2.setVisibility(0);
                        mVar2.a(new AnonymousClass_1(adMarvelActivity, view));
                        mVar2.a(new AnonymousClass_2(adMarvelActivity, view));
                        mVar2.a(new AnonymousClass_3(adMarvelActivity, view));
                    } else if (this.c != null) {
                        mVar.a(Uri.parse(this.c));
                    }
                }
            } catch (Exception e2) {
                Logging.log(Log.getStackTraceString(e2));
            }
        }
    }

    private static class r implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public r(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                    m mVar = (m) ((RelativeLayout) adMarvelActivity.findViewById(b)).findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    if (mVar != null && mVar.isPlaying()) {
                        mVar.pause();
                        if (adMarvelActivity.d && adMarvelActivity.C != null && adMarvelActivity.C.length() > 0) {
                            adMarvelInternalWebView.loadUrl("javascript:" + adMarvelActivity.C + "()");
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class s implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ m a;
            final /* synthetic */ AdMarvelInternalWebView b;
            final /* synthetic */ AdMarvelActivity c;

            AnonymousClass_1(m mVar, AdMarvelInternalWebView adMarvelInternalWebView, AdMarvelActivity adMarvelActivity) {
                this.a = mVar;
                this.b = adMarvelInternalWebView;
                this.c = adMarvelActivity;
            }

            public void run() {
                if (this.a.getHeight() == 0) {
                    this.b.loadUrl("javascript:" + this.c.D + "()");
                } else {
                    this.a.start();
                }
            }
        }

        public s(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                    m mVar = (m) ((RelativeLayout) adMarvelActivity.findViewById(b)).findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    if (mVar != null) {
                        if (mVar.getHeight() == 0) {
                            adMarvelActivity.t.postDelayed(new AnonymousClass_1(mVar, adMarvelInternalWebView, adMarvelActivity), 500);
                        } else {
                            mVar.start();
                        }
                        if (adMarvelActivity.w == null) {
                            adMarvelActivity.w = new aa(adMarvelActivity, adMarvelInternalWebView);
                            adMarvelActivity.t.postDelayed(adMarvelActivity.w, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                        }
                        if (adMarvelActivity.d && adMarvelActivity.y != null && adMarvelActivity.y.length() > 0) {
                            adMarvelInternalWebView.loadUrl("javascript:" + adMarvelActivity.y + "()");
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class t implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private float c;
        private float d;
        private float e;
        private float f;

        public t(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView, float f, float f2, float f3, float f4) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = f;
            this.d = f2;
            this.e = f3;
            this.f = f4;
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.loadUrl("javascript:console.log(\"Window Innerwidth \"+window.innerWidth);");
                    RelativeLayout relativeLayout = (RelativeLayout) adMarvelActivity.findViewById(b);
                    m mVar = null;
                    if (relativeLayout != null) {
                        mVar = (m) relativeLayout.findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    }
                    if (mVar != null && adMarvelActivity.w != null) {
                        int width = relativeLayout.getWidth();
                        int height = relativeLayout.getHeight();
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) mVar.getLayoutParams();
                        layoutParams.width = (int) (((float) width) * this.e);
                        layoutParams.height = (int) (((float) height) * this.f);
                        layoutParams.leftMargin = (int) (((float) width) * this.c);
                        layoutParams.topMargin = (int) (((float) height) * this.d);
                        mVar.setLayoutParams(layoutParams);
                        mVar.forceLayout();
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class u implements Runnable {
        private String a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public u(String str, AdMarvelActivity adMarvelActivity, AdMarvelAd adMarvelAd) {
            this.a = str;
            this.b = new WeakReference(adMarvelActivity);
            this.c = adMarvelAd;
        }

        public void run() {
            Context context = this.b != null ? (AdMarvelActivity) this.b.get() : null;
            if (context != null) {
                if (AdMarvelInterstitialAds.getEnableClickRedirect()) {
                    try {
                        String offlinekeyUrl;
                        if (this.a == null || !AdMarvelInterstitialAds.enableOfflineSDK || Utils.checkIfPrivateProtocol(this.a)) {
                            if (!(this.a == null || Utils.checkIfPrivateProtocol(this.a) || !Utils.handledBySpecialIntents(context, this.a, false))) {
                                new Utils(context, context.t).registerTrackingEvent(context.s);
                                AdMarvelInterstitialAds.getListener().a(context, this.a, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                return;
                            }
                        } else if (URLUtil.isNetworkUrl(this.a) && Utils.handledBySpecialIntents(context, this.a, false)) {
                            AdMarvelInterstitialAds.getListener().a(context, this.a, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            return;
                        } else {
                            offlinekeyUrl = this.c.getOfflinekeyUrl();
                            if (Utils.handledBySpecialIntents(context, offlinekeyUrl.substring(0, offlinekeyUrl.lastIndexOf("/")) + "/" + this.a, false)) {
                                AdMarvelInterstitialAds.getListener().a(context, this.a, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                return;
                            }
                        }
                        if (this.a != null && Utils.isPrivateProtocol(this.a, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                            AdMarvelInterstitialAds.getListener().a(context, Utils.parsePrivateProtocol(this.a, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(this.a, "admarvelsdk"), context), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            new Utils(context, context.t).registerTrackingEvent(context.s);
                            return;
                        } else if (this.a != null && Utils.isPrivateProtocol(this.a, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                            AdMarvelInterstitialAds.getListener().a(context, Utils.parsePrivateProtocol(this.a, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(this.a, "admarvelinternal"), context), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            new Utils(context, context.t).registerTrackingEvent(context.s);
                            return;
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && Utils.isPrivateProtocol(this.a, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                            offlinekeyUrl = Utils.parsePrivateProtocol(this.a, "admarvelvideo", "http://", Utils.isPrivateProtocol(this.a, "admarvelvideo"), context);
                            intent = new Intent("android.intent.action.VIEW");
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            intent.setDataAndType(Uri.parse(offlinekeyUrl), "video/*");
                            if (Utils.isIntentAvailable(context.getBaseContext(), intent)) {
                                context.startActivity(intent);
                            }
                            new Utils(context, context.t).registerTrackingEvent(context.s);
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && Utils.isPrivateProtocol(this.a, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(this.a, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(this.a, "admarvelexternal"), context)));
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            if (Utils.isIntentAvailable(context.getBaseContext(), intent2)) {
                                context.startActivity(intent2);
                            }
                            new Utils(context, context.t).registerTrackingEvent(context.s);
                        } else if (Utils.isNetworkAvailable(context) && this.a != null && this.a.length() > 0) {
                            intent = new Intent(context.getBaseContext(), AdMarvelActivity.class);
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, this.a);
                            intent.putExtra("isInterstitial", false);
                            intent.putExtra("isInterstitialClick", true);
                            intent.putExtra("xml", context.s);
                            intent.putExtra("GUID", context.u);
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
                            if (context.f() != null) {
                                intent.putExtra(Event.SOURCE, context.n);
                            }
                            context.startActivity(intent);
                            new Utils(context, context.t).registerTrackingEvent(context.s);
                        }
                    } catch (Exception e2) {
                        Logging.log(e2.getMessage() + "Exception in RedirectRunnable ");
                    }
                }
                AdMarvelInterstitialAds.getListener().a(context, this.a, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
            }
        }
    }

    private static class v implements Runnable {
        private final WeakReference a;
        private final WeakReference b;
        private float c;

        public v(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView, float f) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = f;
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) adMarvelActivity.findViewById(b);
                    if (relativeLayout != null) {
                        m mVar = (m) relativeLayout.findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                        if (mVar != null) {
                            mVar.seekTo((int) (this.c * 1000.0f));
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class w implements Runnable {
        private final WeakReference a;
        private String b;
        private Activity c;

        public w(Activity activity, String str) {
            this.b = null;
            this.c = null;
            this.a = new WeakReference(activity);
            this.b = str;
        }

        public void run() {
            try {
                this.c = (Activity) this.a.get();
                if (this.c != null && this.b != null) {
                    Display defaultDisplay = ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay();
                    if (this.b.equalsIgnoreCase("Portrait")) {
                        this.c.setRequestedOrientation(1);
                        if (defaultDisplay.getRotation() != 0) {
                            this.c.setRequestedOrientation(ZBuildConfig.$minsdk);
                        }
                    } else if (this.b.equalsIgnoreCase("LandscapeLeft")) {
                        this.c.setRequestedOrientation(0);
                        if (defaultDisplay.getRotation() != 1) {
                            this.c.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                        }
                    } else if (this.b.equalsIgnoreCase("PortraitUpSideDown")) {
                        this.c.setRequestedOrientation(ZBuildConfig.$minsdk);
                        if (defaultDisplay.getRotation() != 2) {
                            this.c.setRequestedOrientation(1);
                        }
                    } else if (this.b.equalsIgnoreCase("LandscapeRight")) {
                        this.c.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                        if (defaultDisplay.getRotation() != 3) {
                            this.c.setRequestedOrientation(0);
                        }
                    } else if (!this.b.equalsIgnoreCase("none")) {
                    } else {
                        if (defaultDisplay.getRotation() == 2) {
                            this.c.setRequestedOrientation(ZBuildConfig.$minsdk);
                            if (defaultDisplay.getRotation() != 2) {
                                this.c.setRequestedOrientation(1);
                            }
                        } else if (defaultDisplay.getRotation() == 3) {
                            this.c.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                            if (defaultDisplay.getRotation() != 3) {
                                this.c.setRequestedOrientation(0);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class x implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public x(AdMarvelActivity adMarvelActivity, AdMarvelInternalWebView adMarvelInternalWebView) {
            this.a = new WeakReference(adMarvelActivity);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) this.a.get();
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelActivity != null && adMarvelInternalWebView != null) {
                    m mVar = (m) ((RelativeLayout) adMarvelActivity.findViewById(b)).findViewWithTag(adMarvelActivity.u + "BR_VIDEO");
                    if (mVar != null && mVar.isPlaying()) {
                        mVar.a();
                        adMarvelInternalWebView.loadUrl("javascript:stop()");
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    private static class y implements Runnable {
        String a;
        String b;
        InputStream c;
        Bitmap d;
        private final WeakReference e;

        public y(AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
            this.c = null;
            this.d = null;
            this.e = new WeakReference(adMarvelInternalWebView);
            this.a = str;
            this.b = str2;
        }

        @TargetApi(14)
        public void run() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.e.get();
            if (adMarvelInternalWebView != null) {
                String str = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString() + "/";
                try {
                    Thread thread;
                    if (this.a != null) {
                        if (this.a.startsWith("/mnt/sdcard")) {
                            if (new File(this.a).exists()) {
                                this.d = BitmapFactory.decodeFile(this.a);
                            } else {
                                adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                            }
                        } else if (this.a.startsWith("http:") || this.a.startsWith("https:")) {
                            this.a = Utils.redirectURLCheck(this.a, adMarvelInternalWebView.getContext());
                            thread = new Thread(new Runnable() {
                                public void run() {
                                    try {
                                        y.this.c = new URL(y.this).openStream();
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
                            this.c = adMarvelInternalWebView.getContext().getAssets().open(this.a.substring("file:///android_asset/".length()));
                        }
                    }
                    if (this.d == null && this.c != null) {
                        thread = new Thread(new Runnable() {
                            public void run() {
                                y.this.d = BitmapFactory.decodeStream(y.this.c);
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
                        adMarvelInternalWebView.getContext().sendBroadcast(intent);
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

    private static class z implements Runnable {
        String a;
        String b;
        InputStream c;
        Bitmap d;
        private final WeakReference e;

        public z(AdMarvelInternalWebView adMarvelInternalWebView, String str, String str2) {
            this.c = null;
            this.d = null;
            this.e = new WeakReference(adMarvelInternalWebView);
            this.a = str;
            this.b = str2;
        }

        @TargetApi(14)
        public void run() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.e.get();
            if (adMarvelInternalWebView != null) {
                String str = Environment.getExternalStorageDirectory().toString() + "/Pictures/";
                try {
                    Thread thread;
                    if (this.a != null) {
                        if (this.a.startsWith("/mnt/sdcard")) {
                            if (new File(this.a).exists()) {
                                this.d = BitmapFactory.decodeFile(this.a);
                            } else {
                                adMarvelInternalWebView.loadUrl("javascript:" + this.b + "(\"NO\")");
                            }
                        } else if (this.a.startsWith("http:") || this.a.startsWith("https:")) {
                            this.a = Utils.redirectURLCheck(this.a, adMarvelInternalWebView.getContext());
                            thread = new Thread(new Runnable() {
                                public void run() {
                                    try {
                                        z.this.c = new URL(z.this).openStream();
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
                            this.c = adMarvelInternalWebView.getContext().getAssets().open(this.a.substring("file:///android_asset/".length()));
                        }
                    }
                    if (this.d == null && this.c != null) {
                        thread = new Thread(new Runnable() {
                            public void run() {
                                z.this.d = BitmapFactory.decodeStream(z.this.c);
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
                        adMarvelInternalWebView.getContext().sendBroadcast(intent);
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

    static {
        b = 103422;
    }

    public AdMarvelActivity() {
        this.g = false;
        this.h = false;
        this.j = 0;
        this.k = new Runnable() {
            public void run() {
                try {
                    AdMarvelActivity.this.g = false;
                    com.admarvel.android.ads.AdMarvelActivity.g gVar = AdMarvelActivity.this != null ? (com.admarvel.android.ads.AdMarvelActivity.g) AdMarvelActivity.this.get() : null;
                    if (gVar != null) {
                        gVar.setCancelable(true);
                    }
                } catch (Exception e) {
                    Logging.log("Exception in disable Back press button " + e.getMessage());
                }
            }
        };
        this.l = new Runnable() {
            public void run() {
                AdMarvelActivity.this.h = false;
            }
        };
        this.q = false;
        this.r = false;
        this.t = new Handler();
        this.c = false;
        this.d = false;
        this.E = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.K = new Handler() {
            public void handleMessage(Message message) {
                try {
                    com.admarvel.android.ads.AdMarvelActivity.g gVar = AdMarvelActivity.this != null ? (com.admarvel.android.ads.AdMarvelActivity.g) AdMarvelActivity.this.get() : null;
                    if (gVar != null) {
                        gVar.b();
                        gVar.d();
                    }
                    if (AdMarvelActivity.this.q) {
                        AdMarvelActivity.b(AdMarvelActivity.this);
                        if (!AdMarvelInterstitialAds.getListener().b()) {
                            AdMarvelActivity.this.finish();
                        }
                        if (AdMarvelActivity.this.e != null && AdMarvelActivity.this.e.length() > 0) {
                            RelativeLayout relativeLayout = (RelativeLayout) AdMarvelActivity.this.findViewById(b);
                            if (relativeLayout != null) {
                                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(AdMarvelActivity.this.u + "WEBVIEW");
                                if (adMarvelInternalWebView != null) {
                                    adMarvelInternalWebView.loadUrl("javascript:" + AdMarvelActivity.this.e + "()");
                                }
                            }
                        }
                        if (AdMarvelActivity.this.j > 2) {
                            AdMarvelActivity.this.finish();
                        }
                    } else {
                        AdMarvelActivity.this.finish();
                    }
                } catch (NullPointerException e) {
                    Logging.log("Nullpointer exception occured in close" + e.getMessage());
                }
            }
        };
        this.L = new Handler() {
            public void handleMessage(Message message) {
                RelativeLayout relativeLayout = (RelativeLayout) AdMarvelActivity.this.findViewById(b);
                View adMarvelInternalWebView = new AdMarvelInternalWebView(AdMarvelActivity.this, !AdMarvelActivity.this.q, AdMarvelActivity.this.s, AdMarvelActivity.this.u, AdMarvelActivity.this.t, null, null, AdMarvelActivity.this.v);
                adMarvelInternalWebView.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                adMarvelInternalWebView.setTag(AdMarvelActivity.this.u + "WEBVIEW");
                adMarvelInternalWebView.i();
                adMarvelInternalWebView.addJavascriptInterface(new InnerInterstitialJS(adMarvelInternalWebView, AdMarvelActivity.this, AdMarvelActivity.this.v), "ADMARVEL");
                adMarvelInternalWebView.addJavascriptInterface(new BrightRollInnerInterstitialJS(adMarvelInternalWebView, AdMarvelActivity.this), "AndroidBridge");
                if (Utils.isPermissionGranted(AdMarvelActivity.this.getApplicationContext(), "android.permission.RECORD_AUDIO")) {
                    Class[] clsArr = new Class[]{AdMarvelInternalWebView.class, String.class, String.class};
                    try {
                        if (AdMarvelActivity.this.v != null) {
                            Class forName = Class.forName("com.admarvel.android.admarvelspeechkitadapter.Speech");
                            Object newInstance = forName.newInstance();
                            forName.getDeclaredMethod("initSpeechMembers", clsArr).invoke(newInstance, new Object[]{adMarvelInternalWebView, AdMarvelActivity.this.v.getBannerid(), AdMarvelActivity.this.v.getSiteId()});
                            adMarvelInternalWebView.addJavascriptInterface(newInstance, "ADMARVEL_SPEECH");
                        }
                    } catch (ClassNotFoundException e) {
                        Logging.log(e.getMessage());
                    } catch (InstantiationException e2) {
                        Logging.log(e2.getMessage());
                    } catch (IllegalAccessException e3) {
                        Logging.log(e3.getMessage());
                    } catch (NoSuchMethodException e4) {
                        Logging.log(e4.getMessage());
                    } catch (IllegalArgumentException e5) {
                        Logging.log(e5.getMessage());
                    } catch (InvocationTargetException e6) {
                        Logging.log(e6.getMessage());
                    } catch (NullPointerException e7) {
                        Logging.log(e7.getMessage());
                    }
                }
                relativeLayout.addView(adMarvelInternalWebView);
                if (!(AdMarvelActivity.this.q || AdMarvelActivity.this.G)) {
                    View sVar = new s(AdMarvelActivity.this, AdMarvelActivity.this.getApplicationContext(), AdMarvelActivity.this.u);
                    sVar.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                    sVar.setTag(AdMarvelActivity.this.u + "CONTROLS");
                    relativeLayout.addView(sVar);
                }
                if (AdMarvelActivity.this.q) {
                    AdMarvelInternalWebView.a(AdMarvelActivity.this.u, AdMarvelActivity.this.i);
                }
                if (AdMarvelActivity.this.m != null && AdMarvelActivity.this.m.length() > 0) {
                    adMarvelInternalWebView.loadUrl(AdMarvelActivity.this.m);
                } else if (!AdMarvelActivity.this.e() || AdMarvelActivity.this.F == null || AdMarvelActivity.this.F.length() <= 0) {
                    adMarvelInternalWebView.setBackgroundColor(AdMarvelActivity.this.p);
                    str = "content://" + AdMarvelActivity.this.getPackageName() + ".AdMarvelLocalFileContentProvider";
                    if (AdMarvelInterstitialAds.enableOfflineSDK) {
                        adMarvelInternalWebView.loadDataWithBaseURL(AdMarvelActivity.this.v.getOfflineBaseUrl() + "/", AdMarvelActivity.this.o, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                    } else if (Version.getAndroidSDKVersion() < 11) {
                        adMarvelInternalWebView.loadDataWithBaseURL(str, AdMarvelActivity.this.o, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                    } else {
                        adMarvelInternalWebView.loadDataWithBaseURL("http://baseurl.admarvel.com", AdMarvelActivity.this.o, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                    }
                } else {
                    if (AdMarvelInterstitialAds.enableOfflineSDK) {
                        if (URLUtil.isNetworkUrl(AdMarvelActivity.this.F) && Utils.isNetworkAvailable(AdMarvelActivity.this)) {
                            adMarvelInternalWebView.loadUrl(AdMarvelActivity.this.F);
                        }
                        if (!URLUtil.isNetworkUrl(AdMarvelActivity.this.F)) {
                            SharedPreferences sharedPreferences = AdMarvelActivity.this.getSharedPreferences("admarvel_preferences", 0);
                            str = sharedPreferences.getString("childDirectory", "NULL") + "/" + sharedPreferences.getString("banner_folder", "NULL");
                            if (str != null) {
                                AdMarvelActivity.this.o = com.admarvel.android.util.a.b.a(str, AdMarvelActivity.this.F);
                                Logging.log("Offline SDK:Admarvel XML Response:" + AdMarvelActivity.this.s);
                            }
                            adMarvelInternalWebView.loadDataWithBaseURL(AdMarvelActivity.this.v.getOfflineBaseUrl() + "/", AdMarvelActivity.this.o, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
                        }
                    } else {
                        adMarvelInternalWebView.loadUrl(AdMarvelActivity.this.F);
                    }
                    if (!AdMarvelActivity.this.H) {
                        adMarvelInternalWebView.a(AdMarvelActivity.this.I);
                    }
                    if (AdMarvelActivity.this.J != null && AdMarvelActivity.this.J.length() > 0) {
                        AdMarvelActivity.this.a(AdMarvelActivity.this.J);
                    }
                }
            }
        };
    }

    static /* synthetic */ int b(AdMarvelActivity adMarvelActivity) {
        int i = adMarvelActivity.j;
        adMarvelActivity.j = i + 1;
        return i;
    }

    public int a() {
        return this.j;
    }

    void a(String str) {
        int i;
        Logging.log("DisableActivityOrientation");
        if (Version.getAndroidSDKVersion() < 9) {
            i = getResources().getConfiguration().orientation;
        } else {
            n nVar = new n(this);
            nVar.run();
            i = Integer.MIN_VALUE;
            while (i == Integer.MIN_VALUE) {
                i = nVar.a();
            }
        }
        if (str == null) {
            return;
        }
        if (Version.getAndroidSDKVersion() < 9) {
            if (str.equalsIgnoreCase("Portrait")) {
                setRequestedOrientation(1);
            } else if (str.equalsIgnoreCase("LandscapeLeft")) {
                setRequestedOrientation(0);
            } else if (!str.equalsIgnoreCase("Current")) {
            } else {
                if (i == 1) {
                    setRequestedOrientation(1);
                } else if (i == 2) {
                    setRequestedOrientation(0);
                }
            }
        } else if (str.equalsIgnoreCase("Portrait")) {
            setRequestedOrientation(1);
        } else if (str.equalsIgnoreCase("LandscapeLeft")) {
            setRequestedOrientation(0);
        } else if (!str.equalsIgnoreCase("Current")) {
            this.t.post(new w(this, str));
        } else if (i == 0) {
            this.t.post(new w(this, "Portrait"));
        } else if (i == 1) {
            this.t.post(new w(this, "LandscapeLeft"));
        } else {
            this.t.post(new w(this, "none"));
        }
    }

    public void b() {
        this.j++;
    }

    boolean c() {
        return this.q;
    }

    boolean d() {
        return this.r;
    }

    boolean e() {
        return this.G;
    }

    String f() {
        return this.n;
    }

    void g() {
        this.K.sendEmptyMessage(0);
    }

    public void h() {
        this.t.postDelayed(new h(this.v, this), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
    }

    public void i() {
        this.t.postDelayed(new i(this.v, this), 3000);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (AdMarvelUtils.getAdmarvelActivityOrientationInfo(this) != null) {
            setRequestedOrientation(AdMarvelUtils.getAdmarvelActivityOrientationInfo(this).intValue());
        }
        if (Version.getAndroidSDKVersion() >= 11) {
            o.a(this);
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.m = extras.getString(PlusShare.KEY_CALL_TO_ACTION_URL);
            this.n = extras.getString(Event.SOURCE);
            this.o = extras.getString(Constants.HTML);
            this.s = extras.getString("xml");
            this.q = extras.getBoolean("isInterstitial", false);
            this.r = extras.getBoolean("isInterstitialClick", false);
            this.u = extras.getString("GUID");
            byte[] byteArray = extras.getByteArray("serialized_admarvelad");
            if (byteArray != null) {
                try {
                    this.v = (AdMarvelAd) new ObjectInputStream(new ByteArrayInputStream(byteArray)).readObject();
                } catch (Exception e) {
                    Logging.log(Log.getStackTraceString(e));
                }
            }
            this.p = extras.getInt("backgroundcolor");
            this.F = extras.getString(IMWebView.EXPAND_URL);
            if (this.F != null && this.F.length() > 0) {
                this.G = true;
                this.H = extras.getBoolean("closeBtnEnabled");
                this.I = extras.getBoolean("closeAreaEnabled");
                this.J = extras.getString("orientationState");
            }
        }
        if (AdMarvelUtils.isNotificationBarInFullScreenLaunchEnabled() || (!this.q && (Build.MODEL.contains("Kindle") || Build.PRODUCT.contains("Kindle")))) {
            getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
            getWindow().clearFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        } else {
            getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        }
        this.i = new b(this);
        View relativeLayout = new RelativeLayout(this);
        relativeLayout.setId(b);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-16777216);
        setContentView(relativeLayout);
        if (this.q && this instanceof AdMarvelActivity) {
            AdMarvelInterstitialAds.getListener().a(this);
        }
        if (Version.getAndroidSDKVersion() >= 11) {
            this.t.post(new j(this.v));
        } else {
            new a(this, this.v).execute(new Object[0]);
        }
        relativeLayout = new g(this);
        relativeLayout.setTag("ADM_DIALOG");
        addContentView(relativeLayout, relativeLayout.getLayoutParams());
        this.a = new WeakReference(relativeLayout);
    }

    protected void onDestroy() {
        AdMarvelInternalWebView adMarvelInternalWebView;
        g gVar = this.a != null ? (g) this.a.get() : null;
        if (gVar != null) {
            gVar.b();
            gVar.d();
            gVar.c();
            this.a.clear();
        }
        k a = k.a();
        if (a.b()) {
            a.c();
        }
        this.t.post(new d(this));
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(b);
        if (e() && AdMarvelInternalWebView.c(this.u) != null) {
            AdMarvelInternalWebView.c(this.u).a();
        }
        if (relativeLayout != null) {
            adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(this.u + "WEBVIEW");
            if (adMarvelInternalWebView != null && adMarvelInternalWebView.visibilityCallback != null && adMarvelInternalWebView.visibilityCallback.length() > 0 && adMarvelInternalWebView.isLastStateVisible) {
                adMarvelInternalWebView.injectJavaScript(adMarvelInternalWebView.visibilityCallback + "(" + false + ")");
                adMarvelInternalWebView.isLastStateVisible = false;
            }
        }
        if (relativeLayout != null) {
            adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(this.u + "WEBVIEW");
            if (adMarvelInternalWebView != null) {
                relativeLayout.removeView(adMarvelInternalWebView);
                adMarvelInternalWebView.loadUrl(AdTrackerConstants.BLANK);
                adMarvelInternalWebView.a();
            }
        }
        if (this.q) {
            AdMarvelInternalWebView.b(this.u);
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            switch (i) {
                case GoogleScorer.CLIENT_APPSTATE:
                    if (this.g || this.h) {
                        return false;
                    }
                    g();
                    if (!(c() || AdMarvelInternalWebView.d(this.u) == null)) {
                        AdMarvelInternalWebView.d(this.u).a(this.u);
                    }
                    return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    protected void onPause() {
        AdMarvelInternalWebView adMarvelInternalWebView;
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(b);
        if (this.a != null) {
            g gVar = (g) this.a.get();
        }
        if (relativeLayout != null) {
            adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(this.u + "WEBVIEW");
            if (adMarvelInternalWebView != null) {
                if (Version.getAndroidSDKVersion() >= 11) {
                    ae.b(adMarvelInternalWebView);
                } else {
                    af.b(adMarvelInternalWebView);
                }
                adMarvelInternalWebView.e();
            }
        }
        if (!(isFinishing() || this.f == null || this.f.length() <= 0)) {
            relativeLayout = (RelativeLayout) findViewById(b);
            if (relativeLayout != null) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(this.u + "WEBVIEW");
                if (adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.loadUrl("javascript:" + this.f + "()");
                }
            }
        }
        if (c()) {
            try {
                AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).pause();
            } catch (Exception e) {
            }
        }
        super.onPause();
    }

    protected void onResume() {
        super.onResume();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(b);
        if (relativeLayout != null) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) relativeLayout.findViewWithTag(this.u + "WEBVIEW");
            if (adMarvelInternalWebView != null) {
                if (Version.getAndroidSDKVersion() >= 11) {
                    ae.a(adMarvelInternalWebView);
                } else {
                    af.a(adMarvelInternalWebView);
                }
                Logging.log("#### activity onResume " + adMarvelInternalWebView.isLastStateVisible);
                adMarvelInternalWebView.f();
            }
        }
        if (c()) {
            try {
                AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).resume();
            } catch (Exception e) {
            }
        }
    }

    protected void onStart() {
        if (c()) {
            try {
                AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).start();
            } catch (Exception e) {
            }
        }
        super.onStart();
    }

    protected void onStop() {
        if (Version.getAndroidSDKVersion() >= 7) {
            this.t.post(new k(null));
        }
        if (c()) {
            try {
                AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).stop();
            } catch (Exception e) {
            }
        }
        super.onStop();
    }
}