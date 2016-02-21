package com.vungle.publisher;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.service.DownloadIntentHandlerFactory;
import com.vungle.publisher.service.ExternalHttpIntentHandlerFactory;
import com.vungle.publisher.service.PrepareLocalAdIntentHandler.Factory;
import com.vungle.publisher.service.ProtocolIntentHandlerFactory;
import java.util.Set;
import javax.inject.Provider;

public final class VungleService$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public VungleService$$InjectAdapter() {
        super("com.vungle.publisher.VungleService", "members/com.vungle.publisher.VungleService", false, VungleService.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.service.DownloadIntentHandlerFactory", (Object)VungleService.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.service.ExternalHttpIntentHandlerFactory", (Object)VungleService.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.service.PrepareLocalAdIntentHandler$Factory", (Object)VungleService.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.service.ProtocolIntentHandlerFactory", (Object)VungleService.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.db.DatabaseHelper", (Object)VungleService.class, getClass().getClassLoader());
    }

    public final VungleService get() {
        VungleService vungleService = new VungleService();
        injectMembers(vungleService);
        return vungleService;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
    }

    public final void injectMembers(VungleService vungleService) {
        vungleService.b = (DownloadIntentHandlerFactory) this.a.get();
        vungleService.c = (ExternalHttpIntentHandlerFactory) this.b.get();
        vungleService.d = (Factory) this.c.get();
        vungleService.e = (ProtocolIntentHandlerFactory) this.d.get();
        vungleService.f = (DatabaseHelper) this.e.get();
    }
}