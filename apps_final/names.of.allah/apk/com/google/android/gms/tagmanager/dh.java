package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class dh
{
  private static final Object aik = null;
  private static Long ail = new Long(0L);
  private static Double aim = new Double(0.0D);
  private static dg ain = dg.z(0L);
  private static String aio = new String("");
  private static Boolean aip = new Boolean(false);
  private static List<Object> aiq = new ArrayList(0);
  private static Map<Object, Object> air = new HashMap();
  private static d.a ais = r(aio);
  
  public static d.a cp(String paramString)
  {
    d.a locala = new d.a();
    type = 5;
    fS = paramString;
    return locala;
  }
  
  private static dg cq(String paramString)
  {
    try
    {
      dg localdg = dg.co(paramString);
      return localdg;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      bh.A("Failed to convert '" + paramString + "' to a number.");
    }
    return ain;
  }
  
  private static Long cr(String paramString)
  {
    paramString = cq(paramString);
    if (paramString == ain) {
      return ail;
    }
    return Long.valueOf(paramString.longValue());
  }
  
  private static Double cs(String paramString)
  {
    paramString = cq(paramString);
    if (paramString == ain) {
      return aim;
    }
    return Double.valueOf(paramString.doubleValue());
  }
  
  private static Boolean ct(String paramString)
  {
    if ("true".equalsIgnoreCase(paramString)) {
      return Boolean.TRUE;
    }
    if ("false".equalsIgnoreCase(paramString)) {
      return Boolean.FALSE;
    }
    return aip;
  }
  
  private static double getDouble(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).doubleValue();
    }
    bh.A("getDouble received non-Number");
    return 0.0D;
  }
  
  public static String j(d.a parama)
  {
    return m(o(parama));
  }
  
  public static dg k(d.a parama)
  {
    return n(o(parama));
  }
  
  public static Long l(d.a parama)
  {
    return o(o(parama));
  }
  
  public static Double m(d.a parama)
  {
    return p(o(parama));
  }
  
  public static String m(Object paramObject)
  {
    if (paramObject == null) {
      return aio;
    }
    return paramObject.toString();
  }
  
  public static Object mS()
  {
    return aik;
  }
  
  public static Long mT()
  {
    return ail;
  }
  
  public static Double mU()
  {
    return aim;
  }
  
  public static Boolean mV()
  {
    return aip;
  }
  
  public static dg mW()
  {
    return ain;
  }
  
  public static String mX()
  {
    return aio;
  }
  
  public static d.a mY()
  {
    return ais;
  }
  
  public static dg n(Object paramObject)
  {
    if ((paramObject instanceof dg)) {
      return (dg)paramObject;
    }
    if (t(paramObject)) {
      return dg.z(u(paramObject));
    }
    if (s(paramObject)) {
      return dg.a(Double.valueOf(getDouble(paramObject)));
    }
    return cq(m(paramObject));
  }
  
  public static Boolean n(d.a parama)
  {
    return q(o(parama));
  }
  
  public static Long o(Object paramObject)
  {
    if (t(paramObject)) {
      return Long.valueOf(u(paramObject));
    }
    return cr(m(paramObject));
  }
  
  public static Object o(d.a parama)
  {
    int k = 0;
    int j = 0;
    int i = 0;
    if (parama == null) {
      return aik;
    }
    Object localObject1;
    Object localObject2;
    switch (type)
    {
    default: 
      bh.A("Failed to convert a value of type: " + type);
      return aik;
    case 1: 
      return fN;
    case 2: 
      localObject1 = new ArrayList(fO.length);
      parama = fO;
      j = parama.length;
      while (i < j)
      {
        localObject2 = o(parama[i]);
        if (localObject2 == aik) {
          return aik;
        }
        ((ArrayList)localObject1).add(localObject2);
        i += 1;
      }
      return localObject1;
    case 3: 
      if (fP.length != fQ.length)
      {
        bh.A("Converting an invalid value to object: " + parama.toString());
        return aik;
      }
      localObject1 = new HashMap(fQ.length);
      i = k;
      while (i < fP.length)
      {
        localObject2 = o(fP[i]);
        Object localObject3 = o(fQ[i]);
        if ((localObject2 == aik) || (localObject3 == aik)) {
          return aik;
        }
        ((Map)localObject1).put(localObject2, localObject3);
        i += 1;
      }
      return localObject1;
    case 4: 
      bh.A("Trying to convert a macro reference to object");
      return aik;
    case 5: 
      bh.A("Trying to convert a function id to object");
      return aik;
    case 6: 
      return Long.valueOf(fT);
    case 7: 
      localObject1 = new StringBuffer();
      parama = fV;
      k = parama.length;
      i = j;
      while (i < k)
      {
        localObject2 = j(parama[i]);
        if (localObject2 == aio) {
          return aik;
        }
        ((StringBuffer)localObject1).append((String)localObject2);
        i += 1;
      }
      return ((StringBuffer)localObject1).toString();
    }
    return Boolean.valueOf(fU);
  }
  
  public static Double p(Object paramObject)
  {
    if (s(paramObject)) {
      return Double.valueOf(getDouble(paramObject));
    }
    return cs(m(paramObject));
  }
  
  public static Boolean q(Object paramObject)
  {
    if ((paramObject instanceof Boolean)) {
      return (Boolean)paramObject;
    }
    return ct(m(paramObject));
  }
  
  public static d.a r(Object paramObject)
  {
    boolean bool = false;
    Object localObject1 = new d.a();
    if ((paramObject instanceof d.a)) {
      return (d.a)paramObject;
    }
    if ((paramObject instanceof String))
    {
      type = 1;
      fN = ((String)paramObject);
    }
    for (;;)
    {
      fX = bool;
      return (d.a)localObject1;
      Object localObject2;
      Object localObject3;
      if ((paramObject instanceof List))
      {
        type = 2;
        localObject2 = (List)paramObject;
        paramObject = new ArrayList(((List)localObject2).size());
        localObject2 = ((List)localObject2).iterator();
        bool = false;
        if (((Iterator)localObject2).hasNext())
        {
          localObject3 = r(((Iterator)localObject2).next());
          if (localObject3 == ais) {
            return ais;
          }
          if ((bool) || (fX)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localObject3);
            break;
          }
        }
        fO = ((d.a[])((List)paramObject).toArray(new d.a[0]));
      }
      else if ((paramObject instanceof Map))
      {
        type = 3;
        localObject3 = ((Map)paramObject).entrySet();
        paramObject = new ArrayList(((Set)localObject3).size());
        localObject2 = new ArrayList(((Set)localObject3).size());
        localObject3 = ((Set)localObject3).iterator();
        bool = false;
        if (((Iterator)localObject3).hasNext())
        {
          Object localObject4 = (Map.Entry)((Iterator)localObject3).next();
          d.a locala = r(((Map.Entry)localObject4).getKey());
          localObject4 = r(((Map.Entry)localObject4).getValue());
          if ((locala == ais) || (localObject4 == ais)) {
            return ais;
          }
          if ((bool) || (fX) || (fX)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(locala);
            ((List)localObject2).add(localObject4);
            break;
          }
        }
        fP = ((d.a[])((List)paramObject).toArray(new d.a[0]));
        fQ = ((d.a[])((List)localObject2).toArray(new d.a[0]));
      }
      else if (s(paramObject))
      {
        type = 1;
        fN = paramObject.toString();
      }
      else if (t(paramObject))
      {
        type = 6;
        fT = u(paramObject);
      }
      else
      {
        if (!(paramObject instanceof Boolean)) {
          break;
        }
        type = 8;
        fU = ((Boolean)paramObject).booleanValue();
      }
    }
    localObject1 = new StringBuilder("Converting to Value from unknown object type: ");
    if (paramObject == null) {}
    for (paramObject = "null";; paramObject = paramObject.getClass().toString())
    {
      bh.A((String)paramObject);
      return ais;
    }
  }
  
  private static boolean s(Object paramObject)
  {
    return ((paramObject instanceof Double)) || ((paramObject instanceof Float)) || (((paramObject instanceof dg)) && (((dg)paramObject).mN()));
  }
  
  private static boolean t(Object paramObject)
  {
    return ((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || (((paramObject instanceof dg)) && (((dg)paramObject).mO()));
  }
  
  private static long u(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).longValue();
    }
    bh.A("getInt64 received non-Number");
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */