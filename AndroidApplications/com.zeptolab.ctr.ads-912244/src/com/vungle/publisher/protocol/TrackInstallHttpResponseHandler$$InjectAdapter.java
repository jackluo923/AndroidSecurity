package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.env.SdkState;
import java.util.Set;
import javax.inject.Provider;

public final class TrackInstallHttpResponseHandler$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public TrackInstallHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.TrackInstallHttpResponseHandler", "members/com.vungle.publisher.protocol.TrackInstallHttpResponseHandler", true, TrackInstallHttpResponseHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.env.SdkState", (Object)TrackInstallHttpResponseHandler.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", TrackInstallHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    public final TrackInstallHttpResponseHandler get() {
        TrackInstallHttpResponseHandler trackInstallHttpResponseHandler = new TrackInstallHttpResponseHandler();
        injectMembers(trackInstallHttpResponseHandler);
        return trackInstallHttpResponseHandler;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(TrackInstallHttpResponseHandler trackInstallHttpResponseHandler) {
        trackInstallHttpResponseHandler.a = (SdkState) this.a.get();
        this.b.injectMembers(trackInstallHttpResponseHandler);
    }
}