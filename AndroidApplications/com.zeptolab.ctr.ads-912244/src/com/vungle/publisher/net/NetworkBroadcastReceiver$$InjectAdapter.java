package com.vungle.publisher.net;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.bj;
import java.util.Set;
import javax.inject.Provider;

public final class NetworkBroadcastReceiver$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public NetworkBroadcastReceiver$$InjectAdapter() {
        super("com.vungle.publisher.net.NetworkBroadcastReceiver", "members/com.vungle.publisher.net.NetworkBroadcastReceiver", true, NetworkBroadcastReceiver.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)NetworkBroadcastReceiver.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.bj", (Object)NetworkBroadcastReceiver.class, getClass().getClassLoader());
    }

    public final NetworkBroadcastReceiver get() {
        NetworkBroadcastReceiver networkBroadcastReceiver = new NetworkBroadcastReceiver();
        injectMembers(networkBroadcastReceiver);
        return networkBroadcastReceiver;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(NetworkBroadcastReceiver networkBroadcastReceiver) {
        networkBroadcastReceiver.b = (Context) this.a.get();
        networkBroadcastReceiver.c = (bj) this.b.get();
    }
}