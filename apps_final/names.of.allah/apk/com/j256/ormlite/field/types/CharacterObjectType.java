package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;

public class CharacterObjectType
  extends BaseDataType
{
  private static final CharacterObjectType singleTon = new CharacterObjectType();
  
  private CharacterObjectType()
  {
    super(SqlType.CHAR, new Class[] { Character.class });
  }
  
  protected CharacterObjectType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static CharacterObjectType getSingleton()
  {
    return singleTon;
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    if (paramString.length() != 1) {
      throw new SQLException("Problems with field " + paramFieldType + ", default string to long for Character: '" + paramString + "'");
    }
    return Character.valueOf(paramString.charAt(0));
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Character.valueOf(paramDatabaseResults.getChar(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.CharacterObjectType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */