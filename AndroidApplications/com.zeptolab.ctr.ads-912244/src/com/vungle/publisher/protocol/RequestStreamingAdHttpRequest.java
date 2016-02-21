package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.be;
import com.vungle.publisher.c;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

public final class RequestStreamingAdHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.RequestStreamingAdHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.protocol.RequestStreamingAdHttpRequest.Factory factory = this.a;
            return (RequestStreamingAdHttpRequest) com.vungle.publisher.protocol.RequestStreamingAdHttpRequest.Factory.d().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestStreamingAdHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        com.vungle.publisher.protocol.message.RequestStreamingAd.Factory f;

        protected static RequestStreamingAdHttpRequest d() {
            return new RequestStreamingAdHttpRequest();
        }

        public final RequestStreamingAdHttpRequest a(String str, c cVar) {
            try {
                RequestStreamingAdHttpRequest requestStreamingAdHttpRequest = (RequestStreamingAdHttpRequest) super.a();
                requestStreamingAdHttpRequest.b = this.e + "requestStreamingAd";
                requestStreamingAdHttpRequest.c.putString("Content-Type", WebRequest.CONTENT_TYPE_JSON);
                requestStreamingAdHttpRequest.d = this.f.a(str, cVar).a();
                return requestStreamingAdHttpRequest;
            } catch (JSONException e) {
                throw new be(e);
            }
        }

        protected final /* synthetic */ HttpRequest b() {
            return new RequestStreamingAdHttpRequest();
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected RequestStreamingAdHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.a;
    }

    protected final b b() {
        return b.e;
    }
}