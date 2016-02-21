package com.vungle.publisher;

import a.a.b;
import a.a.l;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.reporting.AdReportManager;
import java.util.Set;
import javax.inject.Provider;

public final class VunglePubBase$AsyncInitEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;

    public VunglePubBase$AsyncInitEventListener$$InjectAdapter() {
        super("com.vungle.publisher.VunglePubBase$AsyncInitEventListener", "members/com.vungle.publisher.VunglePubBase$AsyncInitEventListener", true, AsyncInitEventListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)AsyncInitEventListener.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)AsyncInitEventListener.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.protocol.ProtocolHttpGateway", (Object)AsyncInitEventListener.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.reporting.AdReportManager", (Object)AsyncInitEventListener.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.env.SdkState", (Object)AsyncInitEventListener.class, getClass().getClassLoader());
        this.f = lVar.a("members/com.vungle.publisher.event.BaseEventListener", AsyncInitEventListener.class, getClass().getClassLoader(), false, true);
    }

    public final AsyncInitEventListener get() {
        AsyncInitEventListener asyncInitEventListener = new AsyncInitEventListener();
        injectMembers(asyncInitEventListener);
        return asyncInitEventListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
    }

    public final void injectMembers(AsyncInitEventListener asyncInitEventListener) {
        asyncInitEventListener.a = (AdManager) this.a.get();
        asyncInitEventListener.b = (ScheduledPriorityExecutor) this.b.get();
        asyncInitEventListener.c = (ProtocolHttpGateway) this.c.get();
        asyncInitEventListener.d = (AdReportManager) this.d.get();
        asyncInitEventListener.e = (SdkState) this.e.get();
        this.f.injectMembers(asyncInitEventListener);
    }
}