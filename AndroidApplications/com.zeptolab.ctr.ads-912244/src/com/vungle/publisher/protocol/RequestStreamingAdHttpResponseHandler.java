package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.bn;
import com.vungle.publisher.cj;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.k;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.HttpTransaction.a;
import com.vungle.publisher.net.http.MaxRetryAgeHttpResponseHandler;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse.Factory;
import com.vungle.publisher.q;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class RequestStreamingAdHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {
    public static final Creator CREATOR;
    @Inject
    cj a;
    @Inject
    Factory b;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Provider a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (RequestStreamingAdHttpResponseHandler) ((RequestStreamingAdHttpResponseHandler) this.a.get()).b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestStreamingAdHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    RequestStreamingAdHttpResponseHandler() {
        this.g = 1;
        this.f = 1;
    }

    protected final void a() {
        this.a.b(new k());
    }

    protected final void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
        this.a.b(new q((RequestStreamingAdResponse) this.b.a(a(bnVar.b))));
    }
}