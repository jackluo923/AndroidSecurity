package com.j256.ormlite.android.compat;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class BasicApiCompatibility
  implements ApiCompatibility
{
  public ApiCompatibility.CancellationHook createCancellationHook()
  {
    return null;
  }
  
  public Cursor rawQuery(SQLiteDatabase paramSQLiteDatabase, String paramString, String[] paramArrayOfString, ApiCompatibility.CancellationHook paramCancellationHook)
  {
    return paramSQLiteDatabase.rawQuery(paramString, paramArrayOfString);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.compat.BasicApiCompatibility
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */