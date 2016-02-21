package com.wopnersoft.unitconverter.plus.specialized;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.b.o;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.util.QuickViewDialog;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;

// compiled from: ProGuard
public class GasMarkConverter extends o {
    protected Spinner f;
    protected TextView g;
    protected TextView h;
    protected TextView i;
    protected TextView j;
    protected TextView n;
    protected TextView o;
    protected TextView p;
    private final String[] q;
    private final String[] r;
    private final String[] s;
    private final int[] t;

    public GasMarkConverter() {
        this.q = new String[]{"1/4", "1/2", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
        this.r = new String[]{"107", "121", "135", "149", "163", "177", "191", "204", "218", "232", "246"};
        this.s = new String[]{"225", "250", "275", "300", "325", "350", "375", "400", "425", "450", "475"};
        this.t = new int[]{2131362299, 2131362299, 2131362297, 2131362297, 2131362296, 2131362293, 2131362294, 2131362295, 2131362291, 2131362292, 2131362298};
        this.f = null;
    }

    private void a(Bundle bundle) {
        bundle.putInt("from_pos", this.f.getSelectedItemPosition());
    }

    private void a(SpinnerAdapter spinnerAdapter) {
        this.f.setAdapter(spinnerAdapter);
        this.f.setOnItemSelectedListener(new n(this));
    }

    private void b(Bundle bundle) {
        this.f.setSelection(bundle.getInt("from_pos"));
        l();
    }

    protected void a() {
        SpinnerAdapter a = b.a(this, this.q);
        a(a);
        if (this.b > -1) {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362694))).append(" - ").append(getString(2131362769)).toString());
            aaVar.a();
            ac c = aaVar.c(this.b);
            if (c != null) {
                int position = a.getPosition(c.c);
                if (position > -1) {
                    this.f.setSelection(position);
                }
            }
            aaVar.b();
        }
    }

    protected void b() {
        int selectedItemPosition = this.f.getSelectedItemPosition();
        this.n.setText(new StringBuilder(String.valueOf(this.r[selectedItemPosition])).append(" ").append(getString(2131362328)).toString());
        this.o.setText(new StringBuilder(String.valueOf(this.s[selectedItemPosition])).append(" ").append(getString(2131362329)).toString());
        this.p.setText(getString(this.t[selectedItemPosition]));
    }

    protected void c() {
        aa aaVar;
        aa aaVar2 = null;
        try {
            aaVar = new aa(this);
            try {
                aaVar.a();
                if (aaVar.a(154, b.a(this.f), "", 0.0d, 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(154, b.a(this.f), 0.0d, "", 0.0d, 0.0d) > -1) {
                        o(getString(2131362388));
                    }
                    if (aaVar != null) {
                        aaVar.b();
                    }
                }
            } catch (Exception e) {
                o(getString(2131362056));
                if (aaVar != null) {
                    aaVar.b();
                }
            }
        } catch (Exception e2) {
            aaVar = aaVar2;
            try {
                o(getString(2131362056));
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th) {
                aaVar2 = aaVar;
                th = th;
                if (aaVar2 != null) {
                    aaVar2.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (aaVar2 != null) {
                aaVar2.b();
            }
            throw th3;
        }
    }

    protected void d() {
        setContentView(2130903079);
        this.f = (Spinner) findViewById(2131034185);
        this.g = (TextView) findViewById(2131034182);
        this.h = (TextView) findViewById(2131034264);
        this.i = (TextView) findViewById(2131034266);
        this.j = (TextView) findViewById(2131034262);
        this.n = (TextView) findViewById(2131034265);
        this.o = (TextView) findViewById(2131034267);
        this.p = (TextView) findViewById(2131034263);
    }

    protected void h() {
        super.h();
        e.a(this.g);
        e.a(this.h);
        e.a(this.i);
        e.a(this.j);
        e.c(this.n);
        e.c(this.o);
        e.c(this.p);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.g.setText(2131362769);
        this.j.setText(2131362290);
        this.h.setText(2131362609);
        this.i.setText(2131362610);
        if (bundle != null) {
            b(bundle);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        Boolean valueOf = Boolean.valueOf(super.onCreateOptionsMenu(menu));
        menu.findItem(2131034462).setVisible(true);
        menu.findItem(2131034463).setVisible(false);
        return valueOf.booleanValue();
    }

    protected void onDestroy() {
        b.a(this.n);
        b.a(this.o);
        b.a(this.p);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131034462) {
            return super.onOptionsItemSelected(menuItem);
        }
        String[] strArr = new String[this.q.length];
        int i = 0;
        while (i < this.q.length) {
            strArr[i] = new StringBuilder(String.valueOf(this.r[i])).append(" ").append(getString(2131362328)).append(" / ").append(this.s[i]).append(" ").append(getString(2131362329)).append(" - ").append(getString(this.t[i])).toString();
            i++;
        }
        Intent intent = new Intent(this, QuickViewDialog.class);
        intent.putExtra("name", strArr);
        intent.putExtra("val", this.q);
        intent.putExtra("header", getString(2131362769));
        intent.putExtra("convname", getString(2131362769));
        intent.putExtra("catid", B());
        intent.putExtra("txt1w", 70);
        intent.putExtra("txt2w", R.styleable.SherlockTheme_buttonStyleSmall);
        startActivity(intent);
        return true;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }
}