package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;

public class hf
{
  private static final Uri GD;
  private static final Uri GE;
  
  static
  {
    Uri localUri = Uri.parse("http://plus.google.com/");
    GD = localUri;
    GE = localUri.buildUpon().appendPath("circles").appendPath("find").build();
  }
  
  public static Intent aB(String paramString)
  {
    paramString = Uri.fromParts("package", paramString, null);
    Intent localIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    localIntent.setData(paramString);
    return localIntent;
  }
  
  private static Uri aC(String paramString)
  {
    return Uri.parse("market://details").buildUpon().appendQueryParameter("id", paramString).build();
  }
  
  public static Intent aD(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(aC(paramString));
    localIntent.setPackage("com.android.vending");
    localIntent.addFlags(524288);
    return localIntent;
  }
  
  public static Intent fv()
  {
    return new Intent("android.settings.DATE_SETTINGS");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */