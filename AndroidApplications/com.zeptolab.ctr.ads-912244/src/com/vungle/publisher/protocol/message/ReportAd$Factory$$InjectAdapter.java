package com.vungle.publisher.protocol.message;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.message.ReportAd.Factory;
import java.util.Set;

public final class ReportAd$Factory$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;

    public ReportAd$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.message.ReportAd$Factory", false, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.message.ExtraInfo$Factory", (Object)Factory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.protocol.message.MessageFactory", Factory.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (Factory) this.a.get();
        this.b.injectMembers(factory);
    }
}