package com.vungle.publisher.reporting;

import a.a.b;
import a.a.l;
import com.vungle.publisher.bl;
import com.vungle.publisher.db.model.AdReport.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class AdReportEventListener$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public AdReportEventListener$$InjectAdapter() {
        super("com.vungle.publisher.reporting.AdReportEventListener", "members/com.vungle.publisher.reporting.AdReportEventListener", true, AdReportEventListener.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.reporting.AdServiceReportingHandler", (Object)AdReportEventListener.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.AdReport$Factory", (Object)AdReportEventListener.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.reporting.AdReportManager", (Object)AdReportEventListener.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.bl", (Object)AdReportEventListener.class, getClass().getClassLoader());
        this.e = lVar.a("members/com.vungle.publisher.event.BaseEventListener", AdReportEventListener.class, getClass().getClassLoader(), false, true);
    }

    public final AdReportEventListener get() {
        AdReportEventListener adReportEventListener = new AdReportEventListener();
        injectMembers(adReportEventListener);
        return adReportEventListener;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
    }

    public final void injectMembers(AdReportEventListener adReportEventListener) {
        adReportEventListener.c = (AdServiceReportingHandler) this.a.get();
        adReportEventListener.d = (Factory) this.b.get();
        adReportEventListener.e = (AdReportManager) this.c.get();
        adReportEventListener.g = (bl) this.d.get();
        this.e.injectMembers(adReportEventListener);
    }
}