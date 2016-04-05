package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Name;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$d
  extends hz
  implements SafeParcelable, Person.Name
{
  public static final la CREATOR = new la();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private String acN;
  private String acQ;
  private final Set<Integer> acp;
  private String adN;
  private String adO;
  private String adP;
  private String adQ;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("familyName", hz.a.j("familyName", 2));
    aco.put("formatted", hz.a.j("formatted", 3));
    aco.put("givenName", hz.a.j("givenName", 4));
    aco.put("honorificPrefix", hz.a.j("honorificPrefix", 5));
    aco.put("honorificSuffix", hz.a.j("honorificSuffix", 6));
    aco.put("middleName", hz.a.j("middleName", 7));
  }
  
  public kt$d()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kt$d(Set<Integer> paramSet, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    acp = paramSet;
    xJ = paramInt;
    acN = paramString1;
    adN = paramString2;
    acQ = paramString3;
    adO = paramString4;
    adP = paramString5;
    adQ = paramString6;
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
      return acN;
    case 3: 
      return adN;
    case 4: 
      return acQ;
    case 5: 
      return adO;
    case 6: 
      return adP;
    }
    return adQ;
  }
  
  public final int describeContents()
  {
    la localla = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (d)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((d)paramObject).a(locala))
        {
          if (!b(locala).equals(((d)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((d)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getFamilyName()
  {
    return acN;
  }
  
  public final String getFormatted()
  {
    return adN;
  }
  
  public final String getGivenName()
  {
    return acQ;
  }
  
  public final String getHonorificPrefix()
  {
    return adO;
  }
  
  public final String getHonorificSuffix()
  {
    return adP;
  }
  
  public final String getMiddleName()
  {
    return adQ;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasFamilyName()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasFormatted()
  {
    return acp.contains(Integer.valueOf(3));
  }
  
  public final boolean hasGivenName()
  {
    return acp.contains(Integer.valueOf(4));
  }
  
  public final boolean hasHonorificPrefix()
  {
    return acp.contains(Integer.valueOf(5));
  }
  
  public final boolean hasHonorificSuffix()
  {
    return acp.contains(Integer.valueOf(6));
  }
  
  public final boolean hasMiddleName()
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
  
  public final d kP()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    la localla = CREATOR;
    la.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */