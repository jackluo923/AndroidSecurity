package com.admob.android.ads;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.Properties;

class AdMobLocalizer
{
  private static String ADMOB_LOCALIZATION_CACHE_DIR;
  private static String ADMOB_LOCALIZATION_URL_STRING;
  private static String DEFAULT_LANGUAGE;
  private static String PROPS_FILE_SUFFIX;
  private static AdMobLocalizer singleton;
  private static Context staticContext;
  private Context context;
  private String language;
  private Properties strings;
  
  static
  {
    String str = null;
    singleton = str;
    staticContext = str;
    str = "admob_cache";
    ADMOB_LOCALIZATION_CACHE_DIR = str;
    str = "http://mm.admob.com/static/android/i18n/20091123";
    ADMOB_LOCALIZATION_URL_STRING = str;
    str = "en";
    DEFAULT_LANGUAGE = str;
    str = ".properties";
    PROPS_FILE_SUFFIX = str;
  }
  
  private AdMobLocalizer(Context paramContext)
  {
    context = paramContext;
    Locale localLocale = Locale.getDefault();
    String str2 = null;
    language = str2;
    String str1 = localLocale.getLanguage();
    setLanguage(str1);
  }
  
  public String getLanguage()
  {
    String str = language;
    return str;
  }
  
  public static void init(Context paramContext)
  {
    Context localContext = staticContext;
    if (localContext == null) {
      staticContext = paramContext;
    }
    initSingleton();
  }
  
  private static void initSingleton()
  {
    AdMobLocalizer localAdMobLocalizer = singleton;
    if (localAdMobLocalizer == null)
    {
      localAdMobLocalizer = new com/admob/android/ads/AdMobLocalizer;
      Context localContext = staticContext;
      localAdMobLocalizer.<init>(localContext);
      singleton = localAdMobLocalizer;
    }
  }
  
  private String internalLocalize(String paramString)
  {
    loadStrings();
    String str = paramString;
    Object localObject = strings;
    if (localObject != null)
    {
      localObject = strings;
      str = ((Properties)localObject).getProperty(paramString);
      if (str != null)
      {
        localObject = "";
        boolean bool = str.equals(localObject);
        if (!bool) {}
      }
      else
      {
        str = paramString;
      }
    }
    return str;
  }
  
  private boolean loadStrings()
  {
    localProperties4 = 0;
    Object localObject1 = strings;
    if (localObject1 == null) {}
    try
    {
      Properties localProperties1 = new java/util/Properties;
      localProperties1.<init>();
      localObject1 = context;
      String str = ADMOB_LOCALIZATION_CACHE_DIR;
      int i = 0;
      File localFile1 = ((Context)localObject1).getDir(str, i);
      File localFile3 = new java/io/File;
      localObject1 = "20091123";
      localFile3.<init>(localFile1, (String)localObject1);
      boolean bool1 = localFile3.exists();
      if (!bool1) {
        localFile3.mkdir();
      }
      File localFile2 = new java/io/File;
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      str = language;
      localObject2 = ((StringBuilder)localObject2).append(str);
      str = PROPS_FILE_SUFFIX;
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).toString();
      localFile2.<init>(localFile3, (String)localObject2);
      boolean bool2 = localFile2.exists();
      if (bool2)
      {
        FileInputStream localFileInputStream = new java/io/FileInputStream;
        localFileInputStream.<init>(localFile2);
        localProperties1.load(localFileInputStream);
        strings = localProperties1;
      }
    }
    catch (IOException localIOException2)
    {
      for (;;)
      {
        Properties localProperties2;
        boolean bool3;
        IOException localIOException1 = localIOException2;
        Properties localProperties3 = null;
        strings = localProperties3;
        continue;
        localProperties3 = localProperties4;
      }
    }
    localProperties2 = strings;
    if (localProperties2 != null)
    {
      bool3 = true;
      return bool3;
    }
  }
  
  public static String localize(String paramString)
  {
    Object localObject = staticContext;
    init((Context)localObject);
    localObject = singleton;
    localObject = ((AdMobLocalizer)localObject).internalLocalize(paramString);
    return (String)localObject;
  }
  
  public void setLanguage(String paramString)
  {
    AdMobLocalizer.1 local1 = null;
    String str1 = language;
    if (paramString != str1)
    {
      strings = local1;
      language = paramString;
      str1 = language;
      if (str1 != null)
      {
        str1 = language;
        String str3 = "";
        boolean bool1 = str1.equals(str3);
        if (!bool1) {}
      }
      else
      {
        String str2 = DEFAULT_LANGUAGE;
        language = str2;
      }
      boolean bool2 = loadStrings();
      if (!bool2)
      {
        AdMobLocalizer.InitLocalizerThread localInitLocalizerThread = new com/admob/android/ads/AdMobLocalizer$InitLocalizerThread;
        localInitLocalizerThread.<init>(this, local1);
        localInitLocalizerThread.start();
      }
    }
  }
  
  public static AdMobLocalizer singleton()
  {
    initSingleton();
    AdMobLocalizer localAdMobLocalizer = singleton;
    return localAdMobLocalizer;
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdMobLocalizer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */