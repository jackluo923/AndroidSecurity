package com.inmobi.androidsdk.impl.imai;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.androidsdk.impl.imai.db.ClickDatabaseManager;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.millennialmedia.android.MMException;
import java.lang.ref.WeakReference;
import java.util.Random;

public class IMAICore {
    static Random a;

    final class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ boolean b;
        final /* synthetic */ WeakReference c;

        class a implements HttpRequestCallback {
            a() {
            }

            public void notifyResult(int i, Object obj) {
                try {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Got PING callback. Status: " + i);
                    if (i == 0) {
                        IMAICore.firePingSuccessful(a.this.c, a.this);
                    } else {
                        IMAICore.fireErrorEvent(a.this.c, "IMAI Ping in http client failed", "ping", a.this);
                    }
                } catch (Exception e) {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
                }
            }
        }

        a(String str, boolean z, WeakReference weakReference) {
            this.a = str;
            this.b = z;
            this.c = weakReference;
        }

        public void run() {
            try {
                ClickData clickData = new ClickData(this.a, this.b, false, Initializer.getConfigParams().getImai().getMaxRetry());
                RequestResponseManager requestResponseManager = new RequestResponseManager();
                requestResponseManager.init();
                RequestResponseManager.mNetworkQueue.add(0, clickData);
                requestResponseManager.processClick(InternalSDKUtil.getContext(), new a());
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception ping in background", e);
            }
        }
    }

    final class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ boolean b;
        final /* synthetic */ WeakReference c;

        class a implements HttpRequestCallback {
            a() {
            }

            public void notifyResult(int i, Object obj) {
                try {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Got PING IN WEBVIEW callback. Status: " + i);
                    if (i == 0) {
                        IMAICore.firePingInWebViewSuccessful(b.this.c, b.this);
                    } else {
                        IMAICore.fireErrorEvent(b.this.c, "IMAI Ping in webview failed", "pingInWebview", b.this);
                    }
                } catch (Exception e) {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
                }
            }
        }

        b(String str, boolean z, WeakReference weakReference) {
            this.a = str;
            this.b = z;
            this.c = weakReference;
        }

        public void run() {
            try {
                ClickData clickData = new ClickData(this.a, this.b, true, Initializer.getConfigParams().getImai().getMaxRetry());
                RequestResponseManager requestResponseManager = new RequestResponseManager();
                requestResponseManager.init();
                RequestResponseManager.mNetworkQueue.add(0, clickData);
                requestResponseManager.processClick(InternalSDKUtil.getContext(), new a());
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception ping in background", e);
            }
        }
    }

    final class c implements Runnable {
        final /* synthetic */ IMWebView a;
        final /* synthetic */ String b;

        c(IMWebView iMWebView, String str) {
            this.a = iMWebView;
            this.b = str;
        }

        public void run() {
            this.a.injectJavaScript(this.b);
        }
    }

    static {
        a = new Random();
    }

    public static void fireErrorEvent(WeakReference weakReference, String str, String str2, String str3) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(ConfigConstants.LOGGING_TAG, "Fire error event IMAI for action: " + str2 + " " + str);
                    injectJavaScript((IMWebView) weakReference.get(), "window._im_imai.broadcastEvent('error','" + str + "'" + ",'" + str2 + "'" + ",'" + str3 + "'" + ")");
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
            }
        }
    }

    public static void fireOpenEmbeddedSuccessful(WeakReference weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(ConfigConstants.LOGGING_TAG, "fireOpenEmbeddedSuccessful");
                    if (!(((IMWebView) weakReference.get()).mWebViewIsBrowserActivity || ((IMWebView) weakReference.get()).mIsInterstitialAd)) {
                        IMBrowserActivity.requestOnAdDismiss(((IMWebView) weakReference.get()).getWebviewHandler().obtainMessage(((IMWebView) weakReference.get()).getDismissMessage()));
                        ((IMWebView) weakReference.get()).fireOnShowAdScreen();
                    }
                    injectJavaScript((IMWebView) weakReference.get(), "window._im_imai.broadcastEvent('openEmbeddedSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
            }
        }
    }

    public static void fireOpenExternalSuccessful(WeakReference weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(ConfigConstants.LOGGING_TAG, "fireOpenExternalSuccessful");
                    ((IMWebView) weakReference.get()).fireOnLeaveApplication();
                    injectJavaScript((IMWebView) weakReference.get(), "window._im_imai.broadcastEvent('openExternalSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
            }
        }
    }

    public static void firePingInWebViewSuccessful(WeakReference weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(ConfigConstants.LOGGING_TAG, "firePingInWebViewSuccessful");
                    injectJavaScript((IMWebView) weakReference.get(), "window._im_imai.broadcastEvent('pingInWebViewSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
            }
        }
    }

    public static void firePingSuccessful(WeakReference weakReference, String str) {
        if (weakReference != null) {
            try {
                if (weakReference.get() != null) {
                    Log.debug(ConfigConstants.LOGGING_TAG, "firePingSuccessful");
                    injectJavaScript((IMWebView) weakReference.get(), "window._im_imai.broadcastEvent('pingSuccessful','" + str + "')");
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception", e);
            }
        }
    }

    public static int getRandomNumber() {
        return a.nextInt();
    }

    public static void initialize() {
        new RequestResponseManager().init();
        ClickDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getImai().getmMaxDb());
    }

    public static void injectJavaScript(IMWebView iMWebView, String str) {
        try {
            iMWebView.getActivity().runOnUiThread(new c(iMWebView, str));
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Error injecting javascript ", e);
        }
    }

    public static void launchEmbeddedBrowser(WeakReference weakReference, String str) {
        Intent intent = new Intent(((IMWebView) weakReference.get()).getActivity(), IMBrowserActivity.class);
        intent.putExtra(IMBrowserActivity.EXTRA_URL, str);
        intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, MMException.UNKNOWN_ERROR);
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        IMBrowserActivity.setWebViewListener(((IMWebView) weakReference.get()).mListener);
        if (!(((IMWebView) weakReference.get()).mWebViewIsBrowserActivity || ((IMWebView) weakReference.get()).mIsInterstitialAd || ((IMWebView) weakReference.get()).getStateVariable() != ViewState.DEFAULT)) {
            intent.putExtra("FIRST_INSTANCE", true);
            intent.putExtra("QAMODE", SDKUtil.getQAMode());
        }
        ((IMWebView) weakReference.get()).getActivity().getApplicationContext().startActivity(intent);
    }

    public static void launchExternalApp(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        InternalSDKUtil.getContext().startActivity(intent);
    }

    public static void ping(WeakReference weakReference, String str, boolean z) {
        try {
            ((IMWebView) weakReference.get()).getActivity().runOnUiThread(new a(str, z, weakReference));
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Failed to ping", e);
        }
    }

    public static void pingInWebview(WeakReference weakReference, String str, boolean z) {
        try {
            ((IMWebView) weakReference.get()).getActivity().runOnUiThread(new b(str, z, weakReference));
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Failed to ping in webview", e);
        }
    }

    public static boolean validateURL(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            return true;
        }
        Log.internal(ConfigConstants.LOGGING_TAG, "Null url passed");
        return false;
    }
}