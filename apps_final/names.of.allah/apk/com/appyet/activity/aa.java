package com.appyet.activity;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

final class aa
  implements Preference.OnPreferenceChangeListener
{
  aa(SettingsActivity paramSettingsActivity) {}
  
  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    a.findPreference("SETTINGS_NOTIFICATIONS_RINGTONEV3").setEnabled(((Boolean)paramObject).booleanValue());
    a.findPreference("SETTINGS_NOTIFICATIONS_VIBRATEV3").setEnabled(((Boolean)paramObject).booleanValue());
    a.findPreference("SETTINGS_NOTIFICATIONS_FLASHLIGHTV3").setEnabled(((Boolean)paramObject).booleanValue());
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */