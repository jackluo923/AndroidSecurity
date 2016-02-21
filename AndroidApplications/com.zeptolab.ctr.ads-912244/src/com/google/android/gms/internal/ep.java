package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class ep {

    public static final class a {
        private final List Ce;
        private final Object Cf;

        private a(Object obj) {
            this.Cf = er.f(obj);
            this.Ce = new ArrayList();
        }

        public com.google.android.gms.internal.ep.a a_(String str, Object obj) {
            this.Ce.add(((String) er.f(str)) + "=" + String.valueOf(obj));
            return this;
        }

        public String toString() {
            StringBuilder append = new StringBuilder(100).append(this.Cf.getClass().getSimpleName()).append('{');
            int size = this.Ce.size();
            int i = 0;
            while (i < size) {
                append.append((String) this.Ce.get(i));
                if (i < size - 1) {
                    append.append(", ");
                }
                i++;
            }
            return append.append('}').toString();
        }
    }

    public static a e(Object obj) {
        return new a(null);
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}