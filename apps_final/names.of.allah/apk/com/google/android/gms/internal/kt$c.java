package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Image;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$c
  extends hz
  implements SafeParcelable, Person.Image
{
  public static final kz CREATOR = new kz();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private final Set<Integer> acp;
  private String qV;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("url", hz.a.j("url", 2));
  }
  
  public kt$c()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  public kt$c(String paramString)
  {
    acp = new HashSet();
    xJ = 1;
    qV = paramString;
    acp.add(Integer.valueOf(2));
  }
  
  kt$c(Set<Integer> paramSet, int paramInt, String paramString)
  {
    acp = paramSet;
    xJ = paramInt;
    qV = paramString;
  }
  
  protected final boolean a(hz.a parama)
  {
    return acp.contains(Integer.valueOf(parama.fI()));
  }
  
  protected final Object aF(String paramString)
  {
    return null;
  }
  
  protected final boolean aG(String paramString)
  {
    return false;
  }
  
  protected final Object b(hz.a parama)
  {
    switch (parama.fI())
    {
    default: 
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.fI());
    }
    return qV;
  }
  
  public final int describeContents()
  {
    kz localkz = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (c)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((c)paramObject).a(locala))
        {
          if (!b(locala).equals(((c)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((c)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getUrl()
  {
    return qV;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasUrl()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final int hashCode()
  {
    Iterator localIterator = aco.values().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (!a(locala)) {
        break label66;
      }
      int j = locala.fI();
      i = b(locala).hashCode() + (i + j);
    }
    label66:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final c kO()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kz localkz = CREATOR;
    kz.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */