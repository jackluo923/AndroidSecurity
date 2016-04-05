package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class p
  extends aj
{
  private static final String ID = a.D.toString();
  private final String aeR;
  
  public p(String paramString)
  {
    super(ID, new String[0]);
    aeR = paramString;
  }
  
  public boolean lc()
  {
    return true;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    if (aeR == null) {
      return dh.mY();
    }
    return dh.r(aeR);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */