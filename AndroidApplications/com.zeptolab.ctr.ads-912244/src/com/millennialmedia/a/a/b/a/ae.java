package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.w;
import java.net.URI;
import java.net.URISyntaxException;

final class ae extends ak {
    ae() {
    }

    public URI a(a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            try {
                String h = aVar.h();
                return "null".equals(h) ? null : new URI(h);
            } catch (URISyntaxException e) {
                throw new w(e);
            }
        }
    }

    public void a(e eVar, URI uri) {
        eVar.b(uri == null ? null : uri.toASCIIString());
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}