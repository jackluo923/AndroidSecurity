package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.cj;
import java.util.Set;
import javax.inject.Provider;

public final class AdvertisingDeviceIdStrategy$FetchAdvertisingPreferencesRunnable$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AdvertisingDeviceIdStrategy$FetchAdvertisingPreferencesRunnable$$InjectAdapter() {
        super("com.vungle.publisher.env.AdvertisingDeviceIdStrategy$FetchAdvertisingPreferencesRunnable", "members/com.vungle.publisher.env.AdvertisingDeviceIdStrategy$FetchAdvertisingPreferencesRunnable", false, FetchAdvertisingPreferencesRunnable.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)FetchAdvertisingPreferencesRunnable.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.cj", (Object)FetchAdvertisingPreferencesRunnable.class, getClass().getClassLoader());
    }

    public final FetchAdvertisingPreferencesRunnable get() {
        FetchAdvertisingPreferencesRunnable fetchAdvertisingPreferencesRunnable = new FetchAdvertisingPreferencesRunnable();
        injectMembers(fetchAdvertisingPreferencesRunnable);
        return fetchAdvertisingPreferencesRunnable;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(FetchAdvertisingPreferencesRunnable fetchAdvertisingPreferencesRunnable) {
        fetchAdvertisingPreferencesRunnable.b = (Context) this.a.get();
        fetchAdvertisingPreferencesRunnable.c = (cj) this.b.get();
    }
}