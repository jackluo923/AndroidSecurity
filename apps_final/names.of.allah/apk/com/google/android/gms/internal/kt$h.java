package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Urls;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$h
  extends hz
  implements SafeParcelable, Person.Urls
{
  public static final ld CREATOR = new ld();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private int AQ;
  private final Set<Integer> acp;
  private String adU;
  private final int adV = 4;
  private String mValue;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("label", hz.a.j("label", 5));
    aco.put("type", hz.a.a("type", 6, new hw().f("home", 0).f("work", 1).f("blog", 2).f("profile", 3).f("other", 4).f("otherProfile", 5).f("contributor", 6).f("website", 7), false));
    aco.put("value", hz.a.j("value", 4));
  }
  
  public kt$h()
  {
    xJ = 2;
    acp = new HashSet();
  }
  
  kt$h(Set<Integer> paramSet, int paramInt1, String paramString1, int paramInt2, String paramString2, int paramInt3)
  {
    acp = paramSet;
    xJ = paramInt1;
    adU = paramString1;
    AQ = paramInt2;
    mValue = paramString2;
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
    case 5: 
      return adU;
    case 6: 
      return Integer.valueOf(AQ);
    }
    return mValue;
  }
  
  public final int describeContents()
  {
    ld localld = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof h)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (h)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((h)paramObject).a(locala))
        {
          if (!b(locala).equals(((h)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((h)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getLabel()
  {
    return adU;
  }
  
  public final int getType()
  {
    return AQ;
  }
  
  public final String getValue()
  {
    return mValue;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasLabel()
  {
    return acp.contains(Integer.valueOf(5));
  }
  
  public final boolean hasType()
  {
    return acp.contains(Integer.valueOf(6));
  }
  
  public final boolean hasValue()
  {
    return acp.contains(Integer.valueOf(4));
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
  
  @Deprecated
  public final int kS()
  {
    return 4;
  }
  
  public final h kT()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ld localld = CREATOR;
    ld.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */