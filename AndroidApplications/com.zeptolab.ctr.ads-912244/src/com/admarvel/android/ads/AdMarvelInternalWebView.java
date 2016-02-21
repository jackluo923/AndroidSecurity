package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.admarvel.android.ads.Utils.PROTOCOL_TYPE;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"NewApi"})
public class AdMarvelInternalWebView extends WebView implements OnTouchListener {
    public static final String ACTION_KEY = "action";
    static String BUNDLE_ID = null;
    public static final String DIMENSIONS = "expand_dimensions";
    public static final String EXPAND_URL = "expand_url";
    private static final int MESSAGE_PLAY_AUDIO = 1008;
    public static final String PLAYER_PROPERTIES = "player_properties";
    static int VIEW_ID;
    private static final Map internalWebViewInAppBrowserPrivateListener;
    private static final Map internalWebViewTwoPartPrivateListener;
    private static boolean isInAppFirstTimeLoaded;
    private static boolean isPageFinished;
    private static boolean isPageFinishedInAppBrowser;
    final String GUID;
    private final AdMarvelAd adMarvelAd;
    final WeakReference adMarvelTwoPartLayoutReference;
    final WeakReference adMarvelViewReference;
    public String audioCachedCallback;
    public String audioCompletedCallback;
    public String audioPositionChangeCallback;
    public String audioStartedCallback;
    private boolean brightrollVideoStarted;
    private final WeakReference contextReference;
    private boolean disableCloseButton;
    private final AtomicBoolean enableAutoDetect;
    private boolean enableCloseAreaOnly;
    private final AtomicBoolean enableFullScreenControls;
    public GestureDetector gestureDetector;
    private final Handler handler;
    private final AtomicBoolean init;
    public boolean isAdClosing;
    public boolean isAdExpanding;
    private final AtomicBoolean isBannerAd;
    private final AtomicBoolean isInAppBrowser;
    private final AtomicBoolean isInteratitialAd;
    public boolean isInterstitialAdDisplayed;
    public boolean isLastStateOfKeyLocked;
    public boolean isLastStateVisible;
    private boolean isTwoPartAdLoadingWithoutMraidInjection;
    private final AtomicBoolean isTwoPartExpandAd;
    private boolean isfirst;
    private int mHeight;
    public String mInAppBrowserCloseCallback;
    public int mInitLayoutX;
    public int mInitLayoutY;
    private int mLastLayoutHeight;
    private int mLastLayoutWidth;
    private int mWidth;
    private int redirectionCheckCount;
    private ScheduledThreadPoolExecutor scheduledExecutor;
    public boolean setSoftwareLayer;
    private volatile boolean signalPause;
    private volatile boolean signalShutdown;
    public String sizeChangeCallback;
    private boolean userInteractionDetected;
    private m viewableRunnable;
    public String visibilityCallback;
    private final String xml;

    private static class a extends WebChromeClient {
        private CustomViewCallback a;
        private View b;
        private FrameLayout c;
        private final WeakReference d;
        private final WeakReference e;

        public a(AdMarvelInternalWebView adMarvelInternalWebView, Context context) {
            this.d = new WeakReference(adMarvelInternalWebView);
            this.e = new WeakReference(context);
        }

        void a_() {
            onHideCustomView();
        }

