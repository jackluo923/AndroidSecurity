package com.wopnersoft.unitconverter.plus.c;

import com.actionbarsherlock.R;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public class f {
    private final Map a;
    private final Map b;
    private final Map c;
    private Map d;
    private final List e;
    private final boolean f;
    private String g;

    public f(String str) {
        this.a = new LinkedHashMap();
        this.d = new HashMap();
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Expression can not be empty!.");
        }
        boolean z;
        this.g = str;
        z = System.getProperty("exp4j.unary.precedence.high") == null || !System.getProperty("exp4j.unary.precedence.high").equals("false");
        this.f = z;
        this.b = d();
        this.c = c();
        this.e = b();
    }

    private void a(String str) {
        char[] toCharArray = str.toCharArray();
        int i = 0;
        while (i < toCharArray.length) {
            if (i == 0) {
                if (!(Character.isLetter(toCharArray[i]) || toCharArray[i] == '_')) {
                    throw new ao(new StringBuilder(String.valueOf(str)).append(" is not a valid variable name: character '").append(toCharArray[i]).append(" at ").append(i).toString());
                }
            } else if (!(Character.isLetter(toCharArray[i]) || Character.isDigit(toCharArray[i]) || toCharArray[i] == '_')) {
                throw new ao(new StringBuilder(String.valueOf(str)).append(" is not a valid variable name: character '").append(toCharArray[i]).append(" at ").append(i).toString());
            }
            i++;
        }
    }

    private List b() {
        return Arrays.asList(new Character[]{Character.valueOf('!'), Character.valueOf('#'), Character.valueOf('\u00a7'), Character.valueOf('$'), Character.valueOf('&'), Character.valueOf(';'), Character.valueOf(':'), Character.valueOf('~'), Character.valueOf('<'), Character.valueOf('>'), Character.valueOf('|'), Character.valueOf('=')});
    }

    private Map c() {
        g gVar = new g(this, "+");
        r rVar = new r(this, "-");
        x xVar = new x(this, "/", 3);
        y yVar = new y(this, "*", 3);
        z zVar = new z(this, "%", true, 3);
        aa aaVar = new aa(this, "'", false, this.f ? R.styleable.SherlockTheme_actionBarWidgetTheme : 5, 1);
        ab abVar = new ab(this, "^", false, 5, 2);
        Map hashMap = new HashMap();
        hashMap.put("+", gVar);
        hashMap.put("-", rVar);
        hashMap.put("*", yVar);
        hashMap.put("/", xVar);
        hashMap.put("'", aaVar);
        hashMap.put("^", abVar);
        hashMap.put("%", zVar);
        return hashMap;
    }

    private Map d() {
        try {
            ac acVar = new ac(this, "abs");
            ad adVar = new ad(this, "acos");
            h hVar = new h(this, "asin");
            i iVar = new i(this, "atan");
            j jVar = new j(this, "cbrt");
            k kVar = new k(this, "ceil");
            l lVar = new l(this, "cos");
            m mVar = new m(this, "cosh");
            n nVar = new n(this, "exp");
            o oVar = new o(this, "expm1");
            p pVar = new p(this, "floor");
            q qVar = new q(this, "log");
            s sVar = new s(this, "sin");
            t tVar = tVar;
            f fVar = this;
            String str = "sinh";
            u uVar = uVar;
            fVar = this;
            str = "sqrt";
            v vVar = vVar;
            fVar = this;
            str = "tan";
            w wVar = wVar;
            fVar = this;
            str = "tanh";
            Map hashMap = new HashMap();
            hashMap.put("abs", acVar);
            hashMap.put("acos", adVar);
            hashMap.put("asin", hVar);
            hashMap.put("atan", iVar);
            hashMap.put("cbrt", jVar);
            hashMap.put("ceil", kVar);
            hashMap.put("cos", lVar);
            hashMap.put("cosh", mVar);
            hashMap.put("exp", nVar);
            hashMap.put("expm1", oVar);
            hashMap.put("floor", pVar);
            hashMap.put("log", qVar);
            hashMap.put("sin", sVar);
            hashMap.put("sinh", tVar);
            hashMap.put("sqrt", uVar);
            hashMap.put("tan", vVar);
            hashMap.put("tanh", wVar);
            return hashMap;
        } catch (af e) {
            throw new RuntimeException(e);
        }
    }

    public b a() {
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            int i = 0;
            while (i < eVar.b.length()) {
                if (this.e.contains(Character.valueOf(eVar.b.charAt(i)))) {
                    i++;
                } else {
                    throw new ao(eVar.b + " is not a valid symbol for an operator please choose from: !,#,\u00c2\u00a7,$,&,;,:,~,<,>,|,=");
                }
            }
        }
        Iterator it2 = this.a.keySet().iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            a(str);
            if (this.b.containsKey(str)) {
                throw new ao(new StringBuilder("Variable '").append(str).append("' cannot have the same name as a function").toString());
            }
        }
        this.c.putAll(this.d);
        return aj.a(this.g, this.a, this.b, this.c);
    }
}