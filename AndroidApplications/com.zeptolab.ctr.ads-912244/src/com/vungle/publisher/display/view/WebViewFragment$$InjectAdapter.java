package com.vungle.publisher.display.view;

import a.a.b;
import a.a.l;
import com.vungle.publisher.as;
import java.util.Set;

public final class WebViewFragment$$InjectAdapter extends b implements a.b {
    private b a;
    private b b;

    public WebViewFragment$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.display.view.WebViewFragment", false, WebViewFragment.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.as", (Object)WebViewFragment.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.display.view.AdFragment", WebViewFragment.class, getClass().getClassLoader(), false, true);
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(WebViewFragment webViewFragment) {
        webViewFragment.c = (as) this.a.get();
        this.b.injectMembers(webViewFragment);
    }
}