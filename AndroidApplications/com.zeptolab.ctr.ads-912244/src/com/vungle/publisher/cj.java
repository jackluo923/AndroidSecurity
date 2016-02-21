package com.vungle.publisher;

import android.os.Looper;
import com.vungle.log.Logger;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class cj {
    static ExecutorService a;
    private static final Map b;
    private final Map c;
    private final Map d;
    private final Map e;
    private final ThreadLocal f;
    private final cl g;
    private final ci h;
    private final ch i;
    private final cr j;
    private boolean k;
    private boolean l;

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ct.values().length];
            try {
                a[ct.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ct.b.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ct.c.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[ct.d.ordinal()] = 4;
        }
    }

    static final class a {
        List a;
        boolean b;
        boolean c;
        cs d;
        Object e;
        boolean f;

        a() {
            this.a = new ArrayList();
        }
    }

    static {
        a = Executors.newCachedThreadPool();
        b = new HashMap();
    }

    public cj() {
        this.f = new ThreadLocal() {
            protected final /* synthetic */ Object initialValue() {
                return new a();
            }
        };
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new ConcurrentHashMap();
        this.g = new cl(this, Looper.getMainLooper());
        this.h = new ci(this);
        this.i = new ch(this);
        this.j = new cr();
        this.l = true;
    }

    private void a(cs csVar, Object obj) {
        try {
            csVar.b.a.invoke(csVar.a, new Object[]{obj});
        } catch (InvocationTargetException e) {
            cause = e.getCause();
            Throwable cause2;
            if (obj instanceof cp) {
                Logger.e(Logger.EVENT_TAG, new StringBuilder("SubscriberExceptionEvent subscriber ").append(csVar.a.getClass()).append(" threw an exception").toString(), cause2);
                cp cpVar = (cp) obj;
                Logger.e(Logger.EVENT_TAG, new StringBuilder("Initial event ").append(cpVar.c).append(" caused exception in ").append(cpVar.d).toString(), cpVar.b);
            } else {
                if (this.l) {
                    Logger.e(Logger.EVENT_TAG, new StringBuilder("Could not dispatch event: ").append(obj.getClass()).append(" to subscribing class ").append(csVar.a.getClass()).toString(), cause2);
                }
                b(new cp(this, cause2, obj, csVar.a));
            }
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unexpected exception", e2);
        }
    }

    private void a(cs csVar, Object obj, boolean z) {
        cn a;
        switch (AnonymousClass_2.a[csVar.b.b.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                a(csVar, obj);
            case GoogleScorer.CLIENT_PLUS:
                if (z) {
                    a(csVar, obj);
                } else {
                    cl clVar = this.g;
                    a = cn.a(csVar, obj);
                    synchronized (clVar) {
                        clVar.a.a(a);
                        if (!clVar.b) {
                            clVar.b = true;
                            if (!clVar.sendMessage(clVar.obtainMessage())) {
                                throw new ck("Could not send handler message");
                            }
                        }
                    }
                }
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                if (z) {
                    Runnable runnable = this.h;
                    a = cn.a(csVar, obj);
                    synchronized (runnable) {
                        runnable.a.a(a);
                        if (!runnable.b) {
                            runnable.b = true;
                            a.execute(runnable);
                        }
                    }
                } else {
                    a(csVar, obj);
                }
            case GoogleScorer.CLIENT_APPSTATE:
                Runnable runnable2 = this.i;
                runnable2.a.a(cn.a(csVar, obj));
                a.execute(runnable2);
            default:
                throw new IllegalStateException(new StringBuilder("Unknown thread mode: ").append(csVar.b.b).toString());
        }
    }

    private static void a(List list, Class[] clsArr) {
        int length = clsArr.length;
        int i = 0;
        while (i < length) {
            Class cls = clsArr[i];
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
            i++;
        }
    }

    private static List b(Class cls) {
        List list;
        synchronized (b) {
            list = (List) b.get(cls);
            if (list == null) {
                list = new ArrayList();
                Class cls2 = cls;
                while (cls2 != null) {
                    list.add(cls2);
                    a(list, cls2.getInterfaces());
                    cls2 = cls2.getSuperclass();
                }
                b.put(cls, list);
            }
        }
        return list;
    }

    public final Object a(Class cls) {
        Object cast;
        synchronized (this.e) {
            cast = cls.cast(this.e.remove(cls));
        }
        return cast;
    }

    final void a(cn cnVar) {
        Object obj = cnVar.a;
        cs csVar = cnVar.b;
        cn.a(cnVar);
        if (csVar.d) {
            a(csVar, obj);
        }
    }

    public final synchronized void a(Object obj) {
        List list = (List) this.d.get(obj);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                list = (List) this.c.get((Class) it.next());
                if (list != null) {
                    int size = list.size();
                    int i = 0;
                    while (i < size) {
                        int i2;
                        cs csVar = (cs) list.get(i);
                        if (csVar.a == obj) {
                            csVar.d = false;
                            list.remove(i);
                            i2 = i - 1;
                            i = size - 1;
                        } else {
                            i2 = i;
                            i = size;
                        }
                        size = i;
                        i = i2 + 1;
                    }
                }
            }
            this.d.remove(obj);
        } else {
            Logger.w(Logger.EVENT_TAG, new StringBuilder("Subscriber to unregister was not registered before: ").append(obj.getClass()).toString());
        }
    }

    public final synchronized void a(Object obj, String str, boolean z) {
        try {
            cr crVar = this.j;
            Iterator it = cr.a(obj.getClass(), str).iterator();
            while (it.hasNext()) {
                CopyOnWriteArrayList copyOnWriteArrayList;
                cq cqVar = (cq) it.next();
                this.k = true;
                Class cls = cqVar.c;
                CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) this.c.get(cls);
                cs csVar = new cs(obj, cqVar);
                if (copyOnWriteArrayList2 == null) {
                    copyOnWriteArrayList2 = new CopyOnWriteArrayList();
                    this.c.put(cls, copyOnWriteArrayList2);
                    copyOnWriteArrayList = copyOnWriteArrayList2;
                } else {
                    Iterator it2 = copyOnWriteArrayList2.iterator();
                    while (it2.hasNext()) {
                        if (((cs) it2.next()).equals(csVar)) {
                            throw new ck(new StringBuilder("Subscriber ").append(obj.getClass()).append(" already registered to event ").append(cls).toString());
                        }
                    }
                    copyOnWriteArrayList = copyOnWriteArrayList2;
                }
                int size = copyOnWriteArrayList.size();
                int i = 0;
                while (i <= size) {
                    if (i != size && csVar.c <= ((cs) copyOnWriteArrayList.get(i)).c) {
                        i++;
                    }
                    copyOnWriteArrayList.add(i, csVar);
                    break;
                    break;
                }
                List list = (List) this.d.get(obj);
                if (list == null) {
                    list = new ArrayList();
                    this.d.put(obj, list);
                }
                list.add(cls);
                if (z) {
                    Object obj2;
                    synchronized (this.e) {
                        obj2 = this.e.get(cls);
                    }
                    if (obj2 != null) {
                        a(csVar, obj2, Looper.getMainLooper() == Looper.myLooper());
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(java.lang.Object r13) {
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.publisher.cj.b(java.lang.Object):void");
        /*
        r12 = this;
        r2 = 1;
        r3 = 0;
        r0 = r12.f;
        r0 = r0.get();
        r0 = (com.vungle.publisher.cj.a) r0;
        r6 = r0.a;
        r6.add(r13);
        r1 = r0.b;
        if (r1 == 0) goto L_0x0014;
    L_0x0013:
        return;
    L_0x0014:
        r1 = android.os.Looper.getMainLooper();
        r4 = android.os.Looper.myLooper();
        if (r1 != r4) goto L_0x002f;
    L_0x001e:
        r1 = r2;
    L_0x001f:
        r0.c = r1;
        r0.b = r2;
        r1 = r0.f;
        if (r1 == 0) goto L_0x0057;
    L_0x0027:
        r0 = new com.vungle.publisher.ck;
        r1 = "Internal error. Abort state was not reset";
        r0.<init>(r1);
        throw r0;
    L_0x002f:
        r1 = r3;
        goto L_0x001f;
    L_0x0031:
        if (r4 != 0) goto L_0x0057;
    L_0x0033:
        r1 = "VungleEvent";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00b9 }
        r5 = "No subscribers registered for event ";
        r4.<init>(r5);	 Catch:{ all -> 0x00b9 }
        r4 = r4.append(r8);	 Catch:{ all -> 0x00b9 }
        r4 = r4.toString();	 Catch:{ all -> 0x00b9 }
        com.vungle.log.Logger.d(r1, r4);	 Catch:{ all -> 0x00b9 }
        r1 = com.vungle.publisher.cm.class;
        if (r8 == r1) goto L_0x0057;
    L_0x004b:
        r1 = com.vungle.publisher.cp.class;
        if (r8 == r1) goto L_0x0057;
    L_0x004f:
        r1 = new com.vungle.publisher.cm;	 Catch:{ all -> 0x00b9 }
        r1.<init>(r12, r7);	 Catch:{ all -> 0x00b9 }
        r12.b(r1);	 Catch:{ all -> 0x00b9 }
    L_0x0057:
        r1 = r6.isEmpty();	 Catch:{ all -> 0x00b9 }
        if (r1 != 0) goto L_0x00ca;
    L_0x005d:
        r1 = 0;
        r7 = r6.remove(r1);	 Catch:{ all -> 0x00b9 }
        r8 = r7.getClass();	 Catch:{ all -> 0x00b9 }
        r9 = b(r8);	 Catch:{ all -> 0x00b9 }
        r10 = r9.size();	 Catch:{ all -> 0x00b9 }
        r5 = r3;
        r4 = r3;
    L_0x0070:
        if (r5 >= r10) goto L_0x0031;
    L_0x0072:
        r1 = r9.get(r5);	 Catch:{ all -> 0x00b9 }
        r1 = (java.lang.Class) r1;	 Catch:{ all -> 0x00b9 }
        monitor-enter(r12);	 Catch:{ all -> 0x00b9 }
        r11 = r12.c;	 Catch:{ all -> 0x00b6 }
        r1 = r11.get(r1);	 Catch:{ all -> 0x00b6 }
        r1 = (java.util.concurrent.CopyOnWriteArrayList) r1;	 Catch:{ all -> 0x00b6 }
        monitor-exit(r12);	 Catch:{ all -> 0x00b6 }
        if (r1 == 0) goto L_0x00d0;
    L_0x0084:
        r11 = r1.isEmpty();	 Catch:{ all -> 0x00b9 }
        if (r11 != 0) goto L_0x00d0;
    L_0x008a:
        r4 = r1.iterator();	 Catch:{ all -> 0x00b9 }
    L_0x008e:
        r1 = r4.hasNext();	 Catch:{ all -> 0x00b9 }
        if (r1 == 0) goto L_0x00b0;
    L_0x0094:
        r1 = r4.next();	 Catch:{ all -> 0x00b9 }
        r1 = (com.vungle.publisher.cs) r1;	 Catch:{ all -> 0x00b9 }
        r0.e = r7;	 Catch:{ all -> 0x00b9 }
        r0.d = r1;	 Catch:{ all -> 0x00b9 }
        r11 = r0.c;	 Catch:{ all -> 0x00bf }
        r12.a(r1, r7, r11);	 Catch:{ all -> 0x00bf }
        r1 = r0.f;	 Catch:{ all -> 0x00bf }
        r11 = 0;
        r0.e = r11;	 Catch:{ all -> 0x00b9 }
        r11 = 0;
        r0.d = r11;	 Catch:{ all -> 0x00b9 }
        r11 = 0;
        r0.f = r11;	 Catch:{ all -> 0x00b9 }
        if (r1 == 0) goto L_0x008e;
    L_0x00b0:
        r1 = r2;
    L_0x00b1:
        r4 = r5 + 1;
        r5 = r4;
        r4 = r1;
        goto L_0x0070;
    L_0x00b6:
        r1 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x00b9 }
        throw r1;	 Catch:{ all -> 0x00b9 }
    L_0x00b9:
        r1 = move-exception;
        r0.b = r3;
        r0.c = r3;
        throw r1;
    L_0x00bf:
        r1 = move-exception;
        r2 = 0;
        r0.e = r2;	 Catch:{ all -> 0x00b9 }
        r2 = 0;
        r0.d = r2;	 Catch:{ all -> 0x00b9 }
        r2 = 0;
        r0.f = r2;	 Catch:{ all -> 0x00b9 }
        throw r1;	 Catch:{ all -> 0x00b9 }
    L_0x00ca:
        r0.b = r3;
        r0.c = r3;
        goto L_0x0013;
    L_0x00d0:
        r1 = r4;
        goto L_0x00b1;
        */
    }

    public final void c(Object obj) {
        synchronized (this.e) {
            this.e.put(obj.getClass(), obj);
        }
        b(obj);
    }
}