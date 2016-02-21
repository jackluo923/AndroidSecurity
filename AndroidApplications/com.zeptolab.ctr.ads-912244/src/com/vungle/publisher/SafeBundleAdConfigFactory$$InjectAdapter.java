package com.vungle.publisher;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class SafeBundleAdConfigFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public SafeBundleAdConfigFactory$$InjectAdapter() {
        super("com.vungle.publisher.SafeBundleAdConfigFactory", "members/com.vungle.publisher.SafeBundleAdConfigFactory", true, SafeBundleAdConfigFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.AdConfig", (Object)SafeBundleAdConfigFactory.class, getClass().getClassLoader());
    }

    public final SafeBundleAdConfigFactory get() {
        SafeBundleAdConfigFactory safeBundleAdConfigFactory = new SafeBundleAdConfigFactory();
        injectMembers(safeBundleAdConfigFactory);
        return safeBundleAdConfigFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(SafeBundleAdConfigFactory safeBundleAdConfigFactory) {
        safeBundleAdConfigFactory.a = (AdConfig) this.a.get();
    }
}