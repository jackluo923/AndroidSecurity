package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class fq
  implements SafeParcelable
{
  public static final fr CREATOR = new fr();
  public final String name;
  public final int weight;
  final int xJ;
  public final String xY;
  public final boolean xZ;
  public final boolean ya;
  public final String yb;
  public final fn[] yc;
  final int[] yd;
  public final String ye;
  
  fq(int paramInt1, String paramString1, String paramString2, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString3, fn[] paramArrayOffn, int[] paramArrayOfInt, String paramString4)
  {
    xJ = paramInt1;
    name = paramString1;
    xY = paramString2;
    xZ = paramBoolean1;
    weight = paramInt2;
    ya = paramBoolean2;
    yb = paramString3;
    yc = paramArrayOffn;
    yd = paramArrayOfInt;
    ye = paramString4;
  }
  
  fq(String paramString1, String paramString2, boolean paramBoolean1, int paramInt, boolean paramBoolean2, String paramString3, fn[] paramArrayOffn, int[] paramArrayOfInt, String paramString4)
  {
    this(2, paramString1, paramString2, paramBoolean1, paramInt, paramBoolean2, paramString3, paramArrayOffn, paramArrayOfInt, paramString4);
  }
  
  public int describeContents()
  {
    fr localfr = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof fq))
    {
      paramObject = (fq)paramObject;
      bool1 = bool2;
      if (name.equals(name))
      {
        bool1 = bool2;
        if (xY.equals(xY))
        {
          bool1 = bool2;
          if (xZ == xZ) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fr localfr = CREATOR;
    fr.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */