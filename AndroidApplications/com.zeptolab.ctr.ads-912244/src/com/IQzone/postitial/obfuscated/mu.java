package com.IQzone.postitial.obfuscated;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.Serializable;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class mu implements Serializable, Iterable, Collection, Set {
    private static final long a = 7945618847840882705L;
    private final Map b;

    public mu() {
        this.b = new IdentityHashMap();
    }

    public mu(Set set) {
        this.b = new IdentityHashMap();
        addAll(set);
    }

    public final boolean add(Object obj) {
        if (this.b.containsKey(obj)) {
            return false;
        }
        this.b.put(obj, AdTrackerConstants.BLANK);
        return true;
    }

    public final boolean addAll(Collection collection) {
        boolean z = false;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public final void clear() {
        this.b.keySet().clear();
    }

    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    public final boolean containsAll(Collection collection) {
        return this.b.keySet().containsAll(collection);
    }

    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    public final Iterator iterator() {
        return this.b.keySet().iterator();
    }

    public final boolean remove(Object obj) {
        return this.b.remove(obj) != null;
    }

    public final boolean removeAll(Collection collection) {
        return this.b.keySet().removeAll(collection);
    }

    public final boolean retainAll(Collection collection) {
        return this.b.keySet().retainAll(collection);
    }

    public final int size() {
        return this.b.size();
    }

    public final Object[] toArray() {
        return this.b.keySet().toArray();
    }

    public final Object[] toArray(Object[] objArr) {
        return this.b.keySet().toArray(objArr);
    }
}