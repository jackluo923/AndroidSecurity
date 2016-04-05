package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;

public final class InvitationEntity
  extends GamesDowngradeableSafeParcel
  implements Invitation
{
  public static final Parcelable.Creator<InvitationEntity> CREATOR = new InvitationEntity.InvitationEntityCreatorCompat();
  private final String NN;
  private final GameEntity Rq;
  private final long SR;
  private final int SS;
  private final ParticipantEntity ST;
  private final ArrayList<ParticipantEntity> SU;
  private final int SV;
  private final int SW;
  private final int xJ;
  
  InvitationEntity(int paramInt1, GameEntity paramGameEntity, String paramString, long paramLong, int paramInt2, ParticipantEntity paramParticipantEntity, ArrayList<ParticipantEntity> paramArrayList, int paramInt3, int paramInt4)
  {
    xJ = paramInt1;
    Rq = paramGameEntity;
    NN = paramString;
    SR = paramLong;
    SS = paramInt2;
    ST = paramParticipantEntity;
    SU = paramArrayList;
    SV = paramInt3;
    SW = paramInt4;
  }
  
  InvitationEntity(Invitation paramInvitation)
  {
    xJ = 2;
    Rq = new GameEntity(paramInvitation.getGame());
    NN = paramInvitation.getInvitationId();
    SR = paramInvitation.getCreationTimestamp();
    SS = paramInvitation.getInvitationType();
    SV = paramInvitation.getVariant();
    SW = paramInvitation.getAvailableAutoMatchSlots();
    String str = paramInvitation.getInviter().getParticipantId();
    Participant localParticipant = null;
    ArrayList localArrayList = paramInvitation.getParticipants();
    int j = localArrayList.size();
    SU = new ArrayList(j);
    int i = 0;
    paramInvitation = localParticipant;
    while (i < j)
    {
      localParticipant = (Participant)localArrayList.get(i);
      if (localParticipant.getParticipantId().equals(str)) {
        paramInvitation = localParticipant;
      }
      SU.add((ParticipantEntity)localParticipant.freeze());
      i += 1;
    }
    hn.b(paramInvitation, "Must have a valid inviter!");
    ST = ((ParticipantEntity)paramInvitation.freeze());
  }
  
  static int a(Invitation paramInvitation)
  {
    return hl.hashCode(new Object[] { paramInvitation.getGame(), paramInvitation.getInvitationId(), Long.valueOf(paramInvitation.getCreationTimestamp()), Integer.valueOf(paramInvitation.getInvitationType()), paramInvitation.getInviter(), paramInvitation.getParticipants(), Integer.valueOf(paramInvitation.getVariant()), Integer.valueOf(paramInvitation.getAvailableAutoMatchSlots()) });
  }
  
  static boolean a(Invitation paramInvitation, Object paramObject)
  {
    if (!(paramObject instanceof Invitation)) {}
    do
    {
      return false;
      if (paramInvitation == paramObject) {
        return true;
      }
      paramObject = (Invitation)paramObject;
    } while ((!hl.equal(((Invitation)paramObject).getGame(), paramInvitation.getGame())) || (!hl.equal(((Invitation)paramObject).getInvitationId(), paramInvitation.getInvitationId())) || (!hl.equal(Long.valueOf(((Invitation)paramObject).getCreationTimestamp()), Long.valueOf(paramInvitation.getCreationTimestamp()))) || (!hl.equal(Integer.valueOf(((Invitation)paramObject).getInvitationType()), Integer.valueOf(paramInvitation.getInvitationType()))) || (!hl.equal(((Invitation)paramObject).getInviter(), paramInvitation.getInviter())) || (!hl.equal(((Invitation)paramObject).getParticipants(), paramInvitation.getParticipants())) || (!hl.equal(Integer.valueOf(((Invitation)paramObject).getVariant()), Integer.valueOf(paramInvitation.getVariant()))) || (!hl.equal(Integer.valueOf(((Invitation)paramObject).getAvailableAutoMatchSlots()), Integer.valueOf(paramInvitation.getAvailableAutoMatchSlots()))));
    return true;
  }
  
  static String b(Invitation paramInvitation)
  {
    return hl.e(paramInvitation).a("Game", paramInvitation.getGame()).a("InvitationId", paramInvitation.getInvitationId()).a("CreationTimestamp", Long.valueOf(paramInvitation.getCreationTimestamp())).a("InvitationType", Integer.valueOf(paramInvitation.getInvitationType())).a("Inviter", paramInvitation.getInviter()).a("Participants", paramInvitation.getParticipants()).a("Variant", Integer.valueOf(paramInvitation.getVariant())).a("AvailableAutoMatchSlots", Integer.valueOf(paramInvitation.getAvailableAutoMatchSlots())).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Invitation freeze()
  {
    return this;
  }
  
  public final int getAvailableAutoMatchSlots()
  {
    return SW;
  }
  
  public final long getCreationTimestamp()
  {
    return SR;
  }
  
  public final Game getGame()
  {
    return Rq;
  }
  
  public final String getInvitationId()
  {
    return NN;
  }
  
  public final int getInvitationType()
  {
    return SS;
  }
  
  public final Participant getInviter()
  {
    return ST;
  }
  
  public final ArrayList<Participant> getParticipants()
  {
    return new ArrayList(SU);
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
      InvitationEntityCreator.a(this, paramParcel, paramInt);
    }
    for (;;)
    {
      return;
      Rq.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(NN);
      paramParcel.writeLong(SR);
      paramParcel.writeInt(SS);
      ST.writeToParcel(paramParcel, paramInt);
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
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */