package com.google.android.gms.internal;

import android.content.Intent;

public class da
{
  private final String mx;
  
  public da(String paramString)
  {
    mx = paramString;
  }
  
  public boolean a(String paramString, int paramInt, Intent paramIntent)
  {
    if ((paramString == null) || (paramIntent == null)) {}
    String str;
    do
    {
      return false;
      str = cz.d(paramIntent);
      paramIntent = cz.e(paramIntent);
    } while ((str == null) || (paramIntent == null));
    if (!paramString.equals(cz.p(str)))
    {
      ev.D("Developer payload not match.");
      return false;
    }
    if ((mx != null) && (!db.b(mx, str, paramIntent)))
    {
      ev.D("Fail to verify signature.");
      return false;
    }
    return true;
  }
  
  public String bh()
  {
    return ep.bO();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */