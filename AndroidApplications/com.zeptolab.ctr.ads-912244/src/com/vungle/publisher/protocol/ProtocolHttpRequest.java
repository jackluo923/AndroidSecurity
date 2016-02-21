package com.vungle.publisher.protocol;

import android.os.Bundle;
import com.vungle.publisher.at;
import com.vungle.publisher.bh;
import com.vungle.publisher.inject.annotations.VungleBaseUrl;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.Factory;
import javax.inject.Inject;

public abstract class ProtocolHttpRequest extends HttpRequest {

    public static abstract class a extends Factory {
        @Inject
        bh c;
        @Inject
        at d;
        @Inject
        @VungleBaseUrl
        String e;

        protected a() {
        }

        protected ProtocolHttpRequest a_() {
            ProtocolHttpRequest protocolHttpRequest = (ProtocolHttpRequest) super.c();
            Bundle bundle = protocolHttpRequest.c;
            bundle.putString("X-VUNGLE-BUNDLE-ID", this.d.a());
            bundle.putString("X-VUNGLE-LANGUAGE", this.c.a());
            bundle.putString("X-VUNGLE-TIMEZONE", this.c.c());
            if (ProtocolHttpRequest.a(protocolHttpRequest)) {
                bundle.putLong("X-VUNG-DATE", System.currentTimeMillis());
            }
            return protocolHttpRequest;
        }

        protected /* synthetic */ HttpRequest c() {
            return a();
        }
    }

    protected ProtocolHttpRequest() {
    }

    static /* synthetic */ boolean a(ProtocolHttpRequest protocolHttpRequest) {
        return protocolHttpRequest.b != null && HttpRequest.a.matcher(protocolHttpRequest.b).find();
    }
}