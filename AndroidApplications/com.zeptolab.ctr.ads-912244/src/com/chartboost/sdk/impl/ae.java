package com.chartboost.sdk.impl;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.SimpleTimeZone;
import java.util.UUID;
import java.util.regex.Pattern;

public class ae {

    private static abstract class c extends ab {
        protected final ag a;

        c(ag agVar) {
            this.a = agVar;
        }
    }

    private static class a extends c {
        a(ag agVar) {
            super(agVar);
        }

        public void a_(Object obj, StringBuilder stringBuilder) {
            az azVar = (az) obj;
            x xVar = new x();
            xVar.a("$code", azVar.a());
            this.a.a(xVar, stringBuilder);
        }
    }

    private static class b extends c {
        b(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            ba baVar = (ba) obj;
            x xVar = new x();
            xVar.a("$code", baVar.a());
            xVar.a("$scope", baVar.b());
            this.a.a(xVar, stringBuilder);
        }
    }

    private static class d extends c {
        d(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            stringBuilder.append("{ ");
            z zVar = (z) obj;
            Iterator it = zVar.keySet().iterator();
            int i = 1;
            while (it.hasNext()) {
                String str = (String) it.next();
                if (i != 0) {
                    boolean z = 0;
                } else {
                    stringBuilder.append(" , ");
                }
                ad.a(stringBuilder, str);
                stringBuilder.append(" : ");
                this.a.a(zVar.a(str), stringBuilder);
            }
            stringBuilder.append("}");
        }
    }

    private static class e extends c {
        e(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            aa aaVar = (aa) obj;
            x xVar = new x();
            xVar.a("$ref", aaVar.b());
            xVar.a("$id", aaVar.a());
            this.a.a(xVar, stringBuilder);
        }
    }

    private static class f extends c {
        f(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            boolean z = 1;
            stringBuilder.append("[ ");
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (i != 0) {
                    z = 0;
                } else {
                    stringBuilder.append(" , ");
                }
                this.a.a(next, stringBuilder);
            }
            stringBuilder.append("]");
        }
    }

    private static class g extends c {
        g(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            ax axVar = (ax) obj;
            x xVar = new x();
            xVar.a("$ts", Integer.valueOf(axVar.a()));
            xVar.a("$inc", Integer.valueOf(axVar.b()));
            this.a.a(xVar, stringBuilder);
        }
    }

    private static class h extends ab {
        private h() {
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            stringBuilder.append("<Binary Data>");
        }
    }

    private static class i extends c {
        i(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            Date date = (Date) obj;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
            this.a.a(new x("$date", simpleDateFormat.format(date)), stringBuilder);
        }
    }

    private static class j extends c {
        j(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            stringBuilder.append("{ ");
            Iterator it = ((Map) obj).entrySet().iterator();
            int i = 1;
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (i != 0) {
                    boolean z = 0;
                } else {
                    stringBuilder.append(" , ");
                }
                ad.a(stringBuilder, entry.getKey().toString());
                stringBuilder.append(" : ");
                this.a.a(entry.getValue(), stringBuilder);
            }
            stringBuilder.append("}");
        }
    }

    private static class k extends c {
        k(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            this.a.a(new x("$maxKey", Integer.valueOf(1)), stringBuilder);
        }
    }

    private static class l extends c {
        l(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            this.a.a(new x("$minKey", Integer.valueOf(1)), stringBuilder);
        }
    }

    private static class m extends c {
        m(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            stringBuilder.append("[ ");
            int i = 0;
            while (i < Array.getLength(obj)) {
                if (i > 0) {
                    stringBuilder.append(" , ");
                }
                this.a.a(Array.get(obj, i), stringBuilder);
                i++;
            }
            stringBuilder.append("]");
        }
    }

    private static class n extends c {
        n(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            this.a.a(new x("$oid", obj.toString()), stringBuilder);
        }
    }

    private static class o extends c {
        o(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            z xVar = new x();
            xVar.a("$regex", obj.toString());
            if (((Pattern) obj).flags() != 0) {
                xVar.a("$options", y.a(((Pattern) obj).flags()));
            }
            this.a.a(xVar, stringBuilder);
        }
    }

    private static class p extends ab {
        private p() {
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            ad.a(stringBuilder, (String) obj);
        }
    }

    private static class q extends ab {
        private q() {
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            stringBuilder.append(obj.toString());
        }
    }

    private static class r extends c {
        r(ag agVar) {
            super(agVar);
        }

        public void a(Object obj, StringBuilder stringBuilder) {
            UUID uuid = (UUID) obj;
            x xVar = new x();
            xVar.a("$uuid", uuid.toString());
            this.a.a(xVar, stringBuilder);
        }
    }

    public static ag a() {
        ag b = b();
        b.a(Date.class, new i(b));
        b.a(ax.class, new g(b));
        b.a(ay.class, new h());
        b.a(byte[].class, new h());
        return b;
    }

    static ac b() {
        ac acVar = new ac();
        acVar.a(Object[].class, new m(acVar));
        acVar.a(Boolean.class, new q());
        acVar.a(az.class, new a(acVar));
        acVar.a(ba.class, new b(acVar));
        acVar.a(z.class, new d(acVar));
        acVar.a(aa.class, new e(acVar));
        acVar.a(Iterable.class, new f(acVar));
        acVar.a(Map.class, new j(acVar));
        acVar.a(bb.class, new k(acVar));
        acVar.a(bc.class, new l(acVar));
        acVar.a(Number.class, new q());
        acVar.a(bd.class, new n(acVar));
        acVar.a(Pattern.class, new o(acVar));
        acVar.a(String.class, new p());
        acVar.a(UUID.class, new r(acVar));
        return acVar;
    }
}