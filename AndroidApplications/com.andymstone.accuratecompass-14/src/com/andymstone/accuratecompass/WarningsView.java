package com.andymstone.accuratecompass;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.andymstone.compasslib.h;
import com.andymstone.compasslib.i;
import com.andymstone.compasslib.l;
import com.andymstone.core.o;

public class WarningsView extends FrameLayout implements h {
    private l a;
    private TextView b;
    private View c;
    private ImageView d;
    private int e;
    private boolean f;

    public WarningsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = -1;
        this.f = false;
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(p.warning_view, this, true);
        this.b = (TextView) findViewById(o.message);
        this.c = findViewById(o.message_wrapper);
        this.d = (ImageView) findViewById(o.warning_action);
        findViewById(o.dismiss).setOnClickListener(new t(this));
        findViewById(o.warning_triangle).setOnClickListener(new u(this));
    }

    private void f() {
        this.d.setVisibility(o.MyAlertDialog_MAD_messagePadding);
    }

    private void g() {
        this.d.setVisibility(0);
    }

    private void h() {
        this.d.setVisibility(0);
    }

    protected void a() {
        this.c.setVisibility(0);
    }

    protected void b() {
        this.c.setVisibility(o.MyAlertDialog_MAD_messagePadding);
    }

    public void c() {
        if (this.a != null && this.a.a()) {
            setVisibility(0);
        }
        if (this.f) {
            b();
        } else {
            a();
        }
    }

    public void d() {
        setVisibility(o.MyAlertDialog_MAD_messagePadding);
    }

    public void e() {
        this.e = -1;
    }

    public void setListener(l lVar) {
        this.a = lVar;
        this.d.setOnClickListener(new v(this));
    }

    public void setNewActiveWarning(int i) {
        if (i != this.e) {
            this.f = false;
            a();
        }
        this.e = i;
        this.b.setText(i.a(i));
        if (i == 2) {
            h();
        } else if (i == 1) {
            g();
        } else {
            f();
        }
    }
}