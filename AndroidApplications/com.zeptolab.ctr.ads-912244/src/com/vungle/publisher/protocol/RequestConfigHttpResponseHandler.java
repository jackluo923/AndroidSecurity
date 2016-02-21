package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.log.Logger;
import com.vungle.publisher.bi;
import com.vungle.publisher.bn;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestConfigResponse;
import com.vungle.publisher.protocol.message.RequestConfigResponse.Factory;
import com.vungle.publisher.protocol.message.RequestConfigResponse.a;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class RequestConfigHttpResponseHandler extends InfiniteRetryHttpResponseHandler {
    public static final Creator CREATOR;
    @Inject
    Factory a;
    @Inject
    SdkConfig b;
    @Inject
    Provider c;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[a.values().length];
            try {
                a[a.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[a.b.ordinal()] = 2;
        }
    }

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Provider a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (RequestConfigHttpResponseHandler) ((RequestConfigHttpResponseHandler) this.a.get()).b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestConfigHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected final void a(HttpTransaction httpTransaction, bn bnVar, HttpTransaction.a aVar) {
        super.a(httpTransaction, bnVar, aVar);
        RequestConfigResponse requestConfigResponse = (RequestConfigResponse) this.a.a(a(bnVar.b));
        Integer num = requestConfigResponse.b;
        if (num != null && num.intValue() > 0) {
            ((RequestConfigAsync) this.c.get()).a((long) (num.intValue() * 1000));
        }
        a aVar2 = requestConfigResponse.d;
        if (aVar2 != null) {
            switch (AnonymousClass_1.a[aVar2.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    this.b.a(bi.values());
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    this.b.a(new bi[]{bi.b});
                    break;
                default:
                    Logger.w(Logger.NETWORK_TAG, new StringBuilder("unhandled streaming connectivity type ").append(aVar2).toString());
                    break;
            }
        }
        SdkConfig sdkConfig = this.b;
        boolean equals = Boolean.TRUE.equals(requestConfigResponse.a);
        Logger.d(Logger.CONFIG_TAG, (equals ? "enabling" : "disabling") + " ad streaming");
        sdkConfig.b = equals;
        Integer num2 = requestConfigResponse.c;
        if (num2 == null) {
            Logger.w(Logger.NETWORK_TAG, "null request streaming ad timeout millis");
        } else {
            SdkConfig sdkConfig2 = this.b;
            int intValue = num2.intValue();
            Logger.d(Logger.CONFIG_TAG, new StringBuilder("setting streaming response timeout ").append(intValue).append(" ms").toString());
            sdkConfig2.d = intValue;
        }
    }
}