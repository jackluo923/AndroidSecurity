package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;
import java.util.ArrayList;

public final class RoomEntity
  extends GamesDowngradeableSafeParcel
  implements Room
{
  public static final Parcelable.Creator<RoomEntity> CREATOR = new RoomEntity.RoomEntityCreatorCompat();
  private final String Mm;
  private final String NP;
  private final long SR;
  private final ArrayList<ParticipantEntity> SU;
  private final int SV;
  private final Bundle Tl;
  private final String Tp;
  private final int Tq;
  private final int Tr;
  private final int xJ;
  
  RoomEntity(int paramInt1, String paramString1, String paramString2, long paramLong, int paramInt2, String paramString3, int paramInt3, Bundle paramBundle, ArrayList<ParticipantEntity> paramArrayList, int paramInt4)
  {
    xJ = paramInt1;
    NP = paramString1;
    Tp = paramString2;
    SR = paramLong;
    Tq = paramInt2;
    Mm = paramString3;
    SV = paramInt3;
    Tl = paramBundle;
    SU = paramArrayList;
    Tr = paramInt4;
  }
  
  public RoomEntity(Room paramRoom)
  {
    xJ = 2;
    NP = paramRoom.getRoomId();
    Tp = paramRoom.getCreatorId();
    SR = paramRoom.getCreationTimestamp();
    Tq = paramRoom.getStatus();
    Mm = paramRoom.getDescription();
    SV = paramRoom.getVariant();
    Tl = paramRoom.getAutoMatchCriteria();
    ArrayList localArrayList = paramRoom.getParticipants();
    int j = localArrayList.size();
    SU = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      SU.add((ParticipantEntity)((Participant)localArrayList.get(i)).freeze());
      i += 1;
    }
    Tr = paramRoom.getAutoMatchWaitEstimateSeconds();
  }
  
  static int a(Room paramRoom)
  {
    return hl.hashCode(new Object[] { paramRoom.getRoomId(), paramRoom.getCreatorId(), Long.valueOf(paramRoom.getCreationTimestamp()), Integer.valueOf(paramRoom.getStatus()), paramRoom.getDescription(), Integer.valueOf(paramRoom.getVariant()), paramRoom.getAutoMatchCriteria(), paramRoom.getParticipants(), Integer.valueOf(paramRoom.getAutoMatchWaitEstimateSeconds()) });
  }
  
  static int a(Room paramRoom, String paramString)
  {
    ArrayList localArrayList = paramRoom.getParticipants();
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Participant localParticipant = (Participant)localArrayList.get(i);
      if (localParticipant.getParticipantId().equals(paramString)) {
        return localParticipant.getStatus();
      }
      i += 1;
    }
    throw new IllegalStateException("Participant " + paramString + " is not in room " + paramRoom.getRoomId());
  }
  
  static boolean a(Room paramRoom, Object paramObject)
  {
    if (!(paramObject instanceof Room)) {}
    do
    {
      return false;
      if (paramRoom == paramObject) {
        return true;
      }
      paramObject = (Room)paramObject;
    } while ((!hl.equal(((Room)paramObject).getRoomId(), paramRoom.getRoomId())) || (!hl.equal(((Room)paramObject).getCreatorId(), paramRoom.getCreatorId())) || (!hl.equal(Long.valueOf(((Room)paramObject).getCreationTimestamp()), Long.valueOf(paramRoom.getCreationTimestamp()))) || (!hl.equal(Integer.valueOf(((Room)paramObject).getStatus()), Integer.valueOf(paramRoom.getStatus()))) || (!hl.equal(((Room)paramObject).getDescription(), paramRoom.getDescription())) || (!hl.equal(Integer.valueOf(((Room)paramObject).getVariant()), Integer.valueOf(paramRoom.getVariant()))) || (!hl.equal(((Room)paramObject).getAutoMatchCriteria(), paramRoom.getAutoMatchCriteria())) || (!hl.equal(((Room)paramObject).getParticipants(), paramRoom.getParticipants())) || (!hl.equal(Integer.valueOf(((Room)paramObject).getAutoMatchWaitEstimateSeconds()), Integer.valueOf(paramRoom.getAutoMatchWaitEstimateSeconds()))));
    return true;
  }
  
  static String b(Room paramRoom)
  {
    return hl.e(paramRoom).a("RoomId", paramRoom.getRoomId()).a("CreatorId", paramRoom.getCreatorId()).a("CreationTimestamp", Long.valueOf(paramRoom.getCreationTimestamp())).a("RoomStatus", Integer.valueOf(paramRoom.getStatus())).a("Description", paramRoom.getDescription()).a("Variant", Integer.valueOf(paramRoom.getVariant())).a("AutoMatchCriteria", paramRoom.getAutoMatchCriteria()).a("Participants", paramRoom.getParticipants()).a("AutoMatchWaitEstimateSeconds", Integer.valueOf(paramRoom.getAutoMatchWaitEstimateSeconds())).toString();
  }
  
  static String b(Room paramRoom, String paramString)
  {
    paramRoom = paramRoom.getParticipants();
    int j = paramRoom.size();
    int i = 0;
    while (i < j)
    {
      Participant localParticipant = (Participant)paramRoom.get(i);
      Player localPlayer = localParticipant.getPlayer();
      if ((localPlayer != null) && (localPlayer.getPlayerId().equals(paramString))) {
        return localParticipant.getParticipantId();
      }
      i += 1;
    }
    return null;
  }
  
  static Participant c(Room paramRoom, String paramString)
  {
    ArrayList localArrayList = paramRoom.getParticipants();
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Participant localParticipant = (Participant)localArrayList.get(i);
      if (localParticipant.getParticipantId().equals(paramString)) {
        return localParticipant;
      }
      i += 1;
    }
    throw new IllegalStateException("Participant " + paramString + " is not in match " + paramRoom.getRoomId());
  }
  
  static ArrayList<String> c(Room paramRoom)
  {
    paramRoom = paramRoom.getParticipants();
    int j = paramRoom.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((Participant)paramRoom.get(i)).getParticipantId());
      i += 1;
    }
    return localArrayList;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Room freeze()
  {
    return this;
  }
  
  public final Bundle getAutoMatchCriteria()
  {
    return Tl;
  }
  
  public final int getAutoMatchWaitEstimateSeconds()
  {
    return Tr;
  }
  
  public final long getCreationTimestamp()
  {
    return SR;
  }
  
  public final String getCreatorId()
  {
    return Tp;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mm, paramCharArrayBuffer);
  }
  
  public final Participant getParticipant(String paramString)
  {
    return c(this, paramString);
  }
  
  public final String getParticipantId(String paramString)
  {
    return b(this, paramString);
  }
  
  public final ArrayList<String> getParticipantIds()
  {
    return c(this);
  }
  
  public final int getParticipantStatus(String paramString)
  {
    return a(this, paramString);
  }
  
  public final ArrayList<Participant> getParticipants()
  {
    return new ArrayList(SU);
  }
  
  public final String getRoomId()
  {
    return NP;
  }
  
  public final int getStatus()
  {
    return Tq;
  }
  
  public final int getVariant()
  {
    return SV;
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
    if (!fm()) {
      RoomEntityCreator.a(this, paramParcel, paramInt);
    }
    for (;;)
    {
      return;
      paramParcel.writeString(NP);
      paramParcel.writeString(Tp);
      paramParcel.writeLong(SR);
      paramParcel.writeInt(Tq);
      paramParcel.writeString(Mm);
      paramParcel.writeInt(SV);
      paramParcel.writeBundle(Tl);
      int j = SU.size();
      paramParcel.writeInt(j);
      int i = 0;
      while (i < j)
      {
        ((ParticipantEntity)SU.get(i)).writeToParcel(paramParcel, paramInt);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RoomEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */