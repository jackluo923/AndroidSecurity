package a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class v extends b {
    private final v a;
    private final List b;

    public v(v vVar) {
        super(vVar.provideKey, null, false, vVar.requiredBy);
        this.a = vVar;
        setLibrary(vVar.library());
        setDependedOn(vVar.dependedOn());
        this.b = new ArrayList();
    }

    public v(String str, Object obj) {
        super(str, null, false, obj);
        this.a = null;
        this.b = new ArrayList();
    }

    public static void a(d dVar, String str, b bVar) {
        b(dVar, str, bVar).b.add(l.a(bVar));
    }

    private static v b(d dVar, String str, b bVar) {
        b a = dVar.a(str);
        v vVar;
        if (a instanceof v) {
            boolean z;
            vVar = (v) a;
            z = vVar.library() && bVar.library();
            vVar.setLibrary(z);
            return vVar;
        } else if (a != null) {
            throw new IllegalArgumentException("Duplicate:\n    " + a + "\n    " + bVar);
        } else {
            vVar = new v(str, bVar.requiredBy);
            vVar.setLibrary(bVar.library());
            dVar.a(str, vVar);
            return (v) dVar.a(str);
        }
    }

    public int a() {
        int i = 0;
        while (this != null) {
            i += this.b.size();
            this = this.a;
        }
        return i;
    }

    public void a(Set set) {
        throw new UnsupportedOperationException("Cannot inject members on a contributed Set<T>.");
    }

    public void attach(l lVar) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((b) it.next()).attach(lVar);
        }
    }

    public Set b() {
        Collection arrayList = new ArrayList();
        v vVar = this;
        while (vVar != null) {
            int size = vVar.b.size();
            int i = 0;
            while (i < size) {
                b bVar = (b) vVar.b.get(i);
                Object obj = bVar.get();
                if (bVar.provideKey.equals(this.provideKey)) {
                    arrayList.addAll((Set) obj);
                } else {
                    arrayList.add(obj);
                }
                i++;
            }
            vVar = vVar.a;
        }
        return Collections.unmodifiableSet(new LinkedHashSet(arrayList));
    }

    public /* synthetic */ Object get() {
        return b();
    }

    public void getDependencies(Set set, Set set2) {
        while (i != 0) {
            set.addAll(i.b);
            this = i.a;
        }
    }

    public /* synthetic */ void injectMembers(Object obj) {
        a((Set) obj);
    }

    public String toString() {
        boolean z = 1;
        StringBuilder stringBuilder = new StringBuilder("SetBinding[");
        while (this != null) {
            int size = this.b.size();
            boolean z2 = z;
            int i = 0;
            while (i < size) {
                if (i == 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append(this.b.get(i));
                i++;
                z2 = false;
            }
            this = this.a;
            i = i;
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}