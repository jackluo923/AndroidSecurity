package org.acra.e;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public class a extends LinkedList {
    private final int a;

    public a(int i) {
        this.a = i;
    }

    public void add(int i, Object obj) {
        if (size() == this.a) {
            removeFirst();
        }
        super.add(i, obj);
    }

    public boolean add(Object obj) {
        if (size() == this.a) {
            removeFirst();
        }
        return super.add(obj);
    }

    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection collection) {
        int size = size() + collection.size() - this.a;
        if (size > 0) {
            removeRange(0, size);
        }
        return super.addAll(collection);
    }

    public void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    public void addLast(Object obj) {
        add(obj);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = iterator();
        while (it.hasNext()) {
            stringBuilder.append(it.next().toString());
        }
        return stringBuilder.toString();
    }
}