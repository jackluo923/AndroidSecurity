package com.wopnersoft.unitconverter.plus;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.wopnersoft.unitconverter.plus.util.ListFilterDialog;

// compiled from: ProGuard
class i implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    i(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceClick(Preference preference) {
        this.a.startActivity(new Intent(this.a.getApplication(), ListFilterDialog.class));
        return true;
    }
}