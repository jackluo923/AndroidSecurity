package com.wopnersoft.unitconverter.plus;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

// compiled from: ProGuard
class k implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    k(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceClick(Preference preference) {
        this.a.showDialog(6688);
        return true;
    }
}