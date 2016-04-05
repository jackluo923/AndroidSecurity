package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Organizations;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$f
  extends hz
  implements SafeParcelable, Person.Organizations
{
  public static final lb CREATOR = new lb();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private int AQ;
  private String HV;
  private String Mm;
  private String acM;
  private final Set<Integer> acp;
  private String adR;
  private String adS;
  private boolean adT;
  private String adc;
  private String mName;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("department", hz.a.j("department", 2));
    aco.put("description", hz.a.j("description", 3));
    aco.put("endDate", hz.a.j("endDate", 4));
    aco.put("location", hz.a.j("location", 5));
    aco.put("name", hz.a.j("name", 6));
    aco.put("primary", hz.a.i("primary", 7));
    aco.put("startDate", hz.a.j("startDate", 8));
    aco.put("title", hz.a.j("title", 9));
    aco.put("type", hz.a.a("type", 10, new hw().f("work", 0).f("school", 1), false));
  }
  
  public kt$f()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kt$f(Set<Integer> paramSet, int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, String paramString6, String paramString7, int paramInt2)
  {
    acp = paramSet;
    xJ = paramInt1;
    adR = paramString1;
    Mm = paramString2;
    acM = paramString3;
    adS = paramString4;
    mName = paramString5;
    adT = paramBoolean;
    adc = paramString6;
    HV = paramString7;
    AQ = paramInt2;
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
      return adR;
    case 3: 
      return Mm;
    case 4: 
      return acM;
    case 5: 
      return adS;
    case 6: 
      return mName;
    case 7: 
      return Boolean.valueOf(adT);
    case 8: 
      return adc;
    case 9: 
      return HV;
    }
    return Integer.valueOf(AQ);
  }
  
  public final int describeContents()
  {
    lb locallb = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof f)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (f)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((f)paramObject).a(locala))
        {
          if (!b(locala).equals(((f)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((f)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getDepartment()
  {
    return adR;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final String getEndDate()
  {
    return acM;
  }
  
  public final String getLocation()
  {
    return adS;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final String getStartDate()
  {
    return adc;
  }
  
  public final String getTitle()
  {
    return HV;
  }
  
  public final int getType()
  {
    return AQ;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasDepartment()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasDescription()
  {
    return acp.contains(Integer.valueOf(3));
  }
  
  public final boolean hasEndDate()
  {
    return acp.contains(Integer.valueOf(4));
  }
  
  public final boolean hasLocation()
  {
    return acp.contains(Integer.valueOf(5));
  }
  
  public final boolean hasName()
  {
    return acp.contains(Integer.valueOf(6));
  }
  
  public final boolean hasPrimary()
  {
    return acp.contains(Integer.valueOf(7));
  }
  
  public final boolean hasStartDate()
  {
    return acp.contains(Integer.valueOf(8));
  }
  
  public final boolean hasTitle()
  {
    return acp.contains(Integer.valueOf(9));
  }
  
  public final boolean hasType()
  {
    return acp.contains(Integer.valueOf(10));
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
  
  public final f kQ()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    lb locallb = CREATOR;
    lb.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */