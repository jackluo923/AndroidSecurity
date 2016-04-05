package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class ic$a
  implements SafeParcelable
{
  public static final ie CREATOR = new ie();
  final ArrayList<ic.b> Hl;
  final String className;
  final int versionCode;
  
  ic$a(int paramInt, String paramString, ArrayList<ic.b> paramArrayList)
  {
    versionCode = paramInt;
    className = paramString;
    Hl = paramArrayList;
  }
  
  ic$a(String paramString, HashMap<String, hz.a<?, ?>> paramHashMap)
  {
    versionCode = 1;
    className = paramString;
    Hl = a(paramHashMap);
  }
  
  private static ArrayList<ic.b> a(HashMap<String, hz.a<?, ?>> paramHashMap)
  {
    if (paramHashMap == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new ic.b(str, (hz.a)paramHashMap.get(str)));
    }
    return localArrayList;
  }
  
  public int describeContents()
  {
    ie localie = CREATOR;
    return 0;
  }
  
  HashMap<String, hz.a<?, ?>> fS()
  {
    HashMap localHashMap = new HashMap();
    int j = Hl.size();
    int i = 0;
    while (i < j)
    {
      ic.b localb = (ic.b)Hl.get(i);
      localHashMap.put(eM, Hm);
      i += 1;
    }
    return localHashMap;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ie localie = CREATOR;
    ie.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ic.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */