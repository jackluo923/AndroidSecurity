package com.yanex.emoticons;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

final class t implements OnPreferenceClickListener {
    final /* synthetic */ Preferences a;

    t(Preferences preferences) {
        this.a = preferences;
    }

    public final boolean onPreferenceClick(Preference preference) {
        this.a.startActivity(new Intent(this.a, TutorialActivity.class));
        return true;
    }
}