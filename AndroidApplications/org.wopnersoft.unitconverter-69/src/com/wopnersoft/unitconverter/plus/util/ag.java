package com.wopnersoft.unitconverter.plus.util;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.Menu;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// compiled from: ProGuard
public class ag extends Dialog {
    private static int a;
    private View[] b;
    private View c;
    private EditText d;
    private TextView e;
    private ClearableEditText f;
    private String g;
    private Button h;
    private Resources i;
    private ai j;
    private Boolean k;
    private Boolean l;
    private Boolean m;
    private double n;
    private DecimalFormat o;
    private OnClickListener p;

    static {
        a = 13;
    }

    public ag(Context context, EditText editText, Button button, Resources resources, ai aiVar, Boolean bool, Boolean bool2) {
        this(context, editText, button, resources, aiVar, bool, bool2, Boolean.valueOf(true));
    }

    public ag(Context context, EditText editText, Button button, Resources resources, ai aiVar, Boolean bool, Boolean bool2, Boolean bool3) {
        super(context, f.a().h());
        this.p = new ah(this);
        this.d = editText;
        this.h = button;
        this.i = resources;
        this.j = aiVar;
        this.k = bool;
        this.m = bool2;
        this.l = bool3;
        this.o = new DecimalFormat("0.000000000000000");
    }

    private String a(double d) {
        return d - Math.floor(d) != 0.0d ? b.a(this.o.format(d)) : String.valueOf((long) d);
    }

    private void a() {
        int i = 0;
        while (i < this.b.length) {
            this.b[i].setOnClickListener(this.p);
            i++;
        }
    }

    private void b() {
        int i = R.styleable.SherlockTheme_actionBarItemBackground;
        int i2 = 0;
        a(findViewById(2131034268));
        this.f = (ClearableEditText) findViewById(2131034270);
        this.f.setInputType(0);
        this.f.setIsTextEditor(Boolean.valueOf(false));
        this.f.setGravity(R.styleable.SherlockTheme_actionBarStyle);
        this.f.setPadding(this.f.getPaddingLeft(), this.f.getPaddingTop(), Menu.CATEGORY_SHIFT, this.f.getPaddingBottom());
        this.e = (TextView) findViewById(2131034297);
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        int i3;
        if (this.j == ai.a || this.j == ai.b || this.j == ai.c) {
            this.b[0] = findViewById(2131034271);
            this.b[1] = findViewById(2131034272);
            this.b[2] = findViewById(2131034273);
            this.b[3] = findViewById(2131034274);
            this.b[4] = findViewById(2131034275);
            this.b[5] = findViewById(2131034276);
            this.b[6] = findViewById(2131034277);
            this.b[7] = findViewById(2131034278);
            this.b[8] = findViewById(2131034279);
            this.b[9] = findViewById(2131034280);
            this.b[10] = findViewById(2131034305);
            ((Button) this.b[10]).setText(this.g);
            this.b[10].setEnabled(this.k.booleanValue());
            this.b[11] = findViewById(2131034306);
            this.b[12] = findViewById(2131034303);
            this.b[12].setEnabled(this.m.booleanValue());
            this.b[13] = findViewById(2131034291);
            this.b[14] = findViewById(2131034290);
            ((Button) this.b[14]).setText(this.i.getString(2131361855));
            this.b[15] = findViewById(2131034288);
            this.b[16] = findViewById(2131034302);
            this.b[17] = findViewById(2131034300);
            this.b[18] = findViewById(2131034301);
            this.b[19] = findViewById(2131034298);
            this.b[20] = findViewById(2131034299);
            this.b[21] = findViewById(2131034304);
            this.b[21].setEnabled(this.m.booleanValue());
            i3 = 0;
            while (i3 < 10) {
                arrayList.add(Integer.valueOf(i3));
                i3++;
            }
            i3 = 10;
            while (i3 < this.b.length) {
                if (i3 == 13 || i3 == 14) {
                    arrayList3.add(Integer.valueOf(i3));
                } else {
                    arrayList2.add(Integer.valueOf(i3));
                }
                i3++;
            }
            if (this.j == ai.c) {
                this.b[7].setEnabled(false);
                this.b[8].setEnabled(false);
                this.b[10].setEnabled(false);
                this.b[11].setEnabled(false);
                this.b[12].setEnabled(false);
                this.b[16].setEnabled(false);
                this.b[17].setEnabled(false);
                this.b[18].setEnabled(false);
                this.b[19].setEnabled(false);
                this.b[20].setEnabled(false);
                this.b[21].setEnabled(false);
            }
            if (this.j == ai.b) {
                this.b[1].setEnabled(false);
                this.b[2].setEnabled(false);
                this.b[3].setEnabled(false);
                this.b[4].setEnabled(false);
                this.b[5].setEnabled(false);
                this.b[6].setEnabled(false);
                this.b[7].setEnabled(false);
                this.b[8].setEnabled(false);
                this.b[10].setEnabled(false);
                this.b[11].setEnabled(false);
                this.b[12].setEnabled(false);
                this.b[16].setEnabled(false);
                this.b[17].setEnabled(false);
                this.b[18].setEnabled(false);
                this.b[19].setEnabled(false);
                this.b[20].setEnabled(false);
                this.b[21].setEnabled(false);
            }
        } else if (this.j == ai.d) {
            this.b[0] = findViewById(2131034271);
            this.b[1] = findViewById(2131034272);
            this.b[2] = findViewById(2131034273);
            this.b[3] = findViewById(2131034274);
            this.b[4] = findViewById(2131034275);
            this.b[5] = findViewById(2131034276);
            this.b[6] = findViewById(2131034277);
            this.b[7] = findViewById(2131034278);
            this.b[8] = findViewById(2131034279);
            this.b[9] = findViewById(2131034280);
            this.b[10] = findViewById(2131034284);
            this.b[11] = findViewById(2131034285);
            this.b[12] = findViewById(2131034286);
            this.b[13] = findViewById(2131034291);
            this.b[14] = findViewById(2131034290);
            ((Button) this.b[14]).setText(this.i.getString(2131361855));
            this.b[15] = findViewById(2131034288);
            this.b[16] = findViewById(2131034281);
            this.b[17] = findViewById(2131034282);
            this.b[18] = findViewById(2131034283);
            while (i2 < 10) {
                arrayList.add(Integer.valueOf(i2));
                i2++;
            }
            while (i < this.b.length) {
                if (i == 13 || i == 14) {
                    arrayList3.add(Integer.valueOf(i));
                } else {
                    arrayList2.add(Integer.valueOf(i));
                }
                i++;
            }
        } else {
            this.b[0] = findViewById(2131034292);
            this.b[1] = findViewById(2131034293);
            this.b[2] = findViewById(2131034294);
            this.b[3] = findViewById(2131034295);
            this.b[4] = findViewById(2131034283);
            this.b[5] = findViewById(2131034284);
            this.b[6] = findViewById(2131034296);
            this.b[7] = findViewById(2131034288);
            this.b[8] = findViewById(2131034291);
            this.b[9] = findViewById(2131034290);
            ((Button) this.b[9]).setText(this.i.getString(2131361855));
            i3 = 0;
            while (i3 < 7) {
                arrayList.add(Integer.valueOf(i3));
                i3++;
            }
            i3 = 7;
            while (i3 < this.b.length) {
                if (i3 == 8 || i3 == 9) {
                    arrayList3.add(Integer.valueOf(i3));
                } else {
                    arrayList2.add(Integer.valueOf(i3));
                }
                i3++;
            }
        }
        if (e.o.booleanValue()) {
            View view;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                view = (Button) this.b[((Integer) it.next()).intValue()];
                f.a().a(view, "style_calc_num_btns");
                view.setTextColor(-1);
            }
            it = arrayList3.iterator();
            while (it.hasNext()) {
                view = (Button) this.b[((Integer) it.next()).intValue()];
                f.a().a(view, "style_calc_mem");
                view.setTextColor(-16777216);
            }
            it = arrayList2.iterator();
            while (it.hasNext()) {
                view = (Button) this.b[((Integer) it.next()).intValue()];
                f.a().a(view, "style_calc_op");
                view.setTextColor(-16777216);
            }
            Drawable a = f.a().a("THEME_KEYPAD_HEADER");
            if (a != null) {
                View findViewById = findViewById(2131034269);
                if (findViewById != null) {
                    findViewById.setBackgroundDrawable(a);
                }
            }
        }
    }

    private void c() {
        String trim = this.f.getText().toString().trim();
        if (trim.length() == 0) {
            this.b[a].setEnabled(true);
            if (e.o.booleanValue()) {
                ((Button) this.b[a]).setTextColor(-16777216);
            }
        } else if (this.j == ai.e || this.j == ai.d) {
            this.b[a].setEnabled(true);
            if (e.o.booleanValue()) {
                ((Button) this.b[a]).setTextColor(-16777216);
            }
        } else {
            try {
                if (trim.startsWith(this.g)) {
                    trim = new StringBuilder("0").append(trim).toString();
                } else if (trim.length() > 1 && trim.startsWith("-") && trim.startsWith(this.g, 1)) {
                    trim = new StringBuilder("-0").append(trim.substring(1)).toString();
                }
                this.n = new com.wopnersoft.unitconverter.plus.c.f(trim.replace('\u00d7', '*').replace('\u00f7', '/')).a().a();
                if (this.e != null) {
                    this.e.setText(this.j == ai.a ? a(this.n) : this.f.getText().toString().trim());
                }
                this.b[a].setEnabled(true);
                if (e.o.booleanValue()) {
                    ((Button) this.b[a]).setTextColor(-16777216);
                }
            } catch (Exception e) {
                this.n = Double.MIN_VALUE;
                this.b[a].setEnabled(false);
                if (e.o.booleanValue()) {
                    ((Button) this.b[a]).setTextColor(-12303292);
                }
                if (this.e != null) {
                    this.e.setText("");
                }
            }
        }
    }

    public void a(View view) {
        this.c = view;
    }

    public void a(ai aiVar, EditText editText, Boolean bool, Boolean bool2, Boolean bool3) {
        this.j = aiVar;
        this.d = editText;
        this.k = bool;
        this.m = bool2;
        this.l = bool3;
        if (this.j == ai.a || this.j == ai.b || this.j == ai.c) {
            setContentView(2130903082);
            this.b = new View[22];
            a = 13;
        } else if (this.j == ai.d) {
            setContentView(2130903080);
            this.b = new View[19];
            a = 13;
        } else {
            setContentView(2130903081);
            this.b = new View[10];
            a = 8;
        }
        this.g = Character.toString(((DecimalFormat) NumberFormat.getInstance()).getDecimalFormatSymbols().getDecimalSeparator());
        b();
        a();
        if (this.d != null) {
            CharSequence toString = this.d.getText().toString();
            if (toString != null && !"1".equals(toString)) {
                this.f.setText(toString);
                c();
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.j = (ai) bundle.getSerializable("MODE");
        }
        a(this.j, this.d, this.k, this.m, this.l);
    }

    public void onRestoreInstanceState(Bundle bundle) {
        Log.d("Keypad", "in onRestoreInstanceState()");
        this.d = (EditText) getOwnerActivity().findViewById(bundle.getInt("MASTER_ID"));
        this.f.setText(bundle.getString("CURRENT_STRING"));
        this.j = (ai) bundle.getSerializable("MODE");
        this.k = Boolean.valueOf(bundle.getBoolean("ALLOW_DECIMAL"));
        this.m = Boolean.valueOf(bundle.getBoolean("ALLOW_NEG"));
        this.l = Boolean.valueOf(bundle.getBoolean("FIRE_COMPUTE"));
        a(this.j, this.d, this.k, this.m, this.l);
        super.onRestoreInstanceState(bundle);
    }

    public Bundle onSaveInstanceState() {
        Log.d("Keypad", "in onSaveInstanceState()");
        Bundle bundle = new Bundle();
        bundle.putInt("MASTER_ID", this.d.getId());
        bundle.putString("CURRENT_STRING", this.f.getText());
        bundle.putSerializable("MODE", this.j);
        bundle.putBoolean("ALLOW_DECIMAL", this.k.booleanValue());
        bundle.putBoolean("ALLOW_NEG", this.m.booleanValue());
        bundle.putBoolean("FIRE_COMPUTE", this.l.booleanValue());
        bundle.putAll(super.onSaveInstanceState());
        return bundle;
    }
}