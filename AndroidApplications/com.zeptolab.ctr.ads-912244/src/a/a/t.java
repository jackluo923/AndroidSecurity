package a.a;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class t {

    static class a extends AbstractSet {
        private final ArrayList a;

        a() {
            this.a = new ArrayList();
        }

        public boolean add(Object obj) {
            this.a.add(obj);
            return true;
        }

        public Iterator iterator() {
            return this.a.iterator();
        }

        public int size() {
            throw new UnsupportedOperationException();
        }
    }

    private static void a(Collection collection, List list) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.isCycleFree() || !bVar.isVisiting()) {
                bVar.setVisiting(true);
                list.add(bVar);
                Collection aVar = new a();
                bVar.getDependencies(aVar, aVar);
                a(aVar, list);
                bVar.setCycleFree(true);
                list.remove(list.size() - 1);
                bVar.setVisiting(false);
            } else {
                int indexOf = list.indexOf(bVar);
                StringBuilder append = new StringBuilder().append("Dependency cycle:");
                int i = indexOf;
                while (i < list.size()) {
                    append.append("\n    ").append(i - indexOf).append(". ").append(((b) list.get(i)).provideKey).append(" bound by ").append(list.get(i));
                    i++;
                }
                append.append("\n    ").append(0).append(". ").append(bVar.provideKey);
                throw new IllegalStateException(append.toString());
            }
        }
    }

    public void a(Collection collection) {
        a(collection, new ArrayList());
    }

    public void b(Collection collection) {
        List arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (!(bVar.library() || bVar.dependedOn())) {
                arrayList.add(bVar);
            }
        }
        if (!arrayList.isEmpty()) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("You have these unused @Provider methods:");
            int i = 0;
            while (i < arrayList.size()) {
                stringBuilder.append("\n    ").append(i + 1).append(". ").append(((b) arrayList.get(i)).requiredBy);
                i++;
            }
            stringBuilder.append("\n    Set library=true in your module to disable this check.");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public void c(Collection collection) {
        a(collection);
        b(collection);
    }
}