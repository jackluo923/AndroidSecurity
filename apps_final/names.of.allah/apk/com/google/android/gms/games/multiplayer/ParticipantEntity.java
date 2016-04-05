package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;

public final class ParticipantEntity
  extends GamesDowngradeableSafeParcel
  implements Participant
{
  public static final Parcelable.Creator<ParticipantEntity> CREATOR = new ParticipantEntity.ParticipantEntityCreatorCompat();
  private final int Am;
  private final String Lk;
  private final String MA;
  private final Uri Mo;
  private final Uri Mp;
  private final String Mz;
  private final PlayerEntity Ng;
  private final String Nk;
  private final String On;
  private final int SY;
  private final boolean SZ;
  private final ParticipantResult Ta;
  private final int xJ;
  
  ParticipantEntity(int paramInt1, String paramString1, String paramString2, Uri paramUri1, Uri paramUri2, int paramInt2, String paramString3, boolean paramBoolean, PlayerEntity paramPlayerEntity, int paramInt3, ParticipantResult paramParticipantResult, String paramString4, String paramString5)
  {
    xJ = paramInt1;
    On = paramString1;
    Lk = paramString2;
    Mo = paramUri1;
    Mp = paramUri2;
    SY = paramInt2;
    Nk = paramString3;
    SZ = paramBoolean;
    Ng = paramPlayerEntity;
    Am = paramInt3;
    Ta = paramParticipantResult;
    Mz = paramString4;
    MA = paramString5;
  }
  
  public ParticipantEntity(Participant paramParticipant)
  {
    xJ = 3;
    On = paramParticipant.getParticipantId();
    Lk = paramParticipant.getDisplayName();
    Mo = paramParticipant.getIconImageUri();
    Mp = paramParticipant.getHiResImageUri();
    SY = paramParticipant.getStatus();
    Nk = paramParticipant.gR();
    SZ = paramParticipant.isConnectedToRoom();
    Object localObject = paramParticipant.getPlayer();
    if (localObject == null) {}
    for (localObject = null;; localObject = new PlayerEntity((Player)localObject))
    {
      Ng = ((PlayerEntity)localObject);
      Am = paramParticipant.getCapabilities();
      Ta = paramParticipant.getResult();
      Mz = paramParticipant.getIconImageUrl();
      MA = paramParticipant.getHiResImageUrl();
      return;
    }
  }
  
  static int a(Participant paramParticipant)
  {
    return hl.hashCode(new Object[] { paramParticipant.getPlayer(), Integer.valueOf(paramParticipant.getStatus()), paramParticipant.gR(), Boolean.valueOf(paramParticipant.isConnectedToRoom()), paramParticipant.getDisplayName(), paramParticipant.getIconImageUri(), paramParticipant.getHiResImageUri(), Integer.valueOf(paramParticipant.getCapabilities()), paramParticipant.getResult(), paramParticipant.getParticipantId() });
  }
  
  static boolean a(Participant paramParticipant, Object paramObject)
  {
    if (!(paramObject instanceof Participant)) {}
    do
    {
      return false;
      if (paramParticipant == paramObject) {
        return true;
      }
      paramObject = (Participant)paramObject;
    } while ((!hl.equal(((Participant)paramObject).getPlayer(), paramParticipant.getPlayer())) || (!hl.equal(Integer.valueOf(((Participant)paramObject).getStatus()), Integer.valueOf(paramParticipant.getStatus()))) || (!hl.equal(((Participant)paramObject).gR(), paramParticipant.gR())) || (!hl.equal(Boolean.valueOf(((Participant)paramObject).isConnectedToRoom()), Boolean.valueOf(paramParticipant.isConnectedToRoom()))) || (!hl.equal(((Participant)paramObject).getDisplayName(), paramParticipant.getDisplayName())) || (!hl.equal(((Participant)paramObject).getIconImageUri(), paramParticipant.getIconImageUri())) || (!hl.equal(((Participant)paramObject).getHiResImageUri(), paramParticipant.getHiResImageUri())) || (!hl.equal(Integer.valueOf(((Participant)paramObject).getCapabilities()), Integer.valueOf(paramParticipant.getCapabilities()))) || (!hl.equal(((Participant)paramObject).getResult(), paramParticipant.getResult())) || (!hl.equal(((Participant)paramObject).getParticipantId(), paramParticipant.getParticipantId())));
    return true;
  }
  
  static String b(Participant paramParticipant)
  {
    return hl.e(paramParticipant).a("ParticipantId", paramParticipant.getParticipantId()).a("Player", paramParticipant.getPlayer()).a("Status", Integer.valueOf(paramParticipant.getStatus())).a("ClientAddress", paramParticipant.gR()).a("ConnectedToRoom", Boolean.valueOf(paramParticipant.isConnectedToRoom())).a("DisplayName", paramParticipant.getDisplayName()).a("IconImage", paramParticipant.getIconImageUri()).a("IconImageUrl", paramParticipant.getIconImageUrl()).a("HiResImage", paramParticipant.getHiResImageUri()).a("HiResImageUrl", paramParticipant.getHiResImageUrl()).a("Capabilities", Integer.valueOf(paramParticipant.getCapabilities())).a("Result", paramParticipant.getResult()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Participant freeze()
  {
    return this;
  }
  
  public final String gR()
  {
    return Nk;
  }
  
  public final int getCapabilities()
  {
    return Am;
  }
  
  public final String getDisplayName()
  {
    if (Ng == null) {
      return Lk;
    }
    return Ng.getDisplayName();
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    if (Ng == null)
    {
      il.b(Lk, paramCharArrayBuffer);
      return;
    }
    Ng.getDisplayName(paramCharArrayBuffer);
  }
  
  public final Uri getHiResImageUri()
  {
    if (Ng == null) {
      return Mp;
    }
    return Ng.getHiResImageUri();
  }
  
  public final String getHiResImageUrl()
  {
    if (Ng == null) {
      return MA;
    }
    return Ng.getHiResImageUrl();
  }
  
  public final Uri getIconImageUri()
  {
    if (Ng == null) {
      return Mo;
    }
    return Ng.getIconImageUri();
  }
  
  public final String getIconImageUrl()
  {
    if (Ng == null) {
      return Mz;
    }
    return Ng.getIconImageUrl();
  }
  
  public final String getParticipantId()
  {
    return On;
  }
  
  public final Player getPlayer()
  {
    return Ng;
  }
  
  public final ParticipantResult getResult()
  {
    return Ta;
  }
  
  public final int getStatus()
  {
    return SY;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isConnectedToRoom()
  {
    return SZ;
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
    Object localObject2 = null;
    int j = 0;
    if (!fm())
    {
      ParticipantEntityCreator.a(this, paramParcel, paramInt);
      return;
    }
    paramParcel.writeString(On);
    paramParcel.writeString(Lk);
    Object localObject1;
    if (Mo == null)
    {
      localObject1 = null;
      label45:
      paramParcel.writeString((String)localObject1);
      if (Mp != null) {
        break label142;
      }
      localObject1 = localObject2;
      label60:
      paramParcel.writeString((String)localObject1);
      paramParcel.writeInt(SY);
      paramParcel.writeString(Nk);
      if (!SZ) {
        break label153;
      }
      i = 1;
      label91:
      paramParcel.writeInt(i);
      if (Ng != null) {
        break label159;
      }
    }
    label142:
    label153:
    label159:
    for (int i = j;; i = 1)
    {
      paramParcel.writeInt(i);
      if (Ng == null) {
        break;
      }
      Ng.writeToParcel(paramParcel, paramInt);
      return;
      localObject1 = Mo.toString();
      break label45;
      localObject1 = Mp.toString();
      break label60;
      i = 0;
      break label91;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */