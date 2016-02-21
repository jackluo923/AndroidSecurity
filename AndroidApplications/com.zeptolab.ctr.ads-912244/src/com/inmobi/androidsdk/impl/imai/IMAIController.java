package com.inmobi.androidsdk.impl.imai;

import android.os.Build.VERSION;
import android.webkit.JavascriptInterface;
import com.brightcove.player.media.MediaService;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.re.container.IMWebView;
import java.lang.ref.WeakReference;

public class IMAIController {
    public static final String IMAI_BRIDGE = "imaiController";
    private transient WeakReference a;

    public IMAIController(IMWebView iMWebView) {
        IMAICore.initialize();
        this.a = new WeakReference(iMWebView);
    }

    @JavascriptInterface
    public String getPlatformVersion() {
        Log.debug(ConfigConstants.LOGGING_TAG, "get platform version");
        return Integer.toString(VERSION.SDK_INT);
    }

    @JavascriptInterface
    public String getSdkVersion() {
        Log.debug(ConfigConstants.LOGGING_TAG, "get sdk version");
        return InMobi.getVersion();
    }

    @JavascriptInterface
    public void log(String str) {
        Log.debug(ConfigConstants.LOGGING_TAG, str);
    }

    @JavascriptInterface
    public void openEmbedded(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(1001), null));
        try {
            Log.debug(ConfigConstants.LOGGING_TAG, "IMAI open Embedded");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.a, "Null url passed", "openEmbedded", str);
            } else if (str.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY) || str.startsWith("https")) {
                IMAICore.launchEmbeddedBrowser(this.a, str);
                IMAICore.fireOpenEmbeddedSuccessful(this.a, str);
            } else {
                openExternal(str);
            }
        } catch (Exception e) {
            Throwable th = e;
            IMAICore.fireErrorEvent(this.a, th.getMessage(), "openEmbedded", str);
            Log.internal(ConfigConstants.LOGGING_TAG, "IMAI openEmbedded failed", th);
        }
    }

    @JavascriptInterface
    public void openExternal(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(1002), null));
        try {
            Log.debug(ConfigConstants.LOGGING_TAG, "IMAI open external");
            if (IMAICore.validateURL(str)) {
                IMAICore.launchExternalApp(str);
                IMAICore.fireOpenExternalSuccessful(this.a, str);
            } else {
                IMAICore.fireErrorEvent(this.a, "Null url passed", "openExternal", str);
            }
        } catch (Exception e) {
            Throwable th = e;
            IMAICore.fireErrorEvent(this.a, th.getMessage(), "openExternal", str);
            Log.internal(ConfigConstants.LOGGING_TAG, "IMAI openExternal failed", th);
        }
    }

    @JavascriptInterface
    public void ping(String str, boolean z) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(1003), null));
        try {
            Log.debug(ConfigConstants.LOGGING_TAG, "IMAI ping");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.a, "Null url passed", "ping", str);
            } else if (str.contains(MediaService.DEFAULT_MEDIA_DELIVERY) || str.contains("https")) {
                IMAICore.ping(this.a, str, z);
            } else {
                IMAICore.fireErrorEvent(this.a, "Invalid url passed", "ping", str);
            }
        } catch (Exception e) {
            Throwable th = e;
            IMAICore.fireErrorEvent(this.a, th.getMessage(), "ping", str);
            Log.internal(ConfigConstants.LOGGING_TAG, "IMAI ping failed", th);
        }
    }

    @JavascriptInterface
    public void pingInWebView(String str, boolean z) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(1004), null));
        try {
            Log.debug(ConfigConstants.LOGGING_TAG, "IMAI ping in webview");
            if (!IMAICore.validateURL(str)) {
                IMAICore.fireErrorEvent(this.a, "Null url passed", "pingInWebView", str);
            } else if (str.contains(MediaService.DEFAULT_MEDIA_DELIVERY) || str.contains("https")) {
                IMAICore.pingInWebview(this.a, str, z);
            } else {
                IMAICore.fireErrorEvent(this.a, "Invalid url passed", "pingInWebView", str);
            }
        } catch (Exception e) {
            Throwable th = e;
            IMAICore.fireErrorEvent(this.a, th.getMessage(), "pingInWebView", str);
            Log.internal(ConfigConstants.LOGGING_TAG, "IMAI pingInWebView failed", th);
        }
    }
}