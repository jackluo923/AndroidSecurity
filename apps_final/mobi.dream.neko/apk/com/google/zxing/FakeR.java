package com.google.zxing;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;

public class FakeR
{
  private Context context;
  private String packageName;
  
  public FakeR(Activity paramActivity)
  {
    context = paramActivity.getApplicationContext();
    packageName = context.getPackageName();
  }
  
  public FakeR(Context paramContext)
  {
    context = paramContext;
    packageName = paramContext.getPackageName();
  }
  
  public static int getId(Context paramContext, String paramString1, String paramString2)
  {
    return paramContext.getResources().getIdentifier(paramString2, paramString1, paramContext.getPackageName());
  }
  
  public int getId(String paramString1, String paramString2)
  {
    return context.getResources().getIdentifier(paramString2, paramString1, packageName);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.FakeR
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */