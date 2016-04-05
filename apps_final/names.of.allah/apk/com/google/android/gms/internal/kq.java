package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kq
  extends hz
  implements SafeParcelable, Moment
{
  public static final kr CREATOR = new kr();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private final Set<Integer> acp;
  private String adc;
  private ko adk;
  private ko adl;
  private String qU;
  private String xD;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("id", hz.a.j("id", 2));
    aco.put("result", hz.a.a("result", 4, ko.class));
    aco.put("startDate", hz.a.j("startDate", 5));
    aco.put("target", hz.a.a("target", 6, ko.class));
    aco.put("type", hz.a.j("type", 7));
  }
  
  public kq()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kq(Set<Integer> paramSet, int paramInt, String paramString1, ko paramko1, String paramString2, ko paramko2, String paramString3)
  {
    acp = paramSet;
    xJ = paramInt;
    xD = paramString1;
    adk = paramko1;
    adc = paramString2;
    adl = paramko2;
    qU = paramString3;
  }
  
  public kq(Set<Integer> paramSet, String paramString1, ko paramko1, String paramString2, ko paramko2, String paramString3)
  {
    acp = paramSet;
    xJ = 1;
    xD = paramString1;
    adk = paramko1;
    adc = paramString2;
    adl = paramko2;
    qU = paramString3;
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
    case 3: 
    default: 
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.fI());
    case 2: 
      return xD;
    case 4: 
      return adk;
    case 5: 
      return adc;
    case 6: 
      return adl;
    }
    return qU;
  }
  
  public final int describeContents()
  {
    kr localkr = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof kq)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (kq)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((kq)paramObject).a(locala))
        {
          if (!b(locala).equals(((kq)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((kq)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getId()
  {
    return xD;
  }
  
  public final ItemScope getResult()
  {
    return adk;
  }
  
  public final String getStartDate()
  {
    return adc;
  }
  
  public final ItemScope getTarget()
  {
    return adl;
  }
  
  public final String getType()
  {
    return qU;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasId()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasResult()
  {
    return acp.contains(Integer.valueOf(4));
  }
  
  public final boolean hasStartDate()
  {
    return acp.contains(Integer.valueOf(5));
  }
  
  public final boolean hasTarget()
  {
    return acp.contains(Integer.valueOf(6));
  }
  
  public final boolean hasType()
  {
    return acp.contains(Integer.valueOf(7));
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
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  final ko kw()
  {
    return adk;
  }
  
  final ko kx()
  {
    return adl;
  }
  
  public final kq ky()
  {
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kr localkr = CREATOR;
    kr.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */