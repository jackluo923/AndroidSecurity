package com.google.android.gms.analytics;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;

class aj
  implements j
{
  Map<String, String> xA = new HashMap();
  String xu;
  double xv = -1.0D;
  int xw = -1;
  int xx = -1;
  int xy = -1;
  int xz = -1;
  
  public String T(String paramString)
  {
    String str = (String)xA.get(paramString);
    if (str != null) {
      return str;
    }
    return paramString;
  }
  
  public String dA()
  {
    return xu;
  }
  
  public boolean dB()
  {
    return xv >= 0.0D;
  }
  
  public double dC()
  {
    return xv;
  }
  
  public boolean dD()
  {
    return xw >= 0;
  }
  
  public boolean dE()
  {
    return xx != -1;
  }
  
  public boolean dF()
  {
    return xx == 1;
  }
  
  public boolean dG()
  {
    return xy != -1;
  }
  
  public boolean dH()
  {
    return xy == 1;
  }
  
  public boolean dI()
  {
    return xz == 1;
  }
  
  public boolean dz()
  {
    return xu != null;
  }
  
  public int getSessionTimeout()
  {
    return xw;
  }
  
  public String j(Activity paramActivity)
  {
    return T(paramActivity.getClass().getCanonicalName());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */