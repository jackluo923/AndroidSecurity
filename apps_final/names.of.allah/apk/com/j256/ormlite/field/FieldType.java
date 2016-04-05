package com.j256.ormlite.field;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.BaseForeignCollection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.EagerForeignCollection;
import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.dao.LazyForeignCollection;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.stmt.mapped.MappedQueryForId;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.TableInfo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

public class FieldType
{
  private static boolean DEFAULT_VALUE_BOOLEAN = false;
  private static byte DEFAULT_VALUE_BYTE = 0;
  private static char DEFAULT_VALUE_CHAR = '\000';
  private static double DEFAULT_VALUE_DOUBLE = 0.0D;
  private static float DEFAULT_VALUE_FLOAT = 0.0F;
  private static int DEFAULT_VALUE_INT = 0;
  private static long DEFAULT_VALUE_LONG = 0L;
  private static short DEFAULT_VALUE_SHORT = 0;
  public static final String FOREIGN_ID_FIELD_SUFFIX = "_id";
  private static final ThreadLocal<FieldType.LevelCounters> threadLevelCounters = new FieldType.1();
  private final String columnName;
  private final ConnectionSource connectionSource;
  private DataPersister dataPersister;
  private Object dataTypeConfigObj;
  private Object defaultValue;
  private final Field field;
  private final DatabaseFieldConfig fieldConfig;
  private FieldConverter fieldConverter;
  private final Method fieldGetMethod;
  private final Method fieldSetMethod;
  private BaseDaoImpl<?, ?> foreignDao;
  private FieldType foreignFieldType;
  private FieldType foreignIdField;
  private TableInfo<?, ?> foreignTableInfo;
  private final String generatedIdSequence;
  private final boolean isGeneratedId;
  private final boolean isId;
  private MappedQueryForId<Object, Object> mappedQueryForId;
  private final Class<?> parentClass;
  private final String tableName;
  
