package com.google.android.gms.internal;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

public class ev {
    private final LinkedHashMap Ch;
    private int Ci;
    private int Cj;
    private int Ck;
    private int Cl;
    private int Cm;
    private int Cn;
    private int size;

    public ev(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.Ci = i;
        this.Ch = new LinkedHashMap(0, 0.75f, true);
    }

    private int c(Object obj, Object obj2) {
        int sizeOf = sizeOf(obj, obj2);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }

    protected Object create(Object obj) {
        return null;
    }

    protected void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final Object get(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            Object obj2 = this.Ch.get(obj);
            if (obj2 != null) {
                this.Cm++;
                return obj2;
            } else {
                this.Cn++;
                Object create = create(obj);
                if (create == null) {
                    return null;
                }
                synchronized (this) {
                    this.Ck++;
                    obj2 = this.Ch.put(obj, create);
                    if (obj2 != null) {
                        this.Ch.put(obj, obj2);
                    } else {
                        this.size += c(obj, create);
                    }
                }
                if (obj2 != null) {
                    entryRemoved(false, obj, create, obj2);
                    return obj2;
                } else {
                    trimToSize(this.Ci);
                    return create;
                }
            }
        }
    }

    public final Object put(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        Object put;
        synchronized (this) {
            this.Cj++;
            this.size += c(obj, obj2);
            put = this.Ch.put(obj, obj2);
            if (put != null) {
                this.size -= c(obj, put);
            }
        }
        if (put != null) {
            entryRemoved(false, obj, put, obj2);
        }
        trimToSize(this.Ci);
        return put;
    }

    public final synchronized int size() {
        return this.size;
    }

    protected int sizeOf(Object obj, Object obj2) {
        return 1;
    }

    public final synchronized String toString() {
        String format;
        int i = 0;
        synchronized (this) {
            int i2 = this.Cm + this.Cn;
            if (i2 != 0) {
                i = (this.Cm * 100) / i2;
            }
            format = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[]{Integer.valueOf(this.Ci), Integer.valueOf(this.Cm), Integer.valueOf(this.Cn), Integer.valueOf(i)});
        }
        return format;
    }

    public void trimToSize(int i) {
        while (true) {
            synchronized (this) {
                if (this.size >= 0) {
                    if (!this.Ch.isEmpty() || this.size == 0) {
                        if (this.size > i && !this.Ch.isEmpty()) {
                            Entry entry = (Entry) this.Ch.entrySet().iterator().next();
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            this.Ch.remove(key);
                            this.size -= c(key, value);
                            this.Cl++;
                            entryRemoved(true, key, value, null);
                        }
                        return;
                    }
                }
                throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
            }
        }
    }
}