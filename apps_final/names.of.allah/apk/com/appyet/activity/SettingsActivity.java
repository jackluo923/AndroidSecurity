package com.appyet.activity;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.SearchRecentSuggestions;
import android.util.DisplayMetrics;
import com.actionbarsherlock.app.SherlockPreferenceActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.bp;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataApplication;
import com.appyet.metadata.MetadataLanguage;
import com.appyet.metadata.MetadataSetting;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class SettingsActivity
  extends SherlockPreferenceActivity
{
  private PreferenceScreen a;
  private PreferenceScreen b;
  private PreferenceScreen c;
  private PreferenceScreen d;
  private ApplicationContext e;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    e = ((ApplicationContext)getApplicationContext());
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034115);
    a = ((PreferenceScreen)findPreference("SETTINGS_ABOUT"));
    b = ((PreferenceScreen)findPreference("SETTINGS_FEEDBACK"));
    if ((e.q.MetadataSetting.FeedbackEmail == null) || (e.q.MetadataSetting.FeedbackEmail.trim().equals(""))) {
      ((PreferenceScreen)findPreference("SETTING_ROOT")).removePreference(b);
    }
    c = ((PreferenceScreen)findPreference("SETTINGS_HELP"));
    if ((e.q.MetadataSetting.HelpLink == null) || (e.q.MetadataSetting.HelpLink.trim().equals(""))) {
      ((PreferenceScreen)findPreference("SETTING_ROOT")).removePreference(c);
    }
    d = ((PreferenceScreen)findPreference("SETTINGS_CLEARSEARCHHISTORY"));
    paramBundle = (ListPreference)findPreference("SETTINGS_DISPLAY_LANGUAGEV3");
    String[] arrayOfString1 = new String[e.q.MetadataLanguages.size()];
    String[] arrayOfString2 = new String[e.q.MetadataLanguages.size()];
    Iterator localIterator = e.q.MetadataLanguages.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      MetadataLanguage localMetadataLanguage = (MetadataLanguage)localIterator.next();
      arrayOfString1[i] = Name;
      arrayOfString2[i] = LocaleCode;
      i += 1;
    }
    paramBundle.setEntries(arrayOfString1);
    paramBundle.setEntryValues(arrayOfString2);
    findPreference("SETTINGS_UPDATES_UPDATEINTERVALV3").setEnabled(e.d.h());
    findPreference("SETTINGS_UPDATES_AUTOV3").setOnPreferenceChangeListener(new z(this));
    findPreference("SETTINGS_NOTIFICATIONS_RINGTONEV3").setEnabled(e.d.n());
    findPreference("SETTINGS_NOTIFICATIONS_VIBRATEV3").setEnabled(e.d.n());
    findPreference("SETTINGS_NOTIFICATIONS_FLASHLIGHTV3").setEnabled(e.d.n());
    findPreference("SETTINGS_NOTIFICATIONS_NOTIFICATIONV3").setOnPreferenceChangeListener(new aa(this));
    e.e.a("Settings");
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    if (paramPreference == a) {
      startActivityForResult(new Intent(this, AboutActivity.class), 0);
    }
    for (;;)
    {
      return super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
      if (paramPreference == b)
      {
        Object localObject1 = getPackageManager();
        try
        {
          localObject1 = ((PackageManager)localObject1).getPackageInfo(getPackageName(), 0);
          Object localObject3 = new Date();
          Object localObject4 = new SimpleDateFormat("yyyy.MM.dd_HH.mm.ss_zzz");
          localObject3 = "\n\n\n-------- Environment --------\n" + "Time\t= " + ((SimpleDateFormat)localObject4).format((Date)localObject3) + "\n";
          localObject3 = (String)localObject3 + "Device\t= " + Build.FINGERPRINT + "\n";
          try
          {
            localObject4 = Build.class.getField("MANUFACTURER");
            localObject4 = (String)localObject3 + "Make\t=" + ((Field)localObject4).get(null) + "\n";
            localObject3 = localObject4;
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            Object localObject2;
            for (;;) {}
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            for (;;) {}
          }
          catch (NoSuchFieldException localNoSuchFieldException)
          {
            for (;;) {}
          }
          catch (SecurityException localSecurityException)
          {
            for (;;) {}
          }
          localObject3 = (String)localObject3 + "Model\t= " + Build.MODEL + "\n";
          localObject3 = (String)localObject3 + "Product\t= " + Build.PRODUCT + "\n";
          localObject1 = (String)localObject3 + "App\t\t= " + getPackageName() + ", version " + versionName + " (build " + versionCode + ")\n";
          localObject1 = (String)localObject1 + "Locale\t= " + getResourcesgetConfigurationlocale.getDisplayName() + "\n";
          localObject1 = (String)localObject1 + "Res\t\t= " + getResources().getDisplayMetrics().toString() + "\n";
          localObject1 = (String)localObject1 + "Source Version Name: " + e.q.MetadataApplication.BuildTemplateVersionName + "\n";
          localObject1 = (String)localObject1 + "-----------------------------\n\n";
          localObject3 = new Intent("android.intent.action.SEND");
          ((Intent)localObject3).setType("plain/text");
          ((Intent)localObject3).putExtra("android.intent.extra.EMAIL", new String[] { e.q.MetadataSetting.FeedbackEmail });
          ((Intent)localObject3).putExtra("android.intent.extra.SUBJECT", getString(2131230998) + " (" + e.b() + ") " + getString(2131230894));
          ((Intent)localObject3).putExtra("android.intent.extra.TEXT", (String)localObject1);
          startActivity(Intent.createChooser((Intent)localObject3, getString(2131230894)));
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          for (;;)
          {
            localObject2 = new PackageInfo();
            versionName = "unknown";
            versionCode = 69;
          }
        }
      }
      else if (paramPreference == c)
      {
        localObject2 = new Intent(e, WebBrowserActivity.class);
        ((Intent)localObject2).putExtra("URL", e.q.MetadataSetting.HelpLink);
        e.startActivity((Intent)localObject2);
      }
      else if (paramPreference == d)
      {
        new SearchRecentSuggestions(this, e.getPackageName() + ".suggestion.provider", 1).clearHistory();
        d.setEnabled(false);
      }
    }
  }
  
  protected void onResume()
  {
    ar.a(this);
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.SettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */