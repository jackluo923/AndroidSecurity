package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.FileConflictEvent;

public class aj
  implements Parcelable.Creator<OnEventResponse>
{
  static void a(OnEventResponse paramOnEventResponse, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.c(paramParcel, 2, In);
    b.a(paramParcel, 3, Jv, paramInt, false);
    b.a(paramParcel, 4, Jw, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public OnEventResponse ak(Parcel paramParcel)
  {
    int k = a.B(paramParcel);
    ChangeEvent localChangeEvent = null;
    int j = 0;
    int i = 0;
    FileConflictEvent localFileConflictEvent = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.A(paramParcel);
      switch (a.ar(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        j = a.g(paramParcel, m);
        break;
      case 3: 
        localChangeEvent = (ChangeEvent)a.a(paramParcel, m, ChangeEvent.CREATOR);
        break;
      case 4: 
        localFileConflictEvent = (FileConflictEvent)a.a(paramParcel, m, FileConflictEvent.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new OnEventResponse(i, j, localChangeEvent, localFileConflictEvent);
  }
  
  public OnEventResponse[] bg(int paramInt)
  {
    return new OnEventResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */