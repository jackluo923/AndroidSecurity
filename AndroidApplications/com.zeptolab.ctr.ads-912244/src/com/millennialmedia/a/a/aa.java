package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.z;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.f;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class aa {
    public v a(a aVar) {
        boolean p = aVar.p();
        aVar.a(true);
        try {
            v a = z.a(aVar);
            aVar.a(p);
            return a;
        } catch (StackOverflowError e) {
            throw new z("Failed parsing JSON source: " + aVar + " to Json", e);
        } catch (OutOfMemoryError e2) {
            throw new z("Failed parsing JSON source: " + aVar + " to Json", e2);
        } catch (Throwable th) {
        }
    }

    public v a(Reader reader) {
        try {
            a aVar = new a(reader);
            v a = a(aVar);
            if (a.s() || aVar.f() == d.j) {
                return a;
            }
            throw new af("Did not consume the entire document.");
        } catch (f e) {
            throw new af(e);
        } catch (IOException e2) {
            throw new w(e2);
        } catch (NumberFormatException e3) {
            throw new af(e3);
        }
    }

    public v a(String str) {
        return a(new StringReader(str));
    }
}