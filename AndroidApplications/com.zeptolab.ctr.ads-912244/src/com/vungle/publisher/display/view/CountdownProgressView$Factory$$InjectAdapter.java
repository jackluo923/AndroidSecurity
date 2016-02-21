package com.vungle.publisher.display.view;

import a.a.b;
import a.a.l;
import com.vungle.publisher.image.BitmapFactory;
import java.util.Set;
import javax.inject.Provider;

public final class CountdownProgressView$Factory$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public CountdownProgressView$Factory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.CountdownProgressView$Factory", "members/com.vungle.publisher.display.view.CountdownProgressView$Factory", true, Factory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.image.BitmapFactory", (Object)Factory.class, getClass().getClassLoader());
    }

    public final Factory get() {
        Factory factory = new Factory();
        injectMembers(factory);
        return factory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(Factory factory) {
        factory.a = (BitmapFactory) this.a.get();
    }
}