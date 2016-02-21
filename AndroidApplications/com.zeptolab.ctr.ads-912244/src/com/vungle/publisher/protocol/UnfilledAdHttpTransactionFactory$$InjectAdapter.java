package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.protocol.UnfilledAdHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class UnfilledAdHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public UnfilledAdHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory", "members/com.vungle.publisher.protocol.UnfilledAdHttpTransactionFactory", true, UnfilledAdHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.UnfilledAdHttpRequest$Factory", (Object)UnfilledAdHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", (Object)UnfilledAdHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final UnfilledAdHttpTransactionFactory get() {
        UnfilledAdHttpTransactionFactory unfilledAdHttpTransactionFactory = new UnfilledAdHttpTransactionFactory();
        injectMembers(unfilledAdHttpTransactionFactory);
        return unfilledAdHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(UnfilledAdHttpTransactionFactory unfilledAdHttpTransactionFactory) {
        unfilledAdHttpTransactionFactory.a = (Factory) this.a.get();
        unfilledAdHttpTransactionFactory.b = (FireAndForgetHttpResponseHandler) this.b.get();
    }
}