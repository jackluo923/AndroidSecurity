package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;

public final class InvitationRef
  extends d
  implements Invitation
{
  private final ArrayList<Participant> SU;
  private final ParticipantRef SX;
  private final Game Sp;
  
  InvitationRef(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    Sp = new GameRef(paramDataHolder, paramInt1);
    SU = new ArrayList(paramInt2);
    String str = getString("external_inviter_id");
    paramInt1 = 0;
    paramDataHolder = null;
    while (paramInt1 < paramInt2)
    {
      ParticipantRef localParticipantRef = new ParticipantRef(DD, Ez + paramInt1);
      if (localParticipantRef.getParticipantId().equals(str)) {
        paramDataHolder = localParticipantRef;
      }
      SU.add(localParticipantRef);
      paramInt1 += 1;
    }
    SX = ((ParticipantRef)hn.b(paramDataHolder, "Must have a valid inviter!"));
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return InvitationEntity.a(this, paramObject);
  }
  
  public final Invitation freeze()
  {
    return new InvitationEntity(this);
  }
  
  public final int getAvailableAutoMatchSlots()
  {
    if (!getBoolean("has_automatch_criteria")) {
      return 0;
    }
    return getInteger("automatch_max_players");
  }
  
  public final long getCreationTimestamp()
  {
    return Math.max(getLong("creation_timestamp"), getLong("last_modified_timestamp"));
  }
  
  public final Game getGame()
  {
    return Sp;
  }
  
  public final String getInvitationId()
  {
    return getString("external_invitation_id");
  }
  
  public final int getInvitationType()
  {
    return getInteger("type");
  }
  
  public final Participant getInviter()
  {
    return SX;
  }
  
  public final ArrayList<Participant> getParticipants()
  {
    return SU;
  }
  
  public final int getVariant()
  {
    return getInteger("variant");
  }
  
  public final int hashCode()
  {
    return InvitationEntity.a(this);
  }
  
  public final String toString()
  {
    return InvitationEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((InvitationEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */