package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpRequest;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class ReportStreamingAdHttpRequest extends ReportAdHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            Factory factory = this.a;
            return (ReportStreamingAdHttpRequest) Factory.f().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new ReportStreamingAdHttpRequest[i];
        }
    }

    @Singleton
    static class Factory extends com.vungle.publisher.protocol.ReportAdHttpRequest.Factory {
        @Inject
        com.vungle.publisher.protocol.message.ReportStreamingAd.Factory f;

        Factory() {
        }

        protected static ReportStreamingAdHttpRequest f() {
            return new ReportStreamingAdHttpRequest();
        }

        protected final /* synthetic */ HttpRequest b() {
            return new ReportStreamingAdHttpRequest();
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.protocol.message.ReportAd.Factory d() {
            return this.f;
        }

        protected final /* synthetic */ ReportAdHttpRequest e() {
            return new ReportStreamingAdHttpRequest();
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }
}