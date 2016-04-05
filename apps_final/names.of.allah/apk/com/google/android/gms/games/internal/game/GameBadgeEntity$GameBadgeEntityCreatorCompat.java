package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;

final class GameBadgeEntity$GameBadgeEntityCreatorCompat
  extends GameBadgeEntityCreator
{
  public final GameBadgeEntity bh(Parcel paramParcel)
  {
    if ((GameBadgeEntity.b(GameBadgeEntity.gM())) || (GameBadgeEntity.aQ(GameBadgeEntity.class.getCanonicalName()))) {
      return super.bh(paramParcel);
    }
    int i = paramParcel.readInt();
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    paramParcel = paramParcel.readString();
    if (paramParcel == null) {}
    for (paramParcel = null;; paramParcel = Uri.parse(paramParcel)) {
      return new GameBadgeEntity(1, i, str1, str2, paramParcel);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.GameBadgeEntity.GameBadgeEntityCreatorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */