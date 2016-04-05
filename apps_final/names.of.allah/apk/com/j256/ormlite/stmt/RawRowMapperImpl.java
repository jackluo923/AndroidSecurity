package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.table.TableInfo;

public class RawRowMapperImpl<T, ID>
  implements RawRowMapper<T>
{
  private final TableInfo<T, ID> tableInfo;
  
  public RawRowMapperImpl(TableInfo<T, ID> paramTableInfo)
  {
    tableInfo = paramTableInfo;
  }
  
  public T mapRow(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    Object localObject = tableInfo.createObject();
    int i = 0;
    while (i < paramArrayOfString1.length)
    {
      if (i < paramArrayOfString2.length)
      {
        FieldType localFieldType = tableInfo.getFieldTypeByColumnName(paramArrayOfString1[i]);
        localFieldType.assignField(localObject, localFieldType.convertStringToJavaField(paramArrayOfString2[i], i), false, null);
      }
      i += 1;
    }
    return (T)localObject;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.RawRowMapperImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */