package com.wopnersoft.unitconverter.plus;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.wopnersoft.unitconverter.plus.util.ErrorLogDialog;

// compiled from: ProGuard
class j implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    j(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceClick(Preference preference) {
        this.a.startActivity(new Intent(this.a.getApplication(), ErrorLogDialog.class));
        return true;
    }
}