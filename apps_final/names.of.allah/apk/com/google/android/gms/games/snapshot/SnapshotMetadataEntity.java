package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;

public final class SnapshotMetadataEntity
  implements SafeParcelable, SnapshotMetadata
{
  public static final SnapshotMetadataEntityCreator CREATOR = new SnapshotMetadataEntityCreator();
  private final String HV;
  private final String Mm;
  private final String NH;
  private final GameEntity Rq;
  private final Uri Ue;
  private final PlayerEntity Ui;
  private final String Uj;
  private final long Uk;
  private final long Ul;
  private final float Um;
  private final String Un;
  private final int xJ;
  
  SnapshotMetadataEntity(int paramInt, GameEntity paramGameEntity, PlayerEntity paramPlayerEntity, String paramString1, Uri paramUri, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2, float paramFloat, String paramString5)
  {
    xJ = paramInt;
    Rq = paramGameEntity;
    Ui = paramPlayerEntity;
    NH = paramString1;
    Ue = paramUri;
    Uj = paramString2;
    Um = paramFloat;
    HV = paramString3;
    Mm = paramString4;
    Uk = paramLong1;
    Ul = paramLong2;
    Un = paramString5;
  }
  
  public SnapshotMetadataEntity(SnapshotMetadata paramSnapshotMetadata)
  {
    xJ = 3;
    Rq = new GameEntity(paramSnapshotMetadata.getGame());
    Ui = new PlayerEntity(paramSnapshotMetadata.getOwner());
    NH = paramSnapshotMetadata.getSnapshotId();
    Ue = paramSnapshotMetadata.getCoverImageUri();
    Uj = paramSnapshotMetadata.getCoverImageUrl();
    Um = paramSnapshotMetadata.getCoverImageAspectRatio();
    HV = paramSnapshotMetadata.getTitle();
    Mm = paramSnapshotMetadata.getDescription();
    Uk = paramSnapshotMetadata.getLastModifiedTimestamp();
    Ul = paramSnapshotMetadata.getPlayedTime();
    Un = paramSnapshotMetadata.getUniqueName();
  }
  
  static int a(SnapshotMetadata paramSnapshotMetadata)
  {
    return hl.hashCode(new Object[] { paramSnapshotMetadata.getGame(), paramSnapshotMetadata.getOwner(), paramSnapshotMetadata.getSnapshotId(), paramSnapshotMetadata.getCoverImageUri(), Float.valueOf(paramSnapshotMetadata.getCoverImageAspectRatio()), paramSnapshotMetadata.getTitle(), paramSnapshotMetadata.getDescription(), Long.valueOf(paramSnapshotMetadata.getLastModifiedTimestamp()), Long.valueOf(paramSnapshotMetadata.getPlayedTime()), paramSnapshotMetadata.getUniqueName() });
  }
  
  static boolean a(SnapshotMetadata paramSnapshotMetadata, Object paramObject)
  {
    if (!(paramObject instanceof SnapshotMetadata)) {}
    do
    {
      return false;
      if (paramSnapshotMetadata == paramObject) {
        return true;
      }
      paramObject = (SnapshotMetadata)paramObject;
    } while ((!hl.equal(((SnapshotMetadata)paramObject).getGame(), paramSnapshotMetadata.getGame())) || (!hl.equal(((SnapshotMetadata)paramObject).getOwner(), paramSnapshotMetadata.getOwner())) || (!hl.equal(((SnapshotMetadata)paramObject).getSnapshotId(), paramSnapshotMetadata.getSnapshotId())) || (!hl.equal(((SnapshotMetadata)paramObject).getCoverImageUri(), paramSnapshotMetadata.getCoverImageUri())) || (!hl.equal(Float.valueOf(((SnapshotMetadata)paramObject).getCoverImageAspectRatio()), Float.valueOf(paramSnapshotMetadata.getCoverImageAspectRatio()))) || (!hl.equal(((SnapshotMetadata)paramObject).getTitle(), paramSnapshotMetadata.getTitle())) || (!hl.equal(((SnapshotMetadata)paramObject).getDescription(), paramSnapshotMetadata.getDescription())) || (!hl.equal(Long.valueOf(((SnapshotMetadata)paramObject).getLastModifiedTimestamp()), Long.valueOf(paramSnapshotMetadata.getLastModifiedTimestamp()))) || (!hl.equal(Long.valueOf(((SnapshotMetadata)paramObject).getPlayedTime()), Long.valueOf(paramSnapshotMetadata.getPlayedTime()))) || (!hl.equal(((SnapshotMetadata)paramObject).getUniqueName(), paramSnapshotMetadata.getUniqueName())));
    return true;
  }
  
  static String b(SnapshotMetadata paramSnapshotMetadata)
  {
    return hl.e(paramSnapshotMetadata).a("Game", paramSnapshotMetadata.getGame()).a("Owner", paramSnapshotMetadata.getOwner()).a("SnapshotId", paramSnapshotMetadata.getSnapshotId()).a("CoverImageUri", paramSnapshotMetadata.getCoverImageUri()).a("CoverImageUrl", paramSnapshotMetadata.getCoverImageUrl()).a("CoverImageAspectRatio", Float.valueOf(paramSnapshotMetadata.getCoverImageAspectRatio())).a("Description", paramSnapshotMetadata.getDescription()).a("LastModifiedTimestamp", Long.valueOf(paramSnapshotMetadata.getLastModifiedTimestamp())).a("PlayedTime", Long.valueOf(paramSnapshotMetadata.getPlayedTime())).a("UniqueName", paramSnapshotMetadata.getUniqueName()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final SnapshotMetadata freeze()
  {
    return this;
  }
  
  public final float getCoverImageAspectRatio()
  {
    return Um;
  }
  
  public final Uri getCoverImageUri()
  {
    return Ue;
  }
  
  public final String getCoverImageUrl()
  {
    return Uj;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mm, paramCharArrayBuffer);
  }
  
  public final Game getGame()
  {
    return Rq;
  }
  
  public final long getLastModifiedTimestamp()
  {
    return Uk;
  }
  
  public final Player getOwner()
  {
    return Ui;
  }
  
  public final long getPlayedTime()
  {
    return Ul;
  }
  
  public final String getSnapshotId()
  {
    return NH;
  }
  
  public final String getTitle()
  {
    return HV;
  }
  
  public final String getUniqueName()
  {
    return Un;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    SnapshotMetadataEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.SnapshotMetadataEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */