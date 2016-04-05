package com.appyet.activity;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

final class z
  implements Preference.OnPreferenceChangeListener
{
  z(SettingsActivity paramSettingsActivity) {}
  
  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    a.findPreference("SETTINGS_UPDATES_UPDATEINTERVALV3").setEnabled(((Boolean)paramObject).booleanValue());
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */