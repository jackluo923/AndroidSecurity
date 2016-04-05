package com.appyet.f;

import android.content.Context;
import android.content.res.Resources;

public final class w
{
  public static String a(Context paramContext, String paramString)
  {
    if ((paramString.startsWith("[")) && (paramString.endsWith("]")) && (paramString.length() > 2))
    {
      paramContext = c(paramContext, paramString.substring(1, paramString.length() - 1));
      if (paramContext != null) {}
    }
    else
    {
      return paramString;
    }
    return paramContext;
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if ((paramString.startsWith("[")) && (paramString.endsWith("]")) && (paramString.length() > 2))
    {
      paramContext = c(paramContext, paramString.substring(1, paramString.length() - 1));
      if (paramContext != null) {}
    }
    else
    {
      return paramString;
    }
    return paramContext;
  }
  
  private static String c(Context paramContext, String paramString)
  {
    int i = paramContext.getResources().getIdentifier(paramString, "string", paramContext.getPackageName());
    if (i == 0) {
      return null;
    }
    return paramContext.getString(i);
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */