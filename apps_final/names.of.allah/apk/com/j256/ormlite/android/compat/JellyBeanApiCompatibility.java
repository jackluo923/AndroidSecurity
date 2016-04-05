package com.j256.ormlite.android.compat;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class JellyBeanApiCompatibility
  extends BasicApiCompatibility
{
  public ApiCompatibility.CancellationHook createCancellationHook()
  {
    return new JellyBeanApiCompatibility.JellyBeanCancellationHook();
  }
  
  public Cursor rawQuery(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString, ApiCompatibility.CancellationHook paramCancellationHook)
  {
    if (paramCancellationHook == null) {
      return paramSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
    }
    return paramSQLiteDatabase.rawQuery(paramString, paramArrayOfString, JellyBeanApiCompatibility.JellyBeanCancellationHook.access$000((JellyBeanApiCompatibility.JellyBeanCancellationHook)paramCancellationHook));
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.compat.JellyBeanApiCompatibility
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */