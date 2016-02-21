package android.support.v4.util;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class LruCache {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruCache(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.maxSize = i;
        this.map = new LinkedHashMap(0, 0.75f, true);
    }

    private int safeSizeOf(Object obj, Object obj2) {
        int sizeOf = sizeOf(obj, obj2);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }

    protected Object create(Object obj) {
        return null;
    }

    public final synchronized int createCount() {
        return this.createCount;
    }

    protected void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int evictionCount() {
        return this.evictionCount;
    }

    public final Object get(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            Object obj2 = this.map.get(obj);
            if (obj2 != null) {
                this.hitCount++;
                return obj2;
            } else {
                this.missCount++;
                Object create = create(obj);
                if (create == null) {
                    return null;
                }
                synchronized (this) {
                    this.createCount++;
                    obj2 = this.map.put(obj, create);
                    if (obj2 != null) {
                        this.map.put(obj, obj2);
                    } else {
                        this.size += safeSizeOf(obj, create);
                    }
                }
                if (obj2 != null) {
                    entryRemoved(false, obj, create, obj2);
                    return obj2;
                } else {
                    trimToSize(this.maxSize);
                    return create;
                }
            }
        }
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int maxSize() {
        return this.maxSize;
    }

    public final synchronized int missCount() {
        return this.missCount;
    }

    public final Object put(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        Object put;
        synchronized (this) {
            this.putCount++;
            this.size += safeSizeOf(obj, obj2);
            put = this.map.put(obj, obj2);
            if (put != null) {
                this.size -= safeSizeOf(obj, put);
            }
        }
        if (put != null) {
            entryRemoved(false, obj, put, obj2);
        }
        trimToSize(this.maxSize);
        return put;
    }

    public final synchronized int putCount() {
        return this.putCount;
    }

    public final Object remove(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        Object remove;
        synchronized (this) {
            remove = this.map.remove(obj);
            if (remove != null) {
                this.size -= safeSizeOf(obj, remove);
            }
        }
        if (remove != null) {
            entryRemoved(false, obj, remove, null);
        }
        return remove;
    }

    public final synchronized int size() {
        return this.size;
    }

    protected int sizeOf(Object obj, Object obj2) {
        return 1;
    }

    public final synchronized Map snapshot() {
        return new LinkedHashMap(this.map);
    }

    public final synchronized String toString() {
        String format;
        int i = 0;
        synchronized (this) {
            int i2 = this.hitCount + this.missCount;
            if (i2 != 0) {
                i = (this.hitCount * 100) / i2;
            }
            format = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[]{Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i)});
        }
        return format;
    }

    public void trimToSize(int i) {
        while (true) {
            synchronized (this) {
                if (this.size >= 0) {
                    if (!this.map.isEmpty() || this.size == 0) {
                        if (this.size > i && !this.map.isEmpty()) {
                            Entry entry = (Entry) this.map.entrySet().iterator().next();
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            this.map.remove(key);
                            this.size -= safeSizeOf(key, value);
                            this.evictionCount++;
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