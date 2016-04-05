package com.appyet.manager;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import com.appyet.a.a.d;
import com.appyet.context.ApplicationContext;
import com.appyet.context.b;
import com.appyet.context.c;
import com.appyet.context.e;
import com.appyet.f.o;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataSetting;
import com.appyet.metadata.MetadataTheme;
import java.util.Date;
import java.util.Locale;

public final class bp
{
  private static String b = "y<6+R&A!;sD2v}h";
  private ApplicationContext a;
  
  public bp(ApplicationContext paramApplicationContext)
  {
    a = paramApplicationContext;
  }
  
  public final int A()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_SKIPIMAGESIZEV3", "1500"));
  }
  
  public final int B()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_SKIPIMAGEDIMENSIONV3", "100"));
  }
  
  public final int C()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_SKIPIMAGETHUMBNAILDIMENSIONV3", "60"));
  }
  
  public final int D()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    if ((a.getResources().getConfiguration().screenLayout & 0xF) == 3) {
      return Integer.parseInt(localSharedPreferences.getString("SETTINGS_DISPLAY_THUMBNAILDIMENSIONV3", "85"));
    }
    if ((a.getResources().getConfiguration().screenLayout & 0xF) == 4) {
      return Integer.parseInt(localSharedPreferences.getString("SETTINGS_DISPLAY_THUMBNAILDIMENSIONV3", "100"));
    }
    return Integer.parseInt(localSharedPreferences.getString("SETTINGS_DISPLAY_THUMBNAILDIMENSIONV3", "75"));
  }
  
  public final c E()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    if (localSharedPreferences.getString("SETTINGS_DISPLAY_ARTICLELISTITEMLAYOUTV3", "CLASSIC_RICH").equals("CLASSIC_RICH")) {
      return c.a;
    }
    if (localSharedPreferences.getString("SETTINGS_DISPLAY_ARTICLELISTITEMLAYOUTV3", "CLASSIC_RICH").equals("CLASSIC_SIMPLE")) {
      return c.b;
    }
    return c.a;
  }
  
  public final String F()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_CURRENTTHEMEGUID", a.q.MetadataSetting.DefaultThemeGuid);
  }
  
  public final int G()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    if (a.m.a.PrimaryBgColor.equals("DARK")) {}
    for (int i = a.getResources().getColor(2131296321);; i = a.getResources().getColor(2131296323)) {
      return localSharedPreferences.getInt("SETTINGS_DISPLAY_FONTCOLOR_PRIMARYV3", i);
    }
  }
  
  public final int H()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    if (a.m.a.PrimaryBgColor.equals("DARK")) {}
    for (int i = a.getResources().getColor(2131296322);; i = a.getResources().getColor(2131296324)) {
      return localSharedPreferences.getInt("SETTINGS_DISPLAY_FONTCOLOR_SECONDARYV3", i);
    }
  }
  
  public final boolean I()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_DISPLAY_CONFIRMBULKACTIONSV3", true);
  }
  
  public final int J()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_TRANSLATE_LANGUAGEV3", "16"));
  }
  
  public final int K()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_ARTICLE_FONTSIZEV3", "2"));
  }
  
  public final boolean L()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_MEDIA_REACT_TO_HEADSETV3", false);
  }
  
  public final boolean M()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_MEDIA_PAUSE_HEADSET_DISCONNECTEDV3", true);
  }
  
  public final boolean N()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_MEDIA_PAUSE_POWER_REMOVALV3", false);
  }
  
  public final boolean O()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_UPDATES_UPDATE_ON_STARTUPV3", false);
  }
  
  public final int P()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getInt("APPLICATION_LAST_VERSION_CODEV3", -1);
  }
  
  public final long Q()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getLong("APPLICATION_LAST_MODULE_IDV3", -1L);
  }
  
  public final int R()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_DOWNLOAD_FILE_SORT_BYV3", "0"));
  }
  
  public final boolean S()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("USER_LEARNED_LEFTMENUV3", false);
  }
  
  @SuppressLint({"NewApi"})
  public final void T()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("USER_LEARNED_LEFTMENUV3", true);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final int U()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getInt("STATISTIC_READ_ARTICLE_COUNT3", 0);
  }
  
  public final boolean V()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("HAS_RATTING_REMINDER_SHOWN3", false);
  }
  
  @SuppressLint({"NewApi"})
  public final void W()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("HAS_RATTING_REMINDER_SHOWN3", true);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final int X()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getInt("NEW_ARTICLE_COUNT3", 0);
  }
  
  public final long a()
  {
    long l2 = PreferenceManager.getDefaultSharedPreferences(a).getLong("SETTING_LASTCLEARCACHEV3", 0L);
    long l1 = l2;
    if (l2 == 0L)
    {
      Date localDate = new Date();
      a(localDate.getTime());
      l1 = localDate.getTime();
    }
    return l1;
  }
  
  public final String a(d paramd)
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_FORUMSITE_USERNAME_" + c, null);
  }
  
  @SuppressLint({"NewApi"})
  public final void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putInt("SETTINGS_DISPLAY_SORTARTICLEBYV3", paramInt);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void a(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putLong("SETTING_LASTCLEARCACHEV3", paramLong);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void a(d paramd, String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_FORUMSITE_USERNAME_" + c, paramString);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void a(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_DISPLAY_LANGUAGEV3", paramString);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("SETTINGS_DISPLAY_AUTO_HIDE_READV3", paramBoolean);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final String b(d paramd)
  {
    try
    {
      paramd = new o(b).a(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_FORUMSITE_Password_" + c, null));
      return paramd;
    }
    catch (Exception paramd) {}
    return null;
  }
  
  @SuppressLint({"NewApi"})
  public final void b(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_UPDATES_UPDATEINTERVALV3", String.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void b(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putLong("SETTING_LASTSYNCV3", paramLong);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void b(d paramd, String paramString)
  {
    o localo = new o(b);
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_FORUMSITE_Password_" + c, localo.b(paramString));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void b(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_DISPLAY_CURRENTTHEMEGUID", paramString);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("SETTINGS_UPDATES_WIFIONLYV3", paramBoolean);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final boolean b()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_DISPLAY_KEEPSTARREDUNREADV3", false);
  }
  
  @SuppressLint({"NewApi"})
  public final void c(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_MESSAGE_AUTO_CLEANUP_READV3", String.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void c(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putLong("APPLICATION_LAST_MODULE_IDV3", paramLong);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void c(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("SETTINGS_UPDATES_WIFIONLY_IMAGEV3", paramBoolean);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final boolean c()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_DISPLAY_AUTO_HIDE_READV3", false);
  }
  
  @SuppressLint({"NewApi"})
  public final void d(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_MESSAGE_AUTO_CLEANUP_UNREADV3", String.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void d(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("SETTINGS_UPDATES_WIFIONLY_PODCASTV3", paramBoolean);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final boolean d()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_DISPLAY_KEEPSTARTOPV3", false);
  }
  
  public final int e()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getInt("SETTINGS_DISPLAY_SORTARTICLEBYV3", 3);
  }
  
  @SuppressLint({"NewApi"})
  public final void e(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_TRANSLATE_LANGUAGEV3", String.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void e(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("SETTINGS_UPDATES_AUTOV3", paramBoolean);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final e f()
  {
    switch (PreferenceManager.getDefaultSharedPreferences(a).getInt("SETTINGS_DISPLAY_SORTARTICLEBYV3", 3))
    {
    default: 
      return e.d;
    case 0: 
      return e.a;
    case 1: 
      return e.b;
    case 2: 
      return e.c;
    case 3: 
      return e.d;
    case 4: 
      return e.e;
    case 5: 
      return e.f;
    }
    return e.g;
  }
  
  @SuppressLint({"NewApi"})
  public final void f(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_DISPLAY_ARTICLE_FONTSIZEV3", String.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void f(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putBoolean("SETTINGS_UPDATES_UPDATE_ON_STARTUPV3", paramBoolean);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final String g()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_ADVANCED_USERAGENTV3", "");
  }
  
  @SuppressLint({"NewApi"})
  public final void g(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putInt("APPLICATION_LAST_VERSION_CODEV3", paramInt);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  @SuppressLint({"NewApi"})
  public final void h(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putString("SETTINGS_DISPLAY_DOWNLOAD_FILE_SORT_BYV3", String.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final boolean h()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    if (a.q.MetadataSetting.DefaultUpdateInterval != -1) {}
    for (boolean bool = true;; bool = false) {
      return localSharedPreferences.getBoolean("SETTINGS_UPDATES_AUTOV3", bool);
    }
  }
  
  public final int i()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_MESSAGE_CLEARCACHEINTERVALV3", String.valueOf(2)));
  }
  
  @SuppressLint({"NewApi"})
  public final void i(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putInt("STATISTIC_READ_ARTICLE_COUNT3", paramInt);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final String j()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_DISPLAY_DATETIMEFORMATV3", "");
  }
  
  @SuppressLint({"NewApi"})
  public final void j(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(a).edit();
    localEditor.putInt("NEW_ARTICLE_COUNT3", paramInt);
    if (Build.VERSION.SDK_INT >= 9) {
      localEditor.apply();
    }
    localEditor.commit();
  }
  
  public final long k()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getLong("SETTING_LASTSYNCV3", 0L);
  }
  
  public final int l()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_UPDATES_UPDATEINTERVALV3", String.valueOf(a.q.MetadataSetting.DefaultUpdateInterval)));
  }
  
  public final boolean m()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_UPDATES_WIFIONLYV3", false);
  }
  
  public final boolean n()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_NOTIFICATIONS_NOTIFICATIONV3", true);
  }
  
  public final boolean o()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_NOTIFICATIONS_PROGRESSV3", false);
  }
  
  public final String p()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_NOTIFICATIONS_RINGTONEV3", "");
  }
  
  public final String q()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    String str3 = Locale.getDefault().getLanguage();
    String str2 = Locale.getDefault().getCountry();
    if ((str3 != null) && (str2 != null))
    {
      String str1;
      if (str3.equalsIgnoreCase("zh")) {
        if (str2.equalsIgnoreCase("HK")) {
          str1 = "TW";
        }
      }
      for (;;)
      {
        return localSharedPreferences.getString("SETTINGS_DISPLAY_LANGUAGEV3", str3 + "_" + str1);
        if (str2.equalsIgnoreCase("SG"))
        {
          str1 = "CN";
        }
        else
        {
          str1 = str2;
          if (!str2.equalsIgnoreCase("CN"))
          {
            str1 = str2;
            if (!str2.equalsIgnoreCase("TW"))
            {
              str1 = "CN";
              continue;
              str1 = str2;
              if (str3.equalsIgnoreCase("sr")) {
                if (str2.equalsIgnoreCase("BA"))
                {
                  str1 = "ME";
                }
                else
                {
                  str1 = str2;
                  if (!str2.equalsIgnoreCase("RS"))
                  {
                    str1 = str2;
                    if (!str2.equalsIgnoreCase("ME")) {
                      str1 = "RS";
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return localSharedPreferences.getString("SETTINGS_DISPLAY_LANGUAGEV3", str3);
  }
  
  public final boolean r()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_UPDATES_WIFIONLY_IMAGEV3", false);
  }
  
  public final boolean s()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_UPDATES_WIFIONLY_PODCASTV3", false);
  }
  
  public final boolean t()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_MESSAGE_SDCARDFORSTORAGEV3", true);
  }
  
  public final boolean u()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_NOTIFICATIONS_VIBRATEV3", false);
  }
  
  public final boolean v()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_NOTIFICATIONS_FLASHLIGHTV3", false);
  }
  
  public final int w()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_MESSAGE_AUTO_CLEANUP_READV3", String.valueOf(a.q.MetadataSetting.AutoCleanUpRead)));
  }
  
  public final boolean x()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getBoolean("SETTINGS_MESSAGE_AUTO_CLEANUP_KEEP_STARV3", true);
  }
  
  public final int y()
  {
    return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_MESSAGE_AUTO_CLEANUP_UNREADV3", String.valueOf(a.q.MetadataSetting.AutoCleanUpUnread)));
  }
  
  public final b z()
  {
    if (PreferenceManager.getDefaultSharedPreferences(a).getString("SETTINGS_PLAYLIST_SHUFFLEV3", "INSTAPAPER_MOBILIZER").equals("GOOGLE_MOBILIZER")) {
      return b.b;
    }
    return b.a;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */