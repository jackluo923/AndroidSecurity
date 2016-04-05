package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class c
  extends aj
{
  private static final String ID = com.google.android.gms.internal.a.v.toString();
  private final a aeg;
  
  public c(Context paramContext)
  {
    this(a.J(paramContext));
  }
  
  c(a parama)
  {
    super(ID, new String[0]);
    aeg = parama;
  }
  
  public boolean lc()
  {
    return false;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    if (!aeg.isLimitAdTrackingEnabled()) {}
    for (boolean bool = true;; bool = false) {
      return dh.r(Boolean.valueOf(bool));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */