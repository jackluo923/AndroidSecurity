package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.be;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import com.vungle.publisher.protocol.message.RequestConfig;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

@Singleton
public class RequestConfigHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;
    boolean e;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.RequestConfigHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (RequestConfigHttpRequest) this.a.f.a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RequestConfigHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        RequestConfigHttpRequest f;
        @Inject
        RequestConfig g;

        public final /* synthetic */ ProtocolHttpRequest a() {
            return d();
        }

        protected final /* bridge */ /* synthetic */ HttpRequest b() {
            return this.f;
        }

        public final /* synthetic */ HttpRequest c() {
            return d();
        }

        public final RequestConfigHttpRequest d() {
            try {
                if (this.f.e) {
                    return this.f;
                }
                RequestConfigHttpRequest requestConfigHttpRequest = (RequestConfigHttpRequest) super.a();
                requestConfigHttpRequest.b = this.e + "config";
                requestConfigHttpRequest.c.putString("Content-Type", WebRequest.CONTENT_TYPE_JSON);
                requestConfigHttpRequest.d = this.g.a();
                return requestConfigHttpRequest;
            } catch (JSONException e) {
                throw new be(e);
            }
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    @Inject
    RequestConfigHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.a;
    }

    protected final b b() {
        return b.c;
    }
}