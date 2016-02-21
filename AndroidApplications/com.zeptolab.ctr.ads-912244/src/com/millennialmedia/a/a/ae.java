package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.z;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.f;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class ae implements Iterator {
    private final a a;
    private final Object b;

    public ae(Reader reader) {
        this.a = new a(reader);
        this.a.a(true);
        this.b = new Object();
    }

    public ae(String str) {
        this(new StringReader(str));
    }

    public v a() {
        if (hasNext()) {
            try {
                return z.a(this.a);
            } catch (StackOverflowError e) {
                throw new z("Failed parsing JSON source to Json", e);
            } catch (OutOfMemoryError e2) {
                throw new z("Failed parsing JSON source to Json", e2);
            } catch (z e3) {
                NoSuchElementException noSuchElementException = e3;
                if (noSuchElementException.getCause() instanceof EOFException) {
                    noSuchElementException = new NoSuchElementException();
                }
                throw noSuchElementException;
            }
        }
        throw new NoSuchElementException();
    }

    public boolean hasNext() {
        boolean z;
        synchronized (this.b) {
            try {
                z = this.a.f() != d.j;
            } catch (f e) {
                throw new af(e);
            } catch (IOException e2) {
                throw new w(e2);
            } catch (Throwable th) {
            }
        }
        return z;
    }

    public /* synthetic */ Object next() {
        return a();
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}