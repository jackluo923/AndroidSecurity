package com.wopnersoft.unitconverter.plus;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.widget.Toast;

// compiled from: ProGuard
class l implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    l(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceClick(Preference preference) {
        Preferences preferences = this.a;
        preferences.d = preferences.d + 1;
        this.a.showDialog(6699);
        if (this.a.d > 5 && !this.a.b.d().booleanValue()) {
            this.a.b.b(Boolean.valueOf(true));
            Toast.makeText(this.a.getBaseContext(), "debug log enabled", 1).show();
        }
        return true;
    }
}