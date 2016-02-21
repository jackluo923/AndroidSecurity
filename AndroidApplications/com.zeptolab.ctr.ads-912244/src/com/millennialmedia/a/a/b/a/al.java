package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import java.util.Locale;
import java.util.StringTokenizer;

final class al extends ak {
    al() {
    }

    public Locale a(a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            String nextToken;
            String nextToken2;
            String nextToken3;
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
            nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (nextToken2 == null && nextToken3 == null) {
                return new Locale(nextToken);
            }
            return nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
        }
    }

    public void a(e eVar, Locale locale) {
        eVar.b(locale == null ? null : locale.toString());
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}