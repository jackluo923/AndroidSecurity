package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import java.net.InetAddress;

final class ag extends ak {
    ag() {
    }

    public InetAddress a(a aVar) {
        if (aVar.f() != d.i) {
            return InetAddress.getByName(aVar.h());
        }
        aVar.j();
        return null;
    }

    public void a(e eVar, InetAddress inetAddress) {
        eVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}