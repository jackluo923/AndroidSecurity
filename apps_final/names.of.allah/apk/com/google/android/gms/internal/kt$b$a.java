package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Cover.CoverInfo;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$b$a
  extends hz
  implements SafeParcelable, Person.Cover.CoverInfo
{
  public static final kx CREATOR = new kx();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private final Set<Integer> acp;
  private int adL;
  private int adM;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("leftImageOffset", hz.a.g("leftImageOffset", 2));
    aco.put("topImageOffset", hz.a.g("topImageOffset", 3));
  }
  
  public kt$b$a()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kt$b$a(Set<Integer> paramSet, int paramInt1, int paramInt2, int paramInt3)
  {
    acp = paramSet;
    xJ = paramInt1;
    adL = paramInt2;
    adM = paramInt3;
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
      return Integer.valueOf(adL);
    }
    return Integer.valueOf(adM);
  }
  
  public final int describeContents()
  {
    kx localkx = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (a)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((a)paramObject).a(locala))
        {
          if (!b(locala).equals(((a)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((a)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final int getLeftImageOffset()
  {
    return adL;
  }
  
  public final int getTopImageOffset()
  {
    return adM;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasLeftImageOffset()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasTopImageOffset()
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
  
  public final a kM()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kx localkx = CREATOR;
    kx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */