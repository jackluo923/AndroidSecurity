package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class In
  extends BaseComparison
{
  private final boolean in;
  private Iterable<?> objects;
  
  public In(String paramString, FieldType paramFieldType, Iterable<?> paramIterable, boolean paramBoolean)
  {
    super(paramString, paramFieldType, null, true);
    objects = paramIterable;
    in = paramBoolean;
  }
  
  public In(String paramString, FieldType paramFieldType, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    super(paramString, paramFieldType, null, true);
    objects = Arrays.asList(paramArrayOfObject);
    in = paramBoolean;
  }
  
  public void appendOperation(StringBuilder paramStringBuilder)
  {
    if (in)
    {
      paramStringBuilder.append("IN ");
      return;
    }
    paramStringBuilder.append("NOT IN ");
  }
  
  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append('(');
    int i = 1;
    Iterator localIterator = objects.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject == null) {
        throw new IllegalArgumentException("one of the IN values for '" + columnName + "' is null");
      }
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        super.appendArgOrValue(paramDatabaseType, fieldType, paramStringBuilder, paramList, localObject);
        break;
        paramStringBuilder.append(',');
      }
    }
    paramStringBuilder.append(") ");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.In
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */