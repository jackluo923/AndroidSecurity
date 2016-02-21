package com.inmobi.re.container;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.Vibrator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.brightcove.player.media.ErrorFields;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.container.mraidimpl.MRAIDBasic;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.MRAIDResizeController;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import com.inmobi.re.controller.JSController.Dimensions;
import com.inmobi.re.controller.JSController.ExpandProperties;
import com.inmobi.re.controller.JSController.PlayerProperties;
import com.inmobi.re.controller.JSController.ResizeProperties;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayer.playerState;
import com.inmobi.re.controller.util.Constants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class IMWebView extends WebView implements Serializable {
    private static Class D = null;
    public static final String DIMENSIONS = "expand_dimensions";
    public static final String EXPAND_URL = "expand_url";
    protected static final int IMWEBVIEW_INTERSTITIAL_ID = 117;
    public static final String PLAYER_PROPERTIES = "player_properties";
    private static int[] d = null;
    private static final long serialVersionUID = 7098506283154473782L;
    public static boolean userInitiatedClose;
    private ViewParent A;
    private int B;
    private boolean C;
    private WebViewClient E;
    private WebChromeClient F;
    private OnCompletionListener G;
    private boolean H;
    double a;
    public AtomicBoolean acqMutexcPos;
    public AtomicBoolean acqMutexdPos;
    AtomicBoolean b;
    InstantVideoCallbackCallback c;
    public JSONObject curPosition;
    public JSONObject defPosition;
    public AtomicBoolean doNotFireVisibilityChanged;
    private boolean e;
    private JSUtilityController f;
    private float g;
    private int h;
    private int i;
    public AtomicBoolean isMutexAquired;
    public boolean isTablet;
    private ViewState j;
    private VideoView k;
    private View l;
    private CustomViewCallback m;
    public MRAIDAudioVideoController mAudioVideoController;
    public MRAIDExpandController mExpandController;
    public MRAIDInterstitialController mInterstitialController;
    public boolean mIsInterstitialAd;
    public boolean mIsViewable;
    public IMWebViewListener mListener;
    public MRAIDBasic mMraidBasic;
    public IMWebView mOriginalWebviewForExpandUrl;
    public MRAIDResizeController mResizeController;
    public boolean mWebViewIsBrowserActivity;
    protected boolean mraidLoaded;
    public Object mutex;
    public Object mutexcPos;
    public Object mutexdPos;
    private ViewGroup n;
    private FrameLayout o;
    private ArrayList p;
    public int publisherOrientation;
    private boolean q;
    private boolean r;
    private boolean s;
    private Message t;
    private Message u;
    private Activity v;
    private WebViewClient w;
    public String webviewUserAgent;
    private l x;
    private ArrayList y;
    private AtomicBoolean z;

    public static interface IMWebViewListener {
        void onDismissAdScreen();

        void onError();

        void onExpand();

        void onExpandClose();

        void onIncentCompleted(Map map);

        void onLeaveApplication();

        void onResize(ResizeDimensions resizeDimensions);

        void onResizeClose();

        void onShowAdScreen();

        void onUserInteraction(Map map);
    }

    public static interface InstantVideoCallbackCallback {
        void postFailed(int i);

        void postSuccess();
    }

    public enum ViewState {
        LOADING,
        DEFAULT,
        RESIZED,
        EXPANDED,
        EXPANDING,
        HIDDEN,
        RESIZING;

        static {
            LOADING = new com.inmobi.re.container.IMWebView.ViewState("LOADING", 0);
            DEFAULT = new com.inmobi.re.container.IMWebView.ViewState("DEFAULT", 1);
            RESIZED = new com.inmobi.re.container.IMWebView.ViewState("RESIZED", 2);
            EXPANDED = new com.inmobi.re.container.IMWebView.ViewState("EXPANDED", 3);
            EXPANDING = new com.inmobi.re.container.IMWebView.ViewState("EXPANDING", 4);
            HIDDEN = new com.inmobi.re.container.IMWebView.ViewState("HIDDEN", 5);
            RESIZING = new com.inmobi.re.container.IMWebView.ViewState("RESIZING", 6);
            a = new com.inmobi.re.container.IMWebView.ViewState[]{LOADING, DEFAULT, RESIZED, EXPANDED, EXPANDING, HIDDEN, RESIZING};
        }
    }

    class a implements Runnable {
        a() {
        }

        public void run() {
            try {
                IMWebView.this.injectJavaScript("window.mraid.broadcastEvent('vibrateComplete')");
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception giviing vibration complete callback", e);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;

        b(String str) {
            this.a = str;
        }

        public void run() {
            IMWebView.this.injectJavaScript(this.a);
        }
    }

    class c implements Runnable {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        public void run() {
            IMWebView.this.injectJavaScript(this.a);
        }
    }

    class d implements OnClickListener {
        final /* synthetic */ SslErrorHandler a;

        d(SslErrorHandler sslErrorHandler) {
            this.a = sslErrorHandler;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
            this.a.proceed();
        }
    }

    class e implements OnClickListener {
        final /* synthetic */ SslError a;

        e(SslError sslError) {
            this.a = sslError;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
            IMWebView.this.a(WrapperFunctions.getSSLErrorUrl(this.a));
        }
    }

    private enum f {
        UNKNOWN_ERROR,
        MISSING_PARAMETER,
        CONETNT_ID_ERROR,
        CONTENT_URL_ERROR,
        CONTENT_URL_NOT_FOUND,
        NOT_SUPPORTED_SDK,
        CONTENT_TYPE_NOT_SUPPORTED,
        CONTENT_SIZE_NOT_SUPPORTED,
        NETWORK_ERROR,
        PERMISSION_ERROR,
        SD_CARD_ERROR;

        static {
            a = new f("UNKNOWN_ERROR", 0);
            b = new f("MISSING_PARAMETER", 1);
            c = new f("CONETNT_ID_ERROR", 2);
            d = new f("CONTENT_URL_ERROR", 3);
            e = new f("CONTENT_URL_NOT_FOUND", 4);
            f = new f("NOT_SUPPORTED_SDK", 5);
            g = new f("CONTENT_TYPE_NOT_SUPPORTED", 6);
            h = new f("CONTENT_SIZE_NOT_SUPPORTED", 7);
            i = new f("NETWORK_ERROR", 8);
            j = new f("PERMISSION_ERROR", 9);
            k = new f("SD_CARD_ERROR", 10);
            l = new f[]{a, b, c, d, e, f, g, h, i, j, k};
        }
    }

    class g implements Runnable {
        g() {
        }

        public void run() {
            if (IMWebView.this.getParent() != null) {
                ((ViewGroup) IMWebView.this.getParent()).removeView(IMWebView.this);
            }
            IMWebView.this.b.set(true);
            super.destroy();
        }
    }

    static /* synthetic */ class h {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.inmobi.re.container.IMWebView.ViewState.values().length];
            try {
                a[com.inmobi.re.container.IMWebView.ViewState.RESIZING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.inmobi.re.container.IMWebView.ViewState.RESIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.inmobi.re.container.IMWebView.ViewState.EXPANDING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.inmobi.re.container.IMWebView.ViewState.EXPANDED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[com.inmobi.re.container.IMWebView.ViewState.HIDDEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            a[com.inmobi.re.container.IMWebView.ViewState.DEFAULT.ordinal()] = 6;
        }
    }

    class i extends AsyncTask {
        File a;
        String b;
        String c;
        int d;
        String e;

        i(File file, String str, String str2) {
            this.d = -1;
            this.e = AdTrackerConstants.BLANK;
            this.a = file;
            this.b = str;
            this.c = str2;
            IMWebView.this.p.add(this);
        }

        public String a() {
            return this.c;
        }

        protected String a(Void... voidArr) {
            PackageManager packageManager = IMWebView.this.v.getPackageManager();
            if ((packageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", packageManager.getNameForUid(Binder.getCallingUid())) == 0) == 0) {
                this.d = f.j.ordinal();
                return "failure";
            } else if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                this.d = f.i.ordinal();
                return "failure";
            } else if (!this.c.matches("[A-Za-z0-9]+") || this.c.equals(AdTrackerConstants.BLANK)) {
                this.d = f.c.ordinal();
                return "failure";
            } else if (this.b.equals(AdTrackerConstants.BLANK) || !URLUtil.isValidUrl(this.b)) {
                this.d = f.d.ordinal();
                return "failure";
            } else if (Environment.getExternalStorageState().equals("mounted")) {
                ?[] split;
                String replace = Initializer.getConfigParams().getAllowedContentType().replace("\\", AdTrackerConstants.BLANK);
                String substring = replace.substring(1, replace.length() - 1);
                split = substring.contains(",") ? substring.split(",") : new String[]{substring};
                int maxSaveContentSize = Initializer.getConfigParams().getMaxSaveContentSize();
                try {
                    boolean z;
                    long currentTimeMillis = System.currentTimeMillis();
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setConnectTimeout(AdTrackerConstants.WEBVIEW_NOERROR);
                    String contentType = httpURLConnection.getContentType();
                    android.util.Log.i("Nilanjana", "contentType_url: " + contentType);
                    int i = 0;
                    while (i < split.length) {
                        if (split[i].substring(1, split[i].length() - 1).equals(contentType)) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    z = false;
                    if (i == 0) {
                        this.d = f.g.ordinal();
                        return "failure";
                    } else {
                        long contentLength = (long) httpURLConnection.getContentLength();
                        if (contentLength < 0 || contentLength <= ((long) ((maxSaveContentSize * 1024) * 1024))) {
                            httpURLConnection.connect();
                            FileOutputStream fileOutputStream = new FileOutputStream(this.a);
                            InputStream inputStream = httpURLConnection.getInputStream();
                            byte[] bArr = new byte[1024];
                            long j = 0;
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read > 0) {
                                    j += (long) read;
                                    if (j > ((long) ((maxSaveContentSize * 1024) * 1024))) {
                                        this.d = f.h.ordinal();
                                        return "failure";
                                    } else {
                                        fileOutputStream.write(bArr, 0, read);
                                    }
                                } else {
                                    fileOutputStream.close();
                                    j = System.currentTimeMillis();
                                    String str = "file://" + this.a.getAbsolutePath();
                                    Log.internal(Constants.RENDERING_LOG_TAG, "file path of video: " + str);
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put(PlusShare.KEY_CALL_TO_ACTION_URL, this.b);
                                    jSONObject.put("saved_url", str);
                                    jSONObject.put("size_in_bytes", this.a.length());
                                    jSONObject.put("download_started_at", currentTimeMillis);
                                    jSONObject.put("download_ended_at", j);
                                    this.e = jSONObject.toString().replace("\"", "\\\"");
                                    return "success";
                                }
                            }
                        } else {
                            this.d = f.h.ordinal();
                            return "failure";
                        }
                    }
                } catch (SocketTimeoutException e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "SocketTimeoutException");
                    this.d = f.i.ordinal();
                    return "failure";
                } catch (FileNotFoundException e2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "FileNotFoundException");
                    this.d = f.e.ordinal();
                    return "failure";
                } catch (MalformedURLException e3) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "MalformedURLException");
                    this.d = f.d.ordinal();
                    return "failure";
                } catch (ProtocolException e4) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "ProtocolException");
                    this.d = f.i.ordinal();
                    return "failure";
                } catch (IOException e5) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IOException");
                    this.d = f.a.ordinal();
                    return "failure";
                } catch (JSONException e6) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "JSONException");
                    this.d = f.a.ordinal();
                    return "failure";
                } catch (Exception e7) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Unknown Exception");
                    this.d = f.a.ordinal();
                    return "failure";
                }
            } else {
                this.d = f.k.ordinal();
                return "failure";
            }
        }

        protected void a(String str) {
            if (str.equals("success")) {
                IMWebView.this.injectJavaScript("window.mraid.sendSaveContentResult(\"saveContent_" + this.c + "\", 'success', \"" + this.e + "\");");
                if (IMWebView.this.c != null) {
                    IMWebView.this.c.postSuccess();
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(PlusShare.KEY_CALL_TO_ACTION_URL, this.b);
                    jSONObject.put("reason", this.d);
                    IMWebView.this.injectJavaScript("window.mraid.sendSaveContentResult(\"saveContent_" + this.c + "\", 'failure', \"" + jSONObject.toString().replace("\"", "\\\"") + "\");");
                    if (IMWebView.this.c != null) {
                        IMWebView.this.c.postFailed(this.d);
                    }
                } catch (JSONException e) {
                }
            }
            super.onPostExecute(str);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected void onCancelled() {
            super.onCancelled();
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((String) obj);
        }
    }

    class j implements Runnable {
        final /* synthetic */ String a;

        j(String str) {
            this.a = str;
        }

        public void run() {
            IMWebView.this.injectJavaScript(this.a);
        }
    }

    class k implements OnClickListener {
        final /* synthetic */ SslErrorHandler a;

        k(SslErrorHandler sslErrorHandler) {
            this.a = sslErrorHandler;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
            this.a.cancel();
        }
    }

    static class l extends Handler {
        private final WeakReference a;
        private final WeakReference b;
        private final WeakReference c;
        private final WeakReference d;
        private final WeakReference e;
        private final WeakReference f;

        public l(IMWebView iMWebView, MRAIDBasic mRAIDBasic, MRAIDExpandController mRAIDExpandController, MRAIDInterstitialController mRAIDInterstitialController, MRAIDAudioVideoController mRAIDAudioVideoController, MRAIDResizeController mRAIDResizeController) {
            this.a = new WeakReference(iMWebView);
            this.b = new WeakReference(mRAIDExpandController);
            this.d = new WeakReference(mRAIDBasic);
            this.e = new WeakReference(mRAIDInterstitialController);
            this.f = new WeakReference(mRAIDAudioVideoController);
            this.c = new WeakReference(mRAIDResizeController);
        }

        public void handleMessage(Message message) {
            try {
                IMWebView iMWebView = (IMWebView) this.a.get();
                MRAIDBasic mRAIDBasic = (MRAIDBasic) this.d.get();
                MRAIDExpandController mRAIDExpandController = (MRAIDExpandController) this.b.get();
                MRAIDResizeController mRAIDResizeController = (MRAIDResizeController) this.c.get();
                MRAIDInterstitialController mRAIDInterstitialController = (MRAIDInterstitialController) this.e.get();
                MRAIDAudioVideoController mRAIDAudioVideoController = (MRAIDAudioVideoController) this.f.get();
                if (iMWebView != null) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView->handleMessage: msg: " + message);
                    Bundle data = message.getData();
                    String string;
                    AVPlayer aVPlayer;
                    AVPlayer videoPlayer;
                    HashMap hashMap;
                    switch (message.what) {
                        case ApiEventType.API_IMAI_OPEN_EMBEDDED:
                            switch (h.a[iMWebView.j.ordinal()]) {
                                case GoogleScorer.CLIENT_GAMES:
                                case GoogleScorer.CLIENT_PLUS:
                                    mRAIDResizeController.closeResized();
                                    break;
                                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                case GoogleScorer.CLIENT_APPSTATE:
                                    mRAIDExpandController.closeExpanded();
                                    mRAIDExpandController.mIsExpandUrlValid = false;
                                    break;
                                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                                    break;
                                default:
                                    if (iMWebView.mIsInterstitialAd) {
                                        mRAIDInterstitialController.resetContentsForInterstitials();
                                    } else {
                                        iMWebView.hide();
                                    }
                                    break;
                            }
                            break;
                        case ApiEventType.API_IMAI_OPEN_EXTERNAL:
                            iMWebView.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                            iMWebView.setState(com.inmobi.re.container.IMWebView.ViewState.HIDDEN);
                            break;
                        case ApiEventType.API_IMAI_PING:
                            iMWebView.injectJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
                            iMWebView.setVisibility(0);
                            break;
                        case ApiEventType.API_IMAI_PING_IN_WEB_VIEW:
                            if (iMWebView.j == com.inmobi.re.container.IMWebView.ViewState.EXPANDING) {
                                mRAIDExpandController.doExpand(data);
                            }
                            iMWebView.f.setWebViewClosed(false);
                            break;
                        case 1005:
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onExpandClose();
                            }
                            break;
                        case 1006:
                            try {
                                mRAIDAudioVideoController.playVideoImpl(data, iMWebView.v);
                            } catch (Exception e) {
                                Log.debug(Constants.RENDERING_LOG_TAG, "Play video failed ", e);
                            }
                            break;
                        case AdData.HTML_CT:
                            try {
                                mRAIDAudioVideoController.playAudioImpl(data, iMWebView.v);
                            } catch (Exception e2) {
                                Log.debug(Constants.RENDERING_LOG_TAG, "Play audio failed ", e2);
                            }
                            break;
                        case AdData.INTERSTITIAL_CT:
                            string = data.getString(ErrorFields.MESSAGE);
                            iMWebView.injectJavaScript("window.mraid.broadcastEvent('error',\"" + string + "\", \"" + data.getString(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY) + "\")");
                            break;
                        case 1009:
                            iMWebView.setCloseButton();
                            break;
                        case 1010:
                            aVPlayer = (AVPlayer) mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer != null) {
                                aVPlayer.pause();
                            }
                            break;
                        case 1011:
                            AVPlayer videoPlayer2 = mRAIDAudioVideoController.getVideoPlayer(data.getString("pid"));
                            if (videoPlayer2 == null) {
                                string = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"pauseVideo\")";
                            } else if (videoPlayer2.getState() == playerState.PLAYING) {
                                videoPlayer2.pause();
                                return;
                            } else if (videoPlayer2.getState() != playerState.INIT) {
                                string = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"pauseVideo\")";
                            } else if (!videoPlayer2.isPrepared()) {
                                videoPlayer2.setAutoPlay(false);
                            }
                            iMWebView.injectJavaScript(string);
                            break;
                        case 1012:
                            ((AVPlayer) message.obj).releasePlayer(false);
                            break;
                        case 1013:
                            string = data.getString("pid");
                            videoPlayer = mRAIDAudioVideoController.getVideoPlayer(string);
                            if (videoPlayer == null) {
                                string = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"hideVideo\")";
                            } else if (videoPlayer.getState() == playerState.RELEASED) {
                                string = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"hideVideo\")";
                            } else {
                                mRAIDAudioVideoController.videoPlayerList.put(string, videoPlayer);
                                videoPlayer.hide();
                                return;
                            }
                            iMWebView.injectJavaScript(string);
                            break;
                        case AdData.CAN_PLAY_VIDEO_CT:
                            string = data.getString("pid");
                            videoPlayer = mRAIDAudioVideoController.getVideoPlayer(string);
                            if (videoPlayer == null) {
                                string = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"showVideo\")";
                            } else if (videoPlayer.getState() != playerState.RELEASED && videoPlayer.getState() != playerState.HIDDEN) {
                                string = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"showVideo\")";
                            } else if (mRAIDAudioVideoController.videoPlayer == null || mRAIDAudioVideoController.videoPlayer.getPropertyID().equalsIgnoreCase(string)) {
                                mRAIDAudioVideoController.videoPlayerList.remove(string);
                                mRAIDAudioVideoController.videoPlayer = videoPlayer;
                                videoPlayer.show();
                                return;
                            } else {
                                string = "window.mraid.broadcastEvent('error',\"Show failed. There is already a video playing\", \"showVideo\")";
                            }
                            iMWebView.injectJavaScript(string);
                            break;
                        case 1015:
                            ((AVPlayer) message.obj).mute();
                            break;
                        case AdData.MRAID1_CT:
                            ((AVPlayer) message.obj).unMute();
                            break;
                        case AdData.MRAID2_CT:
                            ((AVPlayer) message.obj).setVolume(data.getInt("volume"));
                            break;
                        case 1018:
                            ((AVPlayer) message.obj).seekPlayer(data.getInt("seek") * 1000);
                            break;
                        case 1019:
                            aVPlayer = (AVPlayer) mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer != null) {
                                aVPlayer.mute();
                            }
                            break;
                        case 1020:
                            aVPlayer = (AVPlayer) mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer != null) {
                                aVPlayer.unMute();
                            }
                            break;
                        case 1021:
                            aVPlayer = (AVPlayer) mRAIDAudioVideoController.audioPlayerList.get(data.getString("aplayerref"));
                            if (aVPlayer != null) {
                                aVPlayer.setVolume(data.getInt("vol"));
                            }
                            break;
                        case 1022:
                            ((AVPlayer) message.obj).seekPlayer(data.getInt("seekaudio") * 1000);
                            break;
                        case 1023:
                            mRAIDAudioVideoController.hidePlayers();
                            break;
                        case AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT:
                            mRAIDBasic.open(data.getString(EXPAND_URL));
                            break;
                        case 1025:
                            string = data.getString("injectMessage");
                            if (string != null) {
                                iMWebView.loadUrl("javascript:" + string);
                            }
                            break;
                        case 1026:
                            mRAIDInterstitialController.handleOrientationForInterstitial();
                            break;
                        case 1027:
                            if (!iMWebView.mIsInterstitialAd) {
                                mRAIDResizeController.onOrientationChange();
                            }
                            break;
                        case 1028:
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onDismissAdScreen();
                            }
                            break;
                        case 1029:
                            mRAIDBasic.getCurrentPosition();
                            break;
                        case 1030:
                            if (iMWebView.j == com.inmobi.re.container.IMWebView.ViewState.RESIZING) {
                                mRAIDResizeController.doResize(data);
                            }
                            break;
                        case 1031:
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onResizeClose();
                            }
                            break;
                        case 1032:
                            mRAIDBasic.getDefaultPosition();
                            break;
                        case 1033:
                            hashMap = (HashMap) message.getData().getSerializable("map");
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onUserInteraction(hashMap);
                            }
                            break;
                        case 1034:
                            hashMap = (HashMap) message.getData().getSerializable("incent_ad_map");
                            if (iMWebView.mListener != null) {
                                iMWebView.mListener.onIncentCompleted(hashMap);
                            }
                            break;
                    }
                }
                super.handleMessage(message);
            } catch (Exception e3) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Webview Handle Message Exception ", e3);
            }
        }
    }

    static {
        d = new int[]{16843039, 16843040};
        userInitiatedClose = false;
        D = null;
    }

    public IMWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.doNotFireVisibilityChanged = new AtomicBoolean(false);
        this.j = ViewState.LOADING;
        this.m = null;
        this.p = new ArrayList();
        this.q = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.mWebViewIsBrowserActivity = false;
        this.r = false;
        this.mutex = new Object();
        this.mutexcPos = new Object();
        this.mutexdPos = new Object();
        this.isMutexAquired = new AtomicBoolean(false);
        this.acqMutexcPos = new AtomicBoolean(true);
        this.acqMutexdPos = new AtomicBoolean(true);
        this.y = new ArrayList();
        this.z = new AtomicBoolean();
        this.C = false;
        this.E = new b(this);
        this.F = new a(this);
        this.mIsViewable = false;
        this.G = new c(this);
        this.a = -1.0d;
        this.b = new AtomicBoolean(false);
        this.H = true;
        this.c = null;
        this.v = (Activity) context;
        a();
        getContext().obtainStyledAttributes(attributeSet, d).recycle();
    }

    public IMWebView(Context context, IMWebViewListener iMWebViewListener) {
        super(context);
        this.doNotFireVisibilityChanged = new AtomicBoolean(false);
        this.j = ViewState.LOADING;
        this.m = null;
        this.p = new ArrayList();
        this.q = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.mWebViewIsBrowserActivity = false;
        this.r = false;
        this.mutex = new Object();
        this.mutexcPos = new Object();
        this.mutexdPos = new Object();
        this.isMutexAquired = new AtomicBoolean(false);
        this.acqMutexcPos = new AtomicBoolean(true);
        this.acqMutexdPos = new AtomicBoolean(true);
        this.y = new ArrayList();
        this.z = new AtomicBoolean();
        this.C = false;
        this.E = new b(this);
        this.F = new a(this);
        this.mIsViewable = false;
        this.G = new c(this);
        this.a = -1.0d;
        this.b = new AtomicBoolean(false);
        this.H = true;
        this.c = null;
        this.mListener = iMWebViewListener;
        this.v = (Activity) context;
        a();
    }

    public IMWebView(Context context, IMWebViewListener iMWebViewListener, boolean z, boolean z2) {
        super(context);
        this.doNotFireVisibilityChanged = new AtomicBoolean(false);
        this.j = ViewState.LOADING;
        this.m = null;
        this.p = new ArrayList();
        this.q = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.mWebViewIsBrowserActivity = false;
        this.r = false;
        this.mutex = new Object();
        this.mutexcPos = new Object();
        this.mutexdPos = new Object();
        this.isMutexAquired = new AtomicBoolean(false);
        this.acqMutexcPos = new AtomicBoolean(true);
        this.acqMutexdPos = new AtomicBoolean(true);
        this.y = new ArrayList();
        this.z = new AtomicBoolean();
        this.C = false;
        this.E = new b(this);
        this.F = new a(this);
        this.mIsViewable = false;
        this.G = new c(this);
        this.a = -1.0d;
        this.b = new AtomicBoolean(false);
        this.H = true;
        this.c = null;
        this.v = (Activity) context;
        this.mIsInterstitialAd = z;
        this.mWebViewIsBrowserActivity = z2;
        if (this.mIsInterstitialAd) {
            setId(IMWEBVIEW_INTERSTITIAL_ID);
        }
        this.mListener = iMWebViewListener;
        a();
    }

    private int a(Activity activity) {
        ResolveInfo resolveInfo;
        Iterator it = activity.getPackageManager().queryIntentActivities(new Intent(activity, activity.getClass()), Cast.MAX_MESSAGE_LENGTH).iterator();
        while (it.hasNext()) {
            resolveInfo = (ResolveInfo) it.next();
            if (resolveInfo.activityInfo.name.contentEquals(activity.getClass().getName())) {
                break;
            }
        }
        resolveInfo = null;
        return resolveInfo.activityInfo.configChanges;
    }

    @SuppressLint({"SetJavaScriptEnabled", "NewApi"})
    private void a() {
        userInitiatedClose = false;
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        this.webviewUserAgent = getSettings().getUserAgentString();
        InternalSDKUtil.getUserAgent(this.v);
        setBackgroundColor(Initializer.getConfigParams().getWebviewBgColor());
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        if (VERSION.SDK_INT >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(true);
        }
        this.g = this.v.getResources().getDisplayMetrics().density;
        this.e = false;
        getSettings().setJavaScriptEnabled(true);
        getSettings().setGeolocationEnabled(true);
        this.f = new JSUtilityController(this, getContext());
        addJavascriptInterface(this.f, "utilityController");
        setWebViewClient(this.E);
        setWebChromeClient(this.F);
        this.mExpandController = new MRAIDExpandController(this, this.v);
        this.mResizeController = new MRAIDResizeController(this, this.v);
        this.mMraidBasic = new MRAIDBasic(this, this.v);
        this.mInterstitialController = new MRAIDInterstitialController(this, this.v);
        this.mAudioVideoController = new MRAIDAudioVideoController(this);
        this.x = new l(this, this.mMraidBasic, this.mExpandController, this.mInterstitialController, this.mAudioVideoController, this.mResizeController);
        this.mExpandController.mSensorDisplay = ((WindowManager) this.v.getSystemService("window")).getDefaultDisplay();
        this.mAudioVideoController.videoValidateWidth = this.v.getResources().getDisplayMetrics().widthPixels;
        try {
            addJavascriptInterface(D.getDeclaredConstructor(new Class[]{IMWebView.class}).newInstance(new Object[]{this}), IMAIController.IMAI_BRIDGE);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Error adding js interface imai controller");
        }
        this.f.setWebViewClosed(false);
    }

    private void a(int i, int i2) {
        injectJavaScript("window.mraid.broadcastEvent('sizeChange'," + i + "," + i2 + ");");
    }

    private void a(View view, OnKeyListener onKeyListener) {
        view.setOnKeyListener(onKeyListener);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int childCount = viewGroup.getChildCount();
            while (i < childCount) {
                a(viewGroup.getChildAt(i), onKeyListener);
                i++;
            }
        }
    }

    private void a(View view, OnTouchListener onTouchListener) {
        view.setOnTouchListener(onTouchListener);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int childCount = viewGroup.getChildCount();
            while (i < childCount) {
                a(viewGroup.getChildAt(i), onTouchListener);
                i++;
            }
        }
    }

    @TargetApi(8)
    private void a(SslErrorHandler sslErrorHandler, SslError sslError) {
        Builder builder = new Builder(this.v);
        builder.setPositiveButton("Continue", new d(sslErrorHandler));
        builder.setNegativeButton("Go Back", new k(sslErrorHandler));
        if (VERSION.SDK_INT >= 14) {
            builder.setNeutralButton("Open Browser", new e(sslError));
        }
        builder.setTitle("Security Warning");
        builder.setMessage("There are problems with the security certificate for this site.");
        try {
            builder.create().show();
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Dialog could not be shown due to an exception.", e);
        }
    }

    private void a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        this.v.startActivity(intent);
        fireOnLeaveApplication();
    }

    private void a(boolean z) {
        Log.debug(Constants.RENDERING_LOG_TAG, "Viewable:" + z);
        injectJavaScript("window.mraid.broadcastEvent('viewableChange'," + isViewable() + ");");
    }

    private void b() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> initStates");
        this.j = ViewState.LOADING;
        this.z.set(false);
    }

    private void c() {
        if (this.j == ViewState.EXPANDED) {
            this.mExpandController.closeExpanded();
        }
        invalidate();
        this.f.stopAllListeners();
        resetLayout();
    }

    private void d() {
        if (this.l != null) {
            if (this.m != null) {
                this.m.onCustomViewHidden();
            }
            this.m = null;
            if (this.l.getParent() != null) {
                ((ViewGroup) this.l.getParent()).removeView(this.l);
            }
            this.l = null;
        }
    }

    private boolean e() {
        return this.b.get();
    }

    public static void setIMAIController(Class cls) {
        D = cls;
    }

    public void addJavascriptObject(Object obj, String str) {
        addJavascriptInterface(obj, str);
    }

    public void cancelLoad() {
        this.z.set(true);
    }

    public void cancelSaveContent(String str) {
        if (this.p != null) {
            int i = 0;
            while (i < this.p.size()) {
                i iVar = (i) this.p.get(i);
                if (iVar.a().equals(str) && iVar.getStatus() == Status.RUNNING) {
                    iVar.cancel(true);
                    return;
                } else {
                    i++;
                }
            }
        }
    }

    public void clearView() {
        c();
        super.clearView();
    }

    public void close() {
        try {
            removeSaveContentDir();
            this.f.setWebViewClosed(true);
            if (!this.x.hasMessages(ApiEventType.API_IMAI_OPEN_EMBEDDED)) {
                this.x.sendEmptyMessage(ApiEventType.API_IMAI_OPEN_EMBEDDED);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception closing webview. Webview not initialized properly", e);
        }
    }

    public void closeExpanded() {
        this.x.sendEmptyMessage(1005);
    }

    protected void closeOpened(View view) {
        ((ViewGroup) ((Activity) getContext()).getWindow().getDecorView()).removeView(view);
        requestLayout();
    }

    public void closeResized() {
        this.x.sendEmptyMessage(1031);
    }

    public void closeVideo(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "closeVideo");
        } else if (videoPlayer.getState() == playerState.RELEASED) {
            raiseError("Invalid player state", "closeVideo");
        } else {
            this.mAudioVideoController.videoPlayerList.remove(str);
            Message obtainMessage = this.x.obtainMessage(1012);
            obtainMessage.obj = videoPlayer;
            this.x.sendMessage(obtainMessage);
        }
    }

    public void deinit() {
        if (getStateVariable() == ViewState.EXPANDED || getStateVariable() == ViewState.EXPANDING) {
            close();
        }
    }

    public void destroy() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView: Destroy called.");
        close();
        postInHandler(new g());
    }

    public void disableHardwareAcceleration() {
        this.H = false;
        Log.internal(Constants.RENDERING_LOG_TAG, "disableHardwareAcceleration called.");
        if (VERSION.SDK_INT >= 14) {
            WrapperFunctions.disableHardwareAccl(this);
            this.mExpandController.disableEnableHardwareAccelerationForExpandWithURLView();
        }
    }

    public void doHidePlayers() {
        this.x.sendEmptyMessage(1023);
    }

    public void expand(String str, ExpandProperties expandProperties) {
        setState(ViewState.EXPANDING);
        this.mExpandController.mIsExpandUrlValid = false;
        this.isMutexAquired.set(true);
        Message obtainMessage = this.x.obtainMessage(ApiEventType.API_IMAI_PING_IN_WEB_VIEW);
        Bundle bundle = new Bundle();
        bundle.putString(EXPAND_URL, str);
        obtainMessage.setData(bundle);
        this.mExpandController.expandProperties = expandProperties;
        Log.debug(Constants.RENDERING_LOG_TAG, "Dimensions: {" + this.mExpandController.expandProperties.x + " ," + this.mExpandController.expandProperties.y + " ," + this.mExpandController.expandProperties.width + " ," + this.mExpandController.expandProperties.height + "}");
        this.mExpandController.tempExpPropsLock = this.mExpandController.expandProperties.lockOrientation;
        this.x.sendMessage(obtainMessage);
    }

    public void fireOnLeaveApplication() {
        if (this.mListener != null) {
            this.mListener.onLeaveApplication();
        }
    }

    public void fireOnShowAdScreen() {
        if (this.mListener != null && getStateVariable() == ViewState.DEFAULT && !this.mIsInterstitialAd) {
            IMBrowserActivity.requestOnAdDismiss(this.x.obtainMessage(1028));
            this.mListener.onShowAdScreen();
        }
    }

    public Activity getActivity() {
        return this.v;
    }

    public int getAudioVolume(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer != null) {
            return currentAudioPlayer.getVolume();
        }
        raiseError("Invalid property ID", "getAudioVolume");
        return -1;
    }

    public String getCurrentRotation(int i) {
        String str = "-1";
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "0";
            case GoogleScorer.CLIENT_GAMES:
                return "90";
            case GoogleScorer.CLIENT_PLUS:
                return "180";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "270";
            default:
                return str;
        }
    }

    public boolean getCustomClose() {
        return this.r;
    }

    public float getDensity() {
        return this.g;
    }

    public int getDismissMessage() {
        return 1028;
    }

    public Activity getExpandedActivity() {
        return this.v;
    }

    public int getIntegerCurrentRotation() {
        int displayRotation = InternalSDKUtil.getDisplayRotation(((WindowManager) this.v.getSystemService("window")).getDefaultDisplay());
        if (InternalSDKUtil.isDefOrientationLandscape(displayRotation, this.v.getResources().getDisplayMetrics().widthPixels, this.v.getResources().getDisplayMetrics().heightPixels)) {
            displayRotation++;
            if (displayRotation > 3) {
                displayRotation = 0;
            }
            if (InternalSDKUtil.isTablet(this.v.getApplicationContext())) {
                this.isTablet = true;
            }
        }
        return displayRotation;
    }

    public double getLastGoodKnownMicValue() {
        return this.a;
    }

    public ArrayList getMRAIDUrls() {
        return this.y;
    }

    public int getOriginalIndex() {
        return this.B;
    }

    public ViewParent getOriginalParent() {
        if (this.A == null) {
            saveOriginalViewParent();
        }
        return this.A;
    }

    public String getPlacementType() {
        return this.mIsInterstitialAd ? "interstitial" : "inline";
    }

    public String getSize() {
        return "{ width: " + ((int) (((float) getWidth()) / this.g)) + ", " + "height: " + ((int) (((float) getHeight()) / this.g)) + "}";
    }

    public String getState() {
        return this.j.toString().toLowerCase(Locale.ENGLISH);
    }

    public ViewState getStateVariable() {
        return this.j;
    }

    public int getVideoVolume(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer != null) {
            return videoPlayer.getVolume();
        }
        raiseError("Invalid property ID", "getVideoVolume");
        return -1;
    }

    public ViewState getViewState() {
        return this.j;
    }

    public Handler getWebviewHandler() {
        return this.x;
    }

    public void hide() {
        this.x.sendEmptyMessage(ApiEventType.API_IMAI_OPEN_EXTERNAL);
    }

    public void hideVideo(String str) {
        Message obtainMessage = this.x.obtainMessage(1013);
        Bundle bundle = new Bundle();
        bundle.putString("pid", str);
        obtainMessage.setData(bundle);
        this.x.sendMessage(obtainMessage);
    }

    public void incentCompleted(HashMap hashMap) {
        Message obtainMessage = this.x.obtainMessage(1034);
        Bundle bundle = new Bundle();
        bundle.putSerializable("incent_ad_map", hashMap);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }

    public void injectJavaScript(String str) {
        if (str != null) {
            try {
                if (str.length() < 400) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "Injecting JavaScript: " + str);
                }
                if (!e()) {
                    super.loadUrl("javascript:try{" + str + "}catch(e){}");
                }
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Error injecting javascript ", e);
            }
        }
    }

    public boolean isAudioMuted(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer != null) {
            return currentAudioPlayer.isMediaMuted();
        }
        raiseError("Invalid property ID", "isAudioMuted");
        return false;
    }

    public boolean isBusy() {
        return this.q;
    }

    public boolean isConfigChangesListed(Activity activity) {
        int i = VERSION.SDK_INT;
        int a = a(activity);
        int i2 = (a & 16) != 0 && (a & 32) != 0 && (a & 128) != 0;
        i = i < 13 || !((a & 1024) == 0 || (a & 2048) == 0);
        return i2 != 0 && i != 0;
    }

    public boolean isEnabledHardwareAcceleration() {
        return this.H;
    }

    public boolean isExpanded() {
        return this.j == ViewState.EXPANDED;
    }

    public boolean isLandscapeSyncOrientation(int i) {
        return i == 1 || i == 3;
    }

    public boolean isModal() {
        return this.mIsInterstitialAd || this.j == ViewState.EXPANDED;
    }

    public boolean isPageFinished() {
        return this.e;
    }

    public boolean isPortraitSyncOrientation(int i) {
        return i == 0 || i == 2;
    }

    public boolean isVideoMuted(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer != null) {
            return videoPlayer.isMediaMuted();
        }
        raiseError("Invalid property ID", "isVideoMuted");
        return false;
    }

    public boolean isViewable() {
        return this.mIsViewable;
    }

    public void loadData(String str, String str2, String str3) {
        super.loadData(str, str2, str3);
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (this.j != ViewState.EXPANDED) {
            b();
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    public void loadUrl(String str) {
        if (this.j != ViewState.EXPANDED) {
            b();
            super.loadUrl(str);
        }
    }

    public void lockExpandOrientation(Activity activity, boolean z, String str) {
        try {
            if (isConfigChangesListed(activity)) {
                int requestedOrientation = activity.getRequestedOrientation();
                if (requestedOrientation != 0 && requestedOrientation != 1) {
                    if (VERSION.SDK_INT >= 9 && (requestedOrientation == 8 || requestedOrientation == 9 || requestedOrientation == 6 || requestedOrientation == 7)) {
                        return;
                    }
                    if (!z) {
                        requestedOrientation = getIntegerCurrentRotation();
                        this.mExpandController.initialExpandOrientation = activity.getRequestedOrientation();
                        if (str.equalsIgnoreCase(DeviceInfo.ORIENTATION_PORTRAIT)) {
                            this.mExpandController.useLockOrient = true;
                            activity.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(requestedOrientation));
                        } else if (str.equalsIgnoreCase(DeviceInfo.ORIENTATION_LANDSCAPE)) {
                            this.mExpandController.useLockOrient = true;
                            activity.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(requestedOrientation));
                        } else {
                            this.mExpandController.useLockOrient = true;
                            if (activity.getResources().getConfiguration().orientation == 2) {
                                Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE");
                                activity.setRequestedOrientation(0);
                            } else {
                                Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT");
                                activity.setRequestedOrientation(1);
                            }
                        }
                    } else if (activity.getResources().getConfiguration().orientation == 2) {
                        Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
                    } else {
                        Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
                    }
                }
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception handling the orientation ", e);
        }
    }

    public void mediaPlayerReleased(AVPlayer aVPlayer) {
        this.mAudioVideoController.mediaPlayerReleased(aVPlayer);
    }

    public void muteAudio(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "muteAudio");
        } else if (currentAudioPlayer.getState() == playerState.RELEASED) {
            raiseError("Invalid player state", "muteAudio");
        } else {
            Message obtainMessage = this.x.obtainMessage(1019);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void muteVideo(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "muteVideo");
        } else if (videoPlayer.getState() == playerState.RELEASED || videoPlayer.getState() == playerState.INIT) {
            raiseError("Invalid player state", "muteVideo");
        } else {
            Message obtainMessage = this.x.obtainMessage(1015);
            obtainMessage.obj = videoPlayer;
            this.x.sendMessage(obtainMessage);
        }
    }

    protected void onAttachedToWindow() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onAttachedToWindow");
        saveOriginalViewParent();
        if (!this.s) {
            LayoutParams layoutParams = getLayoutParams();
            this.h = layoutParams.height;
            this.i = layoutParams.width;
            this.s = true;
        }
        this.f.registerBroadcastListener();
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow() {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onDetatchedFromWindow");
        this.f.stopAllListeners();
        this.y.clear();
        this.f.unRegisterBroadcastListener();
        if (this.mIsInterstitialAd && !this.mWebViewIsBrowserActivity) {
            this.mInterstitialController.handleInterstitialClose();
        }
        super.onDetachedFromWindow();
    }

    protected void onIMWebviewVisibilityChanged(boolean z) {
        if (this.mIsViewable != z) {
            this.mIsViewable = z;
            if (!this.doNotFireVisibilityChanged.get()) {
                a(z);
            }
        }
    }

    public void onOrientationEventChange() {
        this.x.sendEmptyMessage(1027);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0 && i2 != 0) {
            if (!this.C) {
                a((int) (((float) i) / getDensity()), (int) (((float) i2) / getDensity()));
            }
            this.C = false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        requestFocus();
        return super.onTouchEvent(motionEvent);
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        onIMWebviewVisibilityChanged(i == 0);
        if (i != 0) {
            try {
                if (this.f.supports("vibrate")) {
                    ((Vibrator) this.v.getSystemService("vibrator")).cancel();
                }
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Failed to cancel existing vibration", e);
            }
        }
    }

    public void openExternal(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        try {
            getContext().startActivity(intent);
            if (this.mListener != null) {
                this.mListener.onLeaveApplication();
            }
        } catch (Exception e) {
            raiseError("Request must specify a valid URL", "openExternal");
        }
    }

    public void openURL(String str) {
        if (isViewable()) {
            Message obtainMessage = this.x.obtainMessage(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
            Bundle bundle = new Bundle();
            bundle.putString(EXPAND_URL, str);
            obtainMessage.setData(bundle);
            this.x.sendMessage(obtainMessage);
        } else {
            raiseError("Cannot open URL.Ad is not viewable yet", "openURL");
        }
    }

    public void pageFinishedCallbackForAdCreativeTesting(Message message) {
        this.u = message;
    }

    public void pauseAudio(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "pauseAudio");
        } else if (currentAudioPlayer.getState() != playerState.PLAYING) {
            if (currentAudioPlayer.getState() != playerState.INIT || currentAudioPlayer.isPrepared()) {
                raiseError("Invalid player state", "pauseAudio");
            } else {
                currentAudioPlayer.setAutoPlay(false);
            }
        } else if (currentAudioPlayer.isPlaying()) {
            Message obtainMessage = this.x.obtainMessage(1010);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void pauseVideo(String str) {
        Message obtainMessage = this.x.obtainMessage(1011);
        Bundle bundle = new Bundle();
        bundle.putString("pid", str);
        obtainMessage.setData(bundle);
        this.x.sendMessage(obtainMessage);
    }

    public void playAudio(String str, boolean z, boolean z2, boolean z3, String str2, String str3, String str4) {
        synchronized (this.mutex) {
            if (this.isMutexAquired.get()) {
                try {
                    this.mutex.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutex failed ", e);
                }
            }
        }
        if (!this.mIsInterstitialAd && this.j != ViewState.EXPANDED) {
            raiseError("Cannot play audio.Ad is not in an expanded state", "playAudio");
        } else if (isViewable()) {
            Parcelable playerProperties = new PlayerProperties();
            playerProperties.setProperties(false, z, z2, z3, str2, str3, str4);
            Bundle bundle = new Bundle();
            bundle.putString(EXPAND_URL, str);
            bundle.putParcelable(PLAYER_PROPERTIES, playerProperties);
            Message obtainMessage = this.x.obtainMessage(AdData.HTML_CT);
            obtainMessage.setData(bundle);
            this.x.sendMessage(obtainMessage);
        } else {
            raiseError("Cannot play audio.Ad is not viewable yet", "playAudio");
        }
    }

    public void playVideo(String str, boolean z, boolean z2, boolean z3, boolean z4, Dimensions dimensions, String str2, String str3, String str4) {
        synchronized (this.mutex) {
            if (this.isMutexAquired.get()) {
                try {
                    this.mutex.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutex failed ", e);
                }
            }
        }
        if (!this.mIsInterstitialAd && this.j != ViewState.EXPANDED) {
            raiseError("Cannot play video.Ad is not in an expanded state", "playVideo");
        } else if (!isViewable()) {
            raiseError("Cannot play video.Ad is not viewable yet", "playVideo");
        } else if (this.mAudioVideoController.videoPlayerList.isEmpty() || this.mAudioVideoController.videoPlayerList.size() < 5 || this.mAudioVideoController.videoPlayerList.containsKey(str4)) {
            Message obtainMessage = this.x.obtainMessage(1006);
            Parcelable playerProperties = new PlayerProperties();
            playerProperties.setProperties(z, z2, z3, z4, str2, str3, str4);
            Bundle bundle = new Bundle();
            bundle.putString(EXPAND_URL, str);
            bundle.putParcelable(PLAYER_PROPERTIES, playerProperties);
            Log.debug(Constants.RENDERING_LOG_TAG, "Before validation dimension: (" + dimensions.x + ", " + dimensions.y + ", " + dimensions.width + ", " + dimensions.height + ")");
            this.mAudioVideoController.validateVideoDimensions(dimensions);
            Log.debug(Constants.RENDERING_LOG_TAG, "After validation dimension: (" + dimensions.x + ", " + dimensions.y + ", " + dimensions.width + ", " + dimensions.height + ")");
            bundle.putParcelable(DIMENSIONS, dimensions);
            obtainMessage.setData(bundle);
            this.x.sendMessage(obtainMessage);
        } else {
            raiseError("Player Error. Exceeding permissible limit for saved play instances", "playVideo");
        }
    }

    public void postInHandler(Runnable runnable) {
        this.x.post(runnable);
    }

    public void postInjectJavaScript(String str) {
        if (str != null) {
            if (str.length() < 400) {
                Log.debug(Constants.RENDERING_LOG_TAG, "Injecting JavaScript: " + str);
            }
            Message obtainMessage = this.x.obtainMessage(1025);
            Bundle bundle = new Bundle();
            bundle.putString("injectMessage", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void raiseCameraPictureCapturedEvent(String str, int i, int i2) {
        String str2 = "window.mraidview.fireCameraPictureCatpturedEvent('" + str + "'" + "," + "'" + i + "','" + i2 + "')";
        if (this.v != null) {
            this.v.runOnUiThread(new c(str2));
        }
    }

    public void raiseError(String str, String str2) {
        Message obtainMessage = this.x.obtainMessage(AdData.INTERSTITIAL_CT);
        Bundle bundle = new Bundle();
        bundle.putString(ErrorFields.MESSAGE, str);
        bundle.putString(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY, str2);
        obtainMessage.setData(bundle);
        this.x.sendMessage(obtainMessage);
    }

    public void raiseGalleryImageSelectedEvent(String str, int i, int i2) {
        String str2 = "window.mraidview.fireGalleryImageSelectedEvent('" + str + "'" + "," + "'" + i + "','" + i2 + "')";
        if (this.v != null) {
            this.v.runOnUiThread(new j(str2));
        }
    }

    public void raiseMicEvent(double d) {
        this.a = d;
        String str = "window.mraid.broadcastEvent('micIntensityChange'," + d + ")";
        if (this.v != null) {
            this.v.runOnUiThread(new b(str));
        }
    }

    public void raiseVibrateCompleteEvent() {
        if (this.v != null) {
            this.v.runOnUiThread(new a());
        }
    }

    public void removeSaveContentDir() {
        int i = 0;
        if (this.p != null) {
            android.util.Log.i("Nilanjana", "list_downloadTask not null");
            int i2 = 0;
            while (i2 < this.p.size()) {
                i iVar = (i) this.p.get(i2);
                if (iVar.getStatus() == Status.RUNNING) {
                    iVar.cancel(true);
                }
                i2++;
            }
            this.p.clear();
            this.p = null;
        }
        File file = new File(InternalSDKUtil.getContext().getExternalFilesDir(null) + "/im_cached_content/");
        if (file.exists() && file.isDirectory()) {
            String[] list = file.list();
            while (i < list.length) {
                new File(file, list[i]).delete();
                i++;
            }
            file.delete();
        }
    }

    public void requestOnInterstitialClosed(Message message) {
        this.mInterstitialController.mMsgOnInterstitialClosed = message;
    }

    public void requestOnInterstitialShown(Message message) {
        this.mInterstitialController.mMsgOnInterstitialShown = message;
    }

    public void requestOnPageFinishedCallback(Message message) {
        this.t = message;
    }

    public void resetLayout() {
        LayoutParams layoutParams = getLayoutParams();
        if (this.s) {
            layoutParams.height = this.h;
            layoutParams.width = this.i;
        }
        setVisibility(0);
        requestLayout();
    }

    public void resetMraid() {
        this.mExpandController.reset();
        this.mResizeController.reset();
        this.f.reset();
    }

    public void resize(ResizeProperties resizeProperties) {
        setState(ViewState.RESIZING);
        this.isMutexAquired.set(true);
        Message obtainMessage = this.x.obtainMessage(1030);
        this.mResizeController.resizeProperties = resizeProperties;
        this.x.sendMessage(obtainMessage);
    }

    public void saveFile(File file, String str, String str2) {
        new i(file, str, str2).execute(new Void[0]);
    }

    public void saveOriginalViewParent() {
        if (this.A == null) {
            this.A = getParent();
            if (this.A != null) {
                int childCount = ((ViewGroup) this.A).getChildCount();
                int i = 0;
                while (i < childCount && ((ViewGroup) this.A).getChildAt(i) != this) {
                    i++;
                }
                this.B = i;
            }
        }
    }

    public void seekAudio(String str, int i) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "seekAudio");
        } else if (currentAudioPlayer.getState() == playerState.RELEASED) {
            raiseError("Invalid player state", "seekAudio");
        } else {
            Message obtainMessage = this.x.obtainMessage(1022);
            Bundle bundle = new Bundle();
            bundle.putInt("seekaudio", i);
            obtainMessage.setData(bundle);
            obtainMessage.obj = currentAudioPlayer;
            obtainMessage.sendToTarget();
        }
    }

    public void seekVideo(String str, int i) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "seekVideo");
        } else if (videoPlayer.getState() == playerState.RELEASED || videoPlayer.getState() == playerState.INIT) {
            raiseError("Invalid player state", "seekVideo");
        } else {
            Message obtainMessage = this.x.obtainMessage(1018);
            Bundle bundle = new Bundle();
            bundle.putInt("seek", i);
            obtainMessage.setData(bundle);
            obtainMessage.obj = videoPlayer;
            this.x.sendMessage(obtainMessage);
        }
    }

    public void sendToCPHandler() {
        this.x.sendEmptyMessage(1029);
    }

    public void sendToDPHandler() {
        this.x.sendEmptyMessage(1032);
    }

    public void sendasyncPing(String str) {
        this.f.asyncPing(str);
    }

    public void setActivity(Activity activity) {
        this.v = activity;
    }

    public void setAudioVolume(String str, int i) {
        if (this.mAudioVideoController.getCurrentAudioPlayer(str) == null) {
            raiseError("Invalid property ID", "setAudioVolume");
        } else {
            Message obtainMessage = this.x.obtainMessage(1021);
            Bundle bundle = new Bundle();
            bundle.putInt("vol", i);
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void setBrowserActivity(Activity activity) {
        if (activity != null) {
            this.v = (IMBrowserActivity) activity;
        }
    }

    public void setBusy(boolean z) {
        this.q = z;
    }

    public void setCallBack(InstantVideoCallbackCallback instantVideoCallbackCallback) {
        this.c = instantVideoCallbackCallback;
    }

    public void setCloseButton() {
        try {
            CustomView customView = (CustomView) ((ViewGroup) getRootView()).findViewById(MRAIDInterstitialController.INT_CLOSE_BUTTON);
            if (customView == null) {
                return;
            }
            if (getCustomClose()) {
                customView.setSwitchInt(SwitchIconType.CLOSE_TRANSPARENT);
                customView.invalidate();
            } else {
                customView.setSwitchInt(SwitchIconType.CLOSE_BUTTON);
                customView.invalidate();
            }
        } catch (Exception e) {
        }
    }

    public void setCustomClose(boolean z) {
        this.r = z;
        this.x.sendMessage(this.x.obtainMessage(1009));
    }

    public void setExpandPropertiesForInterstitial(boolean z, boolean z2, String str) {
        setCustomClose(z);
        this.mInterstitialController.orientationValueForInterstitial = str;
        this.mInterstitialController.lockOrientationValueForInterstitial = z2;
        if (this.mWebViewIsBrowserActivity) {
            this.mExpandController.handleOrientationFor2Piece();
        }
        if (isViewable() && this.mIsInterstitialAd) {
            this.x.sendEmptyMessage(1026);
        }
    }

    public void setExternalWebViewClient(WebViewClient webViewClient) {
        this.w = webViewClient;
    }

    public void setOrientationPropertiesForInterstitial(boolean z, String str) {
        this.mInterstitialController.orientationValueForInterstitial = str;
        this.mInterstitialController.lockOrientationValueForInterstitial = z;
        if (this.mWebViewIsBrowserActivity) {
            this.mExpandController.handleOrientationFor2Piece();
        }
        if (isViewable() && this.mIsInterstitialAd) {
            this.x.sendEmptyMessage(1026);
        }
    }

    public void setOriginalParent(ViewParent viewParent) {
        this.A = viewParent;
    }

    public void setState(ViewState viewState) {
        Log.debug(Constants.RENDERING_LOG_TAG, "State changing from " + this.j + " to " + viewState);
        this.j = viewState;
        if (viewState != ViewState.EXPANDING && viewState != ViewState.RESIZING) {
            injectJavaScript("window.mraid.broadcastEvent('stateChange','" + getState() + "');");
        }
    }

    public void setVideoVolume(String str, int i) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "setVideoVolume");
        } else if (videoPlayer.getState() == playerState.RELEASED) {
            raiseError("Invalid player state", "setVideoVolume");
        } else {
            Message obtainMessage = this.x.obtainMessage(AdData.MRAID2_CT);
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i);
            obtainMessage.setData(bundle);
            obtainMessage.obj = videoPlayer;
            this.x.sendMessage(obtainMessage);
        }
    }

    public void show() {
        this.x.sendEmptyMessage(ApiEventType.API_IMAI_PING);
    }

    public void showVideo(String str) {
        Message obtainMessage = this.x.obtainMessage(AdData.CAN_PLAY_VIDEO_CT);
        Bundle bundle = new Bundle();
        bundle.putString("pid", str);
        obtainMessage.setData(bundle);
        this.x.sendMessage(obtainMessage);
    }

    public void unMuteAudio(String str) {
        AVPlayer currentAudioPlayer = this.mAudioVideoController.getCurrentAudioPlayer(str);
        if (currentAudioPlayer == null) {
            raiseError("Invalid property ID", "unmuteAudio");
        } else if (currentAudioPlayer.getState() == playerState.RELEASED) {
            raiseError("Invalid player state", "unmuteAudio");
        } else {
            Message obtainMessage = this.x.obtainMessage(1020);
            Bundle bundle = new Bundle();
            bundle.putString("aplayerref", str);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }

    public void unMuteVideo(String str) {
        AVPlayer videoPlayer = this.mAudioVideoController.getVideoPlayer(str);
        if (videoPlayer == null) {
            raiseError("Invalid property ID", "unMuteVideo");
        } else if (videoPlayer.getState() == playerState.RELEASED || videoPlayer.getState() == playerState.INIT) {
            raiseError("Invalid player state", "unMuteVideo");
        } else {
            Message obtainMessage = this.x.obtainMessage(AdData.MRAID1_CT);
            obtainMessage.obj = videoPlayer;
            this.x.sendMessage(obtainMessage);
        }
    }

    public void userInteraction(HashMap hashMap) {
        Message obtainMessage = this.x.obtainMessage(1033);
        Bundle bundle = new Bundle();
        bundle.putSerializable("map", hashMap);
        obtainMessage.setData(bundle);
        obtainMessage.sendToTarget();
    }
}