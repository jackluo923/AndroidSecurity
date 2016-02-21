package com.vungle.publisher.net.http;

import android.os.Parcel;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest.a;
import com.vungle.publisher.net.http.HttpRequest.b;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class DownloadHttpRequest extends HttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.net.http.DownloadHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.net.http.DownloadHttpRequest.Factory factory = this.a;
            return (DownloadHttpRequest) com.vungle.publisher.net.http.DownloadHttpRequest.Factory.a().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DownloadHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends com.vungle.publisher.net.http.HttpRequest.Factory {
        @Inject
        Factory() {
        }

        protected static DownloadHttpRequest a() {
            return new DownloadHttpRequest();
        }

        protected final /* synthetic */ HttpRequest b() {
            return new DownloadHttpRequest();
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    DownloadHttpRequest() {
    }

    protected final a a() {
        return a.a;
    }

    protected final b b() {
        return b.a;
    }

    public final String toString() {
        return new StringBuilder("{").append(b.a).append(": ").append(this.b).append("}").toString();
    }
}