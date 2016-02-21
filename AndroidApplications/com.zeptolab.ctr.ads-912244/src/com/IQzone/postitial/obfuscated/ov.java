package com.IQzone.postitial.obfuscated;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public class ov implements Queue {
    private static final ql a;
    private final ou b;
    private final px c;
    private final pw d;

    static {
        a = new ql();
    }

    public ov(pw pwVar, ou ouVar) {
        this.b = ouVar;
        this.d = pwVar;
        long j = 0;
        try {
            Iterator it = ((LinkedList) pwVar.a()).iterator();
            while (it.hasNext()) {
                Long l = (Long) it.next();
                j = l.longValue() > j ? l.longValue() : j;
            }
            this.c = new ow(this, j);
        } catch (om e) {
            throw new RuntimeException("<FifoCache><1>, There is something wrong with your provider");
        }
    }

    public boolean add(Object obj) {
        try {
            long longValue = ((Long) this.c.a()).longValue();
            LinkedList linkedList = (LinkedList) this.d.a();
            this.b.a(Long.valueOf(longValue), obj);
            linkedList.add(Long.valueOf(longValue));
            this.d.a(linkedList);
            return true;
        } catch (om e) {
            throw new RuntimeException("<FifoCache><15>, There is something wrong with your provider");
        }
    }

    public boolean addAll(Collection collection) {
        throw new RuntimeException("<FifoCache><11>, not supported");
    }

    public void clear() {
        try {
            LinkedList linkedList = (LinkedList) this.d.a();
            this.b.a();
            linkedList.clear();
            this.d.a(linkedList);
        } catch (om e) {
            throw new RuntimeException("<FifoCache><14>, There is something wrong with your provider");
        }
    }

    public boolean contains(Object obj) {
        try {
            return ((LinkedList) this.d.a()).contains(obj);
        } catch (om e) {
            throw new RuntimeException("<FifoCache><4>, There is something wrong with your provider");
        }
    }

    public boolean containsAll(Collection collection) {
        throw new RuntimeException("<FifoCache><10>, not supported");
    }

    public Object element() {
        Object peek = peek();
        if (peek != null) {
            return peek;
        }
        throw new IndexOutOfBoundsException("<FifoCache><19>, nothing in the FIFO");
    }

    public boolean isEmpty() {
        try {
            return ((LinkedList) this.d.a()).isEmpty();
        } catch (om e) {
            throw new RuntimeException("<FifoCache><3>, There is something wrong with your provider");
        }
    }

    public Iterator iterator() {
        throw new RuntimeException("<FifoCache><5>, Not supported");
    }

    public boolean offer(Object obj) {
        add(obj);
        return false;
    }

    public Object peek() {
        try {
            LinkedList linkedList = (LinkedList) this.d.a();
            if (linkedList.size() <= 0) {
                return null;
            }
            Long l = (Long) linkedList.get(0);
            this.d.a(linkedList);
            return this.b.a(l);
        } catch (om e) {
            throw new RuntimeException(new StringBuilder("<FifoCache><20>, ").append(e).toString());
        } catch (om e2) {
            throw new RuntimeException("<FifoCache><21>, There is something wrong with your provider");
        }
    }

    public Object poll() {
        try {
            LinkedList linkedList = (LinkedList) this.d.a();
            if (linkedList.size() <= 0) {
                return null;
            }
            Long l = (Long) linkedList.remove(0);
            this.d.a(linkedList);
            Object a = this.b.a(l);
            this.b.c(l);
            return a;
        } catch (om e) {
            throw new RuntimeException(new StringBuilder("<FifoCache><17>, ").append(e).toString());
        } catch (om e2) {
            throw new RuntimeException("<FifoCache><18>, There is something wrong with your provider");
        }
    }

    public Object remove() {
        Object poll = poll();
        if (poll != null) {
            return poll;
        }
        throw new IndexOutOfBoundsException("<FifoCache><16>, nothing in the FIFO");
    }

    public boolean remove(Object obj) {
        throw new RuntimeException("<FifoCache><9>, not supported");
    }

    public boolean removeAll(Collection collection) {
        throw new RuntimeException("<FifoCache><12>, not supported");
    }

    public boolean retainAll(Collection collection) {
        throw new RuntimeException("<FifoCache><13>, not supported");
    }

    public int size() {
        try {
            return ((LinkedList) this.d.a()).size();
        } catch (om e) {
            throw new RuntimeException("<FifoCache><2>, There is something wrong with your provider");
        }
    }

    public Object[] toArray() {
        try {
            Object[] objArr = new Object[((LinkedList) this.d.a()).size()];
            int i = 0;
            while (i < objArr.length) {
                objArr[i] = this.b.a(((LinkedList) this.d.a()).get(i));
                i++;
            }
            return objArr;
        } catch (om e) {
            om omVar = e;
            ql qlVar = a;
            throw new RuntimeException(new StringBuilder("<FifoCache><7>, ").append(omVar).toString());
        } catch (om e2) {
            throw new RuntimeException("<FifoCache><8>, There is something wrong with your provider");
        }
    }

    public Object[] toArray(Object[] objArr) {
        return toArray();
    }
}