package com.vungle.publisher.service;

import a.a.b;
import a.a.l;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import java.util.Collection;
import java.util.Set;

public final class SessionEventHandler$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;
    private b c;

    public SessionEventHandler$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.service.SessionEventHandler", false, SessionEventHandler.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.ProtocolHttpGateway", (Object)SessionEventHandler.class, getClass().getClassLoader());
        this.b = lVar.a("java.util.Collection<com.vungle.publisher.service.SessionEventIntentHandler$SessionEndListener>", (Object)SessionEventHandler.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.service.BaseHandler", SessionEventHandler.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(SessionEventHandler sessionEventHandler) {
        sessionEventHandler.e = (ProtocolHttpGateway) this.a.get();
        sessionEventHandler.f = (Collection) this.b.get();
        this.c.injectMembers(sessionEventHandler);
    }
}