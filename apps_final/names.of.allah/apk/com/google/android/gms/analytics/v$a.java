package com.google.android.gms.analytics;

class v$a
  implements k.a<w>
{
  private final w wf = new w();
  
  public void a(String paramString, int paramInt)
  {
    if ("ga_dispatchPeriod".equals(paramString))
    {
      wf.wh = paramInt;
      return;
    }
    aa.D("int configuration name not recognized:  " + paramString);
  }
  
  public void c(String paramString1, String paramString2) {}
  
  public void c(String paramString, boolean paramBoolean)
  {
    if ("ga_dryRun".equals(paramString))
    {
      paramString = wf;
      if (paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        wi = i;
        return;
      }
    }
    aa.D("bool configuration name not recognized:  " + paramString);
  }
  
  public w cS()
  {
    return wf;
  }
  
  public void d(String paramString1, String paramString2)
  {
    if ("ga_appName".equals(paramString1))
    {
      wf.tz = paramString2;
      return;
    }
    if ("ga_appVersion".equals(paramString1))
    {
      wf.tA = paramString2;
      return;
    }
    if ("ga_logLevel".equals(paramString1))
    {
      wf.wg = paramString2;
      return;
    }
    aa.D("string configuration name not recognized:  " + paramString1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.v.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */