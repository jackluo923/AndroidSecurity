package a.a;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class s {
    private s() {
    }

    public static Map a(n nVar, Object[] objArr) {
        Map linkedHashMap = new LinkedHashMap(objArr.length);
        int i = 0;
        while (i < objArr.length) {
            if (objArr[i] instanceof Class) {
                r a = nVar.a((Class) objArr[i]);
                linkedHashMap.put(a, a.newModule());
            } else {
                linkedHashMap.put(nVar.a(objArr[i].getClass()), objArr[i]);
            }
            i++;
        }
        Map linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        Map linkedHashMap3 = new LinkedHashMap();
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            a(nVar, (r) it.next(), linkedHashMap3);
        }
        it = linkedHashMap3.values().iterator();
        while (it.hasNext()) {
            a = (r) it.next();
            if (!linkedHashMap2.containsKey(a)) {
                linkedHashMap2.put(a, a.newModule());
            }
        }
        return linkedHashMap2;
    }

    private static void a(n nVar, r rVar, Map map) {
        Class[] clsArr = rVar.includes;
        int length = clsArr.length;
        int i = 0;
        while (i < length) {
            Class cls = clsArr[i];
            if (!map.containsKey(cls)) {
                r a = nVar.a(cls);
                map.put(cls, a);
                a(nVar, a, map);
            }
            i++;
        }
    }
}