        public View getVideoLoadingProgressView() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView == null) {
                return super.getVideoLoadingProgressView();
            }
            if (adMarvelInternalWebView.signalShutdown) {
                return super.getVideoLoadingProgressView();
            }
            Context context = (Context) this.e.get();
            if (context != null && context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity != null) {
                    View progressBar = new ProgressBar(activity, null, 16842871);
                    progressBar.setIndeterminate(true);
                    return progressBar;
                }
            }
            return super.getVideoLoadingProgressView();
        }

        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView == null) {
                return true;
            }
            return adMarvelInternalWebView.signalShutdown ? true : super.onConsoleMessage(consoleMessage);
        }

        public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                callback.invoke(str, true, false);
            }
        }

        public void onHideCustomView() {
            super.onHideCustomView();
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                if (this.c != null) {
                    Context context = (Context) this.e.get();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (activity != null) {
                            Window window = activity.getWindow();
                            ViewGroup viewGroup = (ViewGroup) window.findViewById(16908290);
                            this.c.removeView(this.b);
                            this.b = null;
                            viewGroup.removeView(this.c);
                            this.c = null;
                            if (window.getCurrentFocus() instanceof AdMarvelInternalWebView) {
                                ((AdMarvelInternalWebView) window.getCurrentFocus()).setOnKeyListener(null);
                            }
                        }
                    }
                }
                try {
                    if (this.a != null) {
                        this.a.onCustomViewHidden();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView == null) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.signalShutdown) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.isBannerAd.get()) {
                jsResult.cancel();
                return true;
            } else if (this.e.get() != null && this.e.get() instanceof Activity) {
                return super.onJsAlert(webView, str, str2, jsResult);
            } else {
                jsResult.cancel();
                return true;
            }
        }

        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.cancel();
            return true;
        }

        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView == null) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.signalShutdown) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.isBannerAd.get()) {
                jsResult.cancel();
                return true;
            } else if (this.e.get() != null && this.e.get() instanceof Activity) {
                return super.onJsConfirm(webView, str, str2, jsResult);
            } else {
                jsResult.cancel();
                return true;
            }
        }

        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView == null) {
                jsPromptResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.signalShutdown) {
                jsPromptResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.isBannerAd.get()) {
                jsPromptResult.cancel();
                return true;
            } else if (this.e.get() != null && this.e.get() instanceof Activity) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            } else {
                jsPromptResult.cancel();
                return true;
            }
        }

        public void onProgressChanged(WebView webView, int i) {
            com.admarvel.android.ads.AdMarvelActivity.g gVar = null;
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = this.d != null ? (AdMarvelInternalWebView) this.d.get() : null;
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                    s sVar;
                    sVar = (adMarvelInternalWebView.getParent() == null || !adMarvelInternalWebView.getParent() instanceof RelativeLayout) ? null : (s) ((RelativeLayout) adMarvelInternalWebView.getParent()).findViewWithTag(adMarvelInternalWebView.GUID + "CONTROLS");
                    if (sVar != null && adMarvelInternalWebView.init.get()) {
                        ((ProgressBar) sVar.findViewWithTag(adMarvelInternalWebView.GUID + "PROGRESS_BAR")).setProgress(i);
                    }
                    Context context = (Context) this.e.get();
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (activity != null && activity instanceof AdMarvelActivity) {
                            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                            if (adMarvelActivity != null) {
                                if (adMarvelActivity.a != null) {
                                    gVar = (com.admarvel.android.ads.AdMarvelActivity.g) adMarvelActivity.a.get();
                                }
                                if (gVar != null) {
                                    if (adMarvelInternalWebView.isInAppBrowser.get()) {
                                        if ((i >= 10 && adMarvelInternalWebView.redirectionCheckCount > 2) || i >= 30) {
                                            adMarvelInternalWebView.handler.post(new k(adMarvelInternalWebView, activity));
                                        }
                                    }
                                    gVar.setProgress(i);
                                }
                            }
                            if (Version.getAndroidSDKVersion() >= 14 && i == 100 && !adMarvelInternalWebView.brightrollVideoStarted && adMarvelActivity.c && !adMarvelActivity.d) {
                                adMarvelInternalWebView.brightrollVideoStarted = true;
                                adMarvelInternalWebView.loadUrl("javascript:AdApp.adView().play()");
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log("Exception in onProgressChanged " + e.getMessage());
            }
        }

        public void onShowCustomView(View view, CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.d.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                this.a = customViewCallback;
                Context context = (Context) this.e.get();
                if (context != null && context instanceof Activity) {
                    Activity activity = (Activity) context;
                    if (activity == null) {
                        return;
                    }
                    if (this.b != null) {
                        customViewCallback.onCustomViewHidden();
                    } else {
                        this.b = view;
                        Window window = activity.getWindow();
                        ViewGroup viewGroup = (ViewGroup) window.findViewById(16908290);
                        this.c = new FrameLayout(adMarvelInternalWebView.getContext());
                        this.c.setLayoutParams(new LayoutParams(-1, -1));
                        View linearLayout = new LinearLayout(adMarvelInternalWebView.getContext());
                        linearLayout.setBackgroundColor(-1442840576);
                        linearLayout.setGravity(53);
                        LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams.weight = 40.0f;
                        linearLayout.setLayoutParams(layoutParams);
                        linearLayout.addView(new i(adMarvelInternalWebView.getContext(), adMarvelInternalWebView, this, activity));
                        this.c.addView(view);
                        this.c.addView(linearLayout);
                        if (view instanceof FrameLayout) {
                            View focusedChild = ((FrameLayout) view).getFocusedChild();
                            if (focusedChild instanceof VideoView) {
                                ((VideoView) focusedChild).setOnErrorListener(new OnErrorListener() {
                                    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                                        a.this.a();
                                        return true;
                                    }
                                });
                                if (window.getCurrentFocus() instanceof AdMarvelInternalWebView) {
                                    ((AdMarvelInternalWebView) window.getCurrentFocus()).setOnKeyListener(new OnKeyListener() {
                                        public boolean onKey(View view, int i, KeyEvent keyEvent) {
                                            if (keyEvent.getAction() != 0 || i != 4) {
                                                return false;
                                            }
                                            if (a.this.b == null) {
                                                return view.onKeyDown(i, keyEvent);
                                            }
                                            a.this.a();
                                            return true;
                                        }
                                    });
                                }
                                focusedChild.setOnKeyListener(new OnKeyListener() {
                                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                                        if (keyEvent.getAction() != 0 || i != 4) {
                                            return false;
                                        }
                                        if (a.this.b == null) {
                                            return view.onKeyDown(i, keyEvent);
                                        }
                                        a.this.a();
                                        return true;
                                    }
                                });
                            }
                        }
                        viewGroup.addView(this.c);
                    }
                }
            }
        }
    }

    private static class b extends WebChromeClient {
        private final WeakReference a;
        private final WeakReference b;

        public b(AdMarvelInternalWebView adMarvelInternalWebView, Context context) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = new WeakReference(context);
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView == null) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.signalShutdown) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.isBannerAd.get()) {
                jsResult.cancel();
                return true;
            } else if (this.b.get() != null && this.b.get() instanceof Activity) {
                return super.onJsAlert(webView, str, str2, jsResult);
            } else {
                jsResult.cancel();
                return true;
            }
        }

        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.cancel();
            return true;
        }

        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView == null) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.signalShutdown) {
                jsResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.isBannerAd.get()) {
                jsResult.cancel();
                return true;
            } else if (this.b.get() != null && this.b.get() instanceof Activity) {
                return super.onJsConfirm(webView, str, str2, jsResult);
            } else {
                jsResult.cancel();
                return true;
            }
        }

        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView == null) {
                jsPromptResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.signalShutdown) {
                jsPromptResult.cancel();
                return true;
            } else if (adMarvelInternalWebView.isBannerAd.get()) {
                jsPromptResult.cancel();
                return true;
            } else if (this.b.get() != null && this.b.get() instanceof Activity) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            } else {
                jsPromptResult.cancel();
                return true;
            }
        }

        public void onProgressChanged(WebView webView, int i) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                s sVar = null;
                if (adMarvelInternalWebView.getParent() instanceof RelativeLayout) {
                    sVar = (s) ((RelativeLayout) adMarvelInternalWebView.getParent()).findViewWithTag(adMarvelInternalWebView.GUID + "CONTROLS");
                }
                if (sVar != null && adMarvelInternalWebView.init.get()) {
                    ((ProgressBar) sVar.findViewWithTag(adMarvelInternalWebView.GUID + "PROGRESS_BAR")).setProgress(i);
                }
            }
        }
    }

    private static class c extends WebViewClient {
        private final WeakReference a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public c(AdMarvelInternalWebView adMarvelInternalWebView, Context context, AdMarvelAd adMarvelAd) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = new WeakReference(context);
            this.c = adMarvelAd;
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                Context context = (Context) this.b.get();
                if (context != null && !adMarvelInternalWebView.signalShutdown) {
                    Logging.log("Load Ad: onPageFinished");
                    if (adMarvelInternalWebView.isInAppBrowser.get()) {
                        isPageFinishedInAppBrowser = true;
                    } else {
                        isPageFinished = true;
                    }
                    adMarvelInternalWebView.handler.post(new k(adMarvelInternalWebView, context));
                }
            }
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                Logging.log("Load Ad: onPageStarted");
                if (adMarvelInternalWebView.enableFullScreenControls.get()) {
                    s sVar = null;
                    if (adMarvelInternalWebView.getParent() != null && adMarvelInternalWebView.getParent() instanceof RelativeLayout) {
                        sVar = (s) ((RelativeLayout) adMarvelInternalWebView.getParent()).findViewWithTag(adMarvelInternalWebView.GUID + "CONTROLS");
                    }
                    if (sVar != null && adMarvelInternalWebView.init.get()) {
                        sVar.findViewWithTag(adMarvelInternalWebView.GUID + "PROGRESS_BAR").setVisibility(0);
                    }
                }
                Context context = (Context) this.b.get();
                if (context == null) {
                    return;
                }
                if (adMarvelInternalWebView.isInAppBrowser.get()) {
                    isPageFinishedInAppBrowser = false;
                    if (isInAppFirstTimeLoaded) {
                        Logging.log(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL " + Constants.WAIT_FOR_INTERSTITIAL);
                        adMarvelInternalWebView.handler.postDelayed(new g(adMarvelInternalWebView, context), Constants.WAIT_FOR_INTERSTITIAL);
                        isInAppFirstTimeLoaded = false;
                    }
                } else {
                    isPageFinished = false;
                    Logging.log(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL " + Constants.WAIT_FOR_INTERSTITIAL);
                    adMarvelInternalWebView.handler.postDelayed(new h(adMarvelInternalWebView, context), Constants.WAIT_FOR_INTERSTITIAL);
                }
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            Context context = (Context) this.b.get();
            if (context != null && context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity != null && activity instanceof AdMarvelActivity) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                    if (adMarvelActivity != null) {
                        Logging.log("onReceivedError - Closing AdMarvel FullScreen due to bad URL : " + str2);
                        adMarvelActivity.g();
                    }
                }
            }
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            int i = 0;
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView == null) {
                return null;
            }
            if (adMarvelInternalWebView.signalShutdown) {
                return null;
            }
            if (str == null) {
                return null;
            }
            if (!str.equals("http://baseurl.admarvel.com/mraid.js") && (!adMarvelInternalWebView.isTwoPartAdLoadingWithoutMraidInjection || !str.endsWith("mraid.js"))) {
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
                        eVar.a = bArr;
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
                        System.arraycopy(eVar2.a, 0, obj, i, eVar2.b);
                        i += eVar2.b;
                        i2++;
                    }
                    str3 = new String(obj);
                } else {
                    str3 = str2;
                }
                adMarvelInternalWebView.isTwoPartAdLoadingWithoutMraidInjection = false;
                return new WebResourceResponse(WebRequest.CONTENT_TYPE_CSS, HTMLEncoder.ENCODE_NAME_DEFAULT, new ByteArrayInputStream(str3.getBytes()));
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                return super.shouldInterceptRequest(webView, str);
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView == null) {
                return false;
            }
            if (adMarvelInternalWebView.signalShutdown) {
                return false;
            }
            adMarvelInternalWebView.redirectionCheckCount = adMarvelInternalWebView.redirectionCheckCount + 1;
            Context context = (Context) this.b.get();
            if (context != null && context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity != null && activity instanceof AdMarvelActivity) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                    if (adMarvelActivity != null) {
                        com.admarvel.android.ads.AdMarvelActivity.g gVar;
                        gVar = adMarvelActivity.a != null ? (com.admarvel.android.ads.AdMarvelActivity.g) adMarvelActivity.a.get() : null;
                        if (gVar != null && gVar.a() && gVar.getProgress() >= 10 && adMarvelInternalWebView.redirectionCheckCount > 2 && adMarvelInternalWebView.isInAppBrowser.get()) {
                            adMarvelInternalWebView.handler.post(new k(adMarvelInternalWebView, activity));
                        }
                        if (Utils.handledBySpecialIntents(adMarvelInternalWebView.getContext(), str, false)) {
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            if (!adMarvelActivity.c()) {
                                adMarvelActivity.g();
                            }
                            if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                            }
                            return true;
                        } else if (adMarvelActivity.c()) {
                            if (adMarvelActivity.c()) {
                                if (AdMarvelInterstitialAds.getEnableClickRedirect()) {
                                    if (str != null && Utils.isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                                        if (this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                        return true;
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                                        if (this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                        return true;
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                                        if (this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        }
                                        parsePrivateProtocol = Utils.parsePrivateProtocol(str, "admarvelvideo", "http://", Utils.isPrivateProtocol(str, "admarvelvideo"), adMarvelInternalWebView.getContext());
                                        intent = new Intent("android.intent.action.VIEW");
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                                        if (Utils.isIntentAvailable(adMarvelInternalWebView.getContext(), intent)) {
                                            adMarvelInternalWebView.getContext().startActivity(intent);
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE) {
                                        if (adMarvelActivity.d() && this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                            AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                                        }
                                        intent = new Intent(adMarvelInternalWebView.getContext(), AdMarvelVideoActivity.class);
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                                        intent.putExtra("isCustomUrl", true);
                                        intent.putExtra("isInterstitial", false);
                                        intent.putExtra("isInterstitialClick", true);
                                        intent.putExtra("xml", adMarvelInternalWebView.xml);
                                        intent.putExtra("GUID", adMarvelInternalWebView.GUID);
                                        adMarvelInternalWebView.getContext().startActivity(intent);
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                                        intent = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(str, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelexternal"), adMarvelInternalWebView.getContext())));
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        if (Utils.isIntentAvailable(adMarvelInternalWebView.getContext(), intent)) {
                                            adMarvelInternalWebView.getContext().startActivity(intent);
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    } else if (adMarvelInternalWebView.enableAutoDetect.get() && str != null && str.length() > 0) {
                                        intent = new Intent(adMarvelInternalWebView.getContext(), AdMarvelActivity.class);
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                                        intent.putExtra("isInterstitial", false);
                                        intent.putExtra("isInterstitialClick", true);
                                        intent.putExtra("xml", adMarvelInternalWebView.xml);
                                        intent.putExtra("GUID", adMarvelInternalWebView.GUID);
                                        try {
                                            if (this.c != null) {
                                                this.c.removeNonStringEntriesTargetParam();
                                                byteArrayOutputStream = new ByteArrayOutputStream();
                                                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                                                objectOutputStream.writeObject(this.c);
                                                objectOutputStream.close();
                                                intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                                            }
                                        } catch (IOException e) {
                                            e.printStackTrace();
                                        }
                                        if (adMarvelActivity.f() != null) {
                                            intent.putExtra(Event.SOURCE, adMarvelActivity.f());
                                        }
                                        adMarvelInternalWebView.getContext().startActivity(intent);
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    }
                                }
                                if (this.c != null) {
                                    AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                }
                                return true;
                            }
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), adMarvelInternalWebView.getContext()));
                            }
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                            return true;
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), adMarvelInternalWebView.getContext()));
                            }
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                            return true;
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                            }
                            parsePrivateProtocol = Utils.parsePrivateProtocol(str, "admarvelvideo", "http://", Utils.isPrivateProtocol(str, "admarvelvideo"), adMarvelInternalWebView.getContext());
                            intent = new Intent("android.intent.action.VIEW");
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                            adMarvelInternalWebView.getContext().startActivity(intent);
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                            return true;
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                            }
                            intent = new Intent(adMarvelInternalWebView.getContext(), AdMarvelVideoActivity.class);
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            this.c.removeNonStringEntriesTargetParam();
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                                objectOutputStream.writeObject(this.c);
                                objectOutputStream.close();
                                intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                            intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                            intent.putExtra("isCustomUrl", true);
                            intent.putExtra("xml", adMarvelInternalWebView.xml);
                            intent.putExtra("GUID", adMarvelInternalWebView.GUID);
                            adMarvelInternalWebView.getContext().startActivity(intent);
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                        } else if (!(str == null || Utils.isPrivateProtocol(str, "admarvelexternal") == PROTOCOL_TYPE.NONE)) {
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(str, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelexternal"), adMarvelInternalWebView.getContext())));
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            if (Utils.isIntentAvailable(adMarvelInternalWebView.getContext(), intent)) {
                                adMarvelInternalWebView.getContext().startActivity(intent);
                            }
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                        }
                    }
                }
            }
            return Version.getAndroidSDKVersion() >= 4 && q.a(str, adMarvelInternalWebView.getContext());
        }
    }

    private static class d extends WebViewClient {
        private final WeakReference a;
        private final WeakReference b;
        private final AdMarvelAd c;

        public d(AdMarvelInternalWebView adMarvelInternalWebView, Context context, AdMarvelAd adMarvelAd) {
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = new WeakReference(context);
            this.c = adMarvelAd;
        }

        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown && adMarvelInternalWebView.isTwoPartAdLoadingWithoutMraidInjection && str.contains("mraid.js")) {
                webView.loadUrl("javascript: (function() { var script=document.createElement('script');script.type='text/javascript';script.src='http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js';document.getElementsByTagName('head').item(0).appendChild(script);})()");
                adMarvelInternalWebView.isTwoPartAdLoadingWithoutMraidInjection = false;
            }
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                Context context = (Context) this.b.get();
                if (context != null && !adMarvelInternalWebView.signalShutdown) {
                    Logging.log("Load Ad: onPageFinished");
                    if (adMarvelInternalWebView.isInAppBrowser.get()) {
                        isPageFinishedInAppBrowser = true;
                    } else {
                        isPageFinished = true;
                    }
                    adMarvelInternalWebView.handler.post(new k(adMarvelInternalWebView, context));
                }
            }
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                Logging.log("Load Ad: onPageStarted");
                if (adMarvelInternalWebView.enableFullScreenControls.get()) {
                    s sVar = null;
                    if (adMarvelInternalWebView.getParent() != null && adMarvelInternalWebView.getParent() instanceof RelativeLayout) {
                        sVar = (s) ((RelativeLayout) adMarvelInternalWebView.getParent()).findViewWithTag(adMarvelInternalWebView.GUID + "CONTROLS");
                    }
                    if (sVar != null && adMarvelInternalWebView.init.get()) {
                        sVar.findViewWithTag(adMarvelInternalWebView.GUID + "PROGRESS_BAR").setVisibility(0);
                    }
                }
                Context context = (Context) this.b.get();
                if (context == null) {
                    return;
                }
                if (adMarvelInternalWebView.isInAppBrowser.get()) {
                    isPageFinishedInAppBrowser = false;
                    if (isInAppFirstTimeLoaded) {
                        Logging.log(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL " + Constants.WAIT_FOR_INTERSTITIAL);
                        adMarvelInternalWebView.handler.postDelayed(new g(adMarvelInternalWebView, context), Constants.WAIT_FOR_INTERSTITIAL);
                        isInAppFirstTimeLoaded = false;
                    }
                } else {
                    isPageFinished = false;
                    Logging.log(" AdMarvelUtils.WAIT_FOR_INTERSTITIAL " + Constants.WAIT_FOR_INTERSTITIAL);
                    adMarvelInternalWebView.handler.postDelayed(new h(adMarvelInternalWebView, context), Constants.WAIT_FOR_INTERSTITIAL);
                }
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            Context context = (Context) this.b.get();
            if (context != null && context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity != null && activity instanceof AdMarvelActivity) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                    if (adMarvelActivity != null) {
                        Logging.log("onReceivedError - Closing AdMarvel FullScreen due to bad URL : " + str2);
                        adMarvelActivity.g();
                    }
                }
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView == null) {
                return false;
            }
            if (adMarvelInternalWebView.signalShutdown) {
                return false;
            }
            adMarvelInternalWebView.redirectionCheckCount = adMarvelInternalWebView.redirectionCheckCount + 1;
            Context context = (Context) this.b.get();
            if (context != null && context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity != null && activity instanceof AdMarvelActivity) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                    if (adMarvelActivity != null) {
                        com.admarvel.android.ads.AdMarvelActivity.g gVar;
                        gVar = adMarvelActivity.a != null ? (com.admarvel.android.ads.AdMarvelActivity.g) adMarvelActivity.a.get() : null;
                        if (gVar != null && gVar.a() && gVar.getProgress() >= 10 && adMarvelInternalWebView.redirectionCheckCount > 2 && adMarvelInternalWebView.isInAppBrowser.get()) {
                            adMarvelInternalWebView.handler.post(new k(adMarvelInternalWebView, activity));
                        }
                        if (Utils.handledBySpecialIntents(adMarvelInternalWebView.getContext(), str, false)) {
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            if (!adMarvelActivity.c()) {
                                adMarvelActivity.g();
                            }
                            return true;
                        } else if (adMarvelActivity.c()) {
                            if (adMarvelActivity.c()) {
                                if (AdMarvelInterstitialAds.getEnableClickRedirect()) {
                                    if (str != null && Utils.isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                                        if (this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                        return true;
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                                        if (this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                        return true;
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                                        if (this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        }
                                        parsePrivateProtocol = Utils.parsePrivateProtocol(str, "admarvelvideo", "http://", Utils.isPrivateProtocol(str, "admarvelvideo"), adMarvelInternalWebView.getContext());
                                        intent = new Intent("android.intent.action.VIEW");
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                                        if (Utils.isIntentAvailable(adMarvelInternalWebView.getContext(), intent)) {
                                            adMarvelInternalWebView.getContext().startActivity(intent);
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE) {
                                        if (adMarvelActivity.d() && this.c != null) {
                                            AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                        } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                            AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                                        }
                                        intent = new Intent(adMarvelInternalWebView.getContext(), AdMarvelVideoActivity.class);
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                                        intent.putExtra("isCustomUrl", true);
                                        intent.putExtra("isInterstitial", false);
                                        intent.putExtra("isInterstitialClick", true);
                                        intent.putExtra("xml", adMarvelInternalWebView.xml);
                                        intent.putExtra("GUID", adMarvelInternalWebView.GUID);
                                        adMarvelInternalWebView.getContext().startActivity(intent);
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    } else if (str != null && Utils.isPrivateProtocol(str, "admarvelexternal") != PROTOCOL_TYPE.NONE) {
                                        intent = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(str, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelexternal"), adMarvelInternalWebView.getContext())));
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        if (Utils.isIntentAvailable(adMarvelInternalWebView.getContext(), intent)) {
                                            adMarvelInternalWebView.getContext().startActivity(intent);
                                        }
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    } else if (adMarvelInternalWebView.enableAutoDetect.get() && str != null && str.length() > 0) {
                                        intent = new Intent(adMarvelInternalWebView.getContext(), AdMarvelActivity.class);
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                                        intent.putExtra("isInterstitial", false);
                                        intent.putExtra("isInterstitialClick", true);
                                        intent.putExtra("xml", adMarvelInternalWebView.xml);
                                        intent.putExtra("GUID", adMarvelInternalWebView.GUID);
                                        try {
                                            if (this.c != null) {
                                                this.c.removeNonStringEntriesTargetParam();
                                                byteArrayOutputStream = new ByteArrayOutputStream();
                                                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                                                objectOutputStream.writeObject(this.c);
                                                objectOutputStream.close();
                                                intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                                            }
                                        } catch (IOException e) {
                                            e.printStackTrace();
                                        }
                                        if (adMarvelActivity.f() != null) {
                                            intent.putExtra(Event.SOURCE, adMarvelActivity.f());
                                        }
                                        adMarvelInternalWebView.getContext().startActivity(intent);
                                        new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                                    }
                                }
                                if (this.c != null) {
                                    AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                                }
                                return true;
                            }
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelsdk") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, Utils.parsePrivateProtocol(str, "admarvelsdk", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelsdk"), adMarvelInternalWebView.getContext()));
                            }
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                            return true;
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelinternal") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), adMarvelInternalWebView.getContext()), this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, Utils.parsePrivateProtocol(str, "admarvelinternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelinternal"), adMarvelInternalWebView.getContext()));
                            }
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                            return true;
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelvideo") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                            }
                            parsePrivateProtocol = Utils.parsePrivateProtocol(str, "admarvelvideo", "http://", Utils.isPrivateProtocol(str, "admarvelvideo"), adMarvelInternalWebView.getContext());
                            intent = new Intent("android.intent.action.VIEW");
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            intent.setDataAndType(Uri.parse(parsePrivateProtocol), "video/*");
                            adMarvelInternalWebView.getContext().startActivity(intent);
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                            return true;
                        } else if (str != null && Utils.isPrivateProtocol(str, "admarvelcustomvideo") != PROTOCOL_TYPE.NONE) {
                            if (adMarvelActivity.d() && this.c != null) {
                                AdMarvelInterstitialAds.getListener().a(adMarvelActivity, str, this.c.getSiteId(), this.c.getId(), this.c.getTargetParams(), this.c.getIpAddress());
                            } else if (!(AdMarvelWebView.a(adMarvelInternalWebView.GUID) == null || this.c == null)) {
                                AdMarvelWebView.a(adMarvelInternalWebView.GUID).a(this.c, str);
                            }
                            intent = new Intent(adMarvelInternalWebView.getContext(), AdMarvelVideoActivity.class);
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            this.c.removeNonStringEntriesTargetParam();
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                                objectOutputStream.writeObject(this.c);
                                objectOutputStream.close();
                                intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                            intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                            intent.putExtra("isCustomUrl", true);
                            intent.putExtra("xml", adMarvelInternalWebView.xml);
                            intent.putExtra("GUID", adMarvelInternalWebView.GUID);
                            adMarvelInternalWebView.getContext().startActivity(intent);
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                        } else if (!(str == null || Utils.isPrivateProtocol(str, "admarvelexternal") == PROTOCOL_TYPE.NONE)) {
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(Utils.parsePrivateProtocol(str, "admarvelexternal", AdTrackerConstants.BLANK, Utils.isPrivateProtocol(str, "admarvelexternal"), adMarvelInternalWebView.getContext())));
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            if (Utils.isIntentAvailable(adMarvelInternalWebView.getContext(), intent)) {
                                adMarvelInternalWebView.getContext().startActivity(intent);
                            }
                            adMarvelInternalWebView.getContext().startActivity(intent);
                            new Utils(adMarvelInternalWebView.getContext(), adMarvelInternalWebView.handler).registerTrackingEvent(adMarvelInternalWebView.xml);
                            adMarvelActivity.g();
                        }
                    }
                }
            }
            return Version.getAndroidSDKVersion() >= 4 && q.a(str, adMarvelInternalWebView.getContext());
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
        private final WeakReference a;
        private final WeakReference b;
        private boolean c;

        public f(AdMarvelInternalWebView adMarvelInternalWebView, Context context, Boolean bool) {
            this.c = true;
            this.a = new WeakReference(context);
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = bool.booleanValue();
        }

        public void run() {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                Activity activity = (Activity) ((Context) this.a.get());
                if (activity != null) {
                    ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                    ImageView imageView;
                    if (!this.c) {
                        LinearLayout linearLayout = (LinearLayout) viewGroup.findViewWithTag(adMarvelInternalWebView.GUID + "BTN_CLOSE");
                        if (linearLayout != null) {
                            if (linearLayout.getVisibility() != 0) {
                                linearLayout.setVisibility(0);
                            }
                            imageView = (ImageView) viewGroup.findViewWithTag(adMarvelInternalWebView.GUID + "BTN_CLOSE_IMAGE");
                            if (imageView != null && imageView.getVisibility() != 0) {
                                imageView.setVisibility(0);
                            }
                        }
                    } else if (adMarvelInternalWebView.enableCloseAreaOnly) {
                        imageView = (ImageView) viewGroup.findViewWithTag(adMarvelInternalWebView.GUID + "BTN_CLOSE_IMAGE");
                        if (imageView != null) {
                            imageView.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                        }
                    } else {
                        LinearLayout linearLayout2 = (LinearLayout) viewGroup.findViewWithTag(adMarvelInternalWebView.GUID + "BTN_CLOSE");
                        if (linearLayout2 != null && adMarvelInternalWebView.disableCloseButton) {
                            linearLayout2.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                        }
                    }
                }
            }
        }
    }

    private static class g implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public g(AdMarvelInternalWebView adMarvelInternalWebView, Context context) {
            this.a = new WeakReference(context);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            if (isPageFinishedInAppBrowser) {
                Logging.log("not closing Interstitial as pagFinished is called");
            } else {
                Context context;
                context = this.a != null ? (Context) this.a.get() : null;
                if (context != null && context instanceof AdMarvelActivity) {
                    AdMarvelInternalWebView adMarvelInternalWebView;
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) context;
                    adMarvelInternalWebView = this.b.get() != null ? (AdMarvelInternalWebView) this.b.get() : null;
                    if (adMarvelInternalWebView != null && adMarvelInternalWebView.isInAppBrowser.get()) {
                        com.admarvel.android.ads.AdMarvelActivity.g gVar;
                        gVar = adMarvelActivity.a != null ? (com.admarvel.android.ads.AdMarvelActivity.g) adMarvelActivity.a.get() : null;
                        if (gVar != null && gVar.a()) {
                            Logging.log("closing In-app as dialog is visible and onpagefinished is not called");
                            adMarvelActivity.g();
                        }
                    } else if (adMarvelActivity != null) {
                        Logging.log("closing Interstitial as onpagefinished is not called");
                        adMarvelActivity.g();
                    }
                }
            }
        }
    }

    private static class h implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public h(AdMarvelInternalWebView adMarvelInternalWebView, Context context) {
            this.a = new WeakReference(context);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            if (isPageFinished) {
                Logging.log("not closing Interstitial as pageFinished is called");
            } else {
                Context context;
                context = this.a != null ? (Context) this.a.get() : null;
                if (context != null && context instanceof AdMarvelActivity) {
                    AdMarvelInternalWebView adMarvelInternalWebView;
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) context;
                    adMarvelInternalWebView = this.b.get() != null ? (AdMarvelInternalWebView) this.b.get() : null;
                    if (adMarvelInternalWebView != null && adMarvelInternalWebView.isInAppBrowser.get()) {
                        com.admarvel.android.ads.AdMarvelActivity.g gVar;
                        gVar = adMarvelActivity.a != null ? (com.admarvel.android.ads.AdMarvelActivity.g) adMarvelActivity.a.get() : null;
                        if (gVar != null && gVar.a()) {
                            Logging.log("closing In-app as dialog is visible and onpagefinished is not called");
                            adMarvelActivity.g();
                        }
                    } else if (adMarvelActivity != null) {
                        Logging.log("closing Interstitial as onpagefinished is not called");
                        adMarvelActivity.g();
                    }
                }
            }
        }
    }

    private static class i extends LinearLayout {
        private final a a;
        private final WeakReference b;
        private final WeakReference c;

        class AnonymousClass_2 implements OnClickListener {
            final /* synthetic */ AdMarvelInternalWebView a;

            AnonymousClass_2(AdMarvelInternalWebView adMarvelInternalWebView) {
                this.a = adMarvelInternalWebView;
            }

            public void onClick(View view) {
                Activity activity = (Activity) i.this.c.get();
                if (activity != null && activity instanceof AdMarvelActivity) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                    if (adMarvelActivity.e()) {
                        if (AdMarvelInternalWebView.c(this.a.GUID) != null) {
                            AdMarvelInternalWebView.c(this.a.GUID).a();
                        }
                        activity.finish();
                    } else {
                        boolean b = AdMarvelInterstitialAds.getListener().b();
                        adMarvelActivity.b();
                        if (adMarvelActivity.e != null && adMarvelActivity.e.length() > 0) {
                            this.a.loadUrl("javascript:" + adMarvelActivity.e + "()");
                        }
                        if (!b) {
                            activity.finish();
                        }
                        if (adMarvelActivity.a() > 2) {
                            adMarvelActivity.finish();
                        }
                    }
                }
            }
        }

        public i(Context context, AdMarvelInternalWebView adMarvelInternalWebView, a aVar, Activity activity) {
            super(context);
            this.a = aVar;
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = new WeakReference(activity);
            a(context);
        }

        private void a(Context context) {
            setBackgroundColor(0);
            LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.weight = 1.0f;
            layoutParams.width = 0;
            layoutParams.gravity = 5;
            setLayoutParams(layoutParams);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.weight = 25.0f;
            layoutParams2.gravity = 5;
            float applyDimension = TypedValue.applyDimension(1, 36.0f, getResources().getDisplayMetrics());
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams((int) applyDimension, (int) applyDimension);
            layoutParams3.gravity = 17;
            a(context, layoutParams3, layoutParams2);
        }

        private void a(Context context, LinearLayout.LayoutParams layoutParams, LinearLayout.LayoutParams layoutParams2) {
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
            if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                View imageView = new ImageView(context);
                View relativeLayout = new RelativeLayout(context);
                relativeLayout.setLayoutParams(layoutParams2);
                View linearLayout = new LinearLayout(context);
                LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(Utils.dipValue(50.0f, context), Utils.dipValue(50.0f, context));
                layoutParams3.addRule(R.styleable.MapAttrs_uiZoomGestures);
                linearLayout.setLayoutParams(layoutParams3);
                if (this.a != null) {
                    linearLayout.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            i.this.a();
                        }
                    });
                } else {
                    linearLayout.setOnClickListener(new AnonymousClass_2(adMarvelInternalWebView));
                }
                layoutParams.weight = 1.0f;
                imageView.setLayoutParams(layoutParams);
                imageView.setDuplicateParentStateEnabled(true);
                imageView.setClickable(false);
                imageView.setImageDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", context));
                imageView.setTag(adMarvelInternalWebView.GUID + "BTN_CLOSE_IMAGE");
                linearLayout.addView(imageView);
                relativeLayout.addView(linearLayout);
                addView(relativeLayout);
            }
        }
    }

    private class j implements Runnable {
        private final WeakReference b;
        private String c;

        public j(AdMarvelInternalWebView adMarvelInternalWebView, String str) {
            this.c = null;
            this.b = new WeakReference(adMarvelInternalWebView);
            this.c = str;
        }

        public void run() {
            if (this.b != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    Logging.log("javascript:" + this.c);
                    adMarvelInternalWebView.loadUrl("javascript:" + this.c);
                }
            }
        }
    }

    private static class k implements Runnable {
        private final WeakReference a;
        private final WeakReference b;

        public k(AdMarvelInternalWebView adMarvelInternalWebView, Context context) {
            this.a = new WeakReference(context);
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            try {
                AdMarvelInternalWebView adMarvelInternalWebView = this.b != null ? (AdMarvelInternalWebView) this.b.get() : null;
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.signalShutdown) {
                    Context context;
                    context = this.a != null ? (Context) this.a.get() : null;
                    if (context != null && context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (activity != null) {
                            ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                            LinearLayout linearLayout = (LinearLayout) viewGroup.findViewWithTag(adMarvelInternalWebView.GUID + "BTN_CLOSE");
                            if (linearLayout != null) {
                                if (!adMarvelInternalWebView.disableCloseButton) {
                                    linearLayout.setVisibility(0);
                                } else if (adMarvelInternalWebView.enableCloseAreaOnly) {
                                    linearLayout.setVisibility(0);
                                    ImageView imageView = (ImageView) viewGroup.findViewWithTag(adMarvelInternalWebView.GUID + "BTN_CLOSE_IMAGE");
                                    if (imageView != null) {
                                        imageView.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                                    }
                                } else {
                                    linearLayout.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                                }
                            }
                            if (adMarvelInternalWebView.enableFullScreenControls.get()) {
                                s sVar;
                                sVar = (adMarvelInternalWebView.getParent() == null || !adMarvelInternalWebView.getParent() instanceof RelativeLayout) ? null : (s) ((RelativeLayout) adMarvelInternalWebView.getParent()).findViewWithTag(adMarvelInternalWebView.GUID + "CONTROLS");
                                if (adMarvelInternalWebView.init.compareAndSet(false, true)) {
                                    if (activity != null && activity instanceof AdMarvelActivity) {
                                        AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                                        if (adMarvelActivity.c()) {
                                            if (AdMarvelUtils.isLogDumpEnabled()) {
                                                adMarvelInternalWebView.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
                                                ((AdMarvelActivity) activity).h();
                                            }
                                        } else if (AdMarvelUtils.isLogDumpEnabled()) {
                                            ((AdMarvelActivity) activity).i();
                                        }
                                        if (adMarvelActivity != null) {
                                            com.admarvel.android.ads.AdMarvelActivity.g gVar;
                                            gVar = adMarvelActivity.a != null ? (com.admarvel.android.ads.AdMarvelActivity.g) adMarvelActivity.a.get() : null;
                                            if (gVar != null) {
                                                gVar.c();
                                            }
                                        }
                                    }
                                    adMarvelInternalWebView.clearHistory();
                                    if (sVar != null) {
                                        sVar.setVisibility(0);
                                    }
                                    adMarvelInternalWebView.setVisibility(0);
                                }
                                if (sVar != null && adMarvelInternalWebView.init.get()) {
                                    sVar.a();
                                    sVar.findViewWithTag(adMarvelInternalWebView.GUID + "PROGRESS_BAR").setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log("Exception" + e.getMessage());
            }
        }
    }

    private class l implements Runnable {
        private final WeakReference b;

        public l(AdMarvelInternalWebView adMarvelInternalWebView) {
            this.b = new WeakReference(adMarvelInternalWebView);
        }

        public void run() {
            if (this.b != null) {
                AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelInternalWebView != null && !adMarvelInternalWebView.isSignalShutdown()) {
                    String str;
                    if (adMarvelInternalWebView.isInteratitialAd.get() || adMarvelInternalWebView.isTwoPartExpandAd.get()) {
                        if (adMarvelInternalWebView.visibilityCallback != null && adMarvelInternalWebView.isLastStateVisible) {
                            str = adMarvelInternalWebView.visibilityCallback + "(" + false + ")";
                            Logging.log("javascript:" + str);
                            adMarvelInternalWebView.loadUrl("javascript:" + str);
                            adMarvelInternalWebView.isLastStateVisible = false;
                            if (adMarvelInternalWebView.isInteratitialAd.get()) {
                                adMarvelInternalWebView.isInterstitialAdDisplayed = true;
                            }
                        }
                    } else if (adMarvelInternalWebView.isBannerAd.get() && adMarvelInternalWebView.visibilityCallback != null) {
                        int i;
                        int[] iArr = new int[]{-1, -1};
                        adMarvelInternalWebView.getLocationInWindow(iArr);
                        int height = AdMarvelInternalWebView.this.getHeight() > 0 ? AdMarvelInternalWebView.this.getHeight() / 2 : 0;
                        ViewParent parent = adMarvelInternalWebView.getParent();
                        if (parent instanceof AdMarvelWebView) {
                            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) parent;
                            if (adMarvelWebView != null) {
                                i = (adMarvelWebView.f == Integer.MIN_VALUE || adMarvelWebView.f <= 0) ? 0 : adMarvelWebView.f;
                                i = (iArr[1] - i) + height >= 0 && iArr[1] + height < Utils.getDeviceHeight(AdMarvelInternalWebView.this.getContext());
                                if (!(adMarvelInternalWebView.visibilityCallback == null || !adMarvelInternalWebView.isLastStateVisible || i == 0)) {
                                    str = adMarvelInternalWebView.visibilityCallback + "(" + false + ")";
                                    Logging.log("javascript:" + str);
                                    adMarvelInternalWebView.loadUrl("javascript:" + str);
                                    adMarvelInternalWebView.isLastStateVisible = false;
                                }
                            }
                        }
                        i = 0;
                        str = adMarvelInternalWebView.visibilityCallback + "(" + false + ")";
                        Logging.log("javascript:" + str);
                        adMarvelInternalWebView.loadUrl("javascript:" + str);
                        adMarvelInternalWebView.isLastStateVisible = false;
                    }
                    adMarvelInternalWebView.g();
                    adMarvelInternalWebView.stopLoading();
                    if (Version.getAndroidSDKVersion() >= 11) {
                        ae.b(adMarvelInternalWebView);
                    } else {
                        af.b(adMarvelInternalWebView);
                    }
                }
            }
        }
    }

    private static class m implements Runnable {
        private WeakReference a;
        private WeakReference b;
        private long c;

        public m(AdMarvelInternalWebView adMarvelInternalWebView, Context context, AdMarvelWebView adMarvelWebView) {
            this.c = 500;
            this.a = new WeakReference(adMarvelInternalWebView);
            this.b = new WeakReference(adMarvelWebView);
        }

        public void run() {
            AdMarvelWebView adMarvelWebView = (AdMarvelWebView) this.b.get();
            AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.a.get();
            if (adMarvelInternalWebView != null && adMarvelWebView != null && !adMarvelInternalWebView.signalShutdown && !adMarvelInternalWebView.signalPause && !Thread.currentThread().isInterrupted()) {
                int i;
                int[] iArr = new int[]{-1, -1};
                adMarvelInternalWebView.getLocationInWindow(iArr);
                int height = adMarvelInternalWebView.getHeight() > 0 ? adMarvelInternalWebView.getHeight() / 2 : 0;
                int height2 = adMarvelInternalWebView.getHeight() > 0 ? (adMarvelInternalWebView.getHeight() / 3) * 2 : 0;
                int i2 = (adMarvelWebView.f == Integer.MIN_VALUE || adMarvelWebView.f <= 0) ? 0 : adMarvelWebView.f;
                i = height + (iArr[1] - i2) >= 0 && iArr[1] + height2 < Utils.getDeviceHeight(adMarvelWebView.getContext());
                if (!Thread.currentThread().isInterrupted()) {
                    if (i != 0 && !adMarvelInternalWebView.isLastStateVisible) {
                        adMarvelInternalWebView.injectJavaScript(adMarvelInternalWebView.visibilityCallback + "(" + true + ")");
                        adMarvelInternalWebView.isLastStateVisible = true;
                    } else if (i == 0 && adMarvelInternalWebView.isLastStateVisible) {
                        adMarvelInternalWebView.injectJavaScript(adMarvelInternalWebView.visibilityCallback + "(" + false + ")");
                        adMarvelInternalWebView.isLastStateVisible = false;
                    }
                }
            }
        }
    }

    static {
        VIEW_ID = 100002;
        BUNDLE_ID = "admarvel_internal_webview_" + VIEW_ID;
        isPageFinished = true;
        isPageFinishedInAppBrowser = true;
        isInAppFirstTimeLoaded = true;
        internalWebViewTwoPartPrivateListener = new ConcurrentHashMap();
        internalWebViewInAppBrowserPrivateListener = new ConcurrentHashMap();
    }

    AdMarvelInternalWebView(Context context, boolean z, String str, String str2, Handler handler, AdMarvelView adMarvelView, RelativeLayout relativeLayout, AdMarvelAd adMarvelAd) {
        Activity activity;
        super(context);
        this.setSoftwareLayer = false;
        this.isAdExpanding = false;
        this.isAdClosing = false;
        this.viewableRunnable = null;
        this.isfirst = true;
        this.disableCloseButton = false;
        this.enableCloseAreaOnly = false;
        this.isTwoPartAdLoadingWithoutMraidInjection = false;
        this.mInitLayoutX = 0;
        this.mInitLayoutY = 0;
        this.visibilityCallback = null;
        this.isLastStateVisible = false;
        this.isLastStateOfKeyLocked = false;
        this.isInterstitialAdDisplayed = false;
        this.sizeChangeCallback = null;
        this.audioStartedCallback = null;
        this.audioCachedCallback = null;
        this.audioCompletedCallback = null;
        this.audioPositionChangeCallback = null;
        this.mHeight = -1;
        this.mWidth = -1;
        this.brightrollVideoStarted = false;
        this.gestureDetector = null;
        this.mInAppBrowserCloseCallback = null;
        this.userInteractionDetected = false;
        this.xml = str;
        this.init = new AtomicBoolean(false);
        this.enableFullScreenControls = new AtomicBoolean(false);
        this.enableAutoDetect = new AtomicBoolean(true);
        this.signalShutdown = false;
        this.signalPause = false;
        this.GUID = str2;
        this.handler = handler;
        this.contextReference = new WeakReference(context);
        this.isInAppBrowser = new AtomicBoolean(false);
        this.isBannerAd = new AtomicBoolean(false);
        this.isInteratitialAd = new AtomicBoolean(false);
        this.isTwoPartExpandAd = new AtomicBoolean(false);
        this.redirectionCheckCount = 0;
        this.adMarvelAd = adMarvelAd;
        if (context == null || !context instanceof Activity) {
            this.isBannerAd.set(true);
        } else {
            activity = (Activity) context;
            if (activity == null || !activity instanceof AdMarvelActivity) {
                this.isBannerAd.set(true);
            } else {
                AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                if (adMarvelActivity != null) {
                    if (adMarvelActivity.c()) {
                        this.isInteratitialAd.set(true);
                    } else if (adMarvelActivity.e()) {
                        this.isTwoPartExpandAd.set(true);
                    } else {
                        this.isInAppBrowser.set(true);
                    }
                }
            }
        }
        this.adMarvelViewReference = new WeakReference(adMarvelView);
        this.adMarvelTwoPartLayoutReference = new WeakReference(relativeLayout);
        if (this.adMarvelViewReference != null) {
            AdMarvelView adMarvelView2 = (AdMarvelView) this.adMarvelViewReference.get();
            if (adMarvelView2 != null) {
                this.setSoftwareLayer = adMarvelView2.b();
            }
        }
        setOnTouchListener(this);
        this.gestureDetector = new GestureDetector(context, new t());
        if (Version.getAndroidSDKVersion() >= 17) {
            y.a(this, context, this.isInAppBrowser, this.setSoftwareLayer);
        }
        if (Version.getAndroidSDKVersion() >= 16) {
            ab.a(this, context, this.isInAppBrowser, this.setSoftwareLayer);
        } else if (Version.getAndroidSDKVersion() >= 11) {
            aa.a(this, context, this.isInAppBrowser, this.setSoftwareLayer);
        } else if (Version.getAndroidSDKVersion() >= 8) {
            z.a(this, context, this.isInAppBrowser);
        } else if (Version.getAndroidSDKVersion() >= 7) {
            ad.a(this, context, this.isInAppBrowser);
        } else {
            ac.a(this, context, this.isInAppBrowser);
        }
        if (z) {
            setScrollBarStyle(0);
        }
        setLayoutParams(this.isBannerAd.get());
        if (context != null && context instanceof Activity) {
            activity = (Activity) context;
            if (activity != null && activity instanceof AdMarvelActivity) {
                AdMarvelActivity adMarvelActivity2 = (AdMarvelActivity) activity;
                if (adMarvelActivity2 != null) {
                    if (adMarvelActivity2.c() || adMarvelActivity2.e()) {
                        if (adMarvelActivity2.e()) {
                            this.isTwoPartAdLoadingWithoutMraidInjection = true;
                        }
                        ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
                        View linearLayout = new LinearLayout(getContext());
                        linearLayout.setBackgroundColor(0);
                        linearLayout.setTag(this.GUID + "BTN_CLOSE");
                        linearLayout.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                        linearLayout.setGravity(53);
                        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                        linearLayout.addView(new i(context, this, null, activity));
                        viewGroup.addView(linearLayout);
                    }
                }
            }
        }
        if ((Version.getAndroidSDKVersion() >= 7 ? 1 : 0) == 0) {
            setWebChromeClient(new b(this, context));
        } else {
            setWebChromeClient(new a(this, context));
        }
    }

    static synchronized void a(String str) {
        synchronized (AdMarvelInternalWebView.class) {
            try {
                internalWebViewTwoPartPrivateListener.remove(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static synchronized void a(String str, d dVar) {
        synchronized (AdMarvelInternalWebView.class) {
            internalWebViewInAppBrowserPrivateListener.put(str, dVar);
        }
    }

    public static synchronized void a(String str, l lVar) {
        synchronized (AdMarvelInternalWebView.class) {
            internalWebViewTwoPartPrivateListener.put(str, lVar);
        }
    }

    static void b(String str) {
        try {
            internalWebViewInAppBrowserPrivateListener.remove(str);
        } catch (Exception e) {
        }
    }

    public static l c(String str) {
        return (l) internalWebViewTwoPartPrivateListener.get(str);
    }

    public static void c() {
        internalWebViewInAppBrowserPrivateListener.clear();
        internalWebViewTwoPartPrivateListener.clear();
    }

    public static d d(String str) {
        return (d) internalWebViewInAppBrowserPrivateListener.get(str);
    }

    public void a() {
        d();
        WebSettings settings = getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(false);
        }
        this.contextReference.clear();
        this.adMarvelViewReference.clear();
        this.adMarvelTwoPartLayoutReference.clear();
        g();
        this.gestureDetector = null;
        this.gestureDetector = null;
        Logging.log("AdMarveInternalWebView:cleanup");
    }

    void a(int i, int i2, int i3, int i4) {
        if (!this.signalShutdown) {
            setLayoutParams(new RelativeLayout.LayoutParams(-1, i4));
        }
    }

    public void a(AdMarvelWebView adMarvelWebView) {
        if (!this.signalShutdown) {
            g();
            if (this.visibilityCallback != null) {
                Context context;
                context = this.contextReference != null ? (Context) this.contextReference.get() : null;
                if (context != null) {
                    this.viewableRunnable = null;
                    this.scheduledExecutor = null;
                    this.viewableRunnable = new m(this, context, adMarvelWebView);
                    this.scheduledExecutor = new ScheduledThreadPoolExecutor(1);
                    this.scheduledExecutor.scheduleAtFixedRate(this.viewableRunnable, 0, 500, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    public void a(boolean z) {
        if (!this.signalShutdown) {
            this.disableCloseButton = true;
            this.enableCloseAreaOnly = z;
            Context context = (Context) this.contextReference.get();
            if (context != null) {
                this.handler.post(new f(this, context, Boolean.valueOf(true)));
            }
        }
    }

    public boolean b() {
        return this.userInteractionDetected;
    }

    public void d() {
        this.signalShutdown = true;
    }

    public void destroy() {
        d();
        super.destroy();
        Logging.log("AdMarveInternalWebView:destroy()");
    }

    public void e() {
        this.signalPause = true;
        this.handler.post(new l(this));
    }

    public void f() {
        boolean z = false;
        this.signalPause = false;
        if (this.isInteratitialAd.get() || this.isTwoPartExpandAd.get()) {
            if (this.visibilityCallback != null && !this.isLastStateVisible) {
                injectJavaScript(this.visibilityCallback + "(" + true + ")");
                this.isLastStateVisible = true;
                if (this.isInteratitialAd.get()) {
                    this.isInterstitialAdDisplayed = true;
                }
            }
        } else if (this.isBannerAd.get() && this.visibilityCallback != null) {
            int height;
            int i;
            int[] iArr = new int[]{-1, -1};
            getLocationInWindow(iArr);
            height = getHeight() > 0 ? getHeight() / 2 : 0;
            ViewParent parent = getParent();
            if (parent instanceof AdMarvelWebView) {
                AdMarvelWebView adMarvelWebView = (AdMarvelWebView) parent;
                if (adMarvelWebView != null) {
                    i = (adMarvelWebView.f == Integer.MIN_VALUE || adMarvelWebView.f <= 0) ? 0 : adMarvelWebView.f;
                    if (iArr[1] - i + height >= 0 && iArr[1] + height < Utils.getDeviceHeight(getContext())) {
                        z = true;
                    }
                    if (this.visibilityCallback != null && !this.isLastStateVisible && z) {
                        injectJavaScript(this.visibilityCallback + "(" + true + ")");
                        this.isLastStateVisible = true;
                        return;
                    } else {
                        return;
                    }
                }
            }
            i = 0;
            z = true;
        }
    }

    public void g() {
        if (this.viewableRunnable != null && this.visibilityCallback != null && this.scheduledExecutor != null) {
            this.scheduledExecutor.remove(this.viewableRunnable);
            this.scheduledExecutor.shutdown();
            this.scheduledExecutor.purge();
            this.viewableRunnable = null;
        }
    }

    public String getBaseUrl() {
        return null;
    }

    public AtomicBoolean getEnableAutoDetect() {
        return this.enableAutoDetect;
    }

    void h() {
        if (!this.signalShutdown) {
            LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = this.mLastLayoutWidth;
            layoutParams.height = this.mLastLayoutHeight;
            setVisibility(0);
            ViewParent parent = getParent();
            if (parent instanceof AdMarvelWebView) {
                ((AdMarvelWebView) parent).a(this.mLastLayoutWidth, this.mLastLayoutHeight);
            }
            requestLayout();
        }
    }

    void i() {
        if (!this.signalShutdown) {
            this.enableFullScreenControls.set(true);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(GoogleScorer.CLIENT_PLUS, s.a);
            setLayoutParams(layoutParams);
            Context context = (Context) this.contextReference.get();
            if (context == null) {
                return;
            }
            if (this.adMarvelAd == null && !this.isInAppBrowser.get()) {
                return;
            }
            if (Version.getAndroidSDKVersion() < 11) {
                setWebViewClient(new d(this, context, this.adMarvelAd));
            } else {
                setWebViewClient(new c(this, context, this.adMarvelAd));
            }
        }
    }

    public void injectJavaScript(String str) {
        this.handler.post(new j(this, str));
    }

    public boolean isSignalShutdown() {
        return this.signalShutdown;
    }

    public void j() {
        if (this.disableCloseButton) {
            Context context = (Context) this.contextReference.get();
            if (context != null) {
                this.handler.post(new f(this, context, Boolean.valueOf(false)));
            }
            this.disableCloseButton = false;
        }
    }

    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.signalShutdown) {
            ViewParent parent = getParent();
            int width = getWidth();
            int height = getHeight();
            if (parent instanceof AdMarvelWebView && !((AdMarvelWebView) parent).a.get()) {
                this.mLastLayoutHeight = getHeight();
                this.mLastLayoutWidth = getWidth();
                if (this.visibilityCallback != null && this.isfirst) {
                    this.isfirst = false;
                    a((AdMarvelWebView) parent);
                }
            } else if (this.isInteratitialAd.get() || this.isTwoPartExpandAd.get()) {
                if (height == 0) {
                    if (this.visibilityCallback != null && this.isLastStateVisible) {
                        injectJavaScript(this.visibilityCallback + "(" + false + ")");
                        this.isLastStateVisible = false;
                    }
                    this.isInterstitialAdDisplayed = false;
                } else {
                    if (!(this.visibilityCallback == null || this.isLastStateVisible)) {
                        injectJavaScript(this.visibilityCallback + "(" + true + ")");
                        this.isLastStateVisible = true;
                    }
                    this.isInterstitialAdDisplayed = true;
                }
            }
            if (!(this.mHeight == -1 || this.mWidth == -1)) {
                if (!(width == this.mWidth && height == this.mHeight) && width > 0 && height > 0 && this.mWidth >= 0 && this.mHeight >= 0 && this.sizeChangeCallback != null) {
                    injectJavaScript(this.sizeChangeCallback + "(" + width + "," + height + ")");
                }
            }
            this.mWidth = width;
            this.mHeight = height;
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.userInteractionDetected = true;
        switch (motionEvent.getAction()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_GAMES:
                if (!view.hasFocus()) {
                    view.requestFocus();
                }
                break;
        }
        return (this.isInAppBrowser.get() || Version.getAndroidSDKVersion() <= 10 || this.gestureDetector == null) ? false : this.gestureDetector.onTouchEvent(motionEvent);
    }

    public void raiseError(String str, String str2) {
    }

    void setLayoutParams(boolean z) {
        if (!this.signalShutdown) {
            setLayoutParams(z ? new RelativeLayout.LayoutParams(-1, -2) : new RelativeLayout.LayoutParams(-1, -1));
        }
    }
}