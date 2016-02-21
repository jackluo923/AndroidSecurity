package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.protocol.SessionStartHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class SessionStartHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public SessionStartHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.SessionStartHttpTransactionFactory", "members/com.vungle.publisher.protocol.SessionStartHttpTransactionFactory", true, SessionStartHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.SessionStartHttpRequest$Factory", (Object)SessionStartHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", (Object)SessionStartHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final SessionStartHttpTransactionFactory get() {
        SessionStartHttpTransactionFactory sessionStartHttpTransactionFactory = new SessionStartHttpTransactionFactory();
        injectMembers(sessionStartHttpTransactionFactory);
        return sessionStartHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(SessionStartHttpTransactionFactory sessionStartHttpTransactionFactory) {
        sessionStartHttpTransactionFactory.a = (Factory) this.a.get();
        sessionStartHttpTransactionFactory.b = (FireAndForgetHttpResponseHandler) this.b.get();
    }
}