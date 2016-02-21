package com.wopnersoft.unitconverter.plus.util;

import android.content.Intent;
import android.util.Log;
import com.actionbarsherlock.app.SherlockActivity;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.b.aa;
import com.wopnersoft.unitconverter.plus.b.x;
import com.wopnersoft.unitconverter.plus.d.e;
import java.util.Date;

// compiled from: ProGuard
public class p implements aa {
    private aa a;
    private UnitConverterApplication b;
    private SherlockActivity c;
    private Boolean d;
    private Boolean e;

    public p(aa aaVar, UnitConverterApplication unitConverterApplication, Intent intent) {
        boolean z = false;
        this.b = unitConverterApplication;
        this.a = aaVar;
        this.c = null;
        if (aaVar instanceof SherlockActivity) {
            this.c = (SherlockActivity) this.a;
        }
        this.d = Boolean.valueOf(false);
        this.e = Boolean.valueOf(false);
        this.d = Boolean.valueOf((intent == null ? -1 : intent.getIntExtra("debugDownloadMode", Integer.MIN_VALUE)) == ((Integer) this.b.b("debugDownloadMode", Integer.valueOf(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED))).intValue());
        if (this.d.booleanValue()) {
            if (intent != null) {
                z = intent.getBooleanExtra("debugTestLinks", false);
            }
            this.e = Boolean.valueOf(z);
        }
    }

    public static String a(x xVar) {
        return String.format("%s", new Object[]{e.a(xVar, "currency_pub_date")});
    }

    public Object a_() {
        return Long.valueOf(20406);
    }

    public void a_(String str) {
        this.b.g();
        c();
        this.b.b(this);
        this.a.a_(str);
    }

    public void b() {
        if (this.b.c(this).booleanValue()) {
            if (this.c != null) {
                this.c.setSupportProgressBarIndeterminateVisibility(true);
            }
            this.b.a(this);
        } else if (this.d.booleanValue()) {
            Log.d("BaseCurrencyConverter.onStart", "Debug Mode - refresh initiated");
            d();
        } else if (((Boolean) this.b.b("currency_table_empty", Boolean.valueOf(true))).booleanValue()) {
            Log.d("BaseCurrencyConverter.onStart", "Currency table empty - refresh initiated");
            d();
        } else if (e.c.booleanValue()) {
            if (new Date().getTime() - this.b.h().getLong("currency_last_updated", 0) > 64800000) {
                Log.d("BaseCurrencyConverter.onStart", "Currency data is old - refresh initiated");
                d();
            }
        }
    }

    public void c() {
        if (this.c != null) {
            this.c.setSupportProgressBarIndeterminateVisibility(false);
        }
    }

    public void d() {
        if (this.c != null) {
            this.c.setSupportProgressBarIndeterminateVisibility(true);
        }
        this.b.a(this);
        if (this.d.booleanValue()) {
            this.b.a(new o(new m(this.b), this.d, this.e));
        } else {
            this.b.a(new o(new m(this.b)));
        }
    }

    public Boolean e() {
        return this.b.c(this);
    }

    public String f() {
        String a = e.a(this.b, "currency_pub_date");
        return String.format("%s", new Object[]{a});
    }
}