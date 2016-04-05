package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.Logger;

class de$a
  implements Logger
{
  private static int dv(int paramInt)
  {
    switch (paramInt)
    {
    case 6: 
    default: 
      return 3;
    case 5: 
      return 2;
    case 3: 
    case 4: 
      return 1;
    }
    return 0;
  }
  
  public void error(Exception paramException)
  {
    bh.b("", paramException);
  }
  
  public void error(String paramString)
  {
    bh.A(paramString);
  }
  
  public int getLogLevel()
  {
    return dv(bh.getLogLevel());
  }
  
  public void info(String paramString)
  {
    bh.B(paramString);
  }
  
  public void setLogLevel(int paramInt)
  {
    bh.D("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
  }
  
  public void verbose(String paramString)
  {
    bh.C(paramString);
  }
  
  public void warn(String paramString)
  {
    bh.D(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.de.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */