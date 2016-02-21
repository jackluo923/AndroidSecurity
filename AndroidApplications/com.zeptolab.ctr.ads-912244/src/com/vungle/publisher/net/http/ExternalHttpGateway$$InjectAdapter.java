package com.vungle.publisher.net.http;

import a.a.b;
import a.a.l;
import com.vungle.publisher.bl;
import com.vungle.publisher.protocol.TrackEventHttpTransactionFactory;
import java.util.Set;
import javax.inject.Provider;

public final class ExternalHttpGateway$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public ExternalHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.bl", "members/com.vungle.publisher.net.http.ExternalHttpGateway", false, bl.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.protocol.TrackEventHttpTransactionFactory", (Object)bl.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.net.http.HttpGateway", bl.class, getClass().getClassLoader(), false, true);
    }

    public final bl get() {
        bl blVar = new bl();
        injectMembers(blVar);
        return blVar;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(bl blVar) {
        blVar.a = (TrackEventHttpTransactionFactory) this.a.get();
        this.b.injectMembers(blVar);
    }
}