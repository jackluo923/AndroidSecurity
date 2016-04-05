package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class jn
  implements SafeParcelable
{
  public static final jo CREATOR = new jo();
  final List<jt> VZ;
  private final String Wa;
  private final boolean Wb;
  final List<jx> Wc;
  private final String Wd;
  final List<String> We;
  private final Set<jt> Wf;
  private final Set<jx> Wg;
  private final Set<String> Wh;
  final int xJ;
  
  jn(int paramInt, List<jt> paramList, String paramString1, boolean paramBoolean, List<jx> paramList1, String paramString2, List<String> paramList2)
  {
    xJ = paramInt;
    if (paramList == null)
    {
      paramList = Collections.emptyList();
      VZ = paramList;
      paramList = paramString1;
      if (paramString1 == null) {
        paramList = "";
      }
      Wa = paramList;
      Wb = paramBoolean;
      if (paramList1 != null) {
        break label128;
      }
      paramList = Collections.emptyList();
      label51:
      Wc = paramList;
      paramList = paramString2;
      if (paramString2 == null) {
        paramList = "";
      }
      Wd = paramList;
      if (paramList2 != null) {
        break label137;
      }
    }
    label128:
    label137:
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList2))
    {
      We = paramList;
      Wf = c(VZ);
      Wg = c(Wc);
      Wh = c(We);
      return;
      paramList = Collections.unmodifiableList(paramList);
      break;
      paramList = Collections.unmodifiableList(paramList1);
      break label51;
    }
  }
  
  private static <E> Set<E> c(List<E> paramList)
  {
    if (paramList.isEmpty()) {
      return Collections.emptySet();
    }
    return Collections.unmodifiableSet(new HashSet(paramList));
  }
  
  public final int describeContents()
  {
    jo localjo = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof jn)) {
        return false;
      }
      paramObject = (jn)paramObject;
    } while ((Wf.equals(Wf)) && (Wb == Wb) && (Wd.equals(Wd)) && (Wg.equals(Wg)) && (Wh.equals(Wh)));
    return false;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Wf, Boolean.valueOf(Wb), Wg, Wd, Wh });
  }
  
  @Deprecated
  public final String jb()
  {
    return Wa;
  }
  
  public final boolean jc()
  {
    return Wb;
  }
  
  public final String jd()
  {
    return Wd;
  }
  
  public final String toString()
  {
    return hl.e(this).a("types", Wf).a("placeIds", Wh).a("requireOpenNow", Boolean.valueOf(Wb)).a("userAccountName", Wd).a("requestedUserDataTypes", Wg).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jo localjo = CREATOR;
    jo.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */