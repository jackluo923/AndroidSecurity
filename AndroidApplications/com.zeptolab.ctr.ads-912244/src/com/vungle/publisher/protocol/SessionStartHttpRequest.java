package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class SessionStartHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.SessionStartHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.protocol.SessionStartHttpRequest.Factory factory = this.a;
            return (SessionStartHttpRequest) com.vungle.publisher.protocol.SessionStartHttpRequest.Factory.d().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new SessionStartHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        com.vungle.publisher.protocol.message.SessionStart.Factory f;

        protected static SessionStartHttpRequest d() {
            return new SessionStartHttpRequest();
        }

        protected final SessionStartHttpRequest a(long j) {
            SessionStartHttpRequest sessionStartHttpRequest = (SessionStartHttpRequest) a();
            sessionStartHttpRequest.c.putString("Content-Type", WebRequest.CONTENT_TYPE_JSON);
            sessionStartHttpRequest.b = this.e + "sessionStart";
            sessionStartHttpRequest.d = this.f.a(j).a();
            return sessionStartHttpRequest;
        }

        protected final /* synthetic */ HttpRequest b() {
            return new SessionStartHttpRequest();
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected SessionStartHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.c;
    }

    protected final b b() {
        return b.g;
    }
}