  /* Error */
  public FieldType(ConnectionSource paramConnectionSource, String paramString, Field paramField, DatabaseFieldConfig paramDatabaseFieldConfig, Class<?> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 87	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aload_1
    //   6: putfield 89	com/j256/ormlite/field/FieldType:connectionSource	Lcom/j256/ormlite/support/ConnectionSource;
    //   9: aload_0
    //   10: aload_2
    //   11: putfield 91	com/j256/ormlite/field/FieldType:tableName	Ljava/lang/String;
    //   14: aload_1
    //   15: invokeinterface 97 1 0
    //   20: astore 6
    //   22: aload_0
    //   23: aload_3
    //   24: putfield 99	com/j256/ormlite/field/FieldType:field	Ljava/lang/reflect/Field;
    //   27: aload_0
    //   28: aload 5
    //   30: putfield 101	com/j256/ormlite/field/FieldType:parentClass	Ljava/lang/Class;
    //   33: aload 4
    //   35: invokevirtual 106	com/j256/ormlite/field/DatabaseFieldConfig:postProcess	()V
    //   38: aload_3
    //   39: invokevirtual 112	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   42: astore 7
    //   44: aload 4
    //   46: invokevirtual 116	com/j256/ormlite/field/DatabaseFieldConfig:getDataPersister	()Lcom/j256/ormlite/field/DataPersister;
    //   49: ifnonnull +267 -> 316
    //   52: aload 4
    //   54: invokevirtual 119	com/j256/ormlite/field/DatabaseFieldConfig:getPersisterClass	()Ljava/lang/Class;
    //   57: astore 5
    //   59: aload 5
    //   61: ifnull +10 -> 71
    //   64: aload 5
    //   66: ldc 121
    //   68: if_acmpne +94 -> 162
    //   71: aload_3
    //   72: invokestatic 127	com/j256/ormlite/field/DataPersisterManager:lookupForField	(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    //   75: astore_1
    //   76: aload 4
    //   78: invokevirtual 131	com/j256/ormlite/field/DatabaseFieldConfig:getForeignColumnName	()Ljava/lang/String;
    //   81: astore 8
    //   83: aload_3
    //   84: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   87: astore 5
    //   89: aload 4
    //   91: invokevirtual 138	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   94: ifne +16 -> 110
    //   97: aload 4
    //   99: invokevirtual 141	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   102: ifne +8 -> 110
    //   105: aload 8
    //   107: ifnull +436 -> 543
    //   110: aload_1
    //   111: ifnull +310 -> 421
    //   114: aload_1
    //   115: invokeinterface 146 1 0
    //   120: ifeq +301 -> 421
    //   123: new 148	java/lang/IllegalArgumentException
    //   126: dup
    //   127: new 150	java/lang/StringBuilder
    //   130: dup
    //   131: ldc -104
    //   133: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload_0
    //   137: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: ldc -95
    //   142: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload 7
    //   147: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   150: ldc -90
    //   152: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   161: athrow
    //   162: aload 5
    //   164: ldc -84
    //   166: iconst_0
    //   167: anewarray 174	java/lang/Class
    //   170: invokevirtual 178	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   173: astore_1
    //   174: aload_1
    //   175: aconst_null
    //   176: iconst_0
    //   177: anewarray 4	java/lang/Object
    //   180: invokevirtual 184	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   183: astore_1
    //   184: aload_1
    //   185: ifnonnull +100 -> 285
    //   188: new 186	java/sql/SQLException
    //   191: dup
    //   192: new 150	java/lang/StringBuilder
    //   195: dup
    //   196: ldc -68
    //   198: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   201: aload 5
    //   203: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   206: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   212: athrow
    //   213: astore_1
    //   214: new 150	java/lang/StringBuilder
    //   217: dup
    //   218: ldc -65
    //   220: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   223: aload 5
    //   225: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   228: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: aload_1
    //   232: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   235: athrow
    //   236: astore_1
    //   237: new 150	java/lang/StringBuilder
    //   240: dup
    //   241: ldc -57
    //   243: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   246: aload 5
    //   248: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: aload_1
    //   255: invokevirtual 203	java/lang/reflect/InvocationTargetException:getTargetException	()Ljava/lang/Throwable;
    //   258: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   261: athrow
    //   262: astore_1
    //   263: new 150	java/lang/StringBuilder
    //   266: dup
    //   267: ldc -57
    //   269: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   272: aload 5
    //   274: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   277: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   280: aload_1
    //   281: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   284: athrow
    //   285: aload_1
    //   286: checkcast 143	com/j256/ormlite/field/DataPersister
    //   289: astore_1
    //   290: goto -214 -> 76
    //   293: astore_1
    //   294: new 150	java/lang/StringBuilder
    //   297: dup
    //   298: ldc -51
    //   300: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   303: aload 5
    //   305: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   308: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   311: aload_1
    //   312: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   315: athrow
    //   316: aload 4
    //   318: invokevirtual 116	com/j256/ormlite/field/DatabaseFieldConfig:getDataPersister	()Lcom/j256/ormlite/field/DataPersister;
    //   321: astore_1
    //   322: aload_1
    //   323: aload_3
    //   324: invokeinterface 209 2 0
    //   329: ifne +1259 -> 1588
    //   332: new 150	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 210	java/lang/StringBuilder:<init>	()V
    //   339: astore_2
    //   340: aload_2
    //   341: ldc -44
    //   343: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: aload 7
    //   348: invokevirtual 213	java/lang/Class:getName	()Ljava/lang/String;
    //   351: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: pop
    //   355: aload_2
    //   356: ldc -41
    //   358: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: aload_0
    //   362: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   365: pop
    //   366: aload_2
    //   367: ldc -39
    //   369: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: aload_1
    //   373: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   376: pop
    //   377: aload_1
    //   378: invokeinterface 220 1 0
    //   383: astore_1
    //   384: aload_1
    //   385: ifnull +24 -> 409
    //   388: aload_2
    //   389: new 150	java/lang/StringBuilder
    //   392: dup
    //   393: ldc -34
    //   395: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   398: aload_1
    //   399: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   402: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   405: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: pop
    //   409: new 148	java/lang/IllegalArgumentException
    //   412: dup
    //   413: aload_2
    //   414: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   417: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   420: athrow
    //   421: aload 8
    //   423: ifnonnull +90 -> 513
    //   426: new 150	java/lang/StringBuilder
    //   429: dup
    //   430: invokespecial 210	java/lang/StringBuilder:<init>	()V
    //   433: aload 5
    //   435: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: ldc 30
    //   440: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   446: astore 5
    //   448: ldc -32
    //   450: aload 7
    //   452: invokevirtual 228	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   455: ifeq +252 -> 707
    //   458: new 186	java/sql/SQLException
    //   461: dup
    //   462: new 150	java/lang/StringBuilder
    //   465: dup
    //   466: ldc -26
    //   468: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   471: aload_3
    //   472: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   475: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: ldc -24
    //   480: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   483: aload 7
    //   485: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   488: ldc -22
    //   490: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: ldc -20
    //   495: invokevirtual 239	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   498: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: ldc -15
    //   503: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   512: athrow
    //   513: new 150	java/lang/StringBuilder
    //   516: dup
    //   517: invokespecial 210	java/lang/StringBuilder:<init>	()V
    //   520: aload 5
    //   522: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: ldc -13
    //   527: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   530: aload 8
    //   532: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: astore 5
    //   540: goto -92 -> 448
    //   543: aload 4
    //   545: invokevirtual 246	com/j256/ormlite/field/DatabaseFieldConfig:isForeignCollection	()Z
    //   548: ifeq +231 -> 779
    //   551: aload 7
    //   553: ldc -8
    //   555: if_acmpeq +58 -> 613
    //   558: ldc -32
    //   560: aload 7
    //   562: invokevirtual 228	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   565: ifne +48 -> 613
    //   568: new 186	java/sql/SQLException
    //   571: dup
    //   572: new 150	java/lang/StringBuilder
    //   575: dup
    //   576: ldc -6
    //   578: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   581: aload_3
    //   582: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   585: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: ldc -4
    //   590: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   593: ldc -32
    //   595: invokevirtual 239	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   598: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: ldc -2
    //   603: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   606: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   609: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   612: athrow
    //   613: aload_3
    //   614: invokevirtual 258	java/lang/reflect/Field:getGenericType	()Ljava/lang/reflect/Type;
    //   617: astore 7
    //   619: aload 7
    //   621: instanceof 260
    //   624: ifne +36 -> 660
    //   627: new 186	java/sql/SQLException
    //   630: dup
    //   631: new 150	java/lang/StringBuilder
    //   634: dup
    //   635: ldc -6
    //   637: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   640: aload_3
    //   641: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   644: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   647: ldc_w 262
    //   650: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   656: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   659: athrow
    //   660: aload 7
    //   662: checkcast 260	java/lang/reflect/ParameterizedType
    //   665: invokeinterface 266 1 0
    //   670: arraylength
    //   671: ifne +36 -> 707
    //   674: new 186	java/sql/SQLException
    //   677: dup
    //   678: new 150	java/lang/StringBuilder
    //   681: dup
    //   682: ldc -6
    //   684: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   687: aload_3
    //   688: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   691: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   694: ldc_w 268
    //   697: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   700: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   703: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   706: athrow
    //   707: aload 4
    //   709: invokevirtual 271	com/j256/ormlite/field/DatabaseFieldConfig:getColumnName	()Ljava/lang/String;
    //   712: ifnonnull +235 -> 947
    //   715: aload_0
    //   716: aload 5
    //   718: putfield 273	com/j256/ormlite/field/FieldType:columnName	Ljava/lang/String;
    //   721: aload_0
    //   722: aload 4
    //   724: putfield 275	com/j256/ormlite/field/FieldType:fieldConfig	Lcom/j256/ormlite/field/DatabaseFieldConfig;
    //   727: aload 4
    //   729: invokevirtual 277	com/j256/ormlite/field/DatabaseFieldConfig:isId	()Z
    //   732: ifeq +299 -> 1031
    //   735: aload 4
    //   737: invokevirtual 279	com/j256/ormlite/field/DatabaseFieldConfig:isGeneratedId	()Z
    //   740: ifne +11 -> 751
    //   743: aload 4
    //   745: invokevirtual 282	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   748: ifnull +211 -> 959
    //   751: new 148	java/lang/IllegalArgumentException
    //   754: dup
    //   755: new 150	java/lang/StringBuilder
    //   758: dup
    //   759: ldc_w 284
    //   762: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   765: aload_3
    //   766: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   769: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   772: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   775: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   778: athrow
    //   779: aload_1
    //   780: ifnonnull +805 -> 1585
    //   783: aload 4
    //   785: invokevirtual 246	com/j256/ormlite/field/DatabaseFieldConfig:isForeignCollection	()Z
    //   788: ifne +797 -> 1585
    //   791: ldc_w 286
    //   794: aload 7
    //   796: invokevirtual 228	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   799: ifeq +48 -> 847
    //   802: new 186	java/sql/SQLException
    //   805: dup
    //   806: new 150	java/lang/StringBuilder
    //   809: dup
    //   810: ldc_w 288
    //   813: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   816: aload 7
    //   818: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   821: ldc_w 290
    //   824: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   827: aload_3
    //   828: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   831: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   834: ldc_w 292
    //   837: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   840: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   843: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   846: athrow
    //   847: ldc_w 294
    //   850: aload 7
    //   852: invokevirtual 228	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   855: ifeq +48 -> 903
    //   858: new 186	java/sql/SQLException
    //   861: dup
    //   862: new 150	java/lang/StringBuilder
    //   865: dup
    //   866: ldc_w 288
    //   869: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   872: aload 7
    //   874: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   877: ldc_w 290
    //   880: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   883: aload_3
    //   884: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   887: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   890: ldc_w 296
    //   893: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   896: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   899: invokespecial 189	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   902: athrow
    //   903: new 148	java/lang/IllegalArgumentException
    //   906: dup
    //   907: new 150	java/lang/StringBuilder
    //   910: dup
    //   911: ldc_w 288
    //   914: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   917: aload 7
    //   919: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   922: ldc -41
    //   924: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   927: aload_3
    //   928: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   931: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   934: ldc_w 298
    //   937: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   940: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   943: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   946: athrow
    //   947: aload_0
    //   948: aload 4
    //   950: invokevirtual 271	com/j256/ormlite/field/DatabaseFieldConfig:getColumnName	()Ljava/lang/String;
    //   953: putfield 273	com/j256/ormlite/field/FieldType:columnName	Ljava/lang/String;
    //   956: goto -235 -> 721
    //   959: aload_0
    //   960: iconst_1
    //   961: putfield 300	com/j256/ormlite/field/FieldType:isId	Z
    //   964: aload_0
    //   965: iconst_0
    //   966: putfield 302	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   969: aload_0
    //   970: aconst_null
    //   971: putfield 304	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   974: aload_0
    //   975: getfield 300	com/j256/ormlite/field/FieldType:isId	Z
    //   978: ifeq +211 -> 1189
    //   981: aload 4
    //   983: invokevirtual 138	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   986: ifne +11 -> 997
    //   989: aload 4
    //   991: invokevirtual 141	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   994: ifeq +195 -> 1189
    //   997: new 148	java/lang/IllegalArgumentException
    //   1000: dup
    //   1001: new 150	java/lang/StringBuilder
    //   1004: dup
    //   1005: ldc_w 306
    //   1008: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1011: aload_3
    //   1012: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1015: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1018: ldc_w 308
    //   1021: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1024: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1027: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1030: athrow
    //   1031: aload 4
    //   1033: invokevirtual 279	com/j256/ormlite/field/DatabaseFieldConfig:isGeneratedId	()Z
    //   1036: ifeq +83 -> 1119
    //   1039: aload 4
    //   1041: invokevirtual 282	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   1044: ifnull +31 -> 1075
    //   1047: new 148	java/lang/IllegalArgumentException
    //   1050: dup
    //   1051: new 150	java/lang/StringBuilder
    //   1054: dup
    //   1055: ldc_w 284
    //   1058: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1061: aload_3
    //   1062: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1065: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1068: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1071: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1074: athrow
    //   1075: aload_0
    //   1076: iconst_1
    //   1077: putfield 300	com/j256/ormlite/field/FieldType:isId	Z
    //   1080: aload_0
    //   1081: iconst_1
    //   1082: putfield 302	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   1085: aload 6
    //   1087: invokeinterface 313 1 0
    //   1092: ifeq +19 -> 1111
    //   1095: aload_0
    //   1096: aload 6
    //   1098: aload_2
    //   1099: aload_0
    //   1100: invokeinterface 317 3 0
    //   1105: putfield 304	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1108: goto -134 -> 974
    //   1111: aload_0
    //   1112: aconst_null
    //   1113: putfield 304	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1116: goto -142 -> 974
    //   1119: aload 4
    //   1121: invokevirtual 282	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   1124: ifnull +47 -> 1171
    //   1127: aload_0
    //   1128: iconst_1
    //   1129: putfield 300	com/j256/ormlite/field/FieldType:isId	Z
    //   1132: aload_0
    //   1133: iconst_1
    //   1134: putfield 302	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   1137: aload 4
    //   1139: invokevirtual 282	com/j256/ormlite/field/DatabaseFieldConfig:getGeneratedIdSequence	()Ljava/lang/String;
    //   1142: astore 5
    //   1144: aload 5
    //   1146: astore_2
    //   1147: aload 6
    //   1149: invokeinterface 320 1 0
    //   1154: ifeq +9 -> 1163
    //   1157: aload 5
    //   1159: invokevirtual 325	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   1162: astore_2
    //   1163: aload_0
    //   1164: aload_2
    //   1165: putfield 304	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1168: goto -194 -> 974
    //   1171: aload_0
    //   1172: iconst_0
    //   1173: putfield 300	com/j256/ormlite/field/FieldType:isId	Z
    //   1176: aload_0
    //   1177: iconst_0
    //   1178: putfield 302	com/j256/ormlite/field/FieldType:isGeneratedId	Z
    //   1181: aload_0
    //   1182: aconst_null
    //   1183: putfield 304	com/j256/ormlite/field/FieldType:generatedIdSequence	Ljava/lang/String;
    //   1186: goto -212 -> 974
    //   1189: aload 4
    //   1191: invokevirtual 328	com/j256/ormlite/field/DatabaseFieldConfig:isUseGetSet	()Z
    //   1194: ifeq +70 -> 1264
    //   1197: aload_0
    //   1198: aload_3
    //   1199: iconst_1
    //   1200: invokestatic 332	com/j256/ormlite/field/DatabaseFieldConfig:findGetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   1203: putfield 334	com/j256/ormlite/field/FieldType:fieldGetMethod	Ljava/lang/reflect/Method;
    //   1206: aload_0
    //   1207: aload_3
    //   1208: iconst_1
    //   1209: invokestatic 337	com/j256/ormlite/field/DatabaseFieldConfig:findSetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   1212: putfield 339	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   1215: aload 4
    //   1217: invokevirtual 342	com/j256/ormlite/field/DatabaseFieldConfig:isAllowGeneratedIdInsert	()Z
    //   1220: ifeq +107 -> 1327
    //   1223: aload 4
    //   1225: invokevirtual 279	com/j256/ormlite/field/DatabaseFieldConfig:isGeneratedId	()Z
    //   1228: ifne +99 -> 1327
    //   1231: new 148	java/lang/IllegalArgumentException
    //   1234: dup
    //   1235: new 150	java/lang/StringBuilder
    //   1238: dup
    //   1239: ldc -104
    //   1241: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1244: aload_3
    //   1245: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1248: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1251: ldc_w 344
    //   1254: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1257: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1260: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1263: athrow
    //   1264: aload_3
    //   1265: invokevirtual 347	java/lang/reflect/Field:isAccessible	()Z
    //   1268: ifne +11 -> 1279
    //   1271: aload_0
    //   1272: getfield 99	com/j256/ormlite/field/FieldType:field	Ljava/lang/reflect/Field;
    //   1275: iconst_1
    //   1276: invokevirtual 351	java/lang/reflect/Field:setAccessible	(Z)V
    //   1279: aload_0
    //   1280: aconst_null
    //   1281: putfield 334	com/j256/ormlite/field/FieldType:fieldGetMethod	Ljava/lang/reflect/Method;
    //   1284: aload_0
    //   1285: aconst_null
    //   1286: putfield 339	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   1289: goto -74 -> 1215
    //   1292: astore_1
    //   1293: new 148	java/lang/IllegalArgumentException
    //   1296: dup
    //   1297: new 150	java/lang/StringBuilder
    //   1300: dup
    //   1301: ldc_w 353
    //   1304: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1307: aload_3
    //   1308: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1311: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1314: ldc_w 355
    //   1317: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1320: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1323: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1326: athrow
    //   1327: aload 4
    //   1329: invokevirtual 141	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   1332: ifeq +44 -> 1376
    //   1335: aload 4
    //   1337: invokevirtual 138	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   1340: ifne +36 -> 1376
    //   1343: new 148	java/lang/IllegalArgumentException
    //   1346: dup
    //   1347: new 150	java/lang/StringBuilder
    //   1350: dup
    //   1351: ldc -104
    //   1353: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1356: aload_3
    //   1357: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1360: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1363: ldc_w 357
    //   1366: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1369: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1372: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1375: athrow
    //   1376: aload 4
    //   1378: invokevirtual 360	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoCreate	()Z
    //   1381: ifeq +44 -> 1425
    //   1384: aload 4
    //   1386: invokevirtual 138	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   1389: ifne +36 -> 1425
    //   1392: new 148	java/lang/IllegalArgumentException
    //   1395: dup
    //   1396: new 150	java/lang/StringBuilder
    //   1399: dup
    //   1400: ldc -104
    //   1402: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1405: aload_3
    //   1406: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1409: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1412: ldc_w 362
    //   1415: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1418: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1421: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1424: athrow
    //   1425: aload 4
    //   1427: invokevirtual 131	com/j256/ormlite/field/DatabaseFieldConfig:getForeignColumnName	()Ljava/lang/String;
    //   1430: ifnull +44 -> 1474
    //   1433: aload 4
    //   1435: invokevirtual 138	com/j256/ormlite/field/DatabaseFieldConfig:isForeign	()Z
    //   1438: ifne +36 -> 1474
    //   1441: new 148	java/lang/IllegalArgumentException
    //   1444: dup
    //   1445: new 150	java/lang/StringBuilder
    //   1448: dup
    //   1449: ldc -104
    //   1451: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1454: aload_3
    //   1455: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1458: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1461: ldc_w 364
    //   1464: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1467: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1470: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1473: athrow
    //   1474: aload 4
    //   1476: invokevirtual 367	com/j256/ormlite/field/DatabaseFieldConfig:isVersion	()Z
    //   1479: ifeq +49 -> 1528
    //   1482: aload_1
    //   1483: ifnull +12 -> 1495
    //   1486: aload_1
    //   1487: invokeinterface 370 1 0
    //   1492: ifne +36 -> 1528
    //   1495: new 148	java/lang/IllegalArgumentException
    //   1498: dup
    //   1499: new 150	java/lang/StringBuilder
    //   1502: dup
    //   1503: ldc -104
    //   1505: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1508: aload_3
    //   1509: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1512: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1515: ldc_w 372
    //   1518: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1521: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1524: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1527: athrow
    //   1528: aload 4
    //   1530: invokevirtual 376	com/j256/ormlite/field/DatabaseFieldConfig:getMaxForeignAutoRefreshLevel	()I
    //   1533: ifle +44 -> 1577
    //   1536: aload 4
    //   1538: invokevirtual 141	com/j256/ormlite/field/DatabaseFieldConfig:isForeignAutoRefresh	()Z
    //   1541: ifne +36 -> 1577
    //   1544: new 148	java/lang/IllegalArgumentException
    //   1547: dup
    //   1548: new 150	java/lang/StringBuilder
    //   1551: dup
    //   1552: ldc -104
    //   1554: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1557: aload_3
    //   1558: invokevirtual 134	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   1561: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1564: ldc_w 378
    //   1567: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1570: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1573: invokespecial 170	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1576: athrow
    //   1577: aload_0
    //   1578: aload 6
    //   1580: aload_1
    //   1581: invokespecial 382	com/j256/ormlite/field/FieldType:assignDataType	(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V
    //   1584: return
    //   1585: goto -878 -> 707
    //   1588: goto -1512 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1591	0	this	FieldType
    //   0	1591	1	paramConnectionSource	ConnectionSource
    //   0	1591	2	paramString	String
    //   0	1591	3	paramField	Field
    //   0	1591	4	paramDatabaseFieldConfig	DatabaseFieldConfig
    //   0	1591	5	paramClass	Class<?>
    //   20	1559	6	localDatabaseType	DatabaseType
    //   42	876	7	localObject	Object
    //   81	450	8	str	String
    // Exception table:
    //   from	to	target	type
    //   162	174	213	java/lang/Exception
    //   174	184	236	java/lang/reflect/InvocationTargetException
    //   174	184	262	java/lang/Exception
    //   285	290	293	java/lang/Exception
    //   1271	1279	1292	java/lang/SecurityException
  }
  
  private void assignDataType(DatabaseType paramDatabaseType, DataPersister paramDataPersister)
  {
    dataPersister = paramDataPersister;
    if (paramDataPersister == null)
    {
      if ((!fieldConfig.isForeign()) && (!fieldConfig.isForeignCollection())) {
        throw new SQLException("Data persister for field " + this + " is null but the field is not a foreign or foreignCollection");
      }
    }
    else
    {
      fieldConverter = paramDatabaseType.getFieldConverter(paramDataPersister);
      if ((isGeneratedId) && (!paramDataPersister.isValidGeneratedType()))
      {
        paramDatabaseType = new StringBuilder();
        paramDatabaseType.append("Generated-id field '").append(field.getName());
        paramDatabaseType.append("' in ").append(field.getDeclaringClass().getSimpleName());
        paramDatabaseType.append(" can't be type ").append(dataPersister.getSqlType());
        paramDatabaseType.append(".  Must be one of: ");
        paramDataPersister = DataType.values();
        int j = paramDataPersister.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramDataPersister[i];
          DataPersister localDataPersister = ((DataType)localObject).getDataPersister();
          if ((localDataPersister != null) && (localDataPersister.isValidGeneratedType())) {
            paramDatabaseType.append(localObject).append(' ');
          }
          i += 1;
        }
        throw new IllegalArgumentException(paramDatabaseType.toString());
      }
      if ((fieldConfig.isThrowIfNull()) && (!paramDataPersister.isPrimitive())) {
        throw new SQLException("Field " + field.getName() + " must be a primitive if set with throwIfNull");
      }
      if ((isId) && (!paramDataPersister.isAppropriateId())) {
        throw new SQLException("Field '" + field.getName() + "' is of data type " + paramDataPersister + " which cannot be the ID field");
      }
      dataTypeConfigObj = paramDataPersister.makeConfigObject(this);
      paramDatabaseType = fieldConfig.getDefaultValue();
      if (paramDatabaseType != null) {
        break label384;
      }
      defaultValue = null;
    }
    return;
    label384:
    if (isGeneratedId) {
      throw new SQLException("Field '" + field.getName() + "' cannot be a generatedId and have a default value '" + paramDatabaseType + "'");
    }
    defaultValue = fieldConverter.parseDefaultString(this, paramDatabaseType);
  }
  
  public static FieldType createFieldType(ConnectionSource paramConnectionSource, String paramString, Field paramField, Class<?> paramClass)
  {
    DatabaseFieldConfig localDatabaseFieldConfig = DatabaseFieldConfig.fromField(paramConnectionSource.getDatabaseType(), paramString, paramField);
    if (localDatabaseFieldConfig == null) {
      return null;
    }
    return new FieldType(paramConnectionSource, paramString, paramField, localDatabaseFieldConfig, paramClass);
  }
  
  private FieldType findForeignFieldType(Class<?> paramClass1, Class<?> paramClass2, BaseDaoImpl<?, ?> paramBaseDaoImpl)
  {
    String str = fieldConfig.getForeignCollectionForeignFieldName();
    paramBaseDaoImpl = paramBaseDaoImpl.getTableInfo().getFieldTypes();
    int j = paramBaseDaoImpl.length;
    int i = 0;
    FieldType localFieldType;
    while (i < j)
    {
      localFieldType = paramBaseDaoImpl[i];
      if ((localFieldType.getType() == paramClass2) && ((str == null) || (localFieldType.getField().getName().equals(str))))
      {
        if ((fieldConfig.isForeign()) || (fieldConfig.isForeignAutoRefresh())) {
          break label252;
        }
        throw new SQLException("Foreign collection object " + paramClass1 + " for field '" + field.getName() + "' contains a field of class " + paramClass2 + " but it's not foreign");
      }
      i += 1;
    }
    paramBaseDaoImpl = new StringBuilder();
    paramBaseDaoImpl.append("Foreign collection class ").append(paramClass1.getName());
    paramBaseDaoImpl.append(" for field '").append(field.getName()).append("' column-name does not contain a foreign field");
    if (str != null) {
      paramBaseDaoImpl.append(" named '").append(str).append('\'');
    }
    paramBaseDaoImpl.append(" of class ").append(paramClass2.getName());
    throw new SQLException(paramBaseDaoImpl.toString());
    label252:
    return localFieldType;
  }
  
  private boolean isFieldValueDefault(Object paramObject)
  {
    if (paramObject == null) {
      return true;
    }
    return paramObject.equals(getJavaDefaultValueDefault());
  }
  
  /* Error */
  public void assignField(Object paramObject1, Object paramObject2, boolean paramBoolean, ObjectCache paramObjectCache)
  {
    // Byte code:
    //   0: aload_2
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 519	com/j256/ormlite/field/FieldType:foreignIdField	Lcom/j256/ormlite/field/FieldType;
    //   7: ifnull +54 -> 61
    //   10: aload_2
    //   11: astore 5
    //   13: aload_2
    //   14: ifnull +47 -> 61
    //   17: aload_0
    //   18: aload_1
    //   19: invokevirtual 523	com/j256/ormlite/field/FieldType:extractJavaFieldValue	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: astore 5
    //   24: aload 5
    //   26: ifnull +13 -> 39
    //   29: aload 5
    //   31: aload_2
    //   32: invokevirtual 513	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   35: ifeq +4 -> 39
    //   38: return
    //   39: aload_0
    //   40: getfield 525	com/j256/ormlite/field/FieldType:foreignDao	Lcom/j256/ormlite/dao/BaseDaoImpl;
    //   43: invokevirtual 529	com/j256/ormlite/dao/BaseDaoImpl:getObjectCache	()Lcom/j256/ormlite/dao/ObjectCache;
    //   46: astore 5
    //   48: aload 5
    //   50: ifnonnull +63 -> 113
    //   53: aconst_null
    //   54: astore 5
    //   56: aload 5
    //   58: ifnull +72 -> 130
    //   61: aload_0
    //   62: getfield 339	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   65: ifnonnull +334 -> 399
    //   68: aload_0
    //   69: getfield 99	com/j256/ormlite/field/FieldType:field	Ljava/lang/reflect/Field;
    //   72: aload_1
    //   73: aload 5
    //   75: invokevirtual 533	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   78: return
    //   79: astore_1
    //   80: new 150	java/lang/StringBuilder
    //   83: dup
    //   84: ldc_w 535
    //   87: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload 5
    //   92: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   95: ldc_w 537
    //   98: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_0
    //   102: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: aload_1
    //   109: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   112: athrow
    //   113: aload 5
    //   115: aload_0
    //   116: invokevirtual 484	com/j256/ormlite/field/FieldType:getType	()Ljava/lang/Class;
    //   119: aload_2
    //   120: invokeinterface 543 3 0
    //   125: astore 5
    //   127: goto -71 -> 56
    //   130: aload_2
    //   131: astore 5
    //   133: iload_3
    //   134: ifne -73 -> 61
    //   137: getstatic 78	com/j256/ormlite/field/FieldType:threadLevelCounters	Ljava/lang/ThreadLocal;
    //   140: invokevirtual 547	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   143: checkcast 549	com/j256/ormlite/field/FieldType$LevelCounters
    //   146: astore 5
    //   148: aload 5
    //   150: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   153: ifne +15 -> 168
    //   156: aload 5
    //   158: aload_0
    //   159: getfield 275	com/j256/ormlite/field/FieldType:fieldConfig	Lcom/j256/ormlite/field/DatabaseFieldConfig;
    //   162: invokevirtual 376	com/j256/ormlite/field/DatabaseFieldConfig:getMaxForeignAutoRefreshLevel	()I
    //   165: putfield 555	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevelMax	I
    //   168: aload 5
    //   170: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   173: aload 5
    //   175: getfield 555	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevelMax	I
    //   178: if_icmplt +34 -> 212
    //   181: aload_0
    //   182: getfield 557	com/j256/ormlite/field/FieldType:foreignTableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   185: invokevirtual 560	com/j256/ormlite/table/TableInfo:createObject	()Ljava/lang/Object;
    //   188: astore 5
    //   190: aload_0
    //   191: getfield 519	com/j256/ormlite/field/FieldType:foreignIdField	Lcom/j256/ormlite/field/FieldType;
    //   194: aload 5
    //   196: aload_2
    //   197: iconst_0
    //   198: aload 4
    //   200: invokevirtual 562	com/j256/ormlite/field/FieldType:assignField	(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V
    //   203: aload 5
    //   205: astore_2
    //   206: aload_2
    //   207: astore 5
    //   209: goto -148 -> 61
    //   212: aload_0
    //   213: getfield 564	com/j256/ormlite/field/FieldType:mappedQueryForId	Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    //   216: ifnonnull +30 -> 246
    //   219: aload_0
    //   220: aload_0
    //   221: getfield 89	com/j256/ormlite/field/FieldType:connectionSource	Lcom/j256/ormlite/support/ConnectionSource;
    //   224: invokeinterface 97 1 0
    //   229: aload_0
    //   230: getfield 525	com/j256/ormlite/field/FieldType:foreignDao	Lcom/j256/ormlite/dao/BaseDaoImpl;
    //   233: invokevirtual 477	com/j256/ormlite/dao/BaseDaoImpl:getTableInfo	()Lcom/j256/ormlite/table/TableInfo;
    //   236: aload_0
    //   237: getfield 519	com/j256/ormlite/field/FieldType:foreignIdField	Lcom/j256/ormlite/field/FieldType;
    //   240: invokestatic 570	com/j256/ormlite/stmt/mapped/MappedQueryForId:build	(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    //   243: putfield 564	com/j256/ormlite/field/FieldType:mappedQueryForId	Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    //   246: aload 5
    //   248: aload 5
    //   250: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   253: iconst_1
    //   254: iadd
    //   255: putfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   258: aload_0
    //   259: getfield 89	com/j256/ormlite/field/FieldType:connectionSource	Lcom/j256/ormlite/support/ConnectionSource;
    //   262: invokeinterface 574 1 0
    //   267: astore 6
    //   269: aload_0
    //   270: getfield 564	com/j256/ormlite/field/FieldType:mappedQueryForId	Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    //   273: aload 6
    //   275: aload_2
    //   276: aload 4
    //   278: invokevirtual 578	com/j256/ormlite/stmt/mapped/MappedQueryForId:execute	(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    //   281: astore_2
    //   282: aload_0
    //   283: getfield 89	com/j256/ormlite/field/FieldType:connectionSource	Lcom/j256/ormlite/support/ConnectionSource;
    //   286: aload 6
    //   288: invokeinterface 582 2 0
    //   293: aload 5
    //   295: aload 5
    //   297: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   300: iconst_1
    //   301: isub
    //   302: putfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   305: aload 5
    //   307: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   310: ifgt +155 -> 465
    //   313: getstatic 78	com/j256/ormlite/field/FieldType:threadLevelCounters	Ljava/lang/ThreadLocal;
    //   316: invokevirtual 585	java/lang/ThreadLocal:remove	()V
    //   319: goto -113 -> 206
    //   322: astore_1
    //   323: aload_0
    //   324: getfield 89	com/j256/ormlite/field/FieldType:connectionSource	Lcom/j256/ormlite/support/ConnectionSource;
    //   327: aload 6
    //   329: invokeinterface 582 2 0
    //   334: aload_1
    //   335: athrow
    //   336: astore_1
    //   337: aload 5
    //   339: aload 5
    //   341: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   344: iconst_1
    //   345: isub
    //   346: putfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   349: aload 5
    //   351: getfield 552	com/j256/ormlite/field/FieldType$LevelCounters:autoRefreshLevel	I
    //   354: ifgt +9 -> 363
    //   357: getstatic 78	com/j256/ormlite/field/FieldType:threadLevelCounters	Ljava/lang/ThreadLocal;
    //   360: invokevirtual 585	java/lang/ThreadLocal:remove	()V
    //   363: aload_1
    //   364: athrow
    //   365: astore_1
    //   366: new 150	java/lang/StringBuilder
    //   369: dup
    //   370: ldc_w 535
    //   373: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   376: aload 5
    //   378: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   381: ldc_w 537
    //   384: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: aload_0
    //   388: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   391: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   394: aload_1
    //   395: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   398: athrow
    //   399: aload_0
    //   400: getfield 339	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   403: aload_1
    //   404: iconst_1
    //   405: anewarray 4	java/lang/Object
    //   408: dup
    //   409: iconst_0
    //   410: aload 5
    //   412: aastore
    //   413: invokevirtual 184	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   416: pop
    //   417: return
    //   418: astore_1
    //   419: new 150	java/lang/StringBuilder
    //   422: dup
    //   423: ldc_w 587
    //   426: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   429: aload_0
    //   430: getfield 339	com/j256/ormlite/field/FieldType:fieldSetMethod	Ljava/lang/reflect/Method;
    //   433: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   436: ldc_w 589
    //   439: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: aload 5
    //   444: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   447: ldc_w 591
    //   450: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: aload_0
    //   454: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   457: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   460: aload_1
    //   461: invokestatic 197	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   464: athrow
    //   465: goto -259 -> 206
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	468	0	this	FieldType
    //   0	468	1	paramObject1	Object
    //   0	468	2	paramObject2	Object
    //   0	468	3	paramBoolean	boolean
    //   0	468	4	paramObjectCache	ObjectCache
    //   1	442	5	localObject	Object
    //   267	61	6	localDatabaseConnection	com.j256.ormlite.support.DatabaseConnection
    // Exception table:
    //   from	to	target	type
    //   68	78	79	java/lang/IllegalArgumentException
    //   269	282	322	finally
    //   258	269	336	finally
    //   282	293	336	finally
    //   323	336	336	finally
    //   68	78	365	java/lang/IllegalAccessException
    //   399	417	418	java/lang/Exception
  }
  
  public Object assignIdValue(Object paramObject, Number paramNumber, ObjectCache paramObjectCache)
  {
    paramNumber = dataPersister.convertIdNumber(paramNumber);
    if (paramNumber == null) {
      throw new SQLException("Invalid class " + dataPersister + " for sequence-id " + this);
    }
    assignField(paramObject, paramNumber, false, paramObjectCache);
    return paramNumber;
  }
  
  public <FT, FID> BaseForeignCollection<FT, FID> buildForeignCollection(Object paramObject, FID paramFID)
  {
    if (foreignFieldType == null) {
      return null;
    }
    BaseDaoImpl localBaseDaoImpl = foreignDao;
    if (!fieldConfig.isForeignCollectionEager()) {
      return new LazyForeignCollection(localBaseDaoImpl, paramObject, paramFID, foreignFieldType, fieldConfig.getForeignCollectionOrderColumnName(), fieldConfig.isForeignCollectionOrderAscending());
    }
    FieldType.LevelCounters localLevelCounters = (FieldType.LevelCounters)threadLevelCounters.get();
    if (foreignCollectionLevel == 0) {
      foreignCollectionLevelMax = fieldConfig.getForeignCollectionMaxEagerLevel();
    }
    if (foreignCollectionLevel >= foreignCollectionLevelMax) {
      return new LazyForeignCollection(localBaseDaoImpl, paramObject, paramFID, foreignFieldType, fieldConfig.getForeignCollectionOrderColumnName(), fieldConfig.isForeignCollectionOrderAscending());
    }
    foreignCollectionLevel += 1;
    try
    {
      paramObject = new EagerForeignCollection(localBaseDaoImpl, paramObject, paramFID, foreignFieldType, fieldConfig.getForeignCollectionOrderColumnName(), fieldConfig.isForeignCollectionOrderAscending());
      return (BaseForeignCollection<FT, FID>)paramObject;
    }
    finally
    {
      foreignCollectionLevel -= 1;
    }
  }
  
  public void configDaoInformation(ConnectionSource paramConnectionSource, Class<?> paramClass)
  {
    FieldType localFieldType = null;
    Object localObject3 = field.getType();
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    String str = fieldConfig.getForeignColumnName();
    Object localObject2;
    Object localObject1;
    if ((fieldConfig.isForeignAutoRefresh()) || (str != null))
    {
      paramClass = fieldConfig.getForeignTableConfig();
      if (paramClass == null) {
        paramConnectionSource = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, (Class)localObject3);
      }
      for (localObject2 = paramConnectionSource.getTableInfo(); str == null; localObject2 = paramConnectionSource.getTableInfo())
      {
        localObject1 = ((TableInfo)localObject2).getIdField();
        paramClass = (Class<?>)localObject1;
        if (localObject1 != null) {
          break label201;
        }
        throw new IllegalArgumentException("Foreign field " + localObject3 + " does not have id field");
        paramClass.extractFieldTypes(paramConnectionSource);
        paramConnectionSource = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, paramClass);
      }
      localObject1 = ((TableInfo)localObject2).getFieldTypeByColumnName(str);
      paramClass = (Class<?>)localObject1;
      if (localObject1 == null) {
        throw new IllegalArgumentException("Foreign field " + localObject3 + " does not have field named '" + str + "'");
      }
      label201:
      localObject3 = MappedQueryForId.build(localDatabaseType, (TableInfo)localObject2, paramClass);
      localObject1 = paramClass;
      paramClass = paramConnectionSource;
      paramConnectionSource = (ConnectionSource)localObject3;
    }
    for (;;)
    {
      mappedQueryForId = paramConnectionSource;
      foreignTableInfo = ((TableInfo)localObject2);
      foreignFieldType = localFieldType;
      foreignDao = paramClass;
      foreignIdField = ((FieldType)localObject1);
      if (foreignIdField != null) {
        assignDataType(localDatabaseType, foreignIdField.getDataPersister());
      }
      return;
      if (fieldConfig.isForeign())
      {
        if ((dataPersister != null) && (dataPersister.isPrimitive())) {
          throw new IllegalArgumentException("Field " + this + " is a primitive class " + localObject3 + " but marked as foreign");
        }
        paramClass = fieldConfig.getForeignTableConfig();
        if (paramClass != null) {
          paramClass.extractFieldTypes(paramConnectionSource);
        }
        for (paramConnectionSource = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, paramClass);; paramConnectionSource = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, (Class)localObject3))
        {
          localObject2 = paramConnectionSource.getTableInfo();
          localObject1 = ((TableInfo)localObject2).getIdField();
          if (localObject1 != null) {
            break;
          }
          throw new IllegalArgumentException("Foreign field " + localObject3 + " does not have id field");
        }
        if ((isForeignAutoCreate()) && (!((FieldType)localObject1).isGeneratedId())) {
          throw new IllegalArgumentException("Field " + field.getName() + ", if foreignAutoCreate = true then class " + ((Class)localObject3).getSimpleName() + " must have id field with generatedId = true");
        }
        paramClass = paramConnectionSource;
        paramConnectionSource = null;
      }
      else
      {
        if (fieldConfig.isForeignCollection())
        {
          if ((localObject3 != Collection.class) && (!ForeignCollection.class.isAssignableFrom((Class)localObject3))) {
            throw new SQLException("Field class for '" + field.getName() + "' must be of class " + ForeignCollection.class.getSimpleName() + " or Collection.");
          }
          localObject1 = field.getGenericType();
          if (!(localObject1 instanceof ParameterizedType)) {
            throw new SQLException("Field class for '" + field.getName() + "' must be a parameterized Collection.");
          }
          localObject1 = ((ParameterizedType)localObject1).getActualTypeArguments();
          if (localObject1.length == 0) {
            throw new SQLException("Field class for '" + field.getName() + "' must be a parameterized Collection with at least 1 type.");
          }
          if (!(localObject1[0] instanceof Class)) {
            throw new SQLException("Field class for '" + field.getName() + "' must be a parameterized Collection whose generic argument is an entity class not: " + localObject1[0]);
          }
          localObject2 = (Class)localObject1[0];
          localObject1 = fieldConfig.getForeignTableConfig();
          if (localObject1 == null) {}
          for (localObject1 = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, (Class)localObject2);; localObject1 = (BaseDaoImpl)DaoManager.createDao(paramConnectionSource, (DatabaseTableConfig)localObject1))
          {
            localFieldType = findForeignFieldType((Class)localObject2, paramClass, (BaseDaoImpl)localObject1);
            localObject3 = null;
            localObject2 = null;
            paramConnectionSource = null;
            paramClass = (Class<?>)localObject1;
            localObject1 = localObject3;
            break;
          }
        }
        paramConnectionSource = null;
        paramClass = null;
        localObject1 = null;
        localObject2 = null;
      }
    }
  }
  
  public Object convertJavaFieldToSqlArgValue(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return fieldConverter.javaToSqlArg(this, paramObject);
  }
  
  public Object convertStringToJavaField(String paramString, int paramInt)
  {
    if (paramString == null) {
      return null;
    }
    return fieldConverter.resultStringToJava(this, paramString, paramInt);
  }
  
  public <T> int createWithForeignDao(T paramT)
  {
    return foreignDao.create(paramT);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (paramObject.getClass() != getClass())) {}
    do
    {
      do
      {
        return false;
        paramObject = (FieldType)paramObject;
      } while (!field.equals(field));
      if (parentClass != null) {
        break;
      }
    } while (parentClass != null);
    for (;;)
    {
      return true;
      if (!parentClass.equals(parentClass)) {
        break;
      }
    }
  }
  
  public Object extractJavaFieldToSqlArgValue(Object paramObject)
  {
    return convertJavaFieldToSqlArgValue(extractJavaFieldValue(paramObject));
  }
  
  public Object extractJavaFieldValue(Object paramObject)
  {
    Object localObject = extractRawJavaFieldValue(paramObject);
    paramObject = localObject;
    if (foreignIdField != null)
    {
      paramObject = localObject;
      if (localObject != null) {
        paramObject = foreignIdField.extractRawJavaFieldValue(localObject);
      }
    }
    return paramObject;
  }
  
  public <FV> FV extractRawJavaFieldValue(Object paramObject)
  {
    if (fieldGetMethod == null) {
      try
      {
        paramObject = field.get(paramObject);
        return (FV)paramObject;
      }
      catch (Exception paramObject)
      {
        throw SqlExceptionUtil.create("Could not get field value for " + this, (Throwable)paramObject);
      }
    }
    try
    {
      paramObject = fieldGetMethod.invoke(paramObject, new Object[0]);
      return (FV)paramObject;
    }
    catch (Exception paramObject)
    {
      throw SqlExceptionUtil.create("Could not call " + fieldGetMethod + " for " + this, (Throwable)paramObject);
    }
  }
  
  public Object generateId()
  {
    return dataPersister.generateId();
  }
  
  public String getColumnDefinition()
  {
    return fieldConfig.getColumnDefinition();
  }
  
  public String getColumnName()
  {
    return columnName;
  }
  
  public DataPersister getDataPersister()
  {
    return dataPersister;
  }
  
  public Object getDataTypeConfigObj()
  {
    return dataTypeConfigObj;
  }
  
  public Object getDefaultValue()
  {
    return defaultValue;
  }
  
  public Field getField()
  {
    return field;
  }
  
  public String getFieldName()
  {
    return field.getName();
  }
  
  public <FV> FV getFieldValueIfNotDefault(Object paramObject)
  {
    Object localObject = extractJavaFieldValue(paramObject);
    paramObject = localObject;
    if (isFieldValueDefault(localObject)) {
      paramObject = null;
    }
    return (FV)paramObject;
  }
  
  public FieldType getForeignIdField()
  {
    return foreignIdField;
  }
  
  public String getFormat()
  {
    return fieldConfig.getFormat();
  }
  
  public String getGeneratedIdSequence()
  {
    return generatedIdSequence;
  }
  
  public String getIndexName()
  {
    return fieldConfig.getIndexName(tableName);
  }
  
  public Object getJavaDefaultValueDefault()
  {
    if (field.getType() == Boolean.TYPE) {
      return Boolean.valueOf(DEFAULT_VALUE_BOOLEAN);
    }
    if ((field.getType() == Byte.TYPE) || (field.getType() == Byte.class)) {
      return Byte.valueOf(DEFAULT_VALUE_BYTE);
    }
    if ((field.getType() == Character.TYPE) || (field.getType() == Character.class)) {
      return Character.valueOf(DEFAULT_VALUE_CHAR);
    }
    if ((field.getType() == Short.TYPE) || (field.getType() == Short.class)) {
      return Short.valueOf(DEFAULT_VALUE_SHORT);
    }
    if ((field.getType() == Integer.TYPE) || (field.getType() == Integer.class)) {
      return Integer.valueOf(DEFAULT_VALUE_INT);
    }
    if ((field.getType() == Long.TYPE) || (field.getType() == Long.class)) {
      return Long.valueOf(DEFAULT_VALUE_LONG);
    }
    if ((field.getType() == Float.TYPE) || (field.getType() == Float.class)) {
      return Float.valueOf(DEFAULT_VALUE_FLOAT);
    }
    if ((field.getType() == Double.TYPE) || (field.getType() == Double.class)) {
      return Double.valueOf(DEFAULT_VALUE_DOUBLE);
    }
    return null;
  }
  
  public SqlType getSqlType()
  {
    return fieldConverter.getSqlType();
  }
  
  public String getTableName()
  {
    return tableName;
  }
  
  public Class<?> getType()
  {
    return field.getType();
  }
  
  public String getUniqueIndexName()
  {
    return fieldConfig.getUniqueIndexName(tableName);
  }
  
  public Enum<?> getUnknownEnumVal()
  {
    return fieldConfig.getUnknownEnumValue();
  }
  
  public int getWidth()
  {
    return fieldConfig.getWidth();
  }
  
  public int hashCode()
  {
    return field.hashCode();
  }
  
  public boolean isAllowGeneratedIdInsert()
  {
    return fieldConfig.isAllowGeneratedIdInsert();
  }
  
  public boolean isArgumentHolderRequired()
  {
    return dataPersister.isArgumentHolderRequired();
  }
  
  public boolean isCanBeNull()
  {
    return fieldConfig.isCanBeNull();
  }
  
  public boolean isComparable()
  {
    if (fieldConfig.isForeignCollection()) {
      return false;
    }
    if (dataPersister == null) {
      throw new SQLException("Internal error.  Data-persister is not configured for field.  Please post _full_ exception with associated data objects to mailing list: " + this);
    }
    return dataPersister.isComparable();
  }
  
  public boolean isEscapedDefaultValue()
  {
    return dataPersister.isEscapedDefaultValue();
  }
  
  public boolean isEscapedValue()
  {
    return dataPersister.isEscapedValue();
  }
  
  public boolean isForeign()
  {
    return fieldConfig.isForeign();
  }
  
  public boolean isForeignAutoCreate()
  {
    return fieldConfig.isForeignAutoCreate();
  }
  
  public boolean isForeignCollection()
  {
    return fieldConfig.isForeignCollection();
  }
  
  public boolean isGeneratedId()
  {
    return isGeneratedId;
  }
  
  public boolean isGeneratedIdSequence()
  {
    return generatedIdSequence != null;
  }
  
  public boolean isId()
  {
    return isId;
  }
  
  public boolean isObjectsFieldValueDefault(Object paramObject)
  {
    return isFieldValueDefault(extractJavaFieldValue(paramObject));
  }
  
  public boolean isReadOnly()
  {
    return fieldConfig.isReadOnly();
  }
  
  public boolean isSelfGeneratedId()
  {
    return dataPersister.isSelfGeneratedId();
  }
  
  public boolean isUnique()
  {
    return fieldConfig.isUnique();
  }
  
  public boolean isUniqueCombo()
  {
    return fieldConfig.isUniqueCombo();
  }
  
  public boolean isVersion()
  {
    return fieldConfig.isVersion();
  }
  
  public Object moveToNextValue(Object paramObject)
  {
    if (dataPersister == null) {
      return null;
    }
    return dataPersister.moveToNextValue(paramObject);
  }
  
  public <T> T resultToJava(DatabaseResults paramDatabaseResults, Map<String, Integer> paramMap)
  {
    Integer localInteger2 = (Integer)paramMap.get(columnName);
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null)
    {
      localInteger1 = Integer.valueOf(paramDatabaseResults.findColumn(columnName));
      paramMap.put(columnName, localInteger1);
    }
    paramMap = fieldConverter.resultToJava(this, paramDatabaseResults, localInteger1.intValue());
    if (fieldConfig.isForeign())
    {
      if (paramDatabaseResults.wasNull(localInteger1.intValue())) {
        return null;
      }
    }
    else if (dataPersister.isPrimitive())
    {
      if ((fieldConfig.isThrowIfNull()) && (paramDatabaseResults.wasNull(localInteger1.intValue()))) {
        throw new SQLException("Results value for primitive field '" + field.getName() + "' was an invalid null value");
      }
    }
    else if ((!fieldConverter.isStreamType()) && (paramDatabaseResults.wasNull(localInteger1.intValue()))) {
      return null;
    }
    return paramMap;
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + ":name=" + field.getName() + ",class=" + field.getDeclaringClass().getSimpleName();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.FieldType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */