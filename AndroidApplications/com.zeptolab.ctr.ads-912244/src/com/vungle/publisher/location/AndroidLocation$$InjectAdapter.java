package com.vungle.publisher.location;

import a.a.b;
import a.a.l;
import com.vungle.publisher.bg;
import java.util.Set;
import javax.inject.Provider;

public final class AndroidLocation$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public AndroidLocation$$InjectAdapter() {
        super("com.vungle.publisher.location.AndroidLocation", "members/com.vungle.publisher.location.AndroidLocation", true, AndroidLocation.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.bg", (Object)AndroidLocation.class, getClass().getClassLoader());
    }

    public final AndroidLocation get() {
        AndroidLocation androidLocation = new AndroidLocation();
        injectMembers(androidLocation);
        return androidLocation;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(AndroidLocation androidLocation) {
        androidLocation.a = (bg) this.a.get();
    }
}