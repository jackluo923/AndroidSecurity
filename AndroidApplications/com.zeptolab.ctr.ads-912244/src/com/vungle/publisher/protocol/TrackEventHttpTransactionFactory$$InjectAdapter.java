package com.vungle.publisher.protocol;

import a.a.b;
import a.a.l;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.protocol.TrackEventHttpRequest.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class TrackEventHttpTransactionFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public TrackEventHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.TrackEventHttpTransactionFactory", "members/com.vungle.publisher.protocol.TrackEventHttpTransactionFactory", true, TrackEventHttpTransactionFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.TrackEventHttpRequest$Factory", (Object)TrackEventHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", (Object)TrackEventHttpTransactionFactory.class, getClass().getClassLoader());
    }

    public final TrackEventHttpTransactionFactory get() {
        TrackEventHttpTransactionFactory trackEventHttpTransactionFactory = new TrackEventHttpTransactionFactory();
        injectMembers(trackEventHttpTransactionFactory);
        return trackEventHttpTransactionFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(TrackEventHttpTransactionFactory trackEventHttpTransactionFactory) {
        trackEventHttpTransactionFactory.a = (Factory) this.a.get();
        trackEventHttpTransactionFactory.b = (FireAndForgetHttpResponseHandler) this.b.get();
    }
}