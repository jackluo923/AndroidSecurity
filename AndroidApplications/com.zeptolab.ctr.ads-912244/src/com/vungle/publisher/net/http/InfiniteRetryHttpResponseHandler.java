package com.vungle.publisher.net.http;

import android.os.Parcel;
import com.vungle.publisher.bn;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpTransaction.a;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class InfiniteRetryHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        InfiniteRetryHttpResponseHandler a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (InfiniteRetryHttpResponseHandler) this.a.b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new InfiniteRetryHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    @Inject
    public InfiniteRetryHttpResponseHandler() {
        this.h = 0;
        this.f = 0;
        this.g = 0;
    }

    public void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
    }
}