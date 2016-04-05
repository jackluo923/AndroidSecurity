package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseMappedQuery<T, ID>
  extends BaseMappedStatement<T, ID>
  implements GenericRowMapper<T>
{
  private Map<String, Integer> columnPositions = null;
  private Object parent = null;
  private Object parentId = null;
  protected final FieldType[] resultsFieldTypes;
  
  protected BaseMappedQuery(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType1, FieldType[] paramArrayOfFieldType2)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType1);
    resultsFieldTypes = paramArrayOfFieldType2;
  }
  
  public T mapRow(DatabaseResults paramDatabaseResults)
  {
    if (columnPositions == null) {}
    ObjectCache localObjectCache;
    for (Object localObject1 = new HashMap();; localObject1 = columnPositions)
    {
      localObjectCache = paramDatabaseResults.getObjectCache();
      if (localObjectCache == null) {
        break;
      }
      localObject2 = idField.resultToJava(paramDatabaseResults, (Map)localObject1);
      localObject2 = localObjectCache.get(clazz, localObject2);
      if (localObject2 == null) {
        break;
      }
      return (T)localObject2;
    }
    Object localObject4 = tableInfo.createObject();
    Object localObject2 = null;
    Object localObject5 = resultsFieldTypes;
    int m = localObject5.length;
    int i = 0;
    int j = 0;
    Object localObject3;
    while (i < m)
    {
      Object localObject6 = localObject5[i];
      int k;
      if (((FieldType)localObject6).isForeignCollection())
      {
        k = 1;
        i += 1;
        j = k;
      }
      else
      {
        localObject3 = ((FieldType)localObject6).resultToJava(paramDatabaseResults, (Map)localObject1);
        if ((localObject3 != null) && (parent != null) && (((FieldType)localObject6).getField().getType() == parent.getClass()) && (localObject3.equals(parentId))) {
          ((FieldType)localObject6).assignField(localObject4, parent, true, localObjectCache);
        }
        for (;;)
        {
          k = j;
          if (localObject6 != idField) {
            break;
          }
          localObject2 = localObject3;
          k = j;
          break;
          ((FieldType)localObject6).assignField(localObject4, localObject3, false, localObjectCache);
        }
      }
    }
    if (j != 0)
    {
      paramDatabaseResults = resultsFieldTypes;
      j = paramDatabaseResults.length;
      i = 0;
      while (i < j)
      {
        localObject3 = paramDatabaseResults[i];
        if (((FieldType)localObject3).isForeignCollection())
        {
          localObject5 = ((FieldType)localObject3).buildForeignCollection(localObject4, localObject2);
          if (localObject5 != null) {
            ((FieldType)localObject3).assignField(localObject4, localObject5, false, localObjectCache);
          }
        }
        i += 1;
      }
    }
    if ((localObjectCache != null) && (localObject2 != null)) {
      localObjectCache.put(clazz, localObject2, localObject4);
    }
    if (columnPositions == null) {
      columnPositions = ((Map)localObject1);
    }
    return (T)localObject4;
  }
  
  public void setParentInformation(Object paramObject1, Object paramObject2)
  {
    parent = paramObject1;
    parentId = paramObject2;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.mapped.BaseMappedQuery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */