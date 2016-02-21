package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import com.vungle.publisher.protocol.message.SessionEnd;
import com.vungle.publisher.protocol.message.SessionStart;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class SessionEndHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.SessionEndHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.protocol.SessionEndHttpRequest.Factory factory = this.a;
            return (SessionEndHttpRequest) com.vungle.publisher.protocol.SessionEndHttpRequest.Factory.d().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new SessionEndHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        com.vungle.publisher.protocol.message.SessionEnd.Factory f;

        protected static SessionEndHttpRequest d() {
            return new SessionEndHttpRequest();
        }

        protected final SessionEndHttpRequest a(long j, long j2) {
            SessionEndHttpRequest sessionEndHttpRequest = (SessionEndHttpRequest) a();
            sessionEndHttpRequest.c.putString("Content-Type", WebRequest.CONTENT_TYPE_JSON);
            sessionEndHttpRequest.b = this.e + "sessionEnd";
            SessionStart a = this.f.a.a(j);
            SessionEnd a2 = com.vungle.publisher.protocol.message.SessionEnd.Factory.a();
            a2.b = a;
            a2.a = Long.valueOf(j2);
            sessionEndHttpRequest.d = a2.a();
            return sessionEndHttpRequest;
        }

        protected final /* synthetic */ HttpRequest b() {
            return new SessionEndHttpRequest();
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected SessionEndHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.c;
    }

    protected final b b() {
        return b.f;
    }
}