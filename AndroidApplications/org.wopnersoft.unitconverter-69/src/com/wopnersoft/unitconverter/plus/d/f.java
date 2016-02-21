package com.wopnersoft.unitconverter.plus.d;

import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;

// compiled from: ProGuard
public final class f {
    private static f a;
    private static Boolean b;
    private UnitConverterApplication c;
    private SharedPreferences d;
    private PackageManager e;
    private Resources f;
    private String g;
    private Boolean h;

    static {
        b = Boolean.valueOf(false);
    }

    private f(UnitConverterApplication unitConverterApplication) {
        this.c = unitConverterApplication;
        this.d = PreferenceManager.getDefaultSharedPreferences(this.c);
        if (!e.y.booleanValue()) {
            e.a(this.d);
        }
        this.e = this.c.getPackageManager();
        this.f = this.c.getResources();
    }

    private Drawable a(String str, String str2) {
        Resources b = b(str);
        if (b != null) {
            int identifier = b.getIdentifier(str2, "drawable", str);
            if (identifier != 0) {
                return b.getDrawable(identifier);
            }
            this.c.a("loadIconFromTheme", new StringBuilder("resource_id = 0 - package: ").append(str).toString());
            return null;
        } else {
            this.c.a("loadIconFromTheme", new StringBuilder("themeResources is null - package: ").append(str).toString());
            return null;
        }
    }

    public static f a() {
        if (b.booleanValue()) {
            return a;
        }
        throw new NullPointerException("ThemeManager not Initialized");
    }

    public static void a(UnitConverterApplication unitConverterApplication) {
        a = new f(unitConverterApplication);
        b = Boolean.valueOf(true);
    }

    public int a(int i) {
        switch (i) {
            case IcsToast.LENGTH_SHORT:
                return e.s == 0 ? 2130837671 : 2130837670;
            case IcsToast.LENGTH_LONG:
                return e.s == 0 ? 2130837661 : 2130837660;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                return e.s == 0 ? 2130837628 : 2130837628;
            case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                return (e.s == 0 || VERSION.SDK_INT < 14) ? 2130837631 : 2130837630;
            case R.styleable.SherlockTheme_actionBarStyle:
                return (e.s == 0 || VERSION.SDK_INT < 14) ? 2130837658 : 2130837657;
            case R.styleable.SherlockTheme_actionBarSplitStyle:
                return (e.s == 0 || VERSION.SDK_INT < 14) ? 2130837634 : 2130837635;
            case R.styleable.SherlockTheme_actionBarWidgetTheme:
                return e.s == 0 ? 2130837680 : 2130837681;
            default:
                return 0;
        }
    }

    public Drawable a(long j) {
        int i = 2130837706;
        try {
            int a = this.c.a(j);
            if (a < 0) {
                this.c.a("ThemeManager", new StringBuilder("getIndexforVal returned -1 : VAL= ").append(String.valueOf(j)).toString());
                return this.f.getDrawable(2130837706);
            } else if (c().booleanValue()) {
                return this.f.getDrawable(UnitConverterApplication.e[a]);
            } else {
                Drawable a2 = a(this.g, UnitConverterApplication.f[a]);
                return a2 == null ? this.f.getDrawable(UnitConverterApplication.e[a]) : a2;
            }
        } catch (Exception e) {
            this.c.a("ThemeManager", "getIconforVal", e);
            return this.f.getDrawable(i);
        }
    }

    public Drawable a(String str) {
        Drawable drawable = null;
        Boolean c = c();
        if (str.equals("style_calc_num_btns")) {
            if (c.booleanValue()) {
                drawable = this.f.getDrawable(2130837701);
            } else {
                drawable = a(this.g, str);
                if (drawable == null) {
                    drawable = this.f.getDrawable(2130837701);
                }
            }
        } else if (str.equals("style_calc_mem")) {
            if (c.booleanValue()) {
                drawable = this.f.getDrawable(2130837700);
            } else {
                drawable = a(this.g, str);
                if (drawable == null) {
                    drawable = a(this.g, "style_calc_other_btns");
                }
            }
        } else if (str.equals("style_calc_op")) {
            if (c.booleanValue()) {
                drawable = this.f.getDrawable(2130837702);
            } else {
                drawable = a(this.g, str);
                if (drawable == null) {
                    drawable = a(this.g, "style_calc_other_btns");
                }
            }
        } else if (str.equals("style_calc_other_btns") && !c.booleanValue()) {
            drawable = a(this.g, str);
        }
        if (drawable != null) {
            return drawable;
        }
        if (str.equals("robot_launcher_plus")) {
            if (c.booleanValue()) {
                return this.f.getDrawable(2130837693);
            }
            drawable = a(this.g, str);
            return drawable == null ? this.f.getDrawable(2130837693) : drawable;
        } else if (!str.equals("THEME_KEYPAD_HEADER") || VERSION.SDK_INT < 14) {
            if (!str.equals("THEME_ICON_RESULT_TXT_BORDER_NEW")) {
                return drawable;
            }
            if (!c.booleanValue()) {
                drawable = e.s == 0 ? a(this.g, "result_text_decor_light") : a(this.g, "result_text_decor_dark");
                if (drawable != null) {
                    return drawable;
                }
                return e.s == 0 ? this.f.getDrawable(2130837690) : this.f.getDrawable(2130837689);
            } else if (e.s == 0) {
                return this.f.getDrawable(2130837690);
            } else {
                return this.f.getDrawable(2130837689);
            }
        } else if (c.booleanValue()) {
            return e.s == 0 ? this.f.getDrawable(2130837680) : this.f.getDrawable(2130837681);
        } else if (e.s == 0) {
            return a(this.g, "keypad_header");
        } else {
            return a(this.g, "keypad_header_dark");
        }
    }

    public void a(View view, String str) {
        a(view, str, Boolean.valueOf(true));
    }

    public void a(View view, String str, Boolean bool) {
        Drawable a = a(str);
        if (bool.booleanValue() && (!bool.booleanValue() || a == null)) {
            return;
        }
        if (view instanceof ImageView) {
            ((ImageView) view).setImageDrawable(a);
        } else {
            view.setBackgroundDrawable(a);
        }
    }

    public void a(ActionBar actionBar, long j) {
        if (actionBar != null) {
            actionBar.setIcon(a().a(j));
        }
    }

    public Resources b(String str) {
        Resources resources = null;
        try {
            return this.e.getResourcesForApplication(str);
        } catch (NameNotFoundException e) {
            this.c.a("getThemeResource", "themeResources doesn't exist", e);
            return resources;
        }
    }

    public synchronized void b() {
        this.g = this.d.getString("appTheme", "Default Theme");
        this.h = Boolean.valueOf(this.g.equalsIgnoreCase("Default Theme"));
        if (!this.h.booleanValue()) {
            Resources resourcesForApplication;
            Resources resources = null;
            try {
                resourcesForApplication = this.e.getResourcesForApplication(this.g);
            } catch (NameNotFoundException e) {
                Log.e("ThemeManager", "check if alt theme exists... failed... set to default", e);
                resourcesForApplication = resources;
            }
            if (resourcesForApplication == null) {
                this.g = "Default Theme";
                this.h = Boolean.valueOf(true);
                this.d.edit().putString("appTheme", "Default Theme").commit();
            }
        }
    }

    public Boolean c() {
        if (this.h == null) {
            this.g = this.d.getString("appTheme", "Default Theme");
            this.h = Boolean.valueOf("Default Theme".equalsIgnoreCase(this.g));
        }
        return this.h;
    }

    public int d() {
        return e.s == 0 ? -1 : -16777216;
    }

    public int e() {
        return e.s == 0 ? -16777216 : -1;
    }

    public int f_() {
        return e.s == 0 ? -3355444 : -12303292;
    }

    public int g() {
        return e.s == 0 ? R.style.Theme_Sherlock_Light : R.style.Theme_Sherlock;
    }

    public int h() {
        return e.s == 0 ? R.style.Theme_Sherlock_Light_Dialog : R.style.Theme_Sherlock_Dialog;
    }
}