package com.google.ads.util;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class i {
    private static final Object a;
    private static int b;
    private static HashMap c;
    private final ArrayList d;
    public final int o;

    public abstract class a {
        protected Object a;
        protected final String b;

        private a(i iVar, String str) {
            this((i)str, (String)null);
        }

        private a(String str, Object obj) {
            this.b = str;
            i.this.a(this);
            this.a = obj;
        }

        public String toString() {
            return i.this.toString() + "." + this.b + " = " + this.a;
        }
    }

    public final class b extends com.google.ads.util.i.a {
        public b(String str, Object obj) {
            super(str, obj, null);
        }

        public Object a() {
            return this.a;
        }

        public String toString() {
            return super.toString() + " (!)";
        }
    }

    public final class c extends com.google.ads.util.i.a {
        private boolean e;

        public c(String str) {
            super((i)str, (String)null);
            this.e = false;
            this.e = false;
        }

        public c(String str, Object obj) {
            super(str, obj, null);
            this.e = false;
            this.e = false;
        }

        public synchronized Object a() {
            return this.a;
        }

        public synchronized void a(Object obj) {
            b.d("State changed - " + i.this.toString() + "." + this.b + ": '" + obj + "' <-- '" + this.a + "'.");
            this.a = obj;
            this.e = true;
        }

        public String toString() {
            return super.toString() + (this.e ? " (*)" : "");
        }
    }

    public final class d extends com.google.ads.util.i.a {
        public d(String str, Object obj) {
            super(str, new WeakReference(obj), null);
        }

        public Object a() {
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
            this.o = i;
            Integer num = (Integer) c.get(getClass());
            if (num == null) {
                c.put(getClass(), Integer.valueOf(1));
            } else {
                c.put(getClass(), Integer.valueOf(num.intValue() + 1));
            }
        }
        b.d("State created: " + toString());
    }

    private void a(a aVar) {
        this.d.add(aVar);
    }

    protected void finalize() {
        synchronized (a) {
            c.put(getClass(), Integer.valueOf(((Integer) c.get(getClass())).intValue() - 1));
        }
        super.finalize();
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + this.o + "]";
    }
}