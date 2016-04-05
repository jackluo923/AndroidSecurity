package com.j256.ormlite.dao;

public class Dao$CreateOrUpdateStatus
{
  private boolean created;
  private int numLinesChanged;
  private boolean updated;
  
  public Dao$CreateOrUpdateStatus(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    created = paramBoolean1;
    updated = paramBoolean2;
    numLinesChanged = paramInt;
  }
  
  public int getNumLinesChanged()
  {
    return numLinesChanged;
  }
  
  public boolean isCreated()
  {
    return created;
  }
  
  public boolean isUpdated()
  {
    return updated;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.Dao.CreateOrUpdateStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */