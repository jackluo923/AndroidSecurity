package com.vungle.publisher.file;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class CacheManager$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public CacheManager$$InjectAdapter() {
        super("com.vungle.publisher.file.CacheManager", "members/com.vungle.publisher.file.CacheManager", true, CacheManager.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("@com.vungle.publisher.inject.annotations.AdTempDirectory()/javax.inject.Provider<java.lang.String>", (Object)CacheManager.class, getClass().getClassLoader());
        this.b = lVar.a("@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/javax.inject.Provider<java.lang.String>", (Object)CacheManager.class, getClass().getClassLoader());
    }

    public final CacheManager get() {
        CacheManager cacheManager = new CacheManager();
        injectMembers(cacheManager);
        return cacheManager;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(CacheManager cacheManager) {
        cacheManager.a = (Provider) this.a.get();
        cacheManager.b = (Provider) this.b.get();
    }
}