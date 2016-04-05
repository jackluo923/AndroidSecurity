package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.sql.SQLException;

public class SerializableType
  extends BaseDataType
{
  private static final SerializableType singleTon = new SerializableType();
  
  private SerializableType()
  {
    super(SqlType.SERIALIZABLE, new Class[0]);
  }
  
  protected SerializableType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static SerializableType getSingleton()
  {
    return singleTon;
  }
  
  public Class<?> getPrimaryClass()
  {
    return Serializable.class;
  }
  
  public boolean isAppropriateId()
  {
    return false;
  }
  
  public boolean isArgumentHolderRequired()
  {
    return true;
  }
  
  public boolean isComparable()
  {
    return false;
  }
  
  public boolean isStreamType()
  {
    return true;
  }
  
  public boolean isValidForField(Field paramField)
  {
    return Serializable.class.isAssignableFrom(paramField.getType());
  }
  
  /* Error */
  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload 5
    //   8: astore_1
    //   9: new 58	java/io/ByteArrayOutputStream
    //   12: dup
    //   13: invokespecial 59	java/io/ByteArrayOutputStream:<init>	()V
    //   16: astore 6
    //   18: aload 5
    //   20: astore_1
    //   21: new 61	java/io/ObjectOutputStream
    //   24: dup
    //   25: aload 6
    //   27: invokespecial 64	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   30: astore_3
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 68	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   36: aload_3
    //   37: invokevirtual 71	java/io/ObjectOutputStream:close	()V
    //   40: aload 5
    //   42: astore_1
    //   43: aload 6
    //   45: invokevirtual 75	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   48: astore_3
    //   49: aload_3
    //   50: areturn
    //   51: astore_3
    //   52: aload 4
    //   54: astore_1
    //   55: new 77	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 79
    //   61: invokespecial 82	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload_2
    //   65: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: aload_3
    //   72: invokestatic 96	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   75: athrow
    //   76: astore_3
    //   77: aload_1
    //   78: astore_2
    //   79: aload_3
    //   80: astore_1
    //   81: aload_2
    //   82: ifnull +7 -> 89
    //   85: aload_2
    //   86: invokevirtual 71	java/io/ObjectOutputStream:close	()V
    //   89: aload_1
    //   90: athrow
    //   91: astore_2
    //   92: goto -3 -> 89
    //   95: astore_1
    //   96: aload_3
    //   97: astore_2
    //   98: goto -17 -> 81
    //   101: astore 4
    //   103: aload_3
    //   104: astore_1
    //   105: aload 4
    //   107: astore_3
    //   108: goto -53 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	SerializableType
    //   0	111	1	paramFieldType	FieldType
    //   0	111	2	paramObject	Object
    //   30	20	3	localObject1	Object
    //   51	21	3	localException1	Exception
    //   76	28	3	localObject2	Object
    //   107	1	3	localException2	Exception
    //   4	49	4	localObject3	Object
    //   101	5	4	localException3	Exception
    //   1	40	5	localObject4	Object
    //   16	28	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   9	18	51	java/lang/Exception
    //   21	31	51	java/lang/Exception
    //   43	49	51	java/lang/Exception
    //   9	18	76	finally
    //   21	31	76	finally
    //   43	49	76	finally
    //   55	76	76	finally
    //   85	89	91	java/io/IOException
    //   31	40	95	finally
    //   31	40	101	java/lang/Exception
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    throw new SQLException("Default values for serializable types are not supported");
  }
  
  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    throw new SQLException("Serializable type cannot be converted from string to Java");
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getBytes(paramInt);
  }
  
  /* Error */
  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: checkcast 119	[B
    //   4: checkcast 119	[B
    //   7: astore 5
    //   9: new 121	java/io/ObjectInputStream
    //   12: dup
    //   13: new 123	java/io/ByteArrayInputStream
    //   16: dup
    //   17: aload 5
    //   19: invokespecial 126	java/io/ByteArrayInputStream:<init>	([B)V
    //   22: invokespecial 129	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   25: astore_2
    //   26: aload_2
    //   27: astore_1
    //   28: aload_2
    //   29: invokevirtual 133	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   32: astore 4
    //   34: aload_2
    //   35: invokevirtual 134	java/io/ObjectInputStream:close	()V
    //   38: aload 4
    //   40: areturn
    //   41: astore 4
    //   43: aconst_null
    //   44: astore_1
    //   45: new 77	java/lang/StringBuilder
    //   48: dup
    //   49: ldc -120
    //   51: invokespecial 82	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: aload 5
    //   56: invokestatic 141	java/util/Arrays:toString	([B)Ljava/lang/String;
    //   59: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: ldc -110
    //   64: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload 5
    //   69: arraylength
    //   70: invokevirtual 149	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   73: ldc -105
    //   75: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: aload 4
    //   83: invokestatic 96	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   86: athrow
    //   87: astore 4
    //   89: aload_1
    //   90: astore_2
    //   91: aload 4
    //   93: astore_1
    //   94: aload_2
    //   95: ifnull +7 -> 102
    //   98: aload_2
    //   99: invokevirtual 134	java/io/ObjectInputStream:close	()V
    //   102: aload_1
    //   103: athrow
    //   104: astore_1
    //   105: aload 4
    //   107: areturn
    //   108: astore_2
    //   109: goto -7 -> 102
    //   112: astore_1
    //   113: aconst_null
    //   114: astore_2
    //   115: goto -21 -> 94
    //   118: astore 4
    //   120: aload_2
    //   121: astore_1
    //   122: goto -77 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	SerializableType
    //   0	125	1	paramFieldType	FieldType
    //   0	125	2	paramObject	Object
    //   0	125	3	paramInt	int
    //   32	7	4	localObject1	Object
    //   41	41	4	localException1	Exception
    //   87	19	4	localObject2	Object
    //   118	1	4	localException2	Exception
    //   7	61	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   9	26	41	java/lang/Exception
    //   28	34	87	finally
    //   45	87	87	finally
    //   34	38	104	java/io/IOException
    //   98	102	108	java/io/IOException
    //   9	26	112	finally
    //   28	34	118	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.SerializableType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */