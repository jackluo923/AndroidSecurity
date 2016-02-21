package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.cj;
import java.util.Set;
import javax.inject.Provider;

public final class AndroidDeviceIdStrategy$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public AndroidDeviceIdStrategy$$InjectAdapter() {
        super("com.vungle.publisher.env.AndroidDeviceIdStrategy", "members/com.vungle.publisher.env.AndroidDeviceIdStrategy", true, AndroidDeviceIdStrategy.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)AndroidDeviceIdStrategy.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.cj", (Object)AndroidDeviceIdStrategy.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", AndroidDeviceIdStrategy.class, getClass().getClassLoader(), false, true);
    }

    public final AndroidDeviceIdStrategy get() {
        AndroidDeviceIdStrategy androidDeviceIdStrategy = new AndroidDeviceIdStrategy();
        injectMembers(androidDeviceIdStrategy);
        return androidDeviceIdStrategy;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(AndroidDeviceIdStrategy androidDeviceIdStrategy) {
        androidDeviceIdStrategy.a = (Context) this.a.get();
        androidDeviceIdStrategy.b = (cj) this.b.get();
        this.c.injectMembers(androidDeviceIdStrategy);
    }
}