package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.PlayerEntity;

final class ParticipantEntity$ParticipantEntityCreatorCompat
  extends ParticipantEntityCreator
{
  public final ParticipantEntity bm(Parcel paramParcel)
  {
    int i = 1;
    if ((ParticipantEntity.b(ParticipantEntity.gM())) || (ParticipantEntity.aQ(ParticipantEntity.class.getCanonicalName()))) {
      return super.bm(paramParcel);
    }
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    Object localObject1 = paramParcel.readString();
    Object localObject2;
    label63:
    int j;
    String str3;
    boolean bool;
    if (localObject1 == null)
    {
      localObject1 = null;
      localObject2 = paramParcel.readString();
      if (localObject2 != null) {
        break label145;
      }
      localObject2 = null;
      j = paramParcel.readInt();
      str3 = paramParcel.readString();
      if (paramParcel.readInt() <= 0) {
        break label153;
      }
      bool = true;
      label85:
      if (paramParcel.readInt() <= 0) {
        break label159;
      }
      label92:
      if (i == 0) {
        break label165;
      }
    }
    label145:
    label153:
    label159:
    label165:
    for (paramParcel = (PlayerEntity)PlayerEntity.CREATOR.createFromParcel(paramParcel);; paramParcel = null)
    {
      return new ParticipantEntity(3, str1, str2, (Uri)localObject1, (Uri)localObject2, j, str3, bool, paramParcel, 7, null, null, null);
      localObject1 = Uri.parse((String)localObject1);
      break;
      localObject2 = Uri.parse((String)localObject2);
      break label63;
      bool = false;
      break label85;
      i = 0;
      break label92;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantEntity.ParticipantEntityCreatorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */