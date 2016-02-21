package com.yanex.emoticons;

import android.os.Bundle;
import com.actionbarsherlock.app.SherlockPreferenceActivity;
import com.actionbarsherlock.view.MenuItem;

public class Preferences extends SherlockPreferenceActivity {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131034112);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        findPreference("bExport").setOnPreferenceClickListener(new r(this, this));
        findPreference("bImport").setOnPreferenceClickListener(new s(this, this));
        findPreference("bTutorial").setOnPreferenceClickListener(new t(this));
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return false;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }
}