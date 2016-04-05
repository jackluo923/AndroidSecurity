package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.j;
import java.util.HashMap;

@Deprecated
public final class CustomEventExtras
  implements j
{
  private final HashMap<String, Object> sX = new HashMap();
  
  public final Object getExtra(String paramString)
  {
    return sX.get(paramString);
  }
  
  public final void setExtra(String paramString, Object paramObject)
  {
    sX.put(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */