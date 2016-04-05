package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.data.a;

public final class SnapshotMetadataChange$Builder
{
  private String Mm;
  private Uri Ue;
  private Long Ug;
  private a Uh;
  
  public final SnapshotMetadataChange build()
  {
    return new SnapshotMetadataChange(Mm, Ug, Uh, Ue);
  }
  
  public final Builder fromMetadata(SnapshotMetadata paramSnapshotMetadata)
  {
    Mm = paramSnapshotMetadata.getDescription();
    Ug = Long.valueOf(paramSnapshotMetadata.getPlayedTime());
    if (Ug.longValue() == -1L) {
      Ug = null;
    }
    Ue = paramSnapshotMetadata.getCoverImageUri();
    if (Ue != null) {
      Uh = null;
    }
    return this;
  }
  
  public final Builder setCoverImage(Bitmap paramBitmap)
  {
    Uh = new a(paramBitmap);
    Ue = null;
    return this;
  }
  
  public final Builder setDescription(String paramString)
  {
    Mm = paramString;
    return this;
  }
  
  public final Builder setPlayedTimeMillis(long paramLong)
  {
    Ug = Long.valueOf(paramLong);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.SnapshotMetadataChange.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */