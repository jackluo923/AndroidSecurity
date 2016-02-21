package com.google.ads.interactivemedia.v3.b;

import android.net.Uri;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.EventType;
import com.brightcove.player.util.ErrorUtil;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.g;
import com.google.ads.interactivemedia.v3.a.l;
import com.google.ads.interactivemedia.v3.a.q;
import com.google.ads.interactivemedia.v3.a.s;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.b.a.e;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.re.controller.JSController;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;

public final class r {
    private static final f a;
    private final b b;
    private final Object c;
    private final String d;
    private final c e;

    public enum a {
        webView,
        nativeUi,
        none;

        static {
            a = new com.google.ads.interactivemedia.v3.b.r.a("webView", 0);
            b = new com.google.ads.interactivemedia.v3.b.r.a("nativeUi", 1);
            c = new com.google.ads.interactivemedia.v3.b.r.a("none", 2);
            d = new com.google.ads.interactivemedia.v3.b.r.a[]{a, b, c};
        }
    }

    public enum b {
        adsManager,
        adsLoader,
        contentTimeUpdate,
        displayContainer,
        i18n,
        log,
        videoDisplay,
        webViewLoaded;

        static {
            adsManager = new com.google.ads.interactivemedia.v3.b.r.b("adsManager", 0);
            adsLoader = new com.google.ads.interactivemedia.v3.b.r.b("adsLoader", 1);
            contentTimeUpdate = new com.google.ads.interactivemedia.v3.b.r.b("contentTimeUpdate", 2);
            displayContainer = new com.google.ads.interactivemedia.v3.b.r.b("displayContainer", 3);
            i18n = new com.google.ads.interactivemedia.v3.b.r.b("i18n", 4);
            log = new com.google.ads.interactivemedia.v3.b.r.b("log", 5);
            videoDisplay = new com.google.ads.interactivemedia.v3.b.r.b("videoDisplay", 6);
            webViewLoaded = new com.google.ads.interactivemedia.v3.b.r.b("webViewLoaded", 7);
            a = new com.google.ads.interactivemedia.v3.b.r.b[]{adsManager, adsLoader, contentTimeUpdate, displayContainer, i18n, log, videoDisplay, webViewLoaded};
        }
    }

    public enum c {
        adMetadata,
        adsLoaded,
        allAdsCompleted,
        click,
        complete,
        companionView,
        contentComplete,
        contentPauseRequested,
        contentResumeRequested,
        contentTimeUpdate,
        csi,
        displayCompanions,
        destroy,
        end,
        error,
        firstquartile,
        fullscreen,
        hide,
        init,
        initialized,
        load,
        loaded,
        log,
        midpoint,
        mute,
        pause,
        play,
        resume,
        requestAds,
        showVideo,
        skip,
        start,
        startTracking,
        stop,
        stopTracking,
        thirdquartile,
        timeupdate,
        unmute,
        adRemainingTime,
        learnMore,
        preSkipButton,
        skipButton;

        static {
            adMetadata = new com.google.ads.interactivemedia.v3.b.r.c("adMetadata", 0);
            adsLoaded = new com.google.ads.interactivemedia.v3.b.r.c("adsLoaded", 1);
            allAdsCompleted = new com.google.ads.interactivemedia.v3.b.r.c("allAdsCompleted", 2);
            click = new com.google.ads.interactivemedia.v3.b.r.c("click", 3);
            complete = new com.google.ads.interactivemedia.v3.b.r.c(Constants.NATIVE_AD_COMPLETE_ELEMENT, 4);
            companionView = new com.google.ads.interactivemedia.v3.b.r.c("companionView", 5);
            contentComplete = new com.google.ads.interactivemedia.v3.b.r.c("contentComplete", 6);
            contentPauseRequested = new com.google.ads.interactivemedia.v3.b.r.c("contentPauseRequested", 7);
            contentResumeRequested = new com.google.ads.interactivemedia.v3.b.r.c("contentResumeRequested", 8);
            contentTimeUpdate = new com.google.ads.interactivemedia.v3.b.r.c("contentTimeUpdate", 9);
            csi = new com.google.ads.interactivemedia.v3.b.r.c("csi", 10);
            displayCompanions = new com.google.ads.interactivemedia.v3.b.r.c("displayCompanions", 11);
            destroy = new com.google.ads.interactivemedia.v3.b.r.c("destroy", 12);
            end = new com.google.ads.interactivemedia.v3.b.r.c("end", 13);
            error = new com.google.ads.interactivemedia.v3.b.r.c(ErrorUtil.ERROR, 14);
            firstquartile = new com.google.ads.interactivemedia.v3.b.r.c("firstquartile", 15);
            fullscreen = new com.google.ads.interactivemedia.v3.b.r.c(JSController.FULL_SCREEN, 16);
            hide = new com.google.ads.interactivemedia.v3.b.r.c("hide", 17);
            init = new com.google.ads.interactivemedia.v3.b.r.c("init", 18);
            initialized = new com.google.ads.interactivemedia.v3.b.r.c("initialized", 19);
            load = new com.google.ads.interactivemedia.v3.b.r.c("load", 20);
            loaded = new com.google.ads.interactivemedia.v3.b.r.c("loaded", 21);
            log = new com.google.ads.interactivemedia.v3.b.r.c("log", 22);
            midpoint = new com.google.ads.interactivemedia.v3.b.r.c("midpoint", 23);
            mute = new com.google.ads.interactivemedia.v3.b.r.c("mute", 24);
            pause = new com.google.ads.interactivemedia.v3.b.r.c(EventType.PAUSE, 25);
            play = new com.google.ads.interactivemedia.v3.b.r.c(EventType.PLAY, 26);
            resume = new com.google.ads.interactivemedia.v3.b.r.c("resume", 27);
            requestAds = new com.google.ads.interactivemedia.v3.b.r.c("requestAds", 28);
            showVideo = new com.google.ads.interactivemedia.v3.b.r.c("showVideo", 29);
            skip = new com.google.ads.interactivemedia.v3.b.r.c("skip", 30);
            start = new com.google.ads.interactivemedia.v3.b.r.c("start", 31);
            startTracking = new com.google.ads.interactivemedia.v3.b.r.c("startTracking", 32);
            stop = new com.google.ads.interactivemedia.v3.b.r.c(EventType.STOP, 33);
            stopTracking = new com.google.ads.interactivemedia.v3.b.r.c("stopTracking", 34);
            thirdquartile = new com.google.ads.interactivemedia.v3.b.r.c("thirdquartile", 35);
            timeupdate = new com.google.ads.interactivemedia.v3.b.r.c("timeupdate", 36);
            unmute = new com.google.ads.interactivemedia.v3.b.r.c("unmute", 37);
            adRemainingTime = new com.google.ads.interactivemedia.v3.b.r.c("adRemainingTime", 38);
            learnMore = new com.google.ads.interactivemedia.v3.b.r.c("learnMore", 39);
            preSkipButton = new com.google.ads.interactivemedia.v3.b.r.c("preSkipButton", 40);
            skipButton = new com.google.ads.interactivemedia.v3.b.r.c("skipButton", 41);
            a = new com.google.ads.interactivemedia.v3.b.r.c[]{adMetadata, adsLoaded, allAdsCompleted, click, complete, companionView, contentComplete, contentPauseRequested, contentResumeRequested, contentTimeUpdate, csi, displayCompanions, destroy, end, error, firstquartile, fullscreen, hide, init, initialized, load, loaded, log, midpoint, mute, pause, play, resume, requestAds, showVideo, skip, start, startTracking, stop, stopTracking, thirdquartile, timeupdate, unmute, adRemainingTime, learnMore, preSkipButton, skipButton};
        }
    }

    static {
        a = new g().a(CompanionAdSlot.class, new s() {
            public final /* synthetic */ l a(Object obj) {
                CompanionAdSlot companionAdSlot = (CompanionAdSlot) obj;
                return new q(companionAdSlot.getWidth() + "x" + companionAdSlot.getHeight());
            }
        }).a();
    }

    public r(b bVar, c cVar, String str) {
        this(bVar, cVar, str, null);
    }

    public r(b bVar, c cVar, String str, Object obj) {
        this.b = bVar;
        this.e = cVar;
        this.d = str;
        this.c = obj;
    }

    public static r a(String str) {
        Uri parse = Uri.parse(str);
        String substring = parse.getPath().substring(1);
        if (parse.getQueryParameter(AnalyticsSQLiteHelper.EVENT_LIST_SID) != null) {
            return new r(b.valueOf(substring), c.valueOf(parse.getQueryParameter(AnalyticsSQLiteHelper.EVENT_LIST_TYPE)), parse.getQueryParameter(AnalyticsSQLiteHelper.EVENT_LIST_SID), a.a(parse.getQueryParameter(i.a), e.class));
        }
        throw new MalformedURLException("Session id must be provided in message.");
    }

    public final b a() {
        return this.b;
    }

    public final c b() {
        return this.e;
    }

    public final Object c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        Map hashMap = new HashMap(3);
        hashMap.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, this.e);
        hashMap.put(AnalyticsSQLiteHelper.EVENT_LIST_SID, this.d);
        hashMap.put(i.a, this.c);
        String str = "%s('%s', %s);";
        Object[] objArr = new Object[3];
        objArr[0] = "javascript:adsense.mobileads.afmanotify.receiveMessage";
        objArr[1] = this.b;
        f fVar = a;
        Type type = hashMap.getClass();
        Object stringWriter = new StringWriter();
        fVar.a(hashMap, type, stringWriter);
        objArr[2] = stringWriter.toString();
        return String.format(str, objArr);
    }

    public final String toString() {
        return String.format("JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s]", new Object[]{this.b, this.e, this.d, this.c});
    }
}