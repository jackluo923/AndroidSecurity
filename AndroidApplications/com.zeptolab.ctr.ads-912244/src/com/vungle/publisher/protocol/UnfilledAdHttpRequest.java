package com.vungle.publisher.protocol;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Parcel;
import com.vungle.publisher.as;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class UnfilledAdHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.UnfilledAdHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (UnfilledAdHttpRequest) ((UnfilledAdHttpRequest) this.a.a()).a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new UnfilledAdHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        as f;
        @Inject
        com.vungle.publisher.protocol.message.RequestLocalAd.Factory g;

        public final UnfilledAdHttpRequest a(long j) {
            UnfilledAdHttpRequest unfilledAdHttpRequest = (UnfilledAdHttpRequest) super.a();
            Builder appendQueryParameter = Uri.parse(this.e + "unfilled").buildUpon().appendQueryParameter("app_id", this.d.b());
            String a = this.f.a();
            if (a != null) {
                appendQueryParameter.appendQueryParameter("ifa", a);
            }
            a = this.f.b();
            if (a != null) {
                appendQueryParameter.appendQueryParameter("isu", a);
            }
            appendQueryParameter.appendQueryParameter("ut", String.valueOf(j));
            unfilledAdHttpRequest.b = appendQueryParameter.toString();
            return unfilledAdHttpRequest;
        }

        protected final /* synthetic */ HttpRequest b() {
            return new UnfilledAdHttpRequest();
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected UnfilledAdHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.c;
    }

    protected final b b() {
        return b.j;
    }
}