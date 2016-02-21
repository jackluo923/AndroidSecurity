package me.kiip.internal.c;

import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.net.URL;
import java.util.List;

public interface f {

    public static final class a {
        private final String a;
        private final String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public String a_() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            return obj instanceof me.kiip.internal.c.f.a && ((me.kiip.internal.c.f.a) obj).a.equals(this.a) && ((me.kiip.internal.c.f.a) obj).b.equals(this.b);
        }

        public int hashCode() {
            return this.a.hashCode() + this.b.hashCode() * 31;
        }

        public String toString() {
            return this.a + " realm=\"" + this.b + "\"";
        }
    }

    public static final class b {
        private final String a;

        private b(String str) {
            this.a = str;
        }

        public static me.kiip.internal.c.f.b a(String str, String str2) {
            try {
                return new me.kiip.internal.c.f.b("Basic " + me.kiip.internal.d.b.b((str + ":" + str2).getBytes("ISO-8859-1")));
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError();
            }
        }

        public String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            return obj instanceof me.kiip.internal.c.f.b && ((me.kiip.internal.c.f.b) obj).a.equals(this.a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return this.a;
        }
    }

    b a(Proxy proxy, URL url, List list);

    b b(Proxy proxy, URL url, List list);
}