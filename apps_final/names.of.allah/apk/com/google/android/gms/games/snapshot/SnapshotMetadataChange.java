package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hn;

public final class SnapshotMetadataChange
  implements SafeParcelable
{
  public static final SnapshotMetadataChangeCreator CREATOR = new SnapshotMetadataChangeCreator();
  public static final SnapshotMetadataChange EMPTY_CHANGE = new SnapshotMetadataChange();
  private final String Mm;
  private final Long Ud;
  private final Uri Ue;
  private a Uf;
  private final int xJ;
  
  SnapshotMetadataChange()
  {
    this(4, null, null, null, null);
  }
  
  SnapshotMetadataChange(int paramInt, String paramString, Long paramLong, a parama, Uri paramUri)
  {
    xJ = paramInt;
    Mm = paramString;
    Ud = paramLong;
    Uf = parama;
    Ue = paramUri;
    if (Uf != null) {
      if (Ue == null) {
        hn.a(bool1, "Cannot set both a URI and an image");
      }
    }
    while (Ue == null) {
      for (;;)
      {
        return;
        bool1 = false;
      }
    }
    if (Uf == null) {}
    for (bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "Cannot set both a URI and an image");
      return;
    }
  }
  
  SnapshotMetadataChange(String paramString, Long paramLong, a parama, Uri paramUri)
  {
    this(4, paramString, paramLong, parama, paramUri);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Bitmap getCoverImage()
  {
    if (Uf == null) {
      return null;
    }
    return Uf.eN();
  }
  
  public final Uri getCoverImageUri()
  {
    return Ue;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final Long getPlayedTimeMillis()
  {
    return Ud;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final a iI()
  {
    return Uf;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    SnapshotMetadataChangeCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.SnapshotMetadataChange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */