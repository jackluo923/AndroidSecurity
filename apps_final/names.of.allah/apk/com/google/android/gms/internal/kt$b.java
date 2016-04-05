package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person.Cover;
import com.google.android.gms.plus.model.people.Person.Cover.CoverInfo;
import com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class kt$b
  extends hz
  implements SafeParcelable, Person.Cover
{
  public static final kw CREATOR = new kw();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private final Set<Integer> acp;
  private kt.b.a adI;
  private kt.b.b adJ;
  private int adK;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("coverInfo", hz.a.a("coverInfo", 2, kt.b.a.class));
    aco.put("coverPhoto", hz.a.a("coverPhoto", 3, kt.b.b.class));
    aco.put("layout", hz.a.a("layout", 4, new hw().f("banner", 0), false));
  }
  
  public kt$b()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  kt$b(Set<Integer> paramSet, int paramInt1, kt.b.a parama, kt.b.b paramb, int paramInt2)
  {
    acp = paramSet;
    xJ = paramInt1;
    adI = parama;
    adJ = paramb;
    adK = paramInt2;
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
      return adI;
    case 3: 
      return adJ;
    }
    return Integer.valueOf(adK);
  }
  
  public final int describeContents()
  {
    kw localkw = CREATOR;
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
  
  public final Person.Cover.CoverInfo getCoverInfo()
  {
    return adI;
  }
  
  public final Person.Cover.CoverPhoto getCoverPhoto()
  {
    return adJ;
  }
  
  public final int getLayout()
  {
    return adK;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasCoverInfo()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasCoverPhoto()
  {
    return acp.contains(Integer.valueOf(3));
  }
  
  public final boolean hasLayout()
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
  
  final kt.b.a kJ()
  {
    return adI;
  }
  
  final kt.b.b kK()
  {
    return adJ;
  }
  
  public final b kL()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kw localkw = CREATOR;
    kw.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */