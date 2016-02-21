package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import java.util.Set;
import javax.inject.Provider;

public final class AdvertisingDeviceIdStrategy$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public AdvertisingDeviceIdStrategy$$InjectAdapter() {
        super("com.vungle.publisher.env.AdvertisingDeviceIdStrategy", "members/com.vungle.publisher.env.AdvertisingDeviceIdStrategy", true, AdvertisingDeviceIdStrategy.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.env.AdvertisingDeviceIdStrategy$FetchAdvertisingPreferencesRunnable$Factory", (Object)AdvertisingDeviceIdStrategy.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)AdvertisingDeviceIdStrategy.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", AdvertisingDeviceIdStrategy.class, getClass().getClassLoader(), false, true);
    }

    public final AdvertisingDeviceIdStrategy get() {
        AdvertisingDeviceIdStrategy advertisingDeviceIdStrategy = new AdvertisingDeviceIdStrategy();
        injectMembers(advertisingDeviceIdStrategy);
        return advertisingDeviceIdStrategy;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(AdvertisingDeviceIdStrategy advertisingDeviceIdStrategy) {
        advertisingDeviceIdStrategy.a = (Factory) this.a.get();
        advertisingDeviceIdStrategy.b = (ScheduledPriorityExecutor) this.b.get();
        this.c.injectMembers(advertisingDeviceIdStrategy);
    }
}