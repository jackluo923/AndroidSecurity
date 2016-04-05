package com.google.android.gms.cast;

import java.util.HashMap;
import java.util.Map;

class MediaMetadata$a
{
  private final Map<String, String> AD = new HashMap();
  private final Map<String, String> AE = new HashMap();
  private final Map<String, Integer> AF = new HashMap();
  
  public a a(String paramString1, String paramString2, int paramInt)
  {
    AD.put(paramString1, paramString2);
    AE.put(paramString2, paramString1);
    AF.put(paramString1, Integer.valueOf(paramInt));
    return this;
  }
  
  public String ae(String paramString)
  {
    return (String)AD.get(paramString);
  }
  
  public String af(String paramString)
  {
    return (String)AE.get(paramString);
  }
  
  public int ag(String paramString)
  {
    paramString = (Integer)AF.get(paramString);
    if (paramString != null) {
      return paramString.intValue();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.MediaMetadata.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */