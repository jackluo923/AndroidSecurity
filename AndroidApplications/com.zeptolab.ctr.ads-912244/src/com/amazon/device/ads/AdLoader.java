package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import com.admarvel.android.ads.Constants;
import com.amazon.device.ads.AdError.ErrorCode;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.amazon.device.ads.WebRequest.WebRequestStatus;
import com.amazon.device.ads.WebRequest.WebResponse;
import com.brightcove.player.event.Event;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.internal.NativeAdResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

@SuppressLint({"UseSparseArrays"})
class AdLoader {
    public static final int AD_FAILED = -1;
    public static final int AD_NOT_READY = 1;
    public static final int AD_QUEUED = 0;
    protected static final String a;
    private static AdLoaderFactory g;
    protected final AdRequest b;
    protected final Map c;
    protected int d;
    protected AdError e;
    protected CompositeMetricsCollector f;

    final class AnonymousClass_3 extends StartUpWaiter {
        final /* synthetic */ int a;
        final /* synthetic */ AdTargetingOptions b;
        final /* synthetic */ AdSlot[] c;

        AnonymousClass_3(int i, AdTargetingOptions adTargetingOptions, AdSlot[] adSlotArr) {
            this.a = i;
            this.b = adTargetingOptions;
            this.c = adSlotArr;
        }

        protected void a() {
            InternalAdRegistration.getInstance().register();
            AdLoader.c(this.a, this.b, this.c);
        }

        protected void b() {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    AdLoader.b(new AdError(ErrorCode.NETWORK_ERROR, "The configuration was unable to be loaded"), AnonymousClass_3.this.c);
                }
            });
        }
    }

    protected class AdFetchException extends Exception {
        private static final long b = 1;
        private final AdError c;

        public AdFetchException(AdError adError) {
            this.c = adError;
        }

        public AdFetchException(AdError adError, Throwable th) {
            super(th);
            this.c = adError;
        }

        public AdError getAdError() {
            return this.c;
        }
    }

    protected static class AdLoaderFactory {
        protected AdLoaderFactory() {
        }

        public AdLoader createAdLoader(AdRequest adRequest, Map map) {
            return new AdLoader(adRequest, map);
        }
    }

    protected static class AdReadyToLoadListener {
        private final AtomicInteger a;
        private final AdTargetingOptions b;
        private final AdSlot[] c;
        private final int d;

        public AdReadyToLoadListener(int i, AtomicInteger atomicInteger, AdTargetingOptions adTargetingOptions, AdSlot... adSlotArr) {
            this.a = atomicInteger;
            this.b = adTargetingOptions;
            this.c = adSlotArr;
            this.d = i;
        }

        public void onAdReady(Ad ad) {
            AdLoader.a(this.d, this.a, this.b, this.c);
        }
    }

    static {
        a = AdLoader.class.getSimpleName();
        g = new AdLoaderFactory();
    }

    public AdLoader(AdRequest adRequest, Map map) {
        this.d = 20000;
        this.e = null;
        this.f = null;
        this.b = adRequest;
        this.c = map;
    }

    protected static void a(int i, AtomicInteger atomicInteger, AdTargetingOptions adTargetingOptions, AdSlot[] adSlotArr) {
        if (atomicInteger.decrementAndGet() == 0) {
            new AnonymousClass_3(i, adTargetingOptions, adSlotArr).start();
        }
    }

    protected static void a(int i, AtomicInteger atomicInteger, AdTargetingOptions adTargetingOptions, AdSlot[] adSlotArr, int i2) {
        adSlotArr[i2].a((int)AD_FAILED);
        a(i, atomicInteger, adTargetingOptions, adSlotArr);
    }

    private void a(AdError adError) {
        Iterator it = this.c.values().iterator();
        while (it.hasNext()) {
            ((AdSlot) it.next()).a(adError);
        }
    }

    protected static void a(AdLoaderFactory adLoaderFactory) {
        g = adLoaderFactory;
    }

    private static boolean a(AdSlot[] adSlotArr) {
        int i = 0;
        int noRetryTtlRemainingMillis = InternalAdRegistration.getInstance().getNoRetryTtlRemainingMillis();
        if (noRetryTtlRemainingMillis <= 0) {
            return false;
        }
        ErrorCode errorCode;
        noRetryTtlRemainingMillis /= 1000;
        String str = "SDK Message: ";
        if (InternalAdRegistration.getInstance().getIsAppDisabled()) {
            str = str + Utils.getDisabledAppServerMessage();
            errorCode = ErrorCode.INTERNAL_ERROR;
        } else {
            str = str + "no results. Try again in " + noRetryTtlRemainingMillis + " seconds.";
            errorCode = ErrorCode.NO_FILL;
        }
        Log.e(a, str);
        AdError adError = new AdError(errorCode, str);
        noRetryTtlRemainingMillis = adSlotArr.length;
        while (i < noRetryTtlRemainingMillis) {
            AdSlot adSlot = adSlotArr[i];
            if (!(adSlot.d() == null || adSlot.d().getMetricsCollector() == null)) {
                adSlot.d().getMetricsCollector().incrementMetric(MetricType.AD_COUNTER_FAILED_DUE_TO_NO_RETRY);
            }
            if (adSlot.e() != null) {
                adSlot.e().adFailed(adError);
            }
            i++;
        }
        return true;
    }

    protected static boolean[] a(int i, AdTargetingOptions adTargetingOptions, Ad... adArr) {
        AdSlot[] adSlotArr = new AdSlot[adArr.length];
        int i2 = 0;
        while (i2 < adArr.length) {
            adSlotArr[i2] = new AdSlot(adArr[i2], new AdTargetingOptions());
            i2++;
        }
        return a(i, adTargetingOptions, adSlotArr);
    }

    protected static boolean[] a(int i, AdTargetingOptions adTargetingOptions, AdSlot... adSlotArr) {
        if (adTargetingOptions == null) {
            adTargetingOptions = new AdTargetingOptions();
        }
        boolean[] zArr = new boolean[adSlotArr.length];
        if (a(adSlotArr)) {
            Arrays.fill(zArr, true);
        } else {
            AtomicInteger atomicInteger = new AtomicInteger(adSlotArr.length);
            AdReadyToLoadListener adReadyToLoadListener = new AdReadyToLoadListener(i, atomicInteger, adTargetingOptions, adSlotArr);
            int length = adSlotArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                AdSlot adSlot = adSlotArr[i2];
                adSlot.a(i3 + 1);
                int prepareAd = adSlot.c().prepareAd(adReadyToLoadListener);
                if (prepareAd != 0) {
                    a(i, atomicInteger, adTargetingOptions, adSlotArr, i3);
                    if (prepareAd == -1) {
                        zArr[i3] = false;
                    } else {
                        zArr[i3] = true;
                    }
                } else {
                    zArr[i3] = true;
                }
                i3++;
                i2++;
            }
        }
        return zArr;
    }

    private static void b(AdError adError, AdSlot[] adSlotArr) {
        int length = adSlotArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            AdSlot adSlot = adSlotArr[i];
            if (adSlot.a() != -1) {
                adSlot.e().adFailed(adError);
                i2++;
            }
            i++;
        }
        if (i2 > 0) {
            Log.w(a, "%s; code: %s", new Object[]{adError.getMessage(), adError.getCode()});
        }
    }

    private static void c(int i, AdTargetingOptions adTargetingOptions, AdSlot[] adSlotArr) {
        Info b = new AdvertisingIdentifier().b();
        if (b.a()) {
            AdRequest a = new AdRequest(adTargetingOptions).a(b);
            Map hashMap = new HashMap();
            int length = adSlotArr.length;
            int i2 = 0;
            while (i2 < length) {
                AdSlot adSlot = adSlotArr[i2];
                if (adSlot.a() != -1) {
                    hashMap.put(Integer.valueOf(adSlot.a()), adSlot);
                    adSlot.d().setSlotId(adSlot.a());
                    a.putSlot(adSlot.d(), adSlot.getAdTargetingOptions());
                }
                i2++;
            }
            if (hashMap.size() > 0) {
                AdLoader createAdLoader = g.createAdLoader(a, hashMap);
                createAdLoader.setTimeout(i);
                createAdLoader.beginFetchAd();
            }
        } else {
            b(new AdError(ErrorCode.INTERNAL_ERROR, "An internal request was not made on a background thread."), adSlotArr);
        }
    }

    private void c(JSONObject jSONObject) {
        long currentTimeMillis = System.currentTimeMillis();
        String a = JSONUtils.a(jSONObject, "status", null);
        HashSet hashSet = new HashSet(this.c.keySet());
        AdError a2 = a(jSONObject);
        String a3 = JSONUtils.a(jSONObject, Event.ERROR_CODE, "No Ad Received");
        this.b.setInstrumentationPixelURL(JSONUtils.a(jSONObject, "instrPixelURL", null));
        if (a != null && a.equals("ok")) {
            JSONArray a4 = JSONUtils.a(jSONObject, NativeAdResponse.KEY_ADS);
            int i = 0;
            while (i < a4.length()) {
                JSONObject a5 = JSONUtils.a(a4, i);
                if (a5 != null) {
                    int a6 = JSONUtils.a(a5, "slotId", (int)AD_FAILED);
                    AdSlot adSlot = (AdSlot) this.c.get(Integer.valueOf(a6));
                    if (adSlot != null) {
                        hashSet.remove(Integer.valueOf(a6));
                        adSlot.d().b(JSONUtils.a(a5, "instrPixelURL", this.b.getInstrumentationPixelURL()));
                        adSlot.d().c(JSONUtils.a(a5, "impPixelURL", null));
                        if (adSlot.d().a().isAuto()) {
                            adSlot.d().getMetricsCollector().incrementMetric(MetricType.AD_COUNTER_AUTO_AD_SIZE);
                        }
                        String a7 = JSONUtils.a(a5, Constants.HTML, AdTrackerConstants.BLANK);
                        JSONArray a8 = JSONUtils.a(a5, "creativeTypes");
                        HashSet hashSet2 = new HashSet();
                        if (a8 != null) {
                            a6 = 0;
                            while (a6 < a8.length()) {
                                AAXCreative a9 = AAXCreative.a(JSONUtils.a(a8, a6, 0));
                                if (a9 != null) {
                                    hashSet2.add(a9);
                                }
                                a6++;
                            }
                        }
                        String str;
                        if (hashSet2.isEmpty()) {
                            str = "No valid creative types found";
                            adSlot.a(new AdError(ErrorCode.INTERNAL_ERROR, "No valid creative types found"));
                            Log.e(a, "No valid creative types found");
                        } else {
                            String a10 = JSONUtils.a(a5, "size", AdTrackerConstants.BLANK);
                            int i2 = 0;
                            a6 = 0;
                            if (!hashSet2.contains(AAXCreative.INTERSTITIAL)) {
                                ?[] split;
                                boolean z = 0;
                                split = a10 != null ? a10.split("x") : null;
                                if (split == null || split.length != 2) {
                                    z = AD_NOT_READY;
                                } else {
                                    try {
                                        i2 = Integer.parseInt(split[0]);
                                        a6 = Integer.parseInt(split[1]);
                                    } catch (NumberFormatException e) {
                                        z = AD_NOT_READY;
                                    }
                                }
                                if (i != 0) {
                                    str = "Server returned an invalid ad size";
                                    adSlot.a(new AdError(ErrorCode.INTERNAL_ERROR, "Server returned an invalid ad size"));
                                    Log.e(a, "Server returned an invalid ad size");
                                }
                            }
                            long a11 = JSONUtils.a(a5, "cacheTTL", -1);
                            if (a11 > -1) {
                                adSlot.d().a(a11 * 1000 + currentTimeMillis);
                            }
                            AdProperties adProperties = new AdProperties(a8);
                            adSlot.d().a(a6);
                            adSlot.d().b(i2);
                            adSlot.d().a(a7);
                            adSlot.d().a((Set)hashSet2);
                            adSlot.d().a(adProperties);
                            adSlot.d().setFetched(true);
                        }
                    }
                }
                i++;
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            ((AdSlot) this.c.get(num)).a(a2);
            ((AdSlot) this.c.get(num)).d().b(this.b.getInstrumentationPixelURL());
            Log.w(a, "%s; code: %s", new Object[]{a2.getMessage(), a3});
        }
    }

    private void e() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                AdLoader.this.c();
            }
        });
    }

    private WebRequest f() {
        g().startMetric(MetricType.AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL);
        WebRequest webRequest = this.b.getWebRequest();
        g().stopMetric(MetricType.AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL);
        return webRequest;
    }

    private MetricsCollector g() {
        if (this.f == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.c.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(((AdSlot) ((Entry) it.next()).getValue()).d().getMetricsCollector());
            }
            this.f = new CompositeMetricsCollector(arrayList);
        }
        return this.f;
    }

    protected AdError a(JSONObject jSONObject) {
        int b = b(jSONObject);
        InternalAdRegistration.getInstance().setNoRetryTtl(b);
        String a = JSONUtils.a(jSONObject, Event.ERROR_MESSAGE, "No Ad Received");
        InternalAdRegistration.getInstance().setIsAppDisabled(a.equalsIgnoreCase(Utils.getDisabledAppServerMessage()));
        String str = "Server Message: " + a;
        if (b > 0) {
            g().publishMetricInMilliseconds(MetricType.AD_NO_RETRY_TTL_RECEIVED, (long) (b * 1000));
        }
        if (b > 0 && !InternalAdRegistration.getInstance().getIsAppDisabled()) {
            return new AdError(ErrorCode.NO_FILL, str + ". Try again in " + b + " seconds");
        } else if (a.equals("no results")) {
            return new AdError(ErrorCode.NO_FILL, str);
        } else {
            return new AdError(ErrorCode.INTERNAL_ERROR, str);
        }
    }

    protected void a() {
        ThreadUtils.executeRunnable(new Runnable() {
            public void run() {
                AdLoader.this.b();
                AdLoader.this.e();
            }
        });
    }

    protected int b(JSONObject jSONObject) {
        return DebugProperties.getDebugPropertyAsInteger(DebugProperties.DEBUG_NORETRYTTL, JSONUtils.a(jSONObject, "noretryTTL", 0));
    }

    protected void b() {
        g().stopMetric(MetricType.AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP);
        g().startMetric(MetricType.AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START);
        String str;
        if (Assets.getInstance().ensureAssetsCreated()) {
            try {
                WebResponse d = d();
                if (d.isHttpStatusCodeOK()) {
                    JSONObject jSONObjectBody = d.getJSONObjectBody();
                    if (jSONObjectBody == null) {
                        str = "Unable to parse response";
                        this.e = new AdError(ErrorCode.INTERNAL_ERROR, "Unable to parse response");
                        Log.e(a, "Unable to parse response");
                        a(this.e);
                    } else {
                        c(jSONObjectBody);
                        g().stopMetric(MetricType.AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END);
                        g().startMetric(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP);
                    }
                } else {
                    str = d.getHttpStatusCode() + " - " + d.getHttpStatus();
                    this.e = new AdError(ErrorCode.NETWORK_ERROR, str);
                    Log.e(a, str);
                    a(this.e);
                }
            } catch (AdFetchException e) {
                AdFetchException adFetchException = e;
                this.e = adFetchException.getAdError();
                Log.e(a, adFetchException.getAdError().getMessage());
                a(this.e);
            }
        } else {
            str = "Unable to create the assets needed to display ads";
            this.e = new AdError(ErrorCode.REQUEST_ERROR, "Unable to create the assets needed to display ads");
            Log.e(a, "Unable to create the assets needed to display ads");
            a(this.e);
        }
    }

    public void beginFetchAd() {
        g().stopMetric(MetricType.AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START);
        g().startMetric(MetricType.AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP);
        a();
    }

    protected void c() {
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            AdSlot adSlot = (AdSlot) ((Entry) it.next()).getValue();
            IAdLoaderCallback e = adSlot.e();
            AdData d = adSlot.d();
            d.getMetricsCollector().stopMetric(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP);
            if (d.getIsFetched()) {
                d.getMetricsCollector().startMetric(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START);
                e.handleResponse();
            } else {
                d.getMetricsCollector().startMetric(MetricType.AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE);
                if (adSlot.b() != null) {
                    e.adFailed(adSlot.b());
                } else {
                    e.adFailed(new AdError(ErrorCode.INTERNAL_ERROR, "Unknown error occurred."));
                }
            }
        }
    }

    protected WebResponse d() {
        AdError adError;
        WebRequest f = f();
        f.setMetricsCollector(g());
        f.setServiceCallLatencyMetric(MetricType.AAX_LATENCY_GET_AD);
        f.setTimeout(this.d);
        g().stopMetric(MetricType.AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START);
        g().incrementMetric(MetricType.TLS_ENABLED);
        try {
            WebResponse makeCall = f.makeCall();
            g().startMetric(MetricType.AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END);
            return makeCall;
        } catch (WebRequestException e) {
            webRequestException = e;
            WebRequestException webRequestException2;
            if (webRequestException2.getStatus() == WebRequestStatus.NETWORK_FAILURE) {
                adError = new AdError(ErrorCode.NETWORK_ERROR, "Could not contact Ad Server");
            } else if (webRequestException2.getStatus() == WebRequestStatus.NETWORK_TIMEOUT) {
                adError = new AdError(ErrorCode.NETWORK_TIMEOUT, "Connection to Ad Server timed out");
            } else {
                adError = new AdError(ErrorCode.INTERNAL_ERROR, webRequestException2.getMessage());
            }
            throw new AdFetchException(adError);
        }
    }

    public void setTimeout(int i) {
        this.d = i;
    }
}