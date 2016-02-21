package com.vungle.publisher.event;

import a.a.b;
import a.a.l;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import java.util.Set;
import javax.inject.Provider;

public final class ClientEventListenerAdapter$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public ClientEventListenerAdapter$$InjectAdapter() {
        super("com.vungle.publisher.event.ClientEventListenerAdapter", "members/com.vungle.publisher.event.ClientEventListenerAdapter", false, ClientEventListenerAdapter.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)ClientEventListenerAdapter.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.event.BaseEventListener", ClientEventListenerAdapter.class, getClass().getClassLoader(), false, true);
    }

    public final ClientEventListenerAdapter get() {
        ClientEventListenerAdapter clientEventListenerAdapter = new ClientEventListenerAdapter();
        injectMembers(clientEventListenerAdapter);
        return clientEventListenerAdapter;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(ClientEventListenerAdapter clientEventListenerAdapter) {
        clientEventListenerAdapter.b = (ScheduledPriorityExecutor) this.a.get();
        this.b.injectMembers(clientEventListenerAdapter);
    }
}