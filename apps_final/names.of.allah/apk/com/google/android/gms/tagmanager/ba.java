package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class ba
{
  public static cq.c bY(String paramString)
  {
    paramString = k(new JSONObject(paramString));
    cq.d locald = cq.c.mm();
    int i = 0;
    while (i < fP.length)
    {
      locald.a(cq.a.mi().b(b.cI.toString(), fP[i]).b(b.cx.toString(), dh.cp(m.lf())).b(m.lg(), fQ[i]).ml());
      i += 1;
    }
    return locald.mp();
  }
  
  private static d.a k(Object paramObject)
  {
    return dh.r(l(paramObject));
  }
  
  static Object l(Object paramObject)
  {
    if ((paramObject instanceof JSONArray)) {
      throw new RuntimeException("JSONArrays are not supported");
    }
    if (JSONObject.NULL.equals(paramObject)) {
      throw new RuntimeException("JSON nulls are not supported");
    }
    Object localObject = paramObject;
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      localObject = new HashMap();
      Iterator localIterator = ((JSONObject)paramObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((Map)localObject).put(str, l(((JSONObject)paramObject).get(str)));
      }
    }
    return localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */