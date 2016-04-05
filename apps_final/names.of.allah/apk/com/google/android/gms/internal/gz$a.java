package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class gz$a
  implements SafeParcelable
{
  public static final hm CREATOR = new hm();
  private final int DF;
  private final String DH;
  private final List<String> Ec = new ArrayList();
  private final int xJ;
  private final String yN;
  
  gz$a(int paramInt1, String paramString1, List<String> paramList, int paramInt2, String paramString2)
  {
    xJ = paramInt1;
    yN = paramString1;
    Ec.addAll(paramList);
    DF = paramInt2;
    DH = paramString2;
  }
  
  public gz$a(String paramString1, Collection<String> paramCollection, int paramInt, String paramString2)
  {
    this(3, paramString1, new ArrayList(paramCollection), paramInt, paramString2);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String fe()
  {
    if (yN != null) {
      return yN;
    }
    return "<<default account>>";
  }
  
  public final int ff()
  {
    return DF;
  }
  
  public final List<String> fg()
  {
    return new ArrayList(Ec);
  }
  
  public final String fi()
  {
    return DH;
  }
  
  public final String getAccountName()
  {
    return yN;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    hm.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */