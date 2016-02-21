package com.wopnersoft.unitconverter.plus;

import android.app.AlertDialog.Builder;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

// compiled from: ProGuard
class g implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    g(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceClick(Preference preference) {
        new Builder(this.a).setIcon(17301543).setTitle(new StringBuilder(String.valueOf(this.a.getString(2131361905))).append("?").toString()).setMessage(new StringBuilder(String.valueOf(this.a.getString(2131362381))).append(" ").append(this.a.getString(2131361905)).append("?").toString()).setPositiveButton(2131362934, new h(this)).setNegativeButton(2131362394, null).show();
        return true;
    }
}