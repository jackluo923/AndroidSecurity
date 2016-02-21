package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.be;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

public final class RequestLocalAdHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.RequestLocalAdHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.protocol.RequestLocalAdHttpRequest.Factory factory = this.a;
            return (RequestLocalAdHttpRequest) com.vungle.publisher.protocol.RequestLocalAdHttpRequest.Factory.e().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestLocalAdHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        com.vungle.publisher.protocol.message.RequestLocalAd.Factory f;

        protected static RequestLocalAdHttpRequest e() {
            return new RequestLocalAdHttpRequest();
        }

        public final /* synthetic */ ProtocolHttpRequest a() {
            return d();
        }

        protected final /* synthetic */ HttpRequest b() {
            return new RequestLocalAdHttpRequest();
        }

        public final /* synthetic */ HttpRequest c() {
            return d();
        }

        public final RequestLocalAdHttpRequest d() {
            try {
                RequestLocalAdHttpRequest requestLocalAdHttpRequest = (RequestLocalAdHttpRequest) super.a();
                requestLocalAdHttpRequest.b = this.e + "requestAd";
                requestLocalAdHttpRequest.c.putString("Content-Type", WebRequest.CONTENT_TYPE_JSON);
                requestLocalAdHttpRequest.d = this.f.c().a();
                return requestLocalAdHttpRequest;
            } catch (JSONException e) {
                throw new be(e);
            }
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected RequestLocalAdHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.a;
    }

    protected final b b() {
        return b.d;
    }
}