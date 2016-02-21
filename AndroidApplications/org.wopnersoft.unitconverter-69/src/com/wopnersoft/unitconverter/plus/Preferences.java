package com.wopnersoft.unitconverter.plus;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.actionbarsherlock.app.SherlockPreferenceActivity;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.am;
import com.wopnersoft.unitconverter.plus.util.c;

// compiled from: ProGuard
public class Preferences extends SherlockPreferenceActivity {
    private SharedPreferences a;
    private UnitConverterApplication b;
    private String c;
    private int d;
    private ProgressDialog e;

    protected void onCreate(Bundle bundle) {
        setTheme(f.a().g());
        super.onCreate(bundle);
        addPreferencesFromResource(2130968578);
        this.b = (UnitConverterApplication) getApplication();
        this.a = this.b.h();
        this.d = 0;
        findPreference("decimalPlaces").setSummary(new StringBuilder("# of decimal places.  Current: ").append(this.a.getString("decimalPlaces", "4")).toString());
        findPreference("appStyle").setOnPreferenceChangeListener(new b(this));
        findPreference("deleteFavs").setOnPreferenceClickListener(new e(this));
        findPreference("deleteCurrency").setOnPreferenceClickListener(new g(this));
        findPreference("filterListORed").setOnPreferenceClickListener(new i(this));
        findPreference("viewErrorLog").setOnPreferenceClickListener(new j(this));
        findPreference("changeLog").setOnPreferenceClickListener(new k(this));
        findPreference("about").setOnPreferenceClickListener(new l(this));
        findPreference("rateme").setOnPreferenceClickListener(new m(this));
    }

    protected Dialog onCreateDialog(int i) {
        if (i == 10508) {
            return new Builder(this).setTitle(2131362614).setCancelable(true).setMessage(2131362615).setPositiveButton(2131361856, new n(this)).setNegativeButton(2131361855, new d(this)).create();
        }
        if (i == 6688) {
            return am.d(this);
        }
        if (i == 6699) {
            return am.c(this);
        }
        return i == 6700 ? c.b(this, getSharedPreferences("apprater", 0).edit()) : super.onCreateDialog(i);
    }

    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        super.onPreferenceTreeClick(preferenceScreen, preference);
        if (!(preference == null || !(preference instanceof PreferenceScreen) || ((PreferenceScreen) preference).getDialog() == null)) {
            ((PreferenceScreen) preference).getDialog().getWindow().getDecorView().setBackgroundDrawable(getWindow().getDecorView().getBackground().getConstantState().newDrawable());
        }
        return false;
    }
}