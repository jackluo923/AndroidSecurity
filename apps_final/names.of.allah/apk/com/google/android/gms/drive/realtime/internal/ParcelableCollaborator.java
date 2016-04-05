package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ParcelableCollaborator
  implements SafeParcelable
{
  public static final Parcelable.Creator<ParcelableCollaborator> CREATOR = new p();
  final boolean Lh;
  final boolean Li;
  final String Lj;
  final String Lk;
  final String Ll;
  final String Lm;
  final String rO;
  final int xJ;
  
  ParcelableCollaborator(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    xJ = paramInt;
    Lh = paramBoolean1;
    Li = paramBoolean2;
    rO = paramString1;
    Lj = paramString2;
    Lk = paramString3;
    Ll = paramString4;
    Lm = paramString5;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ParcelableCollaborator)) {
      return false;
    }
    paramObject = (ParcelableCollaborator)paramObject;
    return rO.equals(rO);
  }
  
  public int hashCode()
  {
    return rO.hashCode();
  }
  
  public String toString()
  {
    return "Collaborator [isMe=" + Lh + ", isAnonymous=" + Li + ", sessionId=" + rO + ", userId=" + Lj + ", displayName=" + Lk + ", color=" + Ll + ", photoUrl=" + Lm + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.ParcelableCollaborator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */