package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$b$b
  extends hz
  implements SafeParcelable, Person.Cover.CoverPhoto
{
  public static final ky CREATOR = new ky();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private final Set<Integer> acp;
  private int ks;
  private int kt;
  private String qV;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("height", hz.a.g("height", 2));
    aco.put("url", hz.a.j("url", 3));
    aco.put("width", hz.a.g("width", 4));
  }
  
  public kt$b$b()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kt$b$b(Set<Integer> paramSet, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    acp = paramSet;
    xJ = paramInt1;
    kt = paramInt2;
    qV = paramString;
    ks = paramInt3;
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
      return Integer.valueOf(kt);
    case 3: 
      return qV;
    }
    return Integer.valueOf(ks);
  }
  
  public final int describeContents()
  {
    ky localky = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (b)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((b)paramObject).a(locala))
        {
          if (!b(locala).equals(((b)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((b)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final int getHeight()
  {
    return kt;
  }
  
  public final String getUrl()
  {
    return qV;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final int getWidth()
  {
    return ks;
  }
  
  public final boolean hasHeight()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasUrl()
  {
    return acp.contains(Integer.valueOf(3));
  }
  
  public final boolean hasWidth()
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
  
  public final b kN()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ky localky = CREATOR;
    ky.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */