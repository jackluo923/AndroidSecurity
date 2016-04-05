package com.millennialmedia.android;

import android.content.Context;
import java.io.ObjectInputStream;
import java.util.Date;

final class AdCache$4
  extends AdCache.Iterator
{
  AdCache$4(Context paramContext) {}
  
  final boolean callback(String paramString1, int paramInt, Date paramDate, String paramString2, long paramLong, ObjectInputStream paramObjectInputStream)
  {
    if ((paramDate != null) && (paramDate.getTime() <= System.currentTimeMillis())) {}
    try
    {
      paramDate = (CachedAd)paramObjectInputStream.readObject();
      MMSDK.Log.d("Deleting expired ad %s.", new Object[] { paramDate.getId() });
      paramDate.delete(val$context);
      return true;
    }
    catch (Exception paramDate)
    {
      MMSDK.Log.d("There was a problem reading the cached ad %s.", new Object[] { paramString1 });
      MMSDK.Log.d(paramDate);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */