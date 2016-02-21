package com.vungle.publisher;

import a.a.b;
import a.a.l;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.display.view.VideoFragment.Factory;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.reporting.AdReportEventListener;
import java.util.Set;
import javax.inject.Provider;

public final class FullScreenAdActivity$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;

    public FullScreenAdActivity$$InjectAdapter() {
        super("com.vungle.publisher.FullScreenAdActivity", "members/com.vungle.publisher.FullScreenAdActivity", false, FullScreenAdActivity.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)FullScreenAdActivity.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.reporting.AdReportEventListener", (Object)FullScreenAdActivity.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.as", (Object)FullScreenAdActivity.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.cj", (Object)FullScreenAdActivity.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.display.view.VideoFragment$Factory", (Object)FullScreenAdActivity.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.env.SdkState", (Object)FullScreenAdActivity.class, getClass().getClassLoader());
    }

    public final FullScreenAdActivity get() {
        FullScreenAdActivity fullScreenAdActivity = new FullScreenAdActivity();
        injectMembers(fullScreenAdActivity);
        return fullScreenAdActivity;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
    }

    public final void injectMembers(FullScreenAdActivity fullScreenAdActivity) {
        fullScreenAdActivity.a = (AdManager) this.a.get();
        fullScreenAdActivity.b = (AdReportEventListener) this.b.get();
        fullScreenAdActivity.c = (as) this.c.get();
        fullScreenAdActivity.d = (cj) this.d.get();
        fullScreenAdActivity.e = (Factory) this.e.get();
        fullScreenAdActivity.f = (SdkState) this.f.get();
    }
}