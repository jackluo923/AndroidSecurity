package com.j256.ormlite.stmt;

import com.j256.ormlite.support.DatabaseResults;

public abstract interface GenericRowMapper<T>
{
  public abstract T mapRow(DatabaseResults paramDatabaseResults);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.GenericRowMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */