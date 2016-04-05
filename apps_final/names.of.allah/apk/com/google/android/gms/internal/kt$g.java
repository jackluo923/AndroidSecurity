package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.PlacesLived;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$g
  extends hz
  implements SafeParcelable, Person.PlacesLived
{
  public static final lc CREATOR = new lc();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private final Set<Integer> acp;
  private boolean adT;
  private String mValue;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("primary", hz.a.i("primary", 2));
    aco.put("value", hz.a.j("value", 3));
  }
  
  public kt$g()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kt$g(Set<Integer> paramSet, int paramInt, boolean paramBoolean, String paramString)
  {
    acp = paramSet;
    xJ = paramInt;
    adT = paramBoolean;
    mValue = paramString;
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
    case 2: 
      return Boolean.valueOf(adT);
    }
    return mValue;
  }
  
  public final int describeContents()
  {
    lc locallc = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof g)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (g)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((g)paramObject).a(locala))
        {
          if (!b(locala).equals(((g)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((g)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getValue()
  {
    return mValue;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasPrimary()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasValue()
  {
    return acp.contains(Integer.valueOf(3));
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
  
  public final boolean isPrimary()
  {
    return adT;
  }
  
  public final g kR()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    lc locallc = CREATOR;
    lc.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */