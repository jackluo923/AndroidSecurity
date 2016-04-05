package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.support.GeneratedKeyHolder;
import java.sql.SQLException;

class MappedCreate$KeyHolder
  implements GeneratedKeyHolder
{
  Number key;
  
  public void addKey(Number paramNumber)
  {
    if (key == null)
    {
      key = paramNumber;
      return;
    }
    throw new SQLException("generated key has already been set to " + key + ", now set to " + paramNumber);
  }
  
  public Number getKey()
  {
    return key;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedCreate.KeyHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */