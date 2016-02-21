package a.a;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

abstract class q {
    private final Map a;
    private final Lock b;
    private final Lock c;

    public q() {
        this.a = new LinkedHashMap();
        ReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.b = reentrantReadWriteLock.readLock();
        this.c = reentrantReadWriteLock.writeLock();
    }

    protected abstract Object a(Object obj);

    public final Object b(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        this.b.lock();
        Object obj2 = this.a.get(obj);
        if (obj2 != null) {
            this.b.unlock();
        } else {
            this.b.unlock();
            obj2 = a(obj);
            if (obj2 == null) {
                throw new NullPointerException("create returned null");
            }
            this.c.lock();
            this.a.put(obj, obj2);
            this.c.unlock();
        }
        return obj2;
    }

    public final String toString() {
        this.b.lock();
        String toString = this.a.toString();
        this.b.unlock();
        return toString;
    }
}