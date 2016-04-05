package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class ic
  implements SafeParcelable
{
  public static final id CREATOR = new id();
  private final HashMap<String, HashMap<String, hz.a<?, ?>>> Hi;
  private final ArrayList<ic.a> Hj;
  private final String Hk;
  private final int xJ;
  
  ic(int paramInt, ArrayList<ic.a> paramArrayList, String paramString)
  {
    xJ = paramInt;
    Hj = null;
    Hi = b(paramArrayList);
    Hk = ((String)hn.f(paramString));
    fO();
  }
  
  public ic(Class<? extends hz> paramClass)
  {
    xJ = 1;
    Hj = null;
    Hi = new HashMap();
    Hk = paramClass.getCanonicalName();
  }
  
  private static HashMap<String, HashMap<String, hz.a<?, ?>>> b(ArrayList<ic.a> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      ic.a locala = (ic.a)paramArrayList.get(i);
      localHashMap.put(className, locala.fS());
      i += 1;
    }
    return localHashMap;
  }
  
  public void a(Class<? extends hz> paramClass, HashMap<String, hz.a<?, ?>> paramHashMap)
  {
    Hi.put(paramClass.getCanonicalName(), paramHashMap);
  }
  
  public HashMap<String, hz.a<?, ?>> aJ(String paramString)
  {
    return (HashMap)Hi.get(paramString);
  }
  
  public boolean b(Class<? extends hz> paramClass)
  {
    return Hi.containsKey(paramClass.getCanonicalName());
  }
  
  public int describeContents()
  {
    id localid = CREATOR;
    return 0;
  }
  
  public void fO()
  {
    Iterator localIterator1 = Hi.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Object localObject = (String)localIterator1.next();
      localObject = (HashMap)Hi.get(localObject);
      Iterator localIterator2 = ((HashMap)localObject).keySet().iterator();
      while (localIterator2.hasNext()) {
        ((hz.a)((HashMap)localObject).get((String)localIterator2.next())).a(this);
      }
    }
  }
  
  public void fP()
  {
    Iterator localIterator1 = Hi.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      HashMap localHashMap1 = (HashMap)Hi.get(str1);
      HashMap localHashMap2 = new HashMap();
      Iterator localIterator2 = localHashMap1.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        localHashMap2.put(str2, ((hz.a)localHashMap1.get(str2)).fE());
      }
      Hi.put(str1, localHashMap2);
    }
  }
  
  ArrayList<ic.a> fQ()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = Hi.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new ic.a(str, (HashMap)Hi.get(str)));
    }
    return localArrayList;
  }
  
  public String fR()
  {
    return Hk;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = Hi.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Object localObject = (String)localIterator1.next();
      localStringBuilder.append((String)localObject).append(":\n");
      localObject = (HashMap)Hi.get(localObject);
      Iterator localIterator2 = ((HashMap)localObject).keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        localStringBuilder.append("  ").append(str).append(": ");
        localStringBuilder.append(((HashMap)localObject).get(str));
      }
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    id localid = CREATOR;
    id.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */