package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.a.f;
import com.millennialmedia.a.a.b.a.h;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.e;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class ak {
    public final ak a() {
        return new al(this);
    }

    public final Object a(v vVar) {
        try {
            return b(new f(vVar));
        } catch (IOException e) {
            throw new w(e);
        }
    }

    public final Object a(Reader reader) {
        return b(new a(reader));
    }

    public final Object a(String str) {
        return a(new StringReader(str));
    }

    public final String a(Object obj) {
        Writer stringWriter = new StringWriter();
        a(stringWriter, obj);
        return stringWriter.toString();
    }

    public abstract void a(e eVar, Object obj);

    public final void a(Writer writer, Object obj) {
        a(new e(writer), obj);
    }

    public final v b(Object obj) {
        try {
            e hVar = new h();
            a(hVar, obj);
            return hVar.a();
        } catch (IOException e) {
            throw new w(e);
        }
    }

    public abstract Object b(a aVar);
}