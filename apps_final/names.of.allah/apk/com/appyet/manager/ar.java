package com.appyet.manager;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataLanguage;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class ar
{
  public static Locale a = null;
  public static Locale b = Locale.getDefault();
  public static String c = null;
  public static String d = "ayL3u28KfLxUQx8c9";
  
  private static String a(ApplicationContext paramApplicationContext, String paramString)
  {
    for (;;)
    {
      try
      {
        Object localObject = q.MetadataLanguages;
        paramApplicationContext = ((List)localObject).iterator();
        if (paramApplicationContext.hasNext())
        {
          MetadataLanguage localMetadataLanguage = (MetadataLanguage)paramApplicationContext.next();
          if (!LocaleCode.equalsIgnoreCase(paramString)) {
            continue;
          }
          return LocaleCode;
        }
        paramApplicationContext = paramString.split("_");
        if (paramApplicationContext.length > 0)
        {
          paramApplicationContext = paramApplicationContext[0];
          paramString = ((List)localObject).iterator();
          if (paramString.hasNext())
          {
            localObject = (MetadataLanguage)paramString.next();
            if (!LocaleCode.equalsIgnoreCase(paramApplicationContext)) {
              continue;
            }
            return LocaleCode;
          }
          paramApplicationContext = Locale.ENGLISH.getLanguage();
          return paramApplicationContext;
        }
      }
      catch (Exception paramApplicationContext)
      {
        return Locale.ENGLISH.getLanguage();
      }
      paramApplicationContext = null;
    }
  }
  
  private static Locale a(String paramString)
  {
    for (;;)
    {
      try
      {
        localObject = paramString.split("_");
        if (localObject.length <= 0) {
          break label61;
        }
        paramString = localObject[0];
        if (localObject.length > 1)
        {
          localObject = localObject[1];
          if (localObject != null) {
            return new Locale(paramString, (String)localObject);
          }
          paramString = new Locale(paramString);
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        return Locale.ENGLISH;
      }
      Object localObject = null;
      continue;
      label61:
      paramString = null;
    }
  }
  
  public static void a(Context paramContext)
  {
    a((ApplicationContext)paramContext.getApplicationContext());
  }
  
  public static void a(ApplicationContext paramApplicationContext)
  {
    if (a == null)
    {
      localObject = a(paramApplicationContext, d.q());
      a = a((String)localObject);
      d.a((String)localObject);
    }
    Locale.setDefault(a);
    Object localObject = new Configuration();
    locale = a;
    paramApplicationContext.getBaseContext().getResources().updateConfiguration((Configuration)localObject, paramApplicationContext.getBaseContext().getResources().getDisplayMetrics());
  }
  
  public static Locale b(ApplicationContext paramApplicationContext)
  {
    if (a == null) {
      return a(a(paramApplicationContext, d.q()));
    }
    return a;
  }
  
  public static String c(ApplicationContext paramApplicationContext)
  {
    for (;;)
    {
      try
      {
        if (c == null) {
          paramApplicationContext = b(paramApplicationContext);
        }
        try
        {
          if ((paramApplicationContext.getCountry() == null) || (paramApplicationContext.getCountry().trim().length() <= 0)) {
            break label133;
          }
          if (paramApplicationContext.toString().equalsIgnoreCase("sr_RS"))
          {
            c = "sr-cyrl, sr_RS, sr;q=0.5";
            paramApplicationContext = c;
            return paramApplicationContext;
          }
          if (paramApplicationContext.toString().equalsIgnoreCase("sr_ME"))
          {
            c = "sr-latn, sr_ME, sr;q=0.5";
            continue;
          }
        }
        catch (Exception localException)
        {
          c = paramApplicationContext.getLanguage();
          continue;
        }
        c = paramApplicationContext.getLanguage() + ", " + paramApplicationContext.toString() + ";q=0.8";
      }
      catch (Exception paramApplicationContext)
      {
        d.a(paramApplicationContext);
        return "";
      }
      continue;
      label133:
      c = paramApplicationContext.getLanguage() + ";q=0.8";
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */