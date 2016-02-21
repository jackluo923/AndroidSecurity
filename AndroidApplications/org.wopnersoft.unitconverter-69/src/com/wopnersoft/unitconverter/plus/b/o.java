package com.wopnersoft.unitconverter.plus.b;

import android.app.Dialog;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.Button;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.ClearableEditText;
import com.wopnersoft.unitconverter.plus.util.ag;
import com.wopnersoft.unitconverter.plus.util.ai;
import com.wopnersoft.unitconverter.plus.util.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public abstract class o extends ae {
    protected List a;
    protected long b;
    protected Button c;
    protected ClearableEditText d;
    protected Boolean e;
    private Map f;

    public o() {
        this.c = null;
        this.d = null;
    }

    protected s a(String str) {
        return (s) this.f.get(str);
    }

    protected abstract void a();

    protected final void a(String str, s sVar) {
        this.f.put(str, sVar);
        this.a.add(str);
    }

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();

    protected void e() {
        try {
            a();
        } catch (Exception e) {
            a(getString(2131362067), "callBuildConversionMapAndBind", e);
        }
    }

    protected ArrayAdapter f() {
        return b.a(this, (String[]) this.a.toArray(new String[0]));
    }

    protected ai g() {
        return ai.a;
    }

    protected void h() {
        boolean z = true;
        if (this.c != null) {
            e.a(this.c);
        }
        if (this.d != null) {
            this.d.setTextSize(e.a());
            if (e.d.booleanValue()) {
                this.d.setKeyListener(new q(2048, true, true));
            } else {
                this.d.setKeyListener(new q());
            }
            ClearableEditText clearableEditText = this.d;
            if (e.h.booleanValue()) {
                z = false;
            }
            clearableEditText.setIsTextEditor(Boolean.valueOf(z));
        }
        long a = this.l.a(getClass());
        if (a > -1) {
            f.a().a(getSupportActionBar(), a);
        }
    }

    protected Boolean i() {
        return this.m == null ? Boolean.valueOf(true) : ((q) this.m.getKeyListener()).a();
    }

    protected Boolean j() {
        return this.m == null ? Boolean.valueOf(true) : ((q) this.m.getKeyListener()).b();
    }

    protected Boolean k() {
        return Boolean.valueOf(true);
    }

    protected void l() {
        if (this.c != null) {
            this.c.performClick();
        }
    }

    protected double m() {
        try {
            return Double.parseDouble(this.d.getText().toString());
        } catch (Exception e) {
            try {
                return Double.parseDouble(this.d.getText().toString().replace(',', '.'));
            } catch (Exception e2) {
                this.d.setText("0");
                return 0.0d;
            }
        }
    }

    protected String n() {
        return "";
    }

    protected void o_() {
    }

    protected void onCreate(Bundle bundle) {
        this.b = getIntent().getLongExtra("_id", -1);
        this.e = Boolean.valueOf(false);
        this.f = new HashMap();
        this.a = new ArrayList();
        super.onCreate(bundle);
        d();
        this.d = (ClearableEditText) findViewById(2131034188);
        if (this.d != null) {
            this.d.setOnEditorActionListener(new p(this));
            this.d.setSelectAllOnFocus(false);
            this.d.setText("1");
            this.d.setIsTextEditor(Boolean.valueOf(!e.h.booleanValue()));
            this.d.setOnClickListener(new q(this));
        }
        this.c = (Button) findViewById(2131034199);
        if (this.c != null) {
            e.a(this.c);
            this.c.setOnClickListener(new r(this));
        }
        if (this.l.a(getClass()) > -1) {
            setTitle(String.format(getString(2131362076), new Object[]{this.l.c(j)}));
        }
        try {
            h();
        } catch (Exception e) {
            a(getString(2131362057), "BaseCommonDelegateConverter.onCreate", e);
        }
    }

    protected Dialog onCreateDialog(int i) {
        return i == 8888 ? b.a(new ag(this, this.m, this.c, this.l.getResources(), g(), i(), j())) : super.onCreateDialog(i);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getSupportMenuInflater().inflate(2131558401, menu);
        menu.findItem(2131034461).setVisible(false);
        menu.findItem(2131034462).setVisible(false);
        menu.findItem(2131034464).setVisible(false);
        if (this.b > -1) {
            menu.findItem(2131034465).setVisible(false);
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131034465 && this.b == -1) {
            c();
            return true;
        } else if (menuItem.getItemId() != 2131034463) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            if (this.d != null) {
                this.d.setText("1");
            }
            l();
            return true;
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog) {
        if (i == 8888) {
            ((ag) dialog).a(g(), this.m, i(), j(), k());
        }
        super.onPrepareDialog(i, dialog);
    }

    protected void onStart() {
        super.onStart();
        if (!this.e.booleanValue()) {
            e();
            o();
            this.e = Boolean.valueOf(true);
        }
    }
}