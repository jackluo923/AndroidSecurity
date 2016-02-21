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
public class ShoeSizeMenConverter extends ad {
    private TextView A;
    private TextView B;
    private TextView C;
    private TextView D;
    private aw f;
    private aw g;
    private aw h;
    private aw i;
    private aw j;
    private aw n;
    private aw o;
    private aw p;
    private aw q;
    private aw r;
    private aw[] s;
    private HashMap t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    protected void a() {
        this.f.a(b.a((Context)this, a.a()));
        this.f.a(this);
        this.g.a(b.a((Context)this, a.b()));
        this.g.a(this);
        this.h.a(b.a((Context)this, a.c()));
        this.h.a(this);
        this.i.a(b.a((Context)this, a.d()));
        this.i.a(this);
        this.j.a(b.a((Context)this, a.e()));
        this.j.a(this);
        this.n.a(b.a((Context)this, a.f()));
        this.n.a(this);
        this.o.a(b.a((Context)this, a.g()));
        this.o.a(this);
        this.p.a(b.a((Context)this, a.h()));
        this.p.a(this);
        this.q.a(b.a((Context)this, a.i()));
        this.q.a(this);
        this.r.a(b.a((Context)this, a.j()));
        this.r.a(this);
    }

    protected void d() {
        setContentView(2130903095);
        this.f = new aw(findViewById(2131034340));
        this.g = new aw(findViewById(2131034342));
        this.h = new aw(findViewById(2131034344));
        this.i = new aw(findViewById(2131034346));
        this.j = new aw(findViewById(2131034348));
        this.n = new aw(findViewById(2131034350));
        this.o = new aw(findViewById(2131034352));
        this.p = new aw(findViewById(2131034354));
        this.q = new aw(findViewById(2131034356));
        this.r = new aw(findViewById(2131034358));
        this.s = new aw[]{this.f, this.g, this.h, this.i, this.j, this.n, this.o, this.p, this.q, this.r};
        this.u = (TextView) findViewById(2131034339);
        this.v = (TextView) findViewById(2131034341);
        this.w = (TextView) findViewById(2131034343);
        this.x = (TextView) findViewById(2131034345);
        this.y = (TextView) findViewById(2131034347);
        this.z = (TextView) findViewById(2131034349);
        this.A = (TextView) findViewById(2131034351);
        this.B = (TextView) findViewById(2131034353);
        this.C = (TextView) findViewById(2131034355);
        this.D = (TextView) findViewById(2131034357);
        this.u.setText(getString(2131362592));
        this.v.setText(getString(2131362593));
        this.w.setText(getString(2131362594));
        this.x.setText(getString(2131362595));
        this.y.setText(getString(2131362596));
        this.z.setText(getString(2131362597));
        this.A.setText(getString(2131362598));
        this.B.setText(getString(2131362599));
        this.C.setText(getString(2131362600));
        this.D.setText(getString(2131362601));
        this.t = new HashMap();
        this.t.put(this.f.a(), this.u.getText());
        this.t.put(this.g.a(), this.v.getText());
        this.t.put(this.h.a(), this.w.getText());
        this.t.put(this.i.a(), this.x.getText());
        this.t.put(this.j.a(), this.y.getText());
        this.t.put(this.n.a(), this.z.getText());
        this.t.put(this.o.a(), this.A.getText());
        this.t.put(this.p.a(), this.B.getText());
        this.t.put(this.q.a(), this.C.getText());
        this.t.put(this.r.a(), this.D.getText());
    }

    protected void h() {
        super.h();
        e.a(this.u);
        e.a(this.v);
        e.a(this.w);
        e.a(this.x);
        e.a(this.y);
        e.a(this.z);
        e.a(this.A);
        e.a(this.B);
        e.a(this.C);
        e.a(this.D);
    }

    protected String n() {
        return getString(2131362772);
    }

    protected aw[] p() {
        return this.s;
    }

    protected HashMap q() {
        return this.t;
    }

    protected long r() {
        return 158;
    }
}