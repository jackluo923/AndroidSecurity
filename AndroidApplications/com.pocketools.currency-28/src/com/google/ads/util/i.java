package com.google.ads.util;

import com.pocketools.currency.PocketCurrency;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class i {
    private static final Object a;
    private static int b;
    private static HashMap<Class<?>, Integer> c;
    private final ArrayList<a<?>> d;
    public final int m;

    public abstract class a<T> {
        protected T a;
        protected final String b;

        private a(i iVar, String str) {
            this((i)str, (String)null);
        }

        private a(String str, T t) {
            this.b = str;
            i.this.a(this);
            this.a = t;
        }

        public String toString() {
            return i.this.toString() + "." + this.b + " = " + this.a;
        }
    }

    public final class b<T> extends com.google.ads.util.i.a<T> {
        public b(String str, T t) {
            super(str, t, null);
        }

        public T a() {
            return this.a;
        }

        public String toString() {
            return super.toString() + " (!)";
        }
    }

    public final class c<T> extends com.google.ads.util.i.a<T> {
        private boolean e;

        public c(String str) {
            super((i)str, (String)null);
            this.e = false;
            this.e = false;
        }

        public c(String str, T t) {
            super(str, t, null);
            this.e = false;
            this.e = false;
        }

        public synchronized T a() {
            return this.a;
        }

        public synchronized void a(T t) {
            b.d("State changed - " + i.this.toString() + "." + this.b + ": '" + t + "' <-- '" + this.a + "'.");
            this.a = t;
            this.e = true;
        }

        public String toString() {
            return super.toString() + (this.e ? " (*)" : PocketCurrency.AD_MOB_KEYWORD_HINT);
        }
    }

    public final class d<T> extends com.google.ads.util.i.a<WeakReference<T>> {
        public d(String str, T t) {
            super(str, new WeakReference(t), null);
        }

        public T a() {
            return ((WeakReference) this.a).get();
        }

        public String toString() {
            return i.this.toString() + "." + this.b + " = " + a() + " (?)";
        }
    }

    static {
        a = new Object();
        b = 0;
        c = new HashMap();
    }

    public i() {
        this.d = new ArrayList();
        synchronized (a) {
            int i = b;
            b = i + 1;
            this.m = i;
            Integer num = (Integer) c.get(getClass());
            if (num == null) {
                c.put(getClass(), Integer.valueOf(1));
            } else {
                c.put(getClass(), Integer.valueOf(num.intValue() + 1));
            }
        }
        b.d("State created: " + toString());
    }

    private void a(a<?> aVar) {
        this.d.add(aVar);
    }

    protected void finalize() throws Throwable {
        synchronized (a) {
            c.put(getClass(), Integer.valueOf(((Integer) c.get(getClass())).intValue() - 1));
        }
        super.finalize();
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + this.m + "]";
    }
}