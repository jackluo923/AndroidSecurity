package org.acra;

import com.andymstone.core.o;
import java.util.Map;
import org.acra.a.a;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;

public class b implements a {
    private Integer A;
    private Integer B;
    private Integer C;
    private Integer D;
    private String E;
    private Integer F;
    private Boolean G;
    private Boolean H;
    private String[] I;
    private String[] J;
    private String K;
    private Integer L;
    private String M;
    private Boolean N;
    private Method O;
    private Type P;
    private Map Q;
    private String[] a;
    private String[] b;
    private Integer c;
    private ReportField[] d;
    private Boolean e;
    private Boolean f;
    private Integer g;
    private Boolean h;
    private String i;
    private String j;
    private String k;
    private String l;
    private Boolean m;
    private String[] n;
    private String o;
    private Integer p;
    private ReportingInteractionMode q;
    private a r;
    private Integer s;
    private Integer t;
    private Integer u;
    private Integer v;
    private Integer w;
    private Integer x;
    private Integer y;
    private Integer z;

    public b(a aVar) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.r = aVar;
    }

    public static boolean a(String str) {
        return str == null || "ACRA-NULL-STRING".equals(str);
    }

    public int A() {
        if (this.A != null) {
            return this.A.intValue();
        }
        return this.r != null ? this.r.A() : 0;
    }

    public int B() {
        if (this.B != null) {
            return this.B.intValue();
        }
        return this.r != null ? this.r.B() : 0;
    }

    public int C() {
        if (this.C != null) {
            return this.C.intValue();
        }
        return this.r != null ? this.r.C() : 0;
    }

    public int D() {
        if (this.D != null) {
            return this.D.intValue();
        }
        return this.r != null ? this.r.D() : 0;
    }

    public String E() {
        if (this.E != null) {
            return this.E;
        }
        return this.r != null ? this.r.E() : "";
    }

    public int F() {
        if (this.F != null) {
            return this.F.intValue();
        }
        return this.r != null ? this.r.F() : 5000;
    }

    public boolean G() {
        if (this.G != null) {
            return this.G.booleanValue();
        }
        return this.r != null ? this.r.G() : false;
    }

    public boolean H() {
        if (this.H != null) {
            return this.H.booleanValue();
        }
        return this.r != null ? this.r.H() : true;
    }

    public String[] I() {
        if (this.I != null) {
            return this.I;
        }
        return this.r != null ? this.r.I() : new String[0];
    }

    public String[] J() {
        if (this.J != null) {
            return this.J;
        }
        return this.r != null ? this.r.J() : new String[0];
    }

    public String K() {
        if (this.K != null) {
            return this.K;
        }
        return this.r != null ? this.r.K() : "";
    }

    public int L() {
        if (this.L != null) {
            return this.L.intValue();
        }
        return this.r != null ? this.r.L() : 100;
    }

    public String M() {
        if (this.M != null) {
            return this.M;
        }
        return this.r != null ? this.r.M() : "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq";
    }

    public boolean N() {
        if (this.N != null) {
            return this.N.booleanValue();
        }
        return this.r != null ? this.r.N() : false;
    }

    public Method O() {
        if (this.O != null) {
            return this.O;
        }
        return this.r != null ? this.r.O() : Method.POST;
    }

    public Type P() {
        if (this.P != null) {
            return this.P;
        }
        return this.r != null ? this.r.P() : Type.FORM;
    }

    public Map a() {
        return this.Q;
    }

    public Class annotationType() {
        return this.r.annotationType();
    }

    public String[] b_() {
        if (this.a != null) {
            return this.a;
        }
        return this.r != null ? this.r.b() : new String[0];
    }

    public String[] c() {
        if (this.b != null) {
            return this.b;
        }
        return this.r != null ? this.r.c() : new String[0];
    }

    public int d() {
        if (this.c != null) {
            return this.c.intValue();
        }
        return this.r != null ? this.r.d() : 3000;
    }

    public ReportField[] e() {
        if (this.d != null) {
            return this.d;
        }
        return this.r != null ? this.r.e() : new ReportField[0];
    }

    public boolean f() {
        if (this.e != null) {
            return this.e.booleanValue();
        }
        return this.r != null ? this.r.f() : true;
    }

    public boolean g() {
        if (this.f != null) {
            return this.f.booleanValue();
        }
        return this.r != null ? this.r.g() : true;
    }

    public int h() {
        if (this.g != null) {
            return this.g.intValue();
        }
        return this.r != null ? this.r.h() : o.MyAlertDialog_MAD_textAppearanceMedium;
    }

    public boolean i() {
        if (this.h != null) {
            return this.h.booleanValue();
        }
        return this.r != null ? this.r.i() : false;
    }

    public String j() {
        if (this.i != null) {
            return this.i;
        }
        return this.r != null ? this.r.j() : "";
    }

    public String k() {
        if (this.j != null) {
            return this.j;
        }
        return this.r != null ? this.r.k() : "";
    }

    public String l() {
        if (this.k != null) {
            return this.k;
        }
        return this.r != null ? this.r.l() : "ACRA-NULL-STRING";
    }

    public String m() {
        if (this.l != null) {
            return this.l;
        }
        return this.r != null ? this.r.m() : "ACRA-NULL-STRING";
    }

    public boolean n() {
        if (this.m != null) {
            return this.m.booleanValue();
        }
        return this.r != null ? this.r.n() : false;
    }

    public String[] o() {
        if (this.n != null) {
            return this.n;
        }
        if (this.r != null) {
            return this.r.o();
        }
        return new String[]{"-t", Integer.toString(100), "-v", "time"};
    }

    public String p() {
        if (this.o != null) {
            return this.o;
        }
        return this.r != null ? this.r.p() : "";
    }

    public int q() {
        if (this.p != null) {
            return this.p.intValue();
        }
        return this.r != null ? this.r.q() : o.MyAlertDialog_MAD_titleStyle;
    }

    public ReportingInteractionMode r() {
        if (this.q != null) {
            return this.q;
        }
        return this.r != null ? this.r.r() : ReportingInteractionMode.SILENT;
    }

    public int s() {
        if (this.s != null) {
            return this.s.intValue();
        }
        return this.r != null ? this.r.s() : 0;
    }

    public int t() {
        if (this.t != null) {
            return this.t.intValue();
        }
        return this.r != null ? this.r.t() : 0;
    }

    public int u() {
        if (this.u != null) {
            return this.u.intValue();
        }
        return this.r != null ? this.r.u() : 17301543;
    }

    public int v() {
        if (this.v != null) {
            return this.v.intValue();
        }
        return this.r != null ? this.r.v() : 0;
    }

    public int w() {
        if (this.w != null) {
            return this.w.intValue();
        }
        return this.r != null ? this.r.w() : 0;
    }

    public int x() {
        if (this.x != null) {
            return this.x.intValue();
        }
        return this.r != null ? this.r.x() : 0;
    }

    public int y() {
        if (this.y != null) {
            return this.y.intValue();
        }
        return this.r != null ? this.r.y() : 17301624;
    }

    public int z() {
        if (this.z != null) {
            return this.z.intValue();
        }
        return this.r != null ? this.r.z() : 0;
    }
}