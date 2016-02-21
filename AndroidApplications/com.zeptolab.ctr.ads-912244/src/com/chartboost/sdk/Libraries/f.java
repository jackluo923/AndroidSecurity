package com.chartboost.sdk.Libraries;

import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

public final class f {
    private static j a;
    private static i b;
    private static f c;
    private static b d;
    private static h e;

    public static abstract class a {
        private String a;

        public a() {
            this.a = null;
        }

        public abstract String a_();

        public abstract boolean a_(Object obj);

        public boolean a_(Object obj, StringBuilder stringBuilder) {
            boolean a = a(obj);
            if (!a) {
                stringBuilder.append(this.a != null ? this.a : a());
            }
            return a;
        }
    }

    private static class b extends com.chartboost.sdk.Libraries.f.a {
        private b() {
        }

        public String a() {
            return "object must be a boolean.";
        }

        public boolean a(Object obj) {
            return Boolean.class.isInstance(obj) || Boolean.TYPE.isInstance(obj);
        }
    }

    public static abstract class c extends com.chartboost.sdk.Libraries.f.a {
    }

    private static class d extends com.chartboost.sdk.Libraries.f.a {
        protected com.chartboost.sdk.Libraries.f.g[] a;
        protected String b;

        public d(com.chartboost.sdk.Libraries.f.g[] gVarArr) {
            this.b = null;
            this.a = gVarArr;
        }

        public String a() {
            if (this.b != null) {
                return this.b;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("object must contain the following key-value schema: {\n");
            int i = 0;
            while (i < this.a.length) {
                stringBuilder.append("<");
                stringBuilder.append(this.a[i].a);
                stringBuilder.append(": [");
                stringBuilder.append(this.a[i].b.a());
                stringBuilder.append("]>");
                if (i < this.a.length - 1) {
                    stringBuilder.append(",\n");
                }
                i++;
            }
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        public boolean a(Object obj) {
            String a;
            int i;
            com.chartboost.sdk.Libraries.f.a b;
            if (obj instanceof Map) {
                Map map = (Map) obj;
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (!entry.getKey() instanceof String) {
                        this.b = "key '" + entry.getKey().toString() + "' is not a string";
                        return false;
                    }
                }
                if (this.a != null && this.a.length >= 1) {
                    i = 0;
                    while (i < this.a.length) {
                        a = this.a[i].a;
                        b = this.a[i].b;
                        if (map.containsKey(a)) {
                            if (!b.a(map.get(a))) {
                                this.b = "key '" + a + "' fails to match: <" + b.a() + ">";
                                return false;
                            }
                        } else if (!b.a(null)) {
                            this.b = "no key for required mapping '" + a + "' : <" + b.a() + ">";
                            return false;
                        }
                        i++;
                    }
                }
                return true;
            } else if (!(obj instanceof JSONObject)) {
                return false;
            } else {
                JSONObject jSONObject = (JSONObject) obj;
                if (this.a != null && this.a.length >= 1) {
                    i = 0;
                    while (i < this.a.length) {
                        a = this.a[i].a;
                        b = this.a[i].b;
                        try {
                            if (!b.a(jSONObject.get(a))) {
                                this.b = "key '" + a + "' fails to match: <" + b.a() + ">";
                                return false;
                            }
                        } catch (JSONException e) {
                            if (!b.a(null)) {
                                this.b = "no key for required mapping '" + a + "' : <" + b.a() + ">";
                                return false;
                            }
                        }
                        i++;
                    }
                }
                return true;
            }
        }
    }

    private static class e extends com.chartboost.sdk.Libraries.f.a {
        private Class a;

        public e(Class cls) {
            this.a = cls;
        }

        public String a() {
            return "object must be an instance of " + this.a.getName() + ".";
        }

        public boolean a(Object obj) {
            return this.a.isInstance(obj);
        }
    }

    private static class f extends com.chartboost.sdk.Libraries.f.a {
        private f() {
        }

        public String a() {
            return "object must be a number w/o decimals (int, long, short, or byte).";
        }

        public boolean a(Object obj) {
            return Integer.class.isInstance(obj) || Long.class.isInstance(obj) || Short.class.isInstance(obj) || Byte.class.isInstance(obj) || BigInteger.class.isInstance(obj) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
        }
    }

    public static class g {
        private String a;
        private com.chartboost.sdk.Libraries.f.a b;

        public g(String str, com.chartboost.sdk.Libraries.f.a aVar) {
            this.a = str;
            this.b = aVar;
        }
    }

    private static class h extends com.chartboost.sdk.Libraries.f.a {
        private h() {
        }

        public String a() {
            return "object must be null.";
        }

        public boolean a(Object obj) {
            return obj == null || obj == JSONObject.NULL;
        }
    }

    private static class i extends com.chartboost.sdk.Libraries.f.a {
        private i() {
        }

        public String a() {
            return "object must be a number (primitive type or derived from Number).";
        }

        public boolean a(Object obj) {
            return obj instanceof Number || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Float.TYPE.isInstance(obj) || Double.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
        }
    }

    private static class j extends e {
        public j() {
            super(String.class);
        }
    }

    private static class k extends com.chartboost.sdk.Libraries.f.a {
        protected String a;
        private com.chartboost.sdk.Libraries.f.a[] b;

        public k(com.chartboost.sdk.Libraries.f.a[] aVarArr) {
            this.a = null;
            this.b = aVarArr;
        }

        public String a() {
            if (this.a != null) {
                return this.a;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("object must match ALL of the following: ");
            int i = 0;
            while (i < this.b.length) {
                stringBuilder.append("<");
                stringBuilder.append(this.b[i].a());
                stringBuilder.append(">");
                if (i < this.b.length - 1) {
                    stringBuilder.append(", ");
                }
                i++;
            }
            return stringBuilder.toString();
        }

        public boolean a(Object obj) {
            int i = 0;
            while (i < this.b.length) {
                if (this.b[i].a(obj)) {
                    i++;
                } else {
                    this.a = "object failed to match: <" + this.b[i].a() + ">";
                    return false;
                }
            }
            return true;
        }
    }

    static {
        a = new j();
        b = new i();
        c = new f();
        d = new b();
        e = new h();
    }

    public static a a() {
        return b;
    }

    public static a a(a... aVarArr) {
        return new k(aVarArr);
    }

    public static a a(g... gVarArr) {
        return new d(gVarArr);
    }

    public static g a(String str, a aVar) {
        return new g(str, aVar);
    }
}