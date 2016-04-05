package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import java.util.Locale;

public class LaunchOptions
  implements SafeParcelable
{
  public static final Parcelable.Creator<LaunchOptions> CREATOR = new c();
  private boolean An;
  private String Ao;
  private final int xJ;
  
  public LaunchOptions()
  {
    this(1, false, gj.b(Locale.getDefault()));
  }
  
  LaunchOptions(int paramInt, boolean paramBoolean, String paramString)
  {
    xJ = paramInt;
    An = paramBoolean;
    Ao = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof LaunchOptions)) {
        return false;
      }
      paramObject = (LaunchOptions)paramObject;
    } while ((An == An) && (gj.a(Ao, Ao)));
    return false;
  }
  
  public String getLanguage()
  {
    return Ao;
  }
  
  public boolean getRelaunchIfRunning()
  {
    return An;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Boolean.valueOf(An), Ao });
  }
  
  public void setLanguage(String paramString)
  {
    Ao = paramString;
  }
  
  public void setRelaunchIfRunning(boolean paramBoolean)
  {
    An = paramBoolean;
  }
  
  public String toString()
  {
    return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", new Object[] { Boolean.valueOf(An), Ao });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.LaunchOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */