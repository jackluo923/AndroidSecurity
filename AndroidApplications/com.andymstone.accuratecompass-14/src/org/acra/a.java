package org.acra;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

class a implements OnSharedPreferenceChangeListener {
    a() {
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (ACRA.PREF_DISABLE_ACRA.equals(str) || ACRA.PREF_ENABLE_ACRA.equals(str)) {
            ACRA.getErrorReporter().a(!ACRA.access$0(sharedPreferences));
        }
    }
}