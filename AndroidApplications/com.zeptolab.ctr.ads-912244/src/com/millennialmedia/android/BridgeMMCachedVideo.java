package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.plus.PlusShare;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.JSONArray;

class BridgeMMCachedVideo extends MMJSObject implements AdCacheTaskListener {
    private static final String a = "availableCachedVideos";
    private static final String d = "cacheVideo";
    private static final String e = "endVideo";
    private static final String f = "pauseVideo";
    private static final String g = "playCachedVideo";
    private static final String h = "playVideo";
    private static final String i = "restartVideo";
    private static final String j = "videoIdExists";
    private static final String k = "BridgeMMCachedVideo";
    private boolean l;

    class AnonymousClass_1 extends Iterator {
        final /* synthetic */ Context a;
        final /* synthetic */ JSONArray b;

        AnonymousClass_1(Context context, JSONArray jSONArray) {
            this.a = context;
            this.b = jSONArray;
        }

        boolean a(CachedAd cachedAd) {
            if (cachedAd instanceof VideoAd && cachedAd.d(this.a) && !cachedAd.a()) {
                this.b.put(cachedAd.e());
            }
            return true;
        }
    }

    class AnonymousClass_2 implements Callable {
        final /* synthetic */ VideoPlayerActivity a;

        AnonymousClass_2(VideoPlayerActivity videoPlayerActivity) {
            this.a = videoPlayerActivity;
        }

        public MMJSResponse call() {
            this.a.g();
            return MMJSResponse.a();
        }
    }

    class AnonymousClass_3 implements Callable {
        final /* synthetic */ VideoPlayerActivity a;

        AnonymousClass_3(VideoPlayerActivity videoPlayerActivity) {
            this.a = videoPlayerActivity;
        }

        public MMJSResponse call() {
            this.a.l();
            return MMJSResponse.a();
        }
    }

    class AnonymousClass_4 implements Callable {
        final /* synthetic */ VideoPlayerActivity a;

        AnonymousClass_4(VideoPlayerActivity videoPlayerActivity) {
            this.a = videoPlayerActivity;
        }

        public MMJSResponse call() {
            this.a.n();
            return MMJSResponse.a();
        }
    }

    class AnonymousClass_5 implements Callable {
        final /* synthetic */ VideoPlayerActivity a;

        AnonymousClass_5(VideoPlayerActivity videoPlayerActivity) {
            this.a = videoPlayerActivity;
        }

        public MMJSResponse call() {
            this.a.h();
            return MMJSResponse.a();
        }
    }

    BridgeMMCachedVideo() {
    }

    private VideoPlayerActivity a() {
        if (!(this.c == null || this.c.get() == null || !(((MMWebView) this.c.get()).j() instanceof MMActivity))) {
            MMWebView mMWebView = (MMWebView) this.c.get();
            if (mMWebView != null) {
                Activity j = mMWebView.j();
                if (j != null && j instanceof MMActivity) {
                    MMActivity mMActivity = (MMActivity) j;
                    if (mMActivity.h() != null && mMActivity.h() instanceof VideoPlayerActivity) {
                        return (VideoPlayerActivity) mMActivity.h();
                    }
                }
            }
        }
        return null;
    }

    MMJSResponse a(String str, Map map) {
        if (a.equals(str)) {
            return availableCachedVideos(map);
        }
        if (d.equals(str)) {
            return cacheVideo(map);
        }
        if (e.equals(str)) {
            return endVideo(map);
        }
        if (f.equals(str)) {
            return pauseVideo(map);
        }
        if (g.equals(str)) {
            return playCachedVideo(map);
        }
        if (h.equals(str)) {
            return playVideo(map);
        }
        if (i.equals(str)) {
            return restartVideo(map);
        }
        return j.equals(str) ? videoIdExists(map) : null;
    }

    public MMJSResponse availableCachedVideos(Map map) {
        Context context = (Context) this.b.get();
        if (context == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        AdCache.a(context, (int)GoogleScorer.CLIENT_PLUS, new AnonymousClass_1(context, jSONArray));
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 1;
        mMJSResponse.d = jSONArray;
        return mMJSResponse;
    }

    public synchronized MMJSResponse cacheVideo(Map map) {
        MMJSResponse mMJSResponse;
        try {
            Context context = (Context) this.b.get();
            String str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
            if (!(str == null || context == null)) {
                try {
                    HttpResponse a = new HttpGetRequest().a(str);
                    if (a == null) {
                        MMLog.c(k, "HTTP response is null");
                        mMJSResponse = null;
                    } else {
                        HttpEntity entity = a.getEntity();
                        if (entity == null) {
                            MMLog.b(k, "Null HTTP entity");
                            mMJSResponse = null;
                        } else if (entity.getContentLength() == 0) {
                            MMLog.b(k, "Millennial ad return failed. Zero content length returned.");
                            mMJSResponse = null;
                        } else {
                            Header contentType = entity.getContentType();
                            if (!(contentType == null || contentType.getValue() == null || !contentType.getValue().equalsIgnoreCase(WebRequest.CONTENT_TYPE_JSON))) {
                                try {
                                    CachedAd videoAd = new VideoAd(HttpGetRequest.a(entity.getContent()));
                                    if (videoAd != null) {
                                        if (videoAd.b()) {
                                            videoAd.i = 3;
                                            if (AdCache.a(context, null, videoAd, this)) {
                                                try {
                                                    wait();
                                                    if (this.l) {
                                                        mMJSResponse = MMJSResponse.a(String.format("Cached video(%s)", new Object[]{str}));
                                                        notify();
                                                    } else {
                                                        notify();
                                                    }
                                                } catch (InterruptedException e) {
                                                    MMLog.e(k, "Caching interrupted: ", e);
                                                    notify();
                                                }
                                            } else {
                                                mMJSResponse = MMJSResponse.b(String.format("Unable to start download for Cached video(%s)", new Object[]{str}));
                                            }
                                        }
                                    }
                                } catch (IllegalStateException e2) {
                                    MMLog.e(k, "Millennial ad return failed. Invalid response data.", e2);
                                    mMJSResponse = null;
                                } catch (IOException e3) {
                                    MMLog.e(k, "Millennial ad return failed. Invalid response data.", e3);
                                    mMJSResponse = null;
                                }
                            }
                        }
                    }
                } catch (Exception e4) {
                    MMLog.e(k, "HTTP error: ", e4);
                    mMJSResponse = null;
                }
            }
            mMJSResponse = null;
        } catch (Throwable th) {
        }
        return mMJSResponse;
    }

    public void downloadCompleted(CachedAd cachedAd, boolean z) {
        synchronized (this) {
            Context context = (Context) this.b.get();
            if (z && context != null) {
                AdCache.a(context, cachedAd);
            }
            this.l = z;
            notify();
        }
    }

    public void downloadStart(CachedAd cachedAd) {
    }

    public MMJSResponse endVideo(Map map) {
        VideoPlayerActivity a = a();
        return a != null ? a(new AnonymousClass_3(a)) : null;
    }

    public MMJSResponse pauseVideo(Map map) {
        VideoPlayerActivity a = a();
        return a != null ? a(new AnonymousClass_4(a)) : null;
    }

    public MMJSResponse playCachedVideo(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("videoId");
        if (!(str == null || context == null)) {
            VideoAd videoAd = (VideoAd) AdCache.i(context, str);
            if (videoAd != null && videoAd.a(context, null, false)) {
                videoAd.a(context, b((String) map.get("PROPERTY_EXPANDING")));
                return MMJSResponse.a(String.format("Playing Video(%s)", new Object[]{str}));
            }
        }
        return null;
    }

    public MMJSResponse playVideo(Map map) {
        VideoPlayerActivity a = a();
        return a != null ? a(new AnonymousClass_2(a)) : null;
    }

    public MMJSResponse restartVideo(Map map) {
        VideoPlayerActivity a = a();
        return a != null ? a(new AnonymousClass_5(a)) : null;
    }

    @Deprecated
    public MMJSResponse videoIdExists(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("videoId");
        if (!(str == null || context == null)) {
            VideoAd videoAd = (VideoAd) AdCache.i(context, str);
            if (!(videoAd == null || !videoAd.d(context) || videoAd.a())) {
                return MMJSResponse.a(str);
            }
        }
        return null;
    }
}