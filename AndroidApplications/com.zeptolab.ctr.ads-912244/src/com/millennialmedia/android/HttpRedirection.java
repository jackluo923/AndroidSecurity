package com.millennialmedia.android;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import com.heyzap.http.AsyncHttpClient;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

final class HttpRedirection {
    private static final String a = "https";
    private static final String b = "GET";
    private static final String c = "Location";
    private static final String d = "Redirecting to: %s";
    private static final String e = "HttpRedirection";

    private static interface Listener {
        boolean canOpenOverlay();

        OverlaySettings getOverlaySettings();

        boolean isActivityStartable(Uri uri);

        boolean isExpandingToUrl();

        boolean isHandlingMMVideo(Uri uri);

        void startingActivity(Uri uri);

        void startingVideo();

        void updateLastVideoViewedTime();
    }

    static class RedirectionListenerImpl implements Listener {
        String a;
        WeakReference b;
        Uri c;
        String d;
        long e;

        public boolean canOpenOverlay() {
            return false;
        }

        public OverlaySettings getOverlaySettings() {
            return null;
        }

        public boolean isActivityStartable(Uri uri) {
            return true;
        }

        public boolean isExpandingToUrl() {
            return false;
        }

        public boolean isHandlingMMVideo(Uri uri) {
            return false;
        }

        public void startingActivity(Uri uri) {
            MMLog.b(e, String.format("Starting activity for %s", new Object[]{uri}));
        }

        public void startingVideo() {
        }

        public void updateLastVideoViewedTime() {
        }
    }

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ WeakReference a;

        AnonymousClass_1(WeakReference weakReference) {
            this.a = weakReference;
        }

        private void a(RedirectionListenerImpl redirectionListenerImpl) {
            Intent intent = null;
            Context context = (Context) redirectionListenerImpl.b.get();
            if (context != null) {
                String scheme = redirectionListenerImpl.c.getScheme();
                if (scheme != null) {
                    if (!scheme.equalsIgnoreCase("mmvideo")) {
                        intent = IntentUtils.a(redirectionListenerImpl);
                    } else if (!redirectionListenerImpl.isHandlingMMVideo(redirectionListenerImpl.c)) {
                        VideoAd.a(context, redirectionListenerImpl.c.getHost(), redirectionListenerImpl);
                    }
                }
                if (intent != null) {
                    Parcelable overlaySettings = redirectionListenerImpl.getOverlaySettings();
                    if (!(intent == null || overlaySettings == null)) {
                        if (redirectionListenerImpl.d != null) {
                            overlaySettings.o = redirectionListenerImpl.d;
                        }
                        intent.putExtra("settings", overlaySettings);
                    }
                    scheme = intent.getStringExtra("class");
                    if (scheme == null || !scheme.equals(AdViewOverlayActivity.class.getCanonicalName())) {
                        try {
                            if (redirectionListenerImpl.isActivityStartable(redirectionListenerImpl.c)) {
                                IntentUtils.c(context, intent);
                                redirectionListenerImpl.startingActivity(redirectionListenerImpl.c);
                            }
                        } catch (ActivityNotFoundException e) {
                            Throwable th = e;
                            MMLog.e(e, String.format("No activity found for %s", new Object[]{redirectionListenerImpl.c}), th);
                        }
                    }
                }
            }
        }

        public void run() {
            RedirectionListenerImpl redirectionListenerImpl = (RedirectionListenerImpl) this.a.get();
            if (redirectionListenerImpl != null) {
                String a = HttpRedirection.a(redirectionListenerImpl.a);
                if (a != null) {
                    redirectionListenerImpl.c = Uri.parse(a);
                    if (redirectionListenerImpl.c != null) {
                        a(redirectionListenerImpl);
                    } else {
                        MMLog.e(e, String.format("Could not start activity for %s", new Object[]{a}));
                    }
                }
            }
        }
    }

    HttpRedirection() {
    }

    static final String a(String str) {
        if (str == null) {
            return null;
        }
        HttpURLConnection.setFollowRedirects(false);
        String str2 = str;
        while (!str2.startsWith(a)) {
            try {
                URL url = new URL(str2);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
                httpURLConnection.setRequestMethod(b);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                String headerField = httpURLConnection.getHeaderField(c);
                if (responseCode < 300 || responseCode >= 400 || TextUtils.isEmpty(headerField)) {
                    break;
                }
                URI uri = new URI(headerField);
                if (!uri.isAbsolute()) {
                    str2 = url.toURI().resolve(uri).toString();
                } else if (headerField != null) {
                    str2 = headerField;
                }
                MMLog.a(e, String.format(d, new Object[]{str2}));
            } catch (MalformedURLException e) {
                headerField = str2;
                MMLog.e(e, "Bad url scheme", e);
                return headerField;
            } catch (SocketTimeoutException e2) {
                headerField = str2;
                MMLog.e(e, "Connection timeout.", e2);
                return headerField;
            } catch (IOException e3) {
                headerField = str2;
                MMLog.e(e, "IOException following redirects: ", e3);
                return headerField;
            } catch (URISyntaxException e4) {
                headerField = str2;
                MMLog.e(e, "URI Syntax incorrect.", e4);
                return headerField;
            }
        }
        return str2;
    }

    static void a(RedirectionListenerImpl redirectionListenerImpl) {
        if (redirectionListenerImpl != null && redirectionListenerImpl.a != null && redirectionListenerImpl.b != null) {
            ThreadUtils.a(new AnonymousClass_1(new WeakReference(redirectionListenerImpl)));
        }
    }
}