package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import java.net.URL;

final class ad extends ak {
    ad() {
    }

    public URL a(a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            String h = aVar.h();
            return "null".equals(h) ? null : new URL(h);
        }
    }

    public void a(e eVar, URL url) {
        eVar.b(url == null ? null : url.toExternalForm());
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}