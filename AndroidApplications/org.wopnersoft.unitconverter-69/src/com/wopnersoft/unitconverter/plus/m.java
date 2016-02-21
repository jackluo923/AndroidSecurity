package com.wopnersoft.unitconverter.plus;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

// compiled from: ProGuard
class m implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    m(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceClick(Preference preference) {
        this.a.showDialog(6700);
        return true;
    }
}