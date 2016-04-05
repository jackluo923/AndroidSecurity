package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class fl
  implements SafeParcelable
{
  public static final fm CREATOR = new fm();
  public static final int xQ = Integer.parseInt("-1");
  final int xJ;
  public final String xR;
  final fq xS;
  public final int xT;
  public final byte[] xU;
  
  fl(int paramInt1, String paramString, fq paramfq, int paramInt2, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == xQ) || (fp.H(paramInt2) != null)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Invalid section type " + paramInt2);
      xJ = paramInt1;
      xR = paramString;
      xS = paramfq;
      xT = paramInt2;
      xU = paramArrayOfByte;
      paramString = dJ();
      if (paramString == null) {
        break;
      }
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public fl(String paramString, fq paramfq)
  {
    this(1, paramString, paramfq, xQ, null);
  }
  
  public fl(String paramString1, fq paramfq, String paramString2)
  {
    this(1, paramString1, paramfq, fp.Y(paramString2), null);
  }
  
  public fl(byte[] paramArrayOfByte, fq paramfq)
  {
    this(1, null, paramfq, xQ, paramArrayOfByte);
  }
  
  public String dJ()
  {
    if ((xT != xQ) && (fp.H(xT) == null)) {
      return "Invalid section type " + xT;
    }
    if ((xR != null) && (xU != null)) {
      return "Both content and blobContent set";
    }
    return null;
  }
  
  public int describeContents()
  {
    fm localfm = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fm localfm = CREATOR;
    fm.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */