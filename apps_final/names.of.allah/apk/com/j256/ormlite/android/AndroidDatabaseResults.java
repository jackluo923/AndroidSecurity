package com.j256.ormlite.android;

import android.database.Cursor;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.support.DatabaseResults;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class AndroidDatabaseResults
  implements DatabaseResults
{
  private static final int MIN_NUM_COLUMN_NAMES_MAP = 8;
  private static final DatabaseType databaseType = new SqliteAndroidDatabaseType();
  private final Map<String, Integer> columnNameMap;
  private final String[] columnNames;
  private final Cursor cursor;
  private final ObjectCache objectCache;
  
  public AndroidDatabaseResults(Cursor paramCursor, ObjectCache paramObjectCache)
  {
    cursor = paramCursor;
    columnNames = paramCursor.getColumnNames();
    if (columnNames.length >= 8)
    {
      columnNameMap = new HashMap();
      int i = 0;
      while (i < columnNames.length)
      {
        columnNameMap.put(columnNames[i], Integer.valueOf(i));
        i += 1;
      }
    }
    columnNameMap = null;
    objectCache = paramObjectCache;
  }
  
  @Deprecated
  public AndroidDatabaseResults(Cursor paramCursor, boolean paramBoolean, ObjectCache paramObjectCache)
  {
    this(paramCursor, paramObjectCache);
  }
  
  private int lookupColumn(String paramString)
  {
    if (columnNameMap == null)
    {
      int i = 0;
      while (i < columnNames.length)
      {
        if (columnNames[i].equals(paramString)) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
    paramString = (Integer)columnNameMap.get(paramString);
    if (paramString == null) {
      return -1;
    }
    return paramString.intValue();
  }
  
  public void close()
  {
    cursor.close();
  }
  
  public void closeQuietly()
  {
    close();
  }
  
  public int findColumn(String paramString)
  {
    int i = lookupColumn(paramString);
    if (i >= 0) {}
    int j;
    do
    {
      return i;
      localObject = new StringBuilder(paramString.length() + 4);
      databaseType.appendEscapedEntityName((StringBuilder)localObject, paramString);
      j = lookupColumn(((StringBuilder)localObject).toString());
      i = j;
    } while (j >= 0);
    Object localObject = cursor.getColumnNames();
    throw new SQLException("Unknown field '" + paramString + "' from the Android sqlite cursor, not in:" + Arrays.toString((Object[])localObject));
  }
  
  public boolean first()
  {
    return cursor.moveToFirst();
  }
  
  public BigDecimal getBigDecimal(int paramInt)
  {
    throw new SQLException("Android does not support BigDecimal type.  Use BIG_DECIMAL or BIG_DECIMAL_STRING types");
  }
  
  public InputStream getBlobStream(int paramInt)
  {
    return new ByteArrayInputStream(cursor.getBlob(paramInt));
  }
  
  public boolean getBoolean(int paramInt)
  {
    return (!cursor.isNull(paramInt)) && (cursor.getShort(paramInt) != 0);
  }
  
  public byte getByte(int paramInt)
  {
    return (byte)getShort(paramInt);
  }
  
  public byte[] getBytes(int paramInt)
  {
    return cursor.getBlob(paramInt);
  }
  
  public char getChar(int paramInt)
  {
    String str = cursor.getString(paramInt);
    if ((str == null) || (str.length() == 0)) {
      return '\000';
    }
    if (str.length() == 1) {
      return str.charAt(0);
    }
    throw new SQLException("More than 1 character stored in database column: " + paramInt);
  }
  
  public int getColumnCount()
  {
    return cursor.getColumnCount();
  }
  
  public String[] getColumnNames()
  {
    int j = getColumnCount();
    String[] arrayOfString = new String[j];
    int i = 0;
    while (i < j)
    {
      arrayOfString[i] = cursor.getColumnName(i);
      i += 1;
    }
    return arrayOfString;
  }
  
  public int getCount()
  {
    return cursor.getCount();
  }
  
  public double getDouble(int paramInt)
  {
    return cursor.getDouble(paramInt);
  }
  
  public float getFloat(int paramInt)
  {
    return cursor.getFloat(paramInt);
  }
  
  public int getInt(int paramInt)
  {
    return cursor.getInt(paramInt);
  }
  
  public long getLong(int paramInt)
  {
    return cursor.getLong(paramInt);
  }
  
  public ObjectCache getObjectCache()
  {
    return objectCache;
  }
  
  public int getPosition()
  {
    return cursor.getPosition();
  }
  
  public Cursor getRawCursor()
  {
    return cursor;
  }
  
  public short getShort(int paramInt)
  {
    return cursor.getShort(paramInt);
  }
  
  public String getString(int paramInt)
  {
    return cursor.getString(paramInt);
  }
  
  public Timestamp getTimestamp(int paramInt)
  {
    throw new SQLException("Android does not support timestamp.  Use JAVA_DATE_LONG or JAVA_DATE_STRING types");
  }
  
  public boolean last()
  {
    return cursor.moveToLast();
  }
  
  public boolean moveAbsolute(int paramInt)
  {
    return cursor.moveToPosition(paramInt);
  }
  
  public boolean moveRelative(int paramInt)
  {
    return cursor.move(paramInt);
  }
  
  public boolean next()
  {
    return cursor.moveToNext();
  }
  
  public boolean previous()
  {
    return cursor.moveToPrevious();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
  
  public boolean wasNull(int paramInt)
  {
    return cursor.isNull(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.AndroidDatabaseResults
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */