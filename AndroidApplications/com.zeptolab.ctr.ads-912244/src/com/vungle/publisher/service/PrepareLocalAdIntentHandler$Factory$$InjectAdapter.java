package com.vungle.publisher.service;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.cj;
import com.vungle.publisher.net.http.DownloadHttpGateway;
import com.vungle.publisher.reporting.AdReportManager;
import com.vungle.publisher.service.PrepareLocalAdIntentHandler.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class PrepareLocalAdIntentHandler$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public PrepareLocalAdIntentHandler$Factory$$InjectAdapter() {
        super("com.vungle.publisher.service.PrepareLocalAdIntentHandler$Factory", "members/com.vungle.publisher.service.PrepareLocalAdIntentHandler$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("android.content.Context", (Object)Factory.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.net.http.DownloadHttpGateway", (Object)Factory.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.cj", (Object)Factory.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.reporting.AdReportManager", (Object)Factory.class, getClass().getClassLoader());
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (AdManager) this.a.get();
        factory.b = (Context) this.b.get();
        factory.c = (DownloadHttpGateway) this.c.get();
        factory.d = (cj) this.d.get();
        factory.e = (AdReportManager) this.e.get();
    }
}