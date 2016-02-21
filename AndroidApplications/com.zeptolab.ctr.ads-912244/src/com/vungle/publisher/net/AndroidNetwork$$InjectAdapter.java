package com.vungle.publisher.net;

import a.a.b;
import a.a.l;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import java.util.Set;
import javax.inject.Provider;

public final class AndroidNetwork$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public AndroidNetwork$$InjectAdapter() {
        super("com.vungle.publisher.net.AndroidNetwork", "members/com.vungle.publisher.net.AndroidNetwork", true, AndroidNetwork.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.net.ConnectivityManager", (Object)AndroidNetwork.class, getClass().getClassLoader());
        this.b = lVar.a("javax.inject.Provider<com.vungle.publisher.net.NetworkBroadcastReceiver>", (Object)AndroidNetwork.class, getClass().getClassLoader());
        this.c = lVar.a("android.telephony.TelephonyManager", (Object)AndroidNetwork.class, getClass().getClassLoader());
    }

    public final AndroidNetwork get() {
        AndroidNetwork androidNetwork = new AndroidNetwork();
        injectMembers(androidNetwork);
        return androidNetwork;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(AndroidNetwork androidNetwork) {
        androidNetwork.a = (ConnectivityManager) this.a.get();
        androidNetwork.b = (Provider) this.b.get();
        androidNetwork.c = (TelephonyManager) this.c.get();
    }
}