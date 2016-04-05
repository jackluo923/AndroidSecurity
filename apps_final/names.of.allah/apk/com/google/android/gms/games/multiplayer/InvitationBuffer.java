package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;

public final class InvitationBuffer
  extends g<Invitation>
{
  public InvitationBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected final String eU()
  {
    return "external_invitation_id";
  }
  
  protected final Invitation g(int paramInt1, int paramInt2)
  {
    return new InvitationRef(DD, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */