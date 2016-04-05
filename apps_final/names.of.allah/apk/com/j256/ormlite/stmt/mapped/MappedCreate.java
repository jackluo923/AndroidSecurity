package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Log.Level;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedCreate<T, ID>
  extends BaseMappedStatement<T, ID>
{
  private String dataClassName;
  private final String queryNextSequenceStmt;
  private int versionFieldTypeIndex;
  
  private MappedCreate(TableInfo<T, ID> paramTableInfo, String paramString1, FieldType[] paramArrayOfFieldType, String paramString2, int paramInt)
  {
    super(paramTableInfo, paramString1, paramArrayOfFieldType);
    dataClassName = paramTableInfo.getDataClass().getSimpleName();
    queryNextSequenceStmt = paramString2;
    versionFieldTypeIndex = paramInt;
  }
  
  private void assignIdValue(T paramT, Number paramNumber, String paramString, ObjectCache paramObjectCache)
  {
    idField.assignIdValue(paramT, paramNumber, paramObjectCache);
    if (logger.isLevelEnabled(Log.Level.DEBUG)) {
      logger.debug("assigned id '{}' from {} to '{}' in {} object", new Object[] { paramNumber, paramString, idField.getFieldName(), dataClassName });
    }
  }
  
  private void assignSequenceId(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    long l = paramDatabaseConnection.queryForLong(queryNextSequenceStmt);
    logger.debug("queried for sequence {} using stmt: {}", Long.valueOf(l), queryNextSequenceStmt);
    if (l == 0L) {
      throw new SQLException("Should not have returned 0 for stmt: " + queryNextSequenceStmt);
    }
    assignIdValue(paramT, Long.valueOf(l), "sequence", paramObjectCache);
  }
  
  public static <T, ID> MappedCreate<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    appendTableName(paramDatabaseType, localStringBuilder, "INSERT INTO ", paramTableInfo.getTableName());
    int i = -1;
    FieldType[] arrayOfFieldType = paramTableInfo.getFieldTypes();
    int i1 = arrayOfFieldType.length;
    int k = 0;
    int j = 0;
    int n;
    while (k < i1)
    {
      localObject = arrayOfFieldType[k];
      n = j;
      m = i;
      if (isFieldCreatable(paramDatabaseType, (FieldType)localObject))
      {
        if (((FieldType)localObject).isVersion()) {
          i = j;
        }
        n = j + 1;
        m = i;
      }
      k += 1;
      j = n;
      i = m;
    }
    arrayOfFieldType = new FieldType[j];
    if (j == 0)
    {
      paramDatabaseType.appendInsertNoColumns(localStringBuilder);
      paramDatabaseType = buildQueryNextSequence(paramDatabaseType, paramTableInfo.getIdField());
      return new MappedCreate(paramTableInfo, localStringBuilder.toString(), arrayOfFieldType, paramDatabaseType, i);
    }
    localStringBuilder.append('(');
    Object localObject = paramTableInfo.getFieldTypes();
    i1 = localObject.length;
    int m = 0;
    k = 1;
    j = 0;
    label180:
    if (m < i1)
    {
      FieldType localFieldType = localObject[m];
      if (!isFieldCreatable(paramDatabaseType, localFieldType)) {
        break label353;
      }
      if (k != 0)
      {
        k = 0;
        label211:
        appendFieldColumnName(paramDatabaseType, localStringBuilder, localFieldType, null);
        n = j + 1;
        arrayOfFieldType[j] = localFieldType;
        j = n;
      }
    }
    label333:
    label353:
    for (;;)
    {
      m += 1;
      break label180;
      localStringBuilder.append(",");
      break label211;
      localStringBuilder.append(") VALUES (");
      localObject = paramTableInfo.getFieldTypes();
      n = localObject.length;
      k = 0;
      j = 1;
      if (k < n)
      {
        m = j;
        if (isFieldCreatable(paramDatabaseType, localObject[k]))
        {
          if (j == 0) {
            break label333;
          }
          j = 0;
        }
        for (;;)
        {
          localStringBuilder.append("?");
          m = j;
          k += 1;
          j = m;
          break;
          localStringBuilder.append(",");
        }
      }
      localStringBuilder.append(")");
      break;
    }
  }
  
  private static String buildQueryNextSequence(DatabaseType paramDatabaseType, FieldType paramFieldType)
  {
    if (paramFieldType == null) {}
    do
    {
      return null;
      paramFieldType = paramFieldType.getGeneratedIdSequence();
    } while (paramFieldType == null);
    StringBuilder localStringBuilder = new StringBuilder(64);
    paramDatabaseType.appendSelectNextValFromSequence(localStringBuilder, paramFieldType);
    return localStringBuilder.toString();
  }
  
  private boolean foreignCollectionsAreAssigned(FieldType[] paramArrayOfFieldType, Object paramObject)
  {
    int j = paramArrayOfFieldType.length;
    int i = 0;
    while (i < j)
    {
      if (paramArrayOfFieldType[i].extractJavaFieldValue(paramObject) == null) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static boolean isFieldCreatable(DatabaseType paramDatabaseType, FieldType paramFieldType)
  {
    if (paramFieldType.isForeignCollection()) {}
    do
    {
      do
      {
        return false;
      } while (paramFieldType.isReadOnly());
      if ((paramDatabaseType.isIdSequenceNeeded()) && (paramDatabaseType.isSelectSequenceBeforeInsert())) {
        return true;
      }
    } while ((paramFieldType.isGeneratedId()) && (!paramFieldType.isSelfGeneratedId()) && (!paramFieldType.isAllowGeneratedIdInsert()));
    return true;
  }
  
  /* Error */
  public int insert(DatabaseType paramDatabaseType, DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: aload_0
    //   4: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   7: ifnull +561 -> 568
    //   10: aload_0
    //   11: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   14: invokevirtual 208	com/j256/ormlite/field/FieldType:isAllowGeneratedIdInsert	()Z
    //   17: ifeq +155 -> 172
    //   20: aload_0
    //   21: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   24: aload_3
    //   25: invokevirtual 214	com/j256/ormlite/field/FieldType:isObjectsFieldValueDefault	(Ljava/lang/Object;)Z
    //   28: ifne +144 -> 172
    //   31: iconst_0
    //   32: istore 8
    //   34: aload_0
    //   35: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   38: invokevirtual 205	com/j256/ormlite/field/FieldType:isSelfGeneratedId	()Z
    //   41: ifeq +137 -> 178
    //   44: aload_0
    //   45: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   48: invokevirtual 202	com/j256/ormlite/field/FieldType:isGeneratedId	()Z
    //   51: ifeq +127 -> 178
    //   54: iload 8
    //   56: ifeq +512 -> 568
    //   59: aload_0
    //   60: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   63: aload_3
    //   64: aload_0
    //   65: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   68: invokevirtual 218	com/j256/ormlite/field/FieldType:generateId	()Ljava/lang/Object;
    //   71: iconst_0
    //   72: aload 4
    //   74: invokevirtual 222	com/j256/ormlite/field/FieldType:assignField	(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V
    //   77: aconst_null
    //   78: astore_1
    //   79: aload_0
    //   80: getfield 226	com/j256/ormlite/stmt/mapped/MappedCreate:tableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   83: invokevirtual 229	com/j256/ormlite/table/TableInfo:isForeignAutoCreate	()Z
    //   86: ifeq +156 -> 242
    //   89: aload_0
    //   90: getfield 226	com/j256/ormlite/stmt/mapped/MappedCreate:tableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   93: invokevirtual 134	com/j256/ormlite/table/TableInfo:getFieldTypes	()[Lcom/j256/ormlite/field/FieldType;
    //   96: astore 5
    //   98: aload 5
    //   100: arraylength
    //   101: istore 10
    //   103: iload 9
    //   105: istore 8
    //   107: iload 8
    //   109: iload 10
    //   111: if_icmpge +131 -> 242
    //   114: aload 5
    //   116: iload 8
    //   118: aaload
    //   119: astore 6
    //   121: aload 6
    //   123: invokevirtual 230	com/j256/ormlite/field/FieldType:isForeignAutoCreate	()Z
    //   126: ifeq +37 -> 163
    //   129: aload 6
    //   131: aload_3
    //   132: invokevirtual 233	com/j256/ormlite/field/FieldType:extractRawJavaFieldValue	(Ljava/lang/Object;)Ljava/lang/Object;
    //   135: astore 7
    //   137: aload 7
    //   139: ifnull +24 -> 163
    //   142: aload 6
    //   144: invokevirtual 236	com/j256/ormlite/field/FieldType:getForeignIdField	()Lcom/j256/ormlite/field/FieldType;
    //   147: aload 7
    //   149: invokevirtual 214	com/j256/ormlite/field/FieldType:isObjectsFieldValueDefault	(Ljava/lang/Object;)Z
    //   152: ifeq +11 -> 163
    //   155: aload 6
    //   157: aload 7
    //   159: invokevirtual 240	com/j256/ormlite/field/FieldType:createWithForeignDao	(Ljava/lang/Object;)I
    //   162: pop
    //   163: iload 8
    //   165: iconst_1
    //   166: iadd
    //   167: istore 8
    //   169: goto -62 -> 107
    //   172: iconst_1
    //   173: istore 8
    //   175: goto -141 -> 34
    //   178: aload_0
    //   179: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   182: invokevirtual 243	com/j256/ormlite/field/FieldType:isGeneratedIdSequence	()Z
    //   185: ifeq +30 -> 215
    //   188: aload_1
    //   189: invokeinterface 199 1 0
    //   194: ifeq +21 -> 215
    //   197: iload 8
    //   199: ifeq +369 -> 568
    //   202: aload_0
    //   203: aload_2
    //   204: aload_3
    //   205: aload 4
    //   207: invokespecial 245	com/j256/ormlite/stmt/mapped/MappedCreate:assignSequenceId	(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)V
    //   210: aconst_null
    //   211: astore_1
    //   212: goto -133 -> 79
    //   215: aload_0
    //   216: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   219: invokevirtual 202	com/j256/ormlite/field/FieldType:isGeneratedId	()Z
    //   222: ifeq +346 -> 568
    //   225: iload 8
    //   227: ifeq +341 -> 568
    //   230: new 247	com/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder
    //   233: dup
    //   234: aconst_null
    //   235: invokespecial 250	com/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder:<init>	(Lcom/j256/ormlite/stmt/mapped/MappedCreate$1;)V
    //   238: astore_1
    //   239: goto -160 -> 79
    //   242: aload_0
    //   243: aload_3
    //   244: invokevirtual 254	com/j256/ormlite/stmt/mapped/MappedCreate:getFieldObjects	(Ljava/lang/Object;)[Ljava/lang/Object;
    //   247: astore 6
    //   249: aload_0
    //   250: getfield 33	com/j256/ormlite/stmt/mapped/MappedCreate:versionFieldTypeIndex	I
    //   253: iflt +309 -> 562
    //   256: aload 6
    //   258: aload_0
    //   259: getfield 33	com/j256/ormlite/stmt/mapped/MappedCreate:versionFieldTypeIndex	I
    //   262: aaload
    //   263: ifnonnull +299 -> 562
    //   266: aload_0
    //   267: getfield 258	com/j256/ormlite/stmt/mapped/MappedCreate:argFieldTypes	[Lcom/j256/ormlite/field/FieldType;
    //   270: aload_0
    //   271: getfield 33	com/j256/ormlite/stmt/mapped/MappedCreate:versionFieldTypeIndex	I
    //   274: aaload
    //   275: astore 7
    //   277: aload 7
    //   279: aconst_null
    //   280: invokevirtual 261	com/j256/ormlite/field/FieldType:moveToNextValue	(Ljava/lang/Object;)Ljava/lang/Object;
    //   283: astore 5
    //   285: aload 6
    //   287: aload_0
    //   288: getfield 33	com/j256/ormlite/stmt/mapped/MappedCreate:versionFieldTypeIndex	I
    //   291: aload 7
    //   293: aload 5
    //   295: invokevirtual 264	com/j256/ormlite/field/FieldType:convertJavaFieldToSqlArgValue	(Ljava/lang/Object;)Ljava/lang/Object;
    //   298: aastore
    //   299: aload_2
    //   300: aload_0
    //   301: getfield 267	com/j256/ormlite/stmt/mapped/MappedCreate:statement	Ljava/lang/String;
    //   304: aload 6
    //   306: aload_0
    //   307: getfield 258	com/j256/ormlite/stmt/mapped/MappedCreate:argFieldTypes	[Lcom/j256/ormlite/field/FieldType;
    //   310: aload_1
    //   311: invokeinterface 270 5 0
    //   316: istore 8
    //   318: getstatic 51	com/j256/ormlite/stmt/mapped/MappedCreate:logger	Lcom/j256/ormlite/logger/Logger;
    //   321: ldc_w 272
    //   324: aload_0
    //   325: getfield 267	com/j256/ormlite/stmt/mapped/MappedCreate:statement	Ljava/lang/String;
    //   328: aload 6
    //   330: arraylength
    //   331: invokestatic 277	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   334: iload 8
    //   336: invokestatic 277	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   339: invokevirtual 280	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   342: aload 6
    //   344: arraylength
    //   345: ifle +14 -> 359
    //   348: getstatic 51	com/j256/ormlite/stmt/mapped/MappedCreate:logger	Lcom/j256/ormlite/logger/Logger;
    //   351: ldc_w 282
    //   354: aload 6
    //   356: invokevirtual 286	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;)V
    //   359: iload 8
    //   361: ifle +198 -> 559
    //   364: aload 5
    //   366: ifnull +20 -> 386
    //   369: aload_0
    //   370: getfield 258	com/j256/ormlite/stmt/mapped/MappedCreate:argFieldTypes	[Lcom/j256/ormlite/field/FieldType;
    //   373: aload_0
    //   374: getfield 33	com/j256/ormlite/stmt/mapped/MappedCreate:versionFieldTypeIndex	I
    //   377: aaload
    //   378: aload_3
    //   379: aload 5
    //   381: iconst_0
    //   382: aconst_null
    //   383: invokevirtual 222	com/j256/ormlite/field/FieldType:assignField	(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V
    //   386: aload_1
    //   387: ifnull +130 -> 517
    //   390: aload_1
    //   391: invokevirtual 290	com/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder:getKey	()Ljava/lang/Number;
    //   394: astore_1
    //   395: aload_1
    //   396: ifnonnull +90 -> 486
    //   399: new 96	java/sql/SQLException
    //   402: dup
    //   403: ldc_w 292
    //   406: invokespecial 111	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   409: athrow
    //   410: astore_1
    //   411: new 98	java/lang/StringBuilder
    //   414: dup
    //   415: ldc_w 294
    //   418: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   421: aload_3
    //   422: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   425: ldc_w 299
    //   428: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: aload_0
    //   432: getfield 267	com/j256/ormlite/stmt/mapped/MappedCreate:statement	Ljava/lang/String;
    //   435: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: aload_1
    //   442: invokestatic 305	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   445: athrow
    //   446: astore_1
    //   447: getstatic 51	com/j256/ormlite/stmt/mapped/MappedCreate:logger	Lcom/j256/ormlite/logger/Logger;
    //   450: ldc_w 307
    //   453: aload_0
    //   454: getfield 267	com/j256/ormlite/stmt/mapped/MappedCreate:statement	Ljava/lang/String;
    //   457: aload 6
    //   459: arraylength
    //   460: invokestatic 277	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   463: aload_1
    //   464: invokevirtual 280	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   467: aload 6
    //   469: arraylength
    //   470: ifle +14 -> 484
    //   473: getstatic 51	com/j256/ormlite/stmt/mapped/MappedCreate:logger	Lcom/j256/ormlite/logger/Logger;
    //   476: ldc_w 282
    //   479: aload 6
    //   481: invokevirtual 286	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;)V
    //   484: aload_1
    //   485: athrow
    //   486: aload_1
    //   487: invokevirtual 313	java/lang/Number:longValue	()J
    //   490: lconst_0
    //   491: lcmp
    //   492: ifne +14 -> 506
    //   495: new 96	java/sql/SQLException
    //   498: dup
    //   499: ldc_w 315
    //   502: invokespecial 111	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   505: athrow
    //   506: aload_0
    //   507: aload_3
    //   508: aload_1
    //   509: ldc_w 317
    //   512: aload 4
    //   514: invokespecial 115	com/j256/ormlite/stmt/mapped/MappedCreate:assignIdValue	(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    //   517: aload 4
    //   519: ifnull +40 -> 559
    //   522: aload_0
    //   523: aload_0
    //   524: getfield 226	com/j256/ormlite/stmt/mapped/MappedCreate:tableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   527: invokevirtual 320	com/j256/ormlite/table/TableInfo:getForeignCollections	()[Lcom/j256/ormlite/field/FieldType;
    //   530: aload_3
    //   531: invokespecial 322	com/j256/ormlite/stmt/mapped/MappedCreate:foreignCollectionsAreAssigned	([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z
    //   534: ifeq +25 -> 559
    //   537: aload_0
    //   538: getfield 42	com/j256/ormlite/stmt/mapped/MappedCreate:idField	Lcom/j256/ormlite/field/FieldType;
    //   541: aload_3
    //   542: invokevirtual 187	com/j256/ormlite/field/FieldType:extractJavaFieldValue	(Ljava/lang/Object;)Ljava/lang/Object;
    //   545: astore_1
    //   546: aload 4
    //   548: aload_0
    //   549: getfield 326	com/j256/ormlite/stmt/mapped/MappedCreate:clazz	Ljava/lang/Class;
    //   552: aload_1
    //   553: aload_3
    //   554: invokeinterface 332 4 0
    //   559: iload 8
    //   561: ireturn
    //   562: aconst_null
    //   563: astore 5
    //   565: goto -266 -> 299
    //   568: aconst_null
    //   569: astore_1
    //   570: goto -491 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	573	0	this	MappedCreate
    //   0	573	1	paramDatabaseType	DatabaseType
    //   0	573	2	paramDatabaseConnection	DatabaseConnection
    //   0	573	3	paramT	T
    //   0	573	4	paramObjectCache	ObjectCache
    //   96	468	5	localObject1	Object
    //   119	361	6	arrayOfObject	Object[]
    //   135	157	7	localObject2	Object
    //   32	528	8	i	int
    //   1	103	9	j	int
    //   101	11	10	k	int
    // Exception table:
    //   from	to	target	type
    //   79	103	410	java/sql/SQLException
    //   121	137	410	java/sql/SQLException
    //   142	163	410	java/sql/SQLException
    //   242	299	410	java/sql/SQLException
    //   318	359	410	java/sql/SQLException
    //   369	386	410	java/sql/SQLException
    //   390	395	410	java/sql/SQLException
    //   399	410	410	java/sql/SQLException
    //   447	484	410	java/sql/SQLException
    //   484	486	410	java/sql/SQLException
    //   486	506	410	java/sql/SQLException
    //   506	517	410	java/sql/SQLException
    //   522	559	410	java/sql/SQLException
    //   299	318	446	java/sql/SQLException
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedCreate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */