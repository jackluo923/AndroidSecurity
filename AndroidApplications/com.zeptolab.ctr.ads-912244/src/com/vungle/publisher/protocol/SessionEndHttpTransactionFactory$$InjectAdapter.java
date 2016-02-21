package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.protocol.SessionEndHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class SessionEndHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public SessionEndHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.SessionEndHttpTransactionFactory", "members/com.vungle.publisher.protocol.SessionEndHttpTransactionFactory", true, SessionEndHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.SessionEndHttpRequest$Factory", (Object)SessionEndHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", (Object)SessionEndHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final SessionEndHttpTransactionFactory get() {
        SessionEndHttpTransactionFactory sessionEndHttpTransactionFactory = new SessionEndHttpTransactionFactory();
        injectMembers(sessionEndHttpTransactionFactory);
        return sessionEndHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(SessionEndHttpTransactionFactory sessionEndHttpTransactionFactory) {
        sessionEndHttpTransactionFactory.a = (Factory) this.a.get();
        sessionEndHttpTransactionFactory.b = (FireAndForgetHttpResponseHandler) this.b.get();
    }
}