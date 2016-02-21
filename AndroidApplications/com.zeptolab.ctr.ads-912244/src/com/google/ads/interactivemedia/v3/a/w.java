package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.a.e;
import com.google.ads.interactivemedia.v3.a.d.a;
import com.google.ads.interactivemedia.v3.a.d.c;
import java.io.IOException;

public abstract class w {
    public final l a(Object obj) {
        try {
            c eVar = new e();
            a(eVar, obj);
            return eVar.a();
        } catch (IOException e) {
            throw new m(e);
        }
    }

    public abstract Object a(a aVar);

    public abstract void a(c cVar, Object obj);
}