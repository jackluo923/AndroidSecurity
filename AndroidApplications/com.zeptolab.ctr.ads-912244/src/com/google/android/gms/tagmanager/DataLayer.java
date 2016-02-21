package com.google.android.gms.tagmanager;

import com.google.android.gms.location.LocationRequest;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT;
    static final String[] Ur;
    private static final Pattern Us;
    private final ConcurrentHashMap Ut;
    private final Map Uu;
    private final ReentrantLock Uv;
    private final LinkedList Uw;
    private final c Ux;
    private final CountDownLatch Uy;

    static interface c {

        public static interface a {
            void b(List list);
        }

        void a(a aVar);

        void a(List list, long j);

        void bi(String str);
    }

    static final class a {
        public final String UA;
        public final Object UB;

        a(String str, Object obj) {
            this.UA = str;
            this.UB = obj;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.UA.equals(aVar.UA) && this.UB.equals(aVar.UB);
        }

        public int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.UA.hashCode()), Integer.valueOf(this.UB.hashCode())});
        }

        public String toString() {
            return "Key: " + this.UA + " value: " + this.UB.toString();
        }
    }

    static interface b {
        void v(Map map);
    }

    static {
        OBJECT_NOT_PRESENT = new Object();
        Ur = "gtm.lifetime".toString().split("\\.");
        Us = Pattern.compile("(\\d+)\\s*([smhd]?)");
    }

    DataLayer() {
        this(new c() {
            public void a(com.google.android.gms.tagmanager.DataLayer.c.a aVar) {
                aVar.b(new ArrayList());
            }

            public void a(List list, long j) {
            }

            public void bi(String str) {
            }
        });
    }

    DataLayer(c cVar) {
        this.Ux = cVar;
        this.Ut = new ConcurrentHashMap();
        this.Uu = new HashMap();
        this.Uv = new ReentrantLock();
        this.Uw = new LinkedList();
        this.Uy = new CountDownLatch(1);
        iP();
    }

    private Object A(Map map) {
        Object obj;
        String[] strArr = Ur;
        int length = strArr.length;
        int i = 0;
        Map map2 = map;
        while (i < length) {
            Object obj2 = strArr[i];
            if (!(obj instanceof Map)) {
                return null;
            }
            i++;
            obj = ((Map) obj).get(obj2);
        }
        return obj;
    }

    private List B(Map map) {
        Object arrayList = new ArrayList();
        a(map, AdTrackerConstants.BLANK, arrayList);
        return arrayList;
    }

    private void C(Map map) {
        synchronized (this.Uu) {
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                a(b(str, map.get(str)), this.Uu);
            }
        }
        D(map);
    }

    private void D(Map map) {
        Iterator it = this.Ut.keySet().iterator();
        while (it.hasNext()) {
            ((b) it.next()).v(map);
        }
    }

    private void a(Map map, String str, Collection collection) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            String str2 = str + (str.length() == 0 ? AdTrackerConstants.BLANK : ".") + ((String) entry.getKey());
            if (entry.getValue() instanceof Map) {
                a((Map) entry.getValue(), str2, collection);
            } else if (!str2.equals("gtm.lifetime")) {
                collection.add(new a(str2, entry.getValue()));
            }
        }
    }

    static Long bh(String str) {
        Matcher matcher = Us.matcher(str);
        if (matcher.matches()) {
            long parseLong;
            try {
                parseLong = Long.parseLong(matcher.group(1));
            } catch (NumberFormatException e) {
                bh.w("illegal number in _lifetime value: " + str);
                parseLong = 0;
            }
            if (parseLong <= 0) {
                bh.u("non-positive _lifetime: " + str);
                return null;
            } else {
                String group = matcher.group(GoogleScorer.CLIENT_PLUS);
                if (group.length() == 0) {
                    return Long.valueOf(parseLong);
                }
                switch (group.charAt(0)) {
                    case MMException.UNKNOWN_ERROR:
                        return Long.valueOf((((parseLong * 1000) * 60) * 60) * 24);
                    case LocationRequest.PRIORITY_LOW_POWER:
                        return Long.valueOf(((parseLong * 1000) * 60) * 60);
                    case 'm':
                        return Long.valueOf((parseLong * 1000) * 60);
                    case 's':
                        return Long.valueOf(parseLong * 1000);
                    default:
                        bh.w("unknown units in _lifetime: " + str);
                        return null;
                }
            }
        } else {
            bh.u("unknown _lifetime: " + str);
            return null;
        }
    }

    private void iP() {
        this.Ux.a(new a() {
            public void b(List list) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    DataLayer.this.x(DataLayer.this.b(aVar.UA, aVar.UB));
                }
                DataLayer.this.Uy.countDown();
            }
        });
    }

    private void iQ() {
        int i = 0;
        while (true) {
            Map map = (Map) this.Uw.poll();
            if (map != null) {
                C(map);
                int i2 = i + 1;
                if (i2 > 500) {
                    this.Uw.clear();
                    throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
                } else {
                    i = i2;
                }
            } else {
                return;
            }
        }
    }

    public static List listOf(Object... objArr) {
        List arrayList = new ArrayList();
        int i = 0;
        while (i < objArr.length) {
            arrayList.add(objArr[i]);
            i++;
        }
        return arrayList;
    }

    public static Map mapOf(Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new IllegalArgumentException("expected even number of key-value pairs");
        }
        Map hashMap = new HashMap();
        int i = 0;
        while (i < objArr.length) {
            if (objArr[i] instanceof String) {
                hashMap.put((String) objArr[i], objArr[i + 1]);
                i += 2;
            } else {
                throw new IllegalArgumentException("key is not a string: " + objArr[i]);
            }
        }
        return hashMap;
    }

    private void x(Map map) {
        this.Uv.lock();
        this.Uw.offer(map);
        if (this.Uv.getHoldCount() == 1) {
            iQ();
        }
        y(map);
        this.Uv.unlock();
    }

    private void y(Map map) {
        Long z = z(map);
        if (z != null) {
            List B = B(map);
            B.remove("gtm.lifetime");
            this.Ux.a(B, z.longValue());
        }
    }

    private Long z(Map map) {
        Object A = A(map);
        return A == null ? null : bh(A.toString());
    }

    void a(b bVar) {
        this.Ut.put(bVar, Integer.valueOf(0));
    }

    void a(List list, List list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        int i = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (obj instanceof List) {
                if (!list2.get(i) instanceof List) {
                    list2.set(i, new ArrayList());
                }
                a((List) obj, (List) list2.get(i));
            } else if (obj instanceof Map) {
                if (!list2.get(i) instanceof Map) {
                    list2.set(i, new HashMap());
                }
                a((Map) obj, (Map) list2.get(i));
            } else if (obj != OBJECT_NOT_PRESENT) {
                list2.set(i, obj);
            }
            i++;
        }
    }

    void a(Map map, Map map2) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!map2.get(str) instanceof List) {
                    map2.put(str, new ArrayList());
                }
                a((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!map2.get(str) instanceof Map) {
                    map2.put(str, new HashMap());
                }
                a((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    Map b(String str, Object obj) {
        Map hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        Map map = hashMap;
        while (i < split.length - 1) {
            HashMap hashMap2 = new HashMap();
            map.put(split[i], hashMap2);
            i++;
            HashMap hashMap3 = hashMap2;
        }
        map.put(split[split.length - 1], obj);
        return hashMap;
    }

    void bg(String str) {
        push(str, null);
        this.Ux.bi(str);
    }

    public Object get(String str) {
        synchronized (this.Uu) {
            Object obj;
            Map map = this.Uu;
            String[] split = str.split("\\.");
            int length = split.length;
            Map map2 = map;
            int i = 0;
            while (i < length) {
                Object obj2 = split[i];
                if (obj instanceof Map) {
                    obj2 = ((Map) obj).get(obj2);
                    if (obj2 == null) {
                        return null;
                    } else {
                        i++;
                        obj = obj2;
                    }
                } else {
                    return null;
                }
            }
            return obj;
        }
    }

    public void push(String str, Object obj) {
        push(b(str, obj));
    }

    public void push(Map map) {
        try {
            this.Uy.await();
        } catch (InterruptedException e) {
            bh.w("DataLayer.push: unexpected InterruptedException");
        }
        x(map);
    }

    public void pushEvent(String str, Map map) {
        Map hashMap = new HashMap(map);
        hashMap.put(EVENT_KEY, str);
        push(hashMap);
    }
}