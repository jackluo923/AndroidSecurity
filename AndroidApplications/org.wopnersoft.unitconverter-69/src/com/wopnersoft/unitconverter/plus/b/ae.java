package com.wopnersoft.unitconverter.plus.b;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.ClipboardManager;
import android.widget.EditText;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.Preferences;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import java.io.Serializable;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Map;

// compiled from: ProGuard
public abstract class ae extends SherlockActivity {
    private Vibrator a;
    private long b;
    private SharedPreferences c;
    private Map d;
    protected Boolean k;
    protected UnitConverterApplication l;
    protected EditText m;

    public ae() {
        this.b = 0;
        this.k = Boolean.valueOf(true);
    }

    protected Boolean A() {
        return c(Boolean.valueOf(true));
    }

    protected final long B() {
        return this.l.a(getClass());
    }

    protected final String a(double d) {
        return a(d, false);
    }

    protected final String a(double d, boolean z) {
        double abs = Math.abs(d);
        if (e.i.booleanValue() && (abs < 1.0E-6d || abs > 1000000.0d)) {
            return e.u.format(d);
        }
        String format = e.t.format(d);
        try {
            if (NumberFormat.getInstance().parse(format).doubleValue() == 0.0d && d != 0.0d && abs > 1.0E-10d) {
                return e.u.format(d);
            }
            String a = e.b.booleanValue() ? b.a(format) : format;
            return (z || !e.l.booleanValue()) ? a : b.a(a, " ");
        } catch (ParseException e) {
            a("getFormattedValue", "error parsing result", e);
            return format;
        }
    }

    protected void a(SharedPreferences sharedPreferences) {
        e.a(sharedPreferences);
    }

    protected void a(SharedPreferences sharedPreferences, Map map) {
        f.a().b();
        this.l.k();
        a(sharedPreferences);
        try {
            h();
        } catch (Exception e) {
            a(getString(2131362057), "BaseUniversalActivity.reloadPreferences", e);
        }
    }

    protected final void a(CharSequence charSequence) {
        ((ClipboardManager) getSystemService("clipboard")).setText(charSequence);
    }

    protected final void a(String str, String str2, Throwable th) {
        Toast.makeText(this, str, 1).show();
        a(str2, str, th);
    }

    protected final void a(String str, String str2, Throwable th) {
        this.l.a(str, str2, th);
    }

    protected Boolean c(Boolean bool) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        z = Math.abs(currentTimeMillis - this.b) > 500 && e.a.booleanValue() && bool.booleanValue();
        Boolean valueOf = Boolean.valueOf(z);
        this.b = currentTimeMillis;
        if (valueOf.booleanValue()) {
            this.a.vibrate(50);
        }
        return valueOf;
    }

    protected final void c(String str, String str2) {
        this.l.a(str, str2);
    }

    protected abstract void h();

    protected final void o(String str) {
        Toast.makeText(this, str, 1).show();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 500) {
            a(this.c, this.d);
            this.d = null;
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    protected void onCreate(Bundle bundle) {
        this.l = (UnitConverterApplication) getApplication();
        this.c = this.l.h();
        if (!e.y.booleanValue()) {
            e.a(this.c);
        }
        setTheme(f.a().g());
        super.onCreate(bundle);
        this.a = (Vibrator) getSystemService("vibrator");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        if (bundle != null) {
            try {
                this.d = (Map) bundle.getSerializable("prev_map");
            } catch (Exception e) {
                this.d = null;
                c("BaseActivity.onCreate", "error loading prev_map state");
            }
        }
        this.c = this.l.h();
        a(this.c);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131034457) {
            Intent intent = new Intent(this, Preferences.class);
            this.d = this.c.getAll();
            startActivityForResult(intent, 500);
            return true;
        } else if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            finish();
            return true;
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            bundle.putSerializable("prev_map", (Serializable) this.d);
        } catch (Exception e) {
            c("BaseActivity.onSaveInstanceState", "error saving prev_map state");
        }
    }

    protected final void p(String str) {
        Toast.makeText(this, str, 0).show();
    }
}