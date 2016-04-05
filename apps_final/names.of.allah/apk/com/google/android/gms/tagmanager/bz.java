package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class bz
  extends aj
{
  private static final String ID = a.M.toString();
  
  public bz()
  {
    super(ID, new String[0]);
  }
  
  public boolean lc()
  {
    return true;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    return dh.r(Build.VERSION.RELEASE);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */