package com.wopnersoft.unitconverter.plus.specialized;

import android.content.Context;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.b.ad;
import com.wopnersoft.unitconverter.plus.d.a;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.util.aw;
import java.util.HashMap;

// compiled from: ProGuard
public class RingSizeConverter extends ad {
    private TextView A;
    private TextView B;
    private aw f;
    private aw g;
    private aw h;
    private aw i;
    private aw j;
    private aw n;
    private aw o;
    private aw p;
    private aw q;
    private aw[] r;
    private HashMap s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    protected void a() {
        this.f.a(b.a((Context)this, a.u()));
        this.f.a(this);
        this.g.a(b.a((Context)this, a.v()));
        this.g.a(this);
        this.h.a(b.a((Context)this, a.w()));
        this.h.a(this);
        this.i.a(b.a((Context)this, a.x()));
        this.i.a(this);
        this.j.a(b.a((Context)this, a.y()));
        this.j.a(this);
        this.n.a(b.a((Context)this, a.z()));
        this.n.a(this);
        this.o.a(b.a((Context)this, a.A()));
        this.o.a(this);
        this.p.a(b.a((Context)this, a.B()));
        this.p.a(this);
        this.q.a(b.a((Context)this, a.C()));
        this.q.a(this);
    }

    protected void d() {
        setContentView(2130903092);
        this.f = new aw(findViewById(2131034322));
        this.g = new aw(findViewById(2131034324));
        this.h = new aw(findViewById(2131034326));
        this.i = new aw(findViewById(2131034328));
        this.j = new aw(findViewById(2131034330));
        this.n = new aw(findViewById(2131034332));
        this.o = new aw(findViewById(2131034334));
        this.p = new aw(findViewById(2131034336));
        this.q = new aw(findViewById(2131034338));
        this.r = new aw[]{this.f, this.g, this.h, this.i, this.j, this.n, this.o, this.p, this.q};
        this.t = (TextView) findViewById(2131034321);
        this.u = (TextView) findViewById(2131034323);
        this.v = (TextView) findViewById(2131034325);
        this.w = (TextView) findViewById(2131034327);
        this.x = (TextView) findViewById(2131034329);
        this.y = (TextView) findViewById(2131034331);
        this.z = (TextView) findViewById(2131034333);
        this.A = (TextView) findViewById(2131034335);
        this.B = (TextView) findViewById(2131034337);
        this.t.setText(getString(2131362579));
        this.u.setText(getString(2131362580));
        this.v.setText(getString(2131362581));
        this.w.setText(getString(2131362582));
        this.x.setText(getString(2131362583));
        this.y.setText(getString(2131362584));
        this.z.setText(getString(2131362585));
        this.A.setText(getString(2131362586));
        this.B.setText(getString(2131362587));
        this.s = new HashMap();
        this.s.put(this.f.a(), this.t.getText());
        this.s.put(this.g.a(), this.u.getText());
        this.s.put(this.h.a(), this.v.getText());
        this.s.put(this.i.a(), this.w.getText());
        this.s.put(this.j.a(), this.x.getText());
        this.s.put(this.n.a(), this.y.getText());
        this.s.put(this.o.a(), this.z.getText());
        this.s.put(this.p.a(), this.A.getText());
        this.s.put(this.q.a(), this.B.getText());
    }

    protected void h() {
        super.h();
        e.a(this.t);
        e.a(this.u);
        e.a(this.v);
        e.a(this.w);
        e.a(this.x);
        e.a(this.y);
        e.a(this.z);
        e.a(this.A);
        e.a(this.B);
    }

    protected String n() {
        return getString(2131362774);
    }

    protected aw[] p() {
        return this.r;
    }

    protected HashMap q() {
        return this.s;
    }

    protected long r() {
        return 161;
    }
}