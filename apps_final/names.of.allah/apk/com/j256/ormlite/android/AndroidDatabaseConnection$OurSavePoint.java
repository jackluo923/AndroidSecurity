package com.j256.ormlite.android;

import java.sql.Savepoint;

class AndroidDatabaseConnection$OurSavePoint
  implements Savepoint
{
  private String name;
  
  public AndroidDatabaseConnection$OurSavePoint(String paramString)
  {
    name = paramString;
  }
  
  public int getSavepointId()
  {
    return 0;
  }
  
  public String getSavepointName()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.AndroidDatabaseConnection.OurSavePoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */