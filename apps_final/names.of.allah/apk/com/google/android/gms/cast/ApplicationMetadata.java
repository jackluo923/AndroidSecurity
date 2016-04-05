package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;
import java.util.List;

public final class ApplicationMetadata
  implements SafeParcelable
{
  public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new a();
  String mName;
  private final int xJ;
  String zM;
  List<WebImage> zN;
  List<String> zO;
  String zP;
  Uri zQ;
  
  private ApplicationMetadata()
  {
    xJ = 1;
    zN = new ArrayList();
    zO = new ArrayList();
  }
  
  ApplicationMetadata(int paramInt, String paramString1, String paramString2, List<WebImage> paramList, List<String> paramList1, String paramString3, Uri paramUri)
  {
    xJ = paramInt;
    zM = paramString1;
    mName = paramString2;
    zN = paramList;
    zO = paramList1;
    zP = paramString3;
    zQ = paramUri;
  }
  
  public final boolean areNamespacesSupported(List<String> paramList)
  {
    return (zO != null) && (zO.containsAll(paramList));
  }
  
  public final Uri dS()
  {
    return zQ;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ApplicationMetadata)) {
        return false;
      }
      paramObject = (ApplicationMetadata)paramObject;
    } while ((gj.a(zM, zM)) && (gj.a(zN, zN)) && (gj.a(mName, mName)) && (gj.a(zO, zO)) && (gj.a(zP, zP)) && (gj.a(zQ, zQ)));
    return false;
  }
  
  public final String getApplicationId()
  {
    return zM;
  }
  
  public final List<WebImage> getImages()
  {
    return zN;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final String getSenderAppIdentifier()
  {
    return zP;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(xJ), zM, mName, zN, zO, zP, zQ });
  }
  
  public final boolean isNamespaceSupported(String paramString)
  {
    return (zO != null) && (zO.contains(paramString));
  }
  
  public final String toString()
  {
    return mName;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.ApplicationMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */