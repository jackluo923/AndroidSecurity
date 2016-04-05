package com.google.android.gms.internal;

import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class lw
{
  private static int a(String paramString, lx.a.a[] paramArrayOfa)
  {
    int m = paramArrayOfa.length;
    int i = 0;
    int j = 14;
    if (i < m)
    {
      lx.a.a locala = paramArrayOfa[i];
      int k;
      if (j == 14) {
        if ((type == 9) || (type == 2) || (type == 6)) {
          k = type;
        }
      }
      do
      {
        do
        {
          i += 1;
          j = k;
          break;
          k = j;
        } while (type == 14);
        throw new IllegalArgumentException("Unexpected TypedValue type: " + type + " for key " + paramString);
        k = j;
      } while (type == j);
      throw new IllegalArgumentException("The ArrayList elements should all be the same type, but ArrayList with key " + paramString + " contains items of type " + j + " and " + type);
    }
    return j;
  }
  
  static int a(List<Asset> paramList, Asset paramAsset)
  {
    paramList.add(paramAsset);
    return paramList.size() - 1;
  }
  
  public static lw.a a(DataMap paramDataMap)
  {
    lx locallx = new lx();
    ArrayList localArrayList = new ArrayList();
    amo = a(paramDataMap, localArrayList);
    return new lw.a(locallx, localArrayList);
  }
  
  private static lx.a.a a(List<Asset> paramList, Object paramObject)
  {
    lx.a.a locala1 = new lx.a.a();
    if (paramObject == null)
    {
      type = 14;
      return locala1;
    }
    ams = new lx.a.a.a();
    if ((paramObject instanceof String))
    {
      type = 2;
      ams.amu = ((String)paramObject);
    }
    Object localObject2;
    Object localObject1;
    int i;
    Object localObject3;
    for (;;)
    {
      return locala1;
      if ((paramObject instanceof Integer))
      {
        type = 6;
        ams.amy = ((Integer)paramObject).intValue();
      }
      else if ((paramObject instanceof Long))
      {
        type = 5;
        ams.amx = ((Long)paramObject).longValue();
      }
      else if ((paramObject instanceof Double))
      {
        type = 3;
        ams.amv = ((Double)paramObject).doubleValue();
      }
      else if ((paramObject instanceof Float))
      {
        type = 4;
        ams.amw = ((Float)paramObject).floatValue();
      }
      else if ((paramObject instanceof Boolean))
      {
        type = 8;
        ams.amA = ((Boolean)paramObject).booleanValue();
      }
      else if ((paramObject instanceof Byte))
      {
        type = 7;
        ams.amz = ((Byte)paramObject).byteValue();
      }
      else if ((paramObject instanceof byte[]))
      {
        type = 1;
        ams.amt = ((byte[])paramObject);
      }
      else if ((paramObject instanceof String[]))
      {
        type = 11;
        ams.amD = ((String[])paramObject);
      }
      else if ((paramObject instanceof long[]))
      {
        type = 12;
        ams.amE = ((long[])paramObject);
      }
      else if ((paramObject instanceof float[]))
      {
        type = 15;
        ams.amF = ((float[])paramObject);
      }
      else if ((paramObject instanceof Asset))
      {
        type = 13;
        ams.amG = a(paramList, (Asset)paramObject);
      }
      else
      {
        if (!(paramObject instanceof DataMap)) {
          break;
        }
        type = 9;
        paramObject = (DataMap)paramObject;
        localObject2 = ((DataMap)paramObject).keySet();
        localObject1 = new lx.a[((Set)localObject2).size()];
        localObject2 = ((Set)localObject2).iterator();
        i = 0;
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          localObject1[i] = new lx.a();
          name = ((String)localObject3);
          amq = a(paramList, ((DataMap)paramObject).get((String)localObject3));
          i += 1;
        }
        ams.amB = ((lx.a[])localObject1);
      }
    }
    int j;
    label555:
    lx.a.a locala2;
    if ((paramObject instanceof ArrayList))
    {
      type = 10;
      localObject2 = (ArrayList)paramObject;
      localObject3 = new lx.a.a[((ArrayList)localObject2).size()];
      paramObject = null;
      int k = ((ArrayList)localObject2).size();
      j = 0;
      i = 14;
      if (j < k)
      {
        localObject1 = ((ArrayList)localObject2).get(j);
        locala2 = a(paramList, localObject1);
        if ((type != 14) && (type != 2) && (type != 6) && (type != 9)) {
          throw new IllegalArgumentException("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a " + localObject1.getClass());
        }
        if ((i == 14) && (type != 14))
        {
          i = type;
          paramObject = localObject1;
        }
      }
    }
    for (;;)
    {
      localObject3[j] = locala2;
      j += 1;
      break label555;
      if (type != i)
      {
        throw new IllegalArgumentException("ArrayList elements must all be of the sameclass, but this one contains a " + paramObject.getClass() + " and a " + localObject1.getClass());
        ams.amC = ((lx.a.a[])localObject3);
        break;
        throw new RuntimeException("newFieldValueFromValue: unexpected value " + paramObject.getClass().getSimpleName());
      }
    }
  }
  
  public static DataMap a(lw.a parama)
  {
    DataMap localDataMap = new DataMap();
    lx.a[] arrayOfa = amm.amo;
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      lx.a locala = arrayOfa[i];
      a(amn, localDataMap, name, amq);
      i += 1;
    }
    return localDataMap;
  }
  
  private static ArrayList a(List<Asset> paramList, lx.a.a.a parama, int paramInt)
  {
    ArrayList localArrayList = new ArrayList(amC.length);
    parama = amC;
    int k = parama.length;
    int i = 0;
    if (i < k)
    {
      lx.a[] arrayOfa = parama[i];
      if (type == 14) {
        localArrayList.add(null);
      }
      for (;;)
      {
        i += 1;
        break;
        if (paramInt == 9)
        {
          DataMap localDataMap = new DataMap();
          arrayOfa = ams.amB;
          int m = arrayOfa.length;
          int j = 0;
          while (j < m)
          {
            lx.a locala = arrayOfa[j];
            a(paramList, localDataMap, name, amq);
            j += 1;
          }
          localArrayList.add(localDataMap);
        }
        else if (paramInt == 2)
        {
          localArrayList.add(ams.amu);
        }
        else
        {
          if (paramInt != 6) {
            break label191;
          }
          localArrayList.add(Integer.valueOf(ams.amy));
        }
      }
      label191:
      throw new IllegalArgumentException("Unexpected typeOfArrayList: " + paramInt);
    }
    return localArrayList;
  }
  
  private static void a(List<Asset> paramList, DataMap paramDataMap, String paramString, lx.a.a parama)
  {
    int i = type;
    if (i == 14)
    {
      paramDataMap.putString(paramString, null);
      return;
    }
    Object localObject1 = ams;
    if (i == 1)
    {
      paramDataMap.putByteArray(paramString, amt);
      return;
    }
    if (i == 11)
    {
      paramDataMap.putStringArray(paramString, amD);
      return;
    }
    if (i == 12)
    {
      paramDataMap.putLongArray(paramString, amE);
      return;
    }
    if (i == 15)
    {
      paramDataMap.putFloatArray(paramString, amF);
      return;
    }
    if (i == 2)
    {
      paramDataMap.putString(paramString, amu);
      return;
    }
    if (i == 3)
    {
      paramDataMap.putDouble(paramString, amv);
      return;
    }
    if (i == 4)
    {
      paramDataMap.putFloat(paramString, amw);
      return;
    }
    if (i == 5)
    {
      paramDataMap.putLong(paramString, amx);
      return;
    }
    if (i == 6)
    {
      paramDataMap.putInt(paramString, amy);
      return;
    }
    if (i == 7)
    {
      paramDataMap.putByte(paramString, (byte)amz);
      return;
    }
    if (i == 8)
    {
      paramDataMap.putBoolean(paramString, amA);
      return;
    }
    if (i == 13)
    {
      if (paramList == null) {
        throw new RuntimeException("populateBundle: unexpected type for: " + paramString);
      }
      paramDataMap.putAsset(paramString, (Asset)paramList.get((int)amG));
      return;
    }
    if (i == 9)
    {
      parama = new DataMap();
      localObject1 = amB;
      int j = localObject1.length;
      i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        a(paramList, parama, name, amq);
        i += 1;
      }
      paramDataMap.putDataMap(paramString, parama);
      return;
    }
    if (i == 10)
    {
      i = a(paramString, amC);
      paramList = a(paramList, (lx.a.a.a)localObject1, i);
      if (i == 14)
      {
        paramDataMap.putStringArrayList(paramString, paramList);
        return;
      }
      if (i == 9)
      {
        paramDataMap.putDataMapArrayList(paramString, paramList);
        return;
      }
      if (i == 2)
      {
        paramDataMap.putStringArrayList(paramString, paramList);
        return;
      }
      if (i == 6)
      {
        paramDataMap.putIntegerArrayList(paramString, paramList);
        return;
      }
      throw new IllegalStateException("Unexpected typeOfArrayList: " + i);
    }
    throw new RuntimeException("populateBundle: unexpected type " + i);
  }
  
  private static lx.a[] a(DataMap paramDataMap, List<Asset> paramList)
  {
    Object localObject1 = paramDataMap.keySet();
    lx.a[] arrayOfa = new lx.a[((Set)localObject1).size()];
    localObject1 = ((Set)localObject1).iterator();
    int i = 0;
    while (((Iterator)localObject1).hasNext())
    {
      String str = (String)((Iterator)localObject1).next();
      Object localObject2 = paramDataMap.get(str);
      arrayOfa[i] = new lx.a();
      name = str;
      amq = a(paramList, localObject2);
      i += 1;
    }
    return arrayOfa;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */