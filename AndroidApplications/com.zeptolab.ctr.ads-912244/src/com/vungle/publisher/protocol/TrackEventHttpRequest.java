package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.a;
import com.vungle.publisher.net.http.HttpRequest.b;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class TrackEventHttpRequest extends HttpRequest {
    public static final Creator CREATOR;
    private static final b e;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.TrackEventHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.protocol.TrackEventHttpRequest.Factory factory = this.a;
            return (TrackEventHttpRequest) com.vungle.publisher.protocol.TrackEventHttpRequest.Factory.a().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TrackEventHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends com.vungle.publisher.net.http.HttpRequest.Factory {
        @Inject
        Factory() {
        }

        protected static TrackEventHttpRequest a() {
            return new TrackEventHttpRequest();
        }

        protected final /* synthetic */ HttpRequest b() {
            return new TrackEventHttpRequest();
        }
    }

    static {
        e = b.h;
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected final a a() {
        return a.a;
    }

    protected final b b() {
        return e;
    }

    public final String toString() {
        return new StringBuilder("{").append(e).append(": ").append(this.b).append("}").toString();
    }
}