package com.google.ads.interactivemedia.v3.a.b;

import com.google.ads.interactivemedia.v3.a.c.a;
import com.google.ads.interactivemedia.v3.a.h;
import com.google.ads.interactivemedia.v3.a.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class c {
    private final Map a;

    final class AnonymousClass_1 implements h {
        final /* synthetic */ h a;
        final /* synthetic */ Type b;

        AnonymousClass_1(h hVar, Type type) {
            this.a = hVar;
            this.b = type;
        }

        public final Object a() {
            h hVar = this.a;
            Type type = this.b;
            return hVar.a();
        }
    }

    final class AnonymousClass_4 implements h {
        final /* synthetic */ Class a;
        final /* synthetic */ Type b;
        private final k d;

        AnonymousClass_4(Class cls, Type type) {
            this.a = cls;
            this.b = type;
            this.d = k.a();
        }

        public final Object a() {
            try {
                return this.d.a(this.a);
            } catch (Exception e) {
                throw new RuntimeException(new StringBuilder("Unable to invoke no-args constructor for ").append(this.b).append(". Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
            }
        }
    }

    final class AnonymousClass_5 implements h {
        final /* synthetic */ h a;
        final /* synthetic */ Type b;

        AnonymousClass_5(h hVar, Type type) {
            this.a = hVar;
            this.b = type;
        }

        public final Object a() {
            h hVar = this.a;
            Type type = this.b;
            return hVar.a();
        }
    }

    final class AnonymousClass_6 implements h {
        final /* synthetic */ Constructor a;

        AnonymousClass_6(Constructor constructor) {
            this.a = constructor;
        }

        public final Object a() {
            try {
                return this.a.newInstance(null);
            } catch (InstantiationException e) {
                throw new RuntimeException(new StringBuilder("Failed to invoke ").append(this.a).append(" with no args").toString(), e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(new StringBuilder("Failed to invoke ").append(this.a).append(" with no args").toString(), e2.getTargetException());
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }
    }

    final class AnonymousClass_8 implements h {
        final /* synthetic */ Type a;

        AnonymousClass_8(Type type) {
            this.a = type;
        }

        public final Object a() {
            if (this.a instanceof ParameterizedType) {
                Type type = ((ParameterizedType) this.a).getActualTypeArguments()[0];
                if (type instanceof Class) {
                    return EnumSet.noneOf((Class) type);
                }
                throw new m(new StringBuilder("Invalid EnumSet type: ").append(this.a.toString()).toString());
            } else {
                throw new m(new StringBuilder("Invalid EnumSet type: ").append(this.a.toString()).toString());
            }
        }
    }

    public c(Map map) {
        this.a = map;
    }

    private h a(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new AnonymousClass_6(declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public final h a(a aVar) {
        Type b = aVar.b();
        Class a = aVar.a();
        h hVar = (h) this.a.get(b);
        if (hVar != null) {
            return new AnonymousClass_1(hVar, b);
        }
        hVar = (h) this.a.get(a);
        if (hVar != null) {
            return new AnonymousClass_5(hVar, b);
        }
        h a2 = a(a);
        if (a2 != null) {
            return a2;
        }
        if (Collection.class.isAssignableFrom(a)) {
            if (SortedSet.class.isAssignableFrom(a)) {
                a2 = new h() {
                    public final Object a() {
                        return new TreeSet();
                    }
                };
            } else if (EnumSet.class.isAssignableFrom(a)) {
                a2 = new AnonymousClass_8(b);
            } else if (Set.class.isAssignableFrom(a)) {
                a2 = new h() {
                    public final Object a() {
                        return new LinkedHashSet();
                    }
                };
            } else if (Queue.class.isAssignableFrom(a)) {
                a2 = new h() {
                    public final Object a() {
                        return new LinkedList();
                    }
                };
            } else {
                a2 = new h() {
                    public final Object a() {
                        return new ArrayList();
                    }
                };
            }
        } else if (!Map.class.isAssignableFrom(a)) {
            a2 = null;
        } else if (SortedMap.class.isAssignableFrom(a)) {
            a2 = new h() {
                public final Object a() {
                    return new TreeMap();
                }
            };
        } else if (!b instanceof ParameterizedType || String.class.isAssignableFrom(a.a(((ParameterizedType) b).getActualTypeArguments()[0]).a())) {
            a2 = new h() {
                public final Object a() {
                    return new g();
                }
            };
        } else {
            a2 = new h() {
                public final Object a() {
                    return new LinkedHashMap();
                }
            };
        }
        return a2 == null ? new AnonymousClass_4(a, b) : a2;
    }

    public final String toString() {
        return this.a.toString();
    }
}