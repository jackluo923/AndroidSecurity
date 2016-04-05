package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;

final class GameEntity$GameEntityCreatorCompat
  extends GameEntityCreator
{
  public final GameEntity bd(Parcel paramParcel)
  {
    if ((GameEntity.b(GameEntity.gM())) || (GameEntity.aQ(GameEntity.class.getCanonicalName()))) {
      return super.bd(paramParcel);
    }
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    String str3 = paramParcel.readString();
    String str4 = paramParcel.readString();
    String str5 = paramParcel.readString();
    String str6 = paramParcel.readString();
    Object localObject1 = paramParcel.readString();
    Object localObject2;
    label84:
    Object localObject3;
    label98:
    boolean bool1;
    if (localObject1 == null)
    {
      localObject1 = null;
      localObject2 = paramParcel.readString();
      if (localObject2 != null) {
        break label179;
      }
      localObject2 = null;
      localObject3 = paramParcel.readString();
      if (localObject3 != null) {
        break label187;
      }
      localObject3 = null;
      if (paramParcel.readInt() <= 0) {
        break label197;
      }
      bool1 = true;
      label108:
      if (paramParcel.readInt() <= 0) {
        break label203;
      }
    }
    label179:
    label187:
    label197:
    label203:
    for (boolean bool2 = true;; bool2 = false)
    {
      return new GameEntity(4, str1, str2, str3, str4, str5, str6, (Uri)localObject1, (Uri)localObject2, (Uri)localObject3, bool1, bool2, paramParcel.readString(), paramParcel.readInt(), paramParcel.readInt(), paramParcel.readInt(), false, false, null, null, null, false, false, false);
      localObject1 = Uri.parse((String)localObject1);
      break;
      localObject2 = Uri.parse((String)localObject2);
      break label84;
      localObject3 = Uri.parse((String)localObject3);
      break label98;
      bool1 = false;
      break label108;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.GameEntity.GameEntityCreatorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */