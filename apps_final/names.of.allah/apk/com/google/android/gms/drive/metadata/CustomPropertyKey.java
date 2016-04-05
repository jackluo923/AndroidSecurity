package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hn;

public class CustomPropertyKey
  implements SafeParcelable
{
  public static final Parcelable.Creator<CustomPropertyKey> CREATOR = new c();
  final String JI;
  final int JJ;
  final int xJ;
  
  CustomPropertyKey(int paramInt1, String paramString, int paramInt2)
  {
    xJ = paramInt1;
    hn.b(paramString, "key");
    boolean bool1 = bool2;
    if (paramInt2 != 0) {
      if (paramInt2 != 1) {
        break label54;
      }
    }
    label54:
    for (bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "visibility must be either PUBLIC or PRIVATE");
      JI = paramString;
      JJ = paramInt2;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
        if (paramObject == this) {
          return true;
        }
      } while (!(paramObject instanceof CustomPropertyKey));
      paramObject = (CustomPropertyKey)paramObject;
    } while ((!((CustomPropertyKey)paramObject).getKey().equals(JI)) || (((CustomPropertyKey)paramObject).getVisibility() != JJ));
    return true;
  }
  
  public String getKey()
  {
    return JI;
  }
  
  public int getVisibility()
  {
    return JJ;
  }
  
  public int hashCode()
  {
    return (JI + JJ).hashCode();
  }
  
  public String toString()
  {
    return "CustomPropertyKey(" + JI + "," + JJ + ")";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.CustomPropertyKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */