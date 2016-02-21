package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.BaseHtmlWebView;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public abstract class BaseHtmlWebViewPool {
    protected Context a;
    private Queue b;

    BaseHtmlWebViewPool(Context context) {
        this.a = context;
        this.b = new LinkedList();
        int i = 0;
        while (i < 3) {
            this.b.add(a());
            i++;
        }
    }

    protected abstract BaseHtmlWebView a();

    public BaseHtmlWebView a(Object obj, boolean z, String str, String str2) {
        BaseHtmlWebView baseHtmlWebView = (BaseHtmlWebView) this.b.remove();
        this.b.add(a());
        a(baseHtmlWebView, obj, z, str, str2);
        return baseHtmlWebView;
    }

    protected abstract void a(BaseHtmlWebView baseHtmlWebView, Object obj, boolean z, String str, String str2);

    void b() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((BaseHtmlWebView) it.next()).destroy();
        }
        this.b.clear();
    }
}