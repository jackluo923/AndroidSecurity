package android.support.v4.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

// compiled from: ProGuard
public class a extends m implements Map {
    g a;

    private g b() {
        if (this.a == null) {
            this.a = new b(this);
        }
        return this.a;
    }

    public Set entrySet() {
        return b().d();
    }

    public Set keySet() {
        return b().e();
    }

    public void putAll(Map map) {
        a(this.h + map.size());
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            put(entry.getKey(), entry.getValue());
        }
    }

    public Collection values() {
        return b().f();
    }
}