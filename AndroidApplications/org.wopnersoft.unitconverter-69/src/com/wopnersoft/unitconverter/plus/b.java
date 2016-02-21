package com.wopnersoft.unitconverter.plus;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.wopnersoft.unitconverter.plus.d.e;
import java.util.concurrent.Executors;

// compiled from: ProGuard
class b implements OnPreferenceChangeListener {
    final /* synthetic */ Preferences a;

    b(Preferences preferences) {
        this.a = preferences;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (!String.valueOf(e.s).equals(obj)) {
            this.a.e = com.wopnersoft.unitconverter.plus.d.b.a(this.a, 2131361914, 2131362616);
            this.a.e.show();
            Executors.defaultThreadFactory().newThread(new c(this)).start();
        }
        return true;
    }
}