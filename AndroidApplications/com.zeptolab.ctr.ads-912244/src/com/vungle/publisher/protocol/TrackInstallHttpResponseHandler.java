package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.bn;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.HttpTransaction.a;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class TrackInstallHttpResponseHandler extends FireAndForgetHttpResponseHandler {
    public static final Creator CREATOR;
    @Inject
    SdkState a;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Provider a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (TrackInstallHttpResponseHandler) ((TrackInstallHttpResponseHandler) this.a.get()).b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TrackInstallHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected final void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
        super.a(httpTransaction, bnVar, aVar);
        this.a.k.edit().putBoolean("IsVgAppInstalled", true).apply();
    }
}