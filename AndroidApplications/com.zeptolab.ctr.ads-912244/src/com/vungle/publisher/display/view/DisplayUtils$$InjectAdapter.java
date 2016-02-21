package com.vungle.publisher.display.view;

import a.a.b;
import a.a.l;
import android.content.Context;
import java.util.Set;
import javax.inject.Provider;

public final class DisplayUtils$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public DisplayUtils$$InjectAdapter() {
        super("com.vungle.publisher.display.view.DisplayUtils", "members/com.vungle.publisher.display.view.DisplayUtils", true, DisplayUtils.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)DisplayUtils.class, getClass().getClassLoader());
    }

    public final DisplayUtils get() {
        DisplayUtils displayUtils = new DisplayUtils();
        injectMembers(displayUtils);
        return displayUtils;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(DisplayUtils displayUtils) {
        displayUtils.a = (Context) this.a.get();
    }
}