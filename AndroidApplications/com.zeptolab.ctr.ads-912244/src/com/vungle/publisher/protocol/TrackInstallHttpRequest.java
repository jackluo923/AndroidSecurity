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

public final class TrackInstallHttpRequest extends ProtocolHttpRequest {
    public static final Creator CREATOR;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        com.vungle.publisher.protocol.TrackInstallHttpRequest.Factory a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            com.vungle.publisher.protocol.TrackInstallHttpRequest.Factory factory = this.a;
            return (TrackInstallHttpRequest) com.vungle.publisher.protocol.TrackInstallHttpRequest.Factory.e().a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TrackInstallHttpRequest[i];
        }
    }

    @Singleton
    public static class Factory extends a {
        @Inject
        as f;
        @Inject
        com.vungle.publisher.protocol.message.RequestLocalAd.Factory g;

        protected static TrackInstallHttpRequest e() {
            return new TrackInstallHttpRequest();
        }

        public final /* synthetic */ ProtocolHttpRequest a() {
            return d();
        }

        protected final /* synthetic */ HttpRequest b() {
            return new TrackInstallHttpRequest();
        }

        public final /* synthetic */ HttpRequest c() {
            return d();
        }

        public final TrackInstallHttpRequest d() {
            TrackInstallHttpRequest trackInstallHttpRequest = (TrackInstallHttpRequest) super.a();
            Builder appendQueryParameter = Uri.parse(this.e + "new").buildUpon().appendQueryParameter("app_id", this.d.b());
            String a = this.f.a();
            if (a != null) {
                appendQueryParameter.appendQueryParameter("ifa", a);
            }
            a = this.f.b();
            if (a != null) {
                appendQueryParameter.appendQueryParameter("isu", a);
            }
            trackInstallHttpRequest.b = appendQueryParameter.toString();
            return trackInstallHttpRequest;
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected TrackInstallHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.c;
    }

    protected final b b() {
        return b.i;
    }
}