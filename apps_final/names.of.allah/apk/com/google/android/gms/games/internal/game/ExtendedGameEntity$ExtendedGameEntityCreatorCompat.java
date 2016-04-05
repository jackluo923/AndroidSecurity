package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

final class ExtendedGameEntity$ExtendedGameEntityCreatorCompat
  extends ExtendedGameEntityCreator
{
  public final ExtendedGameEntity bg(Parcel paramParcel)
  {
    if ((ExtendedGameEntity.b(ExtendedGameEntity.gM())) || (ExtendedGameEntity.aQ(ExtendedGameEntity.class.getCanonicalName()))) {
      return super.bg(paramParcel);
    }
    GameEntity localGameEntity = (GameEntity)GameEntity.CREATOR.createFromParcel(paramParcel);
    int j = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    int k;
    long l1;
    long l2;
    String str1;
    long l3;
    String str2;
    ArrayList localArrayList;
    for (boolean bool = true;; bool = false)
    {
      k = paramParcel.readInt();
      l1 = paramParcel.readLong();
      l2 = paramParcel.readLong();
      str1 = paramParcel.readString();
      l3 = paramParcel.readLong();
      str2 = paramParcel.readString();
      int m = paramParcel.readInt();
      localArrayList = new ArrayList(m);
      int i = 0;
      while (i < m)
      {
        localArrayList.add(GameBadgeEntity.CREATOR.bh(paramParcel));
        i += 1;
      }
    }
    return new ExtendedGameEntity(2, localGameEntity, j, bool, k, l1, l2, str1, l3, str2, localArrayList, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.ExtendedGameEntity.ExtendedGameEntityCreatorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */