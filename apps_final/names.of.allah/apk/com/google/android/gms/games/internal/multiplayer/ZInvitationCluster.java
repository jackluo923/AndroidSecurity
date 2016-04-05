package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;

public final class ZInvitationCluster
  implements SafeParcelable, Invitation
{
  public static final InvitationClusterCreator CREATOR = new InvitationClusterCreator();
  private final ArrayList<InvitationEntity> RE;
  private final int xJ;
  
  ZInvitationCluster(int paramInt, ArrayList<InvitationEntity> paramArrayList)
  {
    xJ = paramInt;
    RE = paramArrayList;
    id();
  }
  
  private void id()
  {
    if (!RE.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      gy.A(bool);
      Invitation localInvitation1 = (Invitation)RE.get(0);
      int j = RE.size();
      int i = 1;
      while (i < j)
      {
        Invitation localInvitation2 = (Invitation)RE.get(i);
        gy.a(localInvitation1.getInviter().equals(localInvitation2.getInviter()), "All the invitations must be from the same inviter");
        i += 1;
      }
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ZInvitationCluster)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (ZInvitationCluster)paramObject;
    if (RE.size() != RE.size()) {
      return false;
    }
    int j = RE.size();
    int i = 0;
    while (i < j)
    {
      if (!((Invitation)RE.get(i)).equals((Invitation)RE.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final Invitation freeze()
  {
    return this;
  }
  
  public final int getAvailableAutoMatchSlots()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final long getCreationTimestamp()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final Game getGame()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final String getInvitationId()
  {
    return ((InvitationEntity)RE.get(0)).getInvitationId();
  }
  
  public final int getInvitationType()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final Participant getInviter()
  {
    return ((InvitationEntity)RE.get(0)).getInviter();
  }
  
  public final ArrayList<Participant> getParticipants()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final int getVariant()
  {
    throw new UnsupportedOperationException("Method not supported on a cluster");
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(RE.toArray());
  }
  
  public final ArrayList<Invitation> ie()
  {
    return new ArrayList(RE);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    InvitationClusterCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.multiplayer.ZInvitationCluster
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */