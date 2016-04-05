package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class u
  extends aj
{
  private static final String ID = a.C.toString();
  private static final String NAME = b.dc.toString();
  private static final String aff = b.cb.toString();
  private final DataLayer aer;
  
  public u(DataLayer paramDataLayer)
  {
    super(ID, new String[] { NAME });
    aer = paramDataLayer;
  }
  
  public boolean lc()
  {
    return false;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    Object localObject = aer.get(dh.j((d.a)paramMap.get(NAME)));
    if (localObject == null)
    {
      paramMap = (d.a)paramMap.get(aff);
      if (paramMap != null) {
        return paramMap;
      }
      return dh.mY();
    }
    return dh.r(localObject);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */