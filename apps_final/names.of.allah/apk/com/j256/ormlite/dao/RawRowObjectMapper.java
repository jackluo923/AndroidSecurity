package com.j256.ormlite.dao;

import com.j256.ormlite.field.DataType;

public abstract interface RawRowObjectMapper<T>
{
  public abstract T mapRow(String[] paramArrayOfString, DataType[] paramArrayOfDataType, Object[] paramArrayOfObject);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.RawRowObjectMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */