package com.google.ads.interactivemedia.v3.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode;
import com.google.ads.interactivemedia.v3.api.AdError.AdErrorType;
import com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.b.a.e;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedSet;

public final class s implements com.google.ads.interactivemedia.v3.b.t.a {
    private Map a;
    private Map b;
    private Map c;
    private Map d;
    private Map e;
    private final Context f;
    private final t g;
    private u h;
    private boolean i;
    private Queue j;
    private long k;

    public static interface c {
        void a(com.google.ads.interactivemedia.v3.b.r.c cVar, String str);
    }

    public static interface a {
        void a_(String str, AdErrorType adErrorType, int i, String str2);

        void a_(String str, AdErrorType adErrorType, AdErrorCode adErrorCode, String str2);

        void a_(String str, u uVar, List list, SortedSet sortedSet);
    }

    public static interface b {
        void a(AdErrorType adErrorType, int i, String str);

        void a(AdErrorType adErrorType, AdErrorCode adErrorCode, String str);

        void a(AdEventType adEventType, com.google.ads.interactivemedia.v3.b.a.a aVar);
    }

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;
        static final /* synthetic */ int[] c;

        static {
            c = new int[com.google.ads.interactivemedia.v3.b.a.c.a.values().length];
            try {
                c[com.google.ads.interactivemedia.v3.b.a.c.a.Html.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                c[com.google.ads.interactivemedia.v3.b.a.c.a.IFrame.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                c[com.google.ads.interactivemedia.v3.b.a.c.a.Static.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            b = new int[com.google.ads.interactivemedia.v3.b.r.c.values().length];
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.initialized.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.log.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.displayCompanions.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.showVideo.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.hide.ordinal()] = 5;
            } catch (NoSuchFieldError e8) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.adsLoaded.ordinal()] = 6;
            } catch (NoSuchFieldError e9) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.error.ordinal()] = 7;
            } catch (NoSuchFieldError e10) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.play.ordinal()] = 8;
            } catch (NoSuchFieldError e11) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.pause.ordinal()] = 9;
            } catch (NoSuchFieldError e12) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.load.ordinal()] = 10;
            } catch (NoSuchFieldError e13) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.startTracking.ordinal()] = 11;
            } catch (NoSuchFieldError e14) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.stopTracking.ordinal()] = 12;
            } catch (NoSuchFieldError e15) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.adMetadata.ordinal()] = 13;
            } catch (NoSuchFieldError e16) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.loaded.ordinal()] = 14;
            } catch (NoSuchFieldError e17) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.contentPauseRequested.ordinal()] = 15;
            } catch (NoSuchFieldError e18) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.contentResumeRequested.ordinal()] = 16;
            } catch (NoSuchFieldError e19) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.complete.ordinal()] = 17;
            } catch (NoSuchFieldError e20) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.allAdsCompleted.ordinal()] = 18;
            } catch (NoSuchFieldError e21) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.skip.ordinal()] = 19;
            } catch (NoSuchFieldError e22) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.start.ordinal()] = 20;
            } catch (NoSuchFieldError e23) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.resume.ordinal()] = 21;
            } catch (NoSuchFieldError e24) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.firstquartile.ordinal()] = 22;
            } catch (NoSuchFieldError e25) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.midpoint.ordinal()] = 23;
            } catch (NoSuchFieldError e26) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.thirdquartile.ordinal()] = 24;
            } catch (NoSuchFieldError e27) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.c.click.ordinal()] = 25;
            } catch (NoSuchFieldError e28) {
            }
            a = new int[com.google.ads.interactivemedia.v3.b.r.b.values().length];
            try {
                a[com.google.ads.interactivemedia.v3.b.r.b.adsManager.ordinal()] = 1;
            } catch (NoSuchFieldError e29) {
            }
            try {
                a[com.google.ads.interactivemedia.v3.b.r.b.videoDisplay.ordinal()] = 2;
            } catch (NoSuchFieldError e30) {
            }
            try {
                a[com.google.ads.interactivemedia.v3.b.r.b.adsLoader.ordinal()] = 3;
            } catch (NoSuchFieldError e31) {
            }
            try {
                a[com.google.ads.interactivemedia.v3.b.r.b.displayContainer.ordinal()] = 4;
            } catch (NoSuchFieldError e32) {
            }
            try {
                a[com.google.ads.interactivemedia.v3.b.r.b.i18n.ordinal()] = 5;
            } catch (NoSuchFieldError e33) {
            }
            try {
                a[com.google.ads.interactivemedia.v3.b.r.b.webViewLoaded.ordinal()] = 6;
            } catch (NoSuchFieldError e34) {
            }
            a[com.google.ads.interactivemedia.v3.b.r.b.log.ordinal()] = 7;
        }
    }

    public s(Context context, Uri uri, ImaSdkSettings imaSdkSettings) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
        this.i = false;
        this.j = new LinkedList();
        this.k = SystemClock.elapsedRealtime();
        this.f = context;
        this.g = new t(context, this);
        this.g.a(uri.buildUpon().appendQueryParameter("sdk_version", "a.3.0b5").appendQueryParameter("hl", imaSdkSettings.getLanguage()).build().toString());
    }

    private static String a(String str, String str2) {
        return (str2 == null || str2.length() == 0) ? str : str + " Caused by: " + str2;
    }

    private static Map a(a aVar, Set set) {
        Map hashMap = new HashMap(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            CompanionAdSlot companionAdSlot = (CompanionAdSlot) aVar.a().get(str);
            if (companionAdSlot.getContainer() == null) {
                return null;
            }
            hashMap.put(str, companionAdSlot.getContainer());
        }
        return hashMap;
    }

    private void a(com.google.ads.interactivemedia.v3.b.r.c cVar, String str, e eVar) {
        a aVar = (a) this.e.get(str);
        b bVar = (b) this.a.get(str);
        if (aVar == null || bVar == null) {
            Log.e("IMASDK", new StringBuilder("Received displayContainer message: ").append(cVar).append(" for invalid session id: ").append(str).toString());
        } else {
            switch (AnonymousClass_1.b[cVar.ordinal()]) {
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    if (eVar == null || eVar.companions == null) {
                        bVar.a(AdErrorType.LOAD, AdErrorCode.INTERNAL_ERROR, "Display companions message requires companions in data.");
                    } else {
                        Map a = a(aVar, eVar.companions.keySet());
                        if (a == null) {
                            bVar.a(AdErrorType.LOAD, AdErrorCode.INTERNAL_ERROR, "Display requested for invalid companion slot.");
                        } else {
                            Iterator it = a.keySet().iterator();
                            while (it.hasNext()) {
                                View view;
                                String str2 = (String) it.next();
                                ViewGroup viewGroup = (ViewGroup) a.get(str2);
                                com.google.ads.interactivemedia.v3.b.a.c cVar2 = (com.google.ads.interactivemedia.v3.b.a.c) eVar.companions.get(str2);
                                viewGroup.removeAllViews();
                                switch (AnonymousClass_1.c[cVar2.type.ordinal()]) {
                                    case GoogleScorer.CLIENT_GAMES:
                                    case GoogleScorer.CLIENT_PLUS:
                                        view = new l(viewGroup.getContext(), this, cVar2);
                                        break;
                                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                        view = new q(viewGroup.getContext(), this, cVar2, str);
                                        break;
                                    default:
                                        view = null;
                                        break;
                                }
                                viewGroup.addView(view);
                            }
                        }
                    }
                case GoogleScorer.CLIENT_APPSTATE:
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder("Illegal message type ").append(cVar).append(" received for displayContainer channel").toString());
            }
        }
    }

    private void b() {
        while (this.i && !this.j.isEmpty()) {
            this.g.a((r) this.j.remove());
        }
    }

    public final WebView a() {
        return this.g.a();
    }

    public final void a(AdDisplayContainer adDisplayContainer, String str) {
        this.e.put(str, adDisplayContainer);
    }

    public final void a(VideoAdPlayer videoAdPlayer, String str) {
        this.d.put(str, videoAdPlayer);
    }

    public final void a(r rVar) {
        e eVar = (e) rVar.c();
        String d = rVar.d();
        com.google.ads.interactivemedia.v3.b.r.c b = rVar.b();
        switch (AnonymousClass_1.a[rVar.a().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                b bVar = (b) this.a.get(d);
                if (bVar == null) {
                    Log.e("IMASDK", new StringBuilder("Received manager message: ").append(b).append(" for invalid session id: ").append(d).toString());
                } else {
                    com.google.ads.interactivemedia.v3.b.a.a aVar;
                    aVar = (eVar == null || eVar.adData == null) ? null : eVar.adData;
                    switch (AnonymousClass_1.b[b.ordinal()]) {
                        case GoogleScorer.CLIENT_ALL:
                            bVar.a(AdErrorType.PLAY, eVar.errorCode, a(eVar.errorMessage, eVar.innerError));
                        case ZBuildConfig.$minsdk:
                            bVar.a(AdEventType.PAUSED, aVar);
                        case R.styleable.MapAttrs_zOrderOnTop:
                            break;
                        case MMException.REQUEST_NOT_FILLED:
                            if (aVar != null) {
                                bVar.a(AdEventType.LOADED, aVar);
                            } else {
                                Log.e("IMASDK", "Ad loaded message requires adData");
                                bVar.a(AdErrorType.LOAD, AdErrorCode.INTERNAL_ERROR, "Ad loaded message did not contain adData.");
                            }
                        case MMException.REQUEST_BAD_RESPONSE:
                            bVar.a(AdEventType.CONTENT_PAUSE_REQUESTED, null);
                        case MMException.REQUEST_NOT_PERMITTED:
                            bVar.a(AdEventType.CONTENT_RESUME_REQUESTED, null);
                        case ZBuildConfig.$targetsdk:
                            bVar.a(AdEventType.COMPLETED, aVar);
                        case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                            bVar.a(AdEventType.ALL_ADS_COMPLETED, null);
                        case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                            bVar.a(AdEventType.SKIPPED, aVar);
                        case MMException.DISPLAY_AD_NOT_READY:
                            bVar.a(AdEventType.STARTED, aVar);
                        case MMException.DISPLAY_AD_EXPIRED:
                            bVar.a(AdEventType.RESUMED, aVar);
                        case MMException.DISPLAY_AD_NOT_FOUND:
                            bVar.a(AdEventType.FIRST_QUARTILE, aVar);
                        case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                            bVar.a(AdEventType.MIDPOINT, aVar);
                        case MMException.DISPLAY_AD_NOT_PERMITTED:
                            bVar.a(AdEventType.THIRD_QUARTILE, aVar);
                        case MMException.AD_BROKEN_REFERENCE:
                            bVar.a(AdEventType.CLICKED, aVar);
                        default:
                            throw new IllegalArgumentException(new StringBuilder("Illegal message type ").append(b).append(" received for manager channel").toString());
                    }
                }
            case GoogleScorer.CLIENT_PLUS:
                VideoAdPlayer videoAdPlayer = (VideoAdPlayer) this.d.get(d);
                if (videoAdPlayer == null) {
                    Log.e("IMASDK", new StringBuilder("Received player message: ").append(b).append(" for invalid session id: ").append(d).toString());
                } else {
                    switch (AnonymousClass_1.b[b.ordinal()]) {
                        case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                            if (!(eVar == null || eVar.videoUrl == null)) {
                                videoAdPlayer.loadAd(eVar.videoUrl);
                            }
                            videoAdPlayer.playAd();
                        case ZBuildConfig.$minsdk:
                            videoAdPlayer.pauseAd();
                        case R.styleable.MapAttrs_uiZoomControls:
                            if (eVar == null || eVar.videoUrl == null) {
                                Log.e("IMASDK", "Load message must contain video url");
                                b bVar2 = (b) this.a.get(d);
                                if (bVar2 != null) {
                                    bVar2.a(AdErrorType.LOAD, AdErrorCode.INTERNAL_ERROR, "Loading message did not contain a video url.");
                                }
                            } else {
                                videoAdPlayer.loadAd(eVar.videoUrl);
                            }
                        case R.styleable.MapAttrs_uiZoomGestures:
                        case R.styleable.MapAttrs_useViewLifecycle:
                            break;
                        default:
                            throw new IllegalArgumentException(new StringBuilder("Illegal message type ").append(b).append(" received for player channel").toString());
                    }
                }
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                a aVar2 = (a) this.b.get(d);
                if (aVar2 == null) {
                    Log.e("IMASDK", new StringBuilder("Received request message: ").append(b).append(" for invalid session id: ").append(d).toString());
                } else {
                    switch (AnonymousClass_1.b[b.ordinal()]) {
                        case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                            if (eVar == null) {
                                aVar2.a(d, AdErrorType.LOAD, AdErrorCode.INTERNAL_ERROR, "adsLoaded message did not contain cue points.");
                            } else {
                                aVar2.a(d, this.h, eVar.adCuePoints, eVar.internalCuePoints);
                            }
                        case GoogleScorer.CLIENT_ALL:
                            aVar2.a(d, AdErrorType.LOAD, eVar.errorCode, a(eVar.errorMessage, eVar.innerError));
                        default:
                            throw new IllegalArgumentException(new StringBuilder("Illegal message type ").append(b).append(" received for request channel").toString());
                    }
                }
            case GoogleScorer.CLIENT_APPSTATE:
                a(b, d, eVar);
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                c cVar = (c) this.c.get(d);
                if (cVar != null) {
                    cVar.a(b, eVar.translation);
                }
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
            case GoogleScorer.CLIENT_ALL:
                switch (AnonymousClass_1.b[b.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        com.google.ads.interactivemedia.v3.b.r.a aVar3 = com.google.ads.interactivemedia.v3.b.r.a.b;
                        try {
                            if (eVar.adUiStyle != null) {
                                aVar3 = com.google.ads.interactivemedia.v3.b.r.a.valueOf(eVar.adUiStyle);
                            }
                        } catch (IllegalArgumentException e) {
                        }
                        this.h = new u(eVar.adTimeUpdateMs, aVar3);
                        this.i = true;
                        long elapsedRealtime = SystemClock.elapsedRealtime() - this.k;
                        Map hashMap = new HashMap();
                        hashMap.put("webViewLoadingTime", Long.valueOf(elapsedRealtime));
                        b(new r(com.google.ads.interactivemedia.v3.b.r.b.webViewLoaded, com.google.ads.interactivemedia.v3.b.r.c.csi, d, hashMap));
                        b();
                    case GoogleScorer.CLIENT_PLUS:
                        if (eVar.ln == null || eVar.n == null || eVar.m == null) {
                            Log.e("IMASDK", new StringBuilder("Invalid logging message data: ").append(eVar).toString());
                        } else {
                            String toString = new StringBuilder("SDK_LOG:").append(eVar.n).toString();
                            switch (eVar.ln.charAt(0)) {
                                case 'D':
                                    Log.d(toString, eVar.m);
                                case 'E':
                                case 'S':
                                    Log.e(toString, eVar.m);
                                case 'I':
                                    Log.i(toString, eVar.m);
                                case 'V':
                                    Log.v(toString, eVar.m);
                                case 'W':
                                    Log.w(toString, eVar.m);
                                default:
                                    Log.w("IMASDK", new StringBuilder("Unrecognized log level: ").append(eVar.ln).toString());
                                    Log.w(toString, eVar.m);
                            }
                        }
                    default:
                        throw new IllegalArgumentException(new StringBuilder("Illegal message type ").append(b).append(" received for other channel").toString());
                }
            default:
                Log.e("IMASDK", new StringBuilder("Unknown message channel: ").append(rVar.a()).toString());
        }
    }

    public final void a(a aVar, String str) {
        this.b.put(str, aVar);
    }

    public final void a(b bVar, String str) {
        this.a.put(str, bVar);
    }

    public final void a(c cVar, String str) {
        this.c.put(str, cVar);
    }

    public final void a(String str) {
        this.c.remove(str);
    }

    public final void b(r rVar) {
        this.j.add(rVar);
        b();
    }

    public final void b(String str) {
        this.f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }
}