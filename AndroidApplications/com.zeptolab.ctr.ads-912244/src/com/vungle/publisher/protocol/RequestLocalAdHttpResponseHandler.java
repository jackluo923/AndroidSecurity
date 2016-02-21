package com.vungle.publisher.protocol;

import android.os.Parcel;
import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.ad.AdManager.AnonymousClass_2;
import com.vungle.publisher.ad.AdPreparer;
import com.vungle.publisher.az;
import com.vungle.publisher.bn;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.l;
import com.vungle.publisher.m;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.HttpTransaction.a;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse.Factory;
import com.vungle.publisher.reporting.AdServiceReportingHandler;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class RequestLocalAdHttpResponseHandler extends InfiniteRetryHttpResponseHandler {
    public static final Creator CREATOR;
    @Inject
    Provider a;
    @Inject
    AdPreparer b;
    @Inject
    Provider c;
    @Inject
    cj d;
    @Inject
    Factory e;
    @Inject
    AdServiceReportingHandler i;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Provider a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (RequestLocalAdHttpResponseHandler) ((RequestLocalAdHttpResponseHandler) this.a.get()).b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestLocalAdHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected final void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
        RequestLocalAdResponse requestLocalAdResponse = (RequestLocalAdResponse) this.e.a(a(bnVar.b));
        Integer valueOf = requestLocalAdResponse.r == null ? null : Integer.valueOf(requestLocalAdResponse.r.intValue() * 1000);
        AdServiceReportingHandler adServiceReportingHandler = this.i;
        adServiceReportingHandler.b = SystemClock.elapsedRealtime() - adServiceReportingHandler.a;
        if (valueOf == null) {
            AdManager adManager = (AdManager) this.a.get();
            String f = requestLocalAdResponse.f();
            LocalAd localAd = (LocalAd) adManager.g.a(f, true);
            if (localAd == null) {
                try {
                    adManager.g.e();
                    localAd = adManager.g.a(requestLocalAdResponse);
                    Logger.i(Logger.PREPARE_TAG, new StringBuilder("received new ").append(localAd.x()).toString());
                    localAd.k();
                    adManager.a.a(f);
                } catch (az e) {
                    Logger.w(Logger.PREPARE_TAG, new StringBuilder("error preparing ad ").append(f).toString(), e);
                    adManager.d.b(new m());
                }
            } else {
                try {
                    adManager.g.a(localAd, requestLocalAdResponse);
                } catch (Exception e2) {
                    Logger.w(Logger.PREPARE_TAG, new StringBuilder("error updating ad ").append(f).toString(), e2);
                }
                Ad.a h = localAd.h();
                switch (AnonymousClass_2.a[h.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                    case GoogleScorer.CLIENT_PLUS:
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    case GoogleScorer.CLIENT_APPSTATE:
                        Logger.i(Logger.PREPARE_TAG, new StringBuilder("received ").append(localAd.x()).append(" in status ").append(h).toString());
                        adManager.a.a(f);
                        break;
                    default:
                        Logger.w(Logger.PREPARE_TAG, new StringBuilder("received ").append(localAd.x()).append(" in status ").append(h).append(" - ignoring").toString());
                        break;
                }
            }
            SdkState sdkState = (SdkState) this.c.get();
            Integer a = requestLocalAdResponse.a();
            if (a == null) {
                Logger.v(Logger.AD_TAG, "ignoring set null min ad delay seconds");
            } else {
                int intValue = a.intValue();
                Logger.d(Logger.AD_TAG, new StringBuilder("setting min ad delay seconds: ").append(intValue).toString());
                sdkState.k.edit().putInt("VgAdDelayDuration", intValue).apply();
            }
        } else {
            aVar.a(httpTransaction, valueOf.intValue());
        }
    }

    protected final void b() {
        this.d.b(new l());
    }
}