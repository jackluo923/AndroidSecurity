package com.vungle.publisher.net.http;

import android.os.Parcel;
import com.vungle.publisher.bn;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpTransaction.a;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class FireAndForgetHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        FireAndForgetHttpResponseHandler a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (FireAndForgetHttpResponseHandler) this.a.b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new FireAndForgetHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    @Inject
    public FireAndForgetHttpResponseHandler() {
        this.g = 1;
        this.f = 10;
    }

    public void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
    }
}