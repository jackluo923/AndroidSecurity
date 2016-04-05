package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ac
  extends aj
{
  private static final String ID = a.Y.toString();
  private static final String afv = b.bi.toString();
  private static final String afw = b.di.toString();
  private static final String afx = b.cH.toString();
  private static final String afy = b.dq.toString();
  
  public ac()
  {
    super(ID, new String[] { afv });
  }
  
  public boolean lc()
  {
    return true;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    Object localObject = (d.a)paramMap.get(afv);
    if ((localObject == null) || (localObject == dh.mY())) {
      return dh.mY();
    }
    String str2 = dh.j((d.a)localObject);
    localObject = (d.a)paramMap.get(afx);
    String str1;
    label74:
    int i;
    if (localObject == null)
    {
      str1 = "text";
      localObject = (d.a)paramMap.get(afy);
      if (localObject != null) {
        break label157;
      }
      localObject = "base16";
      int j = 2;
      paramMap = (d.a)paramMap.get(afw);
      i = j;
      if (paramMap != null)
      {
        i = j;
        if (dh.n(paramMap).booleanValue()) {
          i = 3;
        }
      }
    }
    for (;;)
    {
      try
      {
        if ("text".equals(str1))
        {
          paramMap = str2.getBytes();
          if (!"base16".equals(localObject)) {
            break label261;
          }
          paramMap = j.d(paramMap);
          return dh.r(paramMap);
          str1 = dh.j((d.a)localObject);
          break;
          label157:
          localObject = dh.j((d.a)localObject);
          break label74;
        }
        if ("base16".equals(str1))
        {
          paramMap = j.bE(str2);
          continue;
        }
        if ("base64".equals(str1))
        {
          paramMap = Base64.decode(str2, i);
          continue;
        }
        if ("base64url".equals(str1))
        {
          paramMap = Base64.decode(str2, i | 0x8);
          continue;
        }
        bh.A("Encode: unknown input format: " + str1);
        paramMap = dh.mY();
        return paramMap;
      }
      catch (IllegalArgumentException paramMap)
      {
        bh.A("Encode: invalid input:");
        return dh.mY();
      }
      label261:
      if ("base64".equals(localObject))
      {
        paramMap = Base64.encodeToString(paramMap, i);
      }
      else
      {
        if (!"base64url".equals(localObject)) {
          break label302;
        }
        paramMap = Base64.encodeToString(paramMap, i | 0x8);
      }
    }
    label302:
    bh.A("Encode: unknown output format: " + (String)localObject);
    return dh.mY();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */