package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class b
  extends aj
{
  private static final String ID = com.google.android.gms.internal.a.u.toString();
  private final a aeg;
  
  public b(Context paramContext)
  {
    this(a.J(paramContext));
  }
  
  b(a parama)
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
    paramMap = aeg.kY();
    if (paramMap == null) {
      return dh.mY();
    }
    return dh.r(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */