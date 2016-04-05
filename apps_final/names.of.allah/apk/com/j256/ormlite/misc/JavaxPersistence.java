package com.j256.ormlite.misc;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public class JavaxPersistence
{
  /* Error */
  public static com.j256.ormlite.field.DatabaseFieldConfig createFieldConfig(com.j256.ormlite.db.DatabaseType paramDatabaseType, java.lang.reflect.Field paramField)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: aconst_null
    //   4: astore 10
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 8
    //   12: aconst_null
    //   13: astore 7
    //   15: aconst_null
    //   16: astore 6
    //   18: aconst_null
    //   19: astore 5
    //   21: aconst_null
    //   22: astore 4
    //   24: aconst_null
    //   25: astore_3
    //   26: aload_1
    //   27: invokevirtual 19	java/lang/reflect/Field:getAnnotations	()[Ljava/lang/annotation/Annotation;
    //   30: astore 12
    //   32: aload 12
    //   34: arraylength
    //   35: istore 15
    //   37: iconst_0
    //   38: istore 14
    //   40: iload 14
    //   42: iload 15
    //   44: if_icmpge +169 -> 213
    //   47: aload 12
    //   49: iload 14
    //   51: aaload
    //   52: astore_2
    //   53: aload_2
    //   54: invokeinterface 25 1 0
    //   59: astore 13
    //   61: aload 13
    //   63: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   66: ldc 33
    //   68: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   71: ifeq +6 -> 77
    //   74: aload_2
    //   75: astore 11
    //   77: aload 13
    //   79: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   82: ldc 41
    //   84: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   87: ifeq +6 -> 93
    //   90: aload_2
    //   91: astore 10
    //   93: aload 13
    //   95: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   98: ldc 43
    //   100: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   103: ifeq +6 -> 109
    //   106: aload_2
    //   107: astore 9
    //   109: aload 13
    //   111: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   114: ldc 45
    //   116: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   119: ifeq +6 -> 125
    //   122: aload_2
    //   123: astore 8
    //   125: aload 13
    //   127: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   130: ldc 47
    //   132: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifeq +6 -> 141
    //   138: aload_2
    //   139: astore 7
    //   141: aload 13
    //   143: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   146: ldc 49
    //   148: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   151: ifeq +6 -> 157
    //   154: aload_2
    //   155: astore 6
    //   157: aload 13
    //   159: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   162: ldc 51
    //   164: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   167: ifeq +6 -> 173
    //   170: aload_2
    //   171: astore 5
    //   173: aload 13
    //   175: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   178: ldc 53
    //   180: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   183: ifeq +6 -> 189
    //   186: aload_2
    //   187: astore 4
    //   189: aload 13
    //   191: invokevirtual 31	java/lang/Class:getName	()Ljava/lang/String;
    //   194: ldc 55
    //   196: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   199: ifeq +884 -> 1083
    //   202: iload 14
    //   204: iconst_1
    //   205: iadd
    //   206: istore 14
    //   208: aload_2
    //   209: astore_3
    //   210: goto -170 -> 40
    //   213: aload 11
    //   215: ifnonnull +34 -> 249
    //   218: aload 10
    //   220: ifnonnull +29 -> 249
    //   223: aload 9
    //   225: ifnonnull +24 -> 249
    //   228: aload 7
    //   230: ifnonnull +19 -> 249
    //   233: aload 6
    //   235: ifnonnull +14 -> 249
    //   238: aload 4
    //   240: ifnonnull +9 -> 249
    //   243: aload_3
    //   244: ifnonnull +5 -> 249
    //   247: aconst_null
    //   248: areturn
    //   249: new 57	com/j256/ormlite/field/DatabaseFieldConfig
    //   252: dup
    //   253: invokespecial 58	com/j256/ormlite/field/DatabaseFieldConfig:<init>	()V
    //   256: astore 13
    //   258: aload_1
    //   259: invokevirtual 59	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   262: astore 12
    //   264: aload 12
    //   266: astore_2
    //   267: aload_0
    //   268: invokeinterface 65 1 0
    //   273: ifeq +9 -> 282
    //   276: aload 12
    //   278: invokevirtual 68	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   281: astore_2
    //   282: aload 13
    //   284: aload_2
    //   285: invokevirtual 72	com/j256/ormlite/field/DatabaseFieldConfig:setFieldName	(Ljava/lang/String;)V
    //   288: aload 11
    //   290: ifnull +205 -> 495
    //   293: aload 11
    //   295: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   298: ldc 77
    //   300: iconst_0
    //   301: anewarray 27	java/lang/Class
    //   304: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   307: aload 11
    //   309: iconst_0
    //   310: anewarray 4	java/lang/Object
    //   313: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   316: checkcast 35	java/lang/String
    //   319: astore_0
    //   320: aload_0
    //   321: ifnull +16 -> 337
    //   324: aload_0
    //   325: invokevirtual 91	java/lang/String:length	()I
    //   328: ifle +9 -> 337
    //   331: aload 13
    //   333: aload_0
    //   334: invokevirtual 94	com/j256/ormlite/field/DatabaseFieldConfig:setColumnName	(Ljava/lang/String;)V
    //   337: aload 11
    //   339: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   342: ldc 96
    //   344: iconst_0
    //   345: anewarray 27	java/lang/Class
    //   348: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   351: aload 11
    //   353: iconst_0
    //   354: anewarray 4	java/lang/Object
    //   357: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   360: checkcast 35	java/lang/String
    //   363: astore_0
    //   364: aload_0
    //   365: ifnull +16 -> 381
    //   368: aload_0
    //   369: invokevirtual 91	java/lang/String:length	()I
    //   372: ifle +9 -> 381
    //   375: aload 13
    //   377: aload_0
    //   378: invokevirtual 99	com/j256/ormlite/field/DatabaseFieldConfig:setColumnDefinition	(Ljava/lang/String;)V
    //   381: aload 13
    //   383: aload 11
    //   385: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   388: ldc 100
    //   390: iconst_0
    //   391: anewarray 27	java/lang/Class
    //   394: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   397: aload 11
    //   399: iconst_0
    //   400: anewarray 4	java/lang/Object
    //   403: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   406: checkcast 102	java/lang/Integer
    //   409: invokevirtual 105	java/lang/Integer:intValue	()I
    //   412: invokevirtual 109	com/j256/ormlite/field/DatabaseFieldConfig:setWidth	(I)V
    //   415: aload 11
    //   417: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   420: ldc 111
    //   422: iconst_0
    //   423: anewarray 27	java/lang/Class
    //   426: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   429: aload 11
    //   431: iconst_0
    //   432: anewarray 4	java/lang/Object
    //   435: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   438: checkcast 113	java/lang/Boolean
    //   441: astore_0
    //   442: aload_0
    //   443: ifnull +12 -> 455
    //   446: aload 13
    //   448: aload_0
    //   449: invokevirtual 116	java/lang/Boolean:booleanValue	()Z
    //   452: invokevirtual 120	com/j256/ormlite/field/DatabaseFieldConfig:setCanBeNull	(Z)V
    //   455: aload 11
    //   457: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   460: ldc 122
    //   462: iconst_0
    //   463: anewarray 27	java/lang/Class
    //   466: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   469: aload 11
    //   471: iconst_0
    //   472: anewarray 4	java/lang/Object
    //   475: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   478: checkcast 113	java/lang/Boolean
    //   481: astore_0
    //   482: aload_0
    //   483: ifnull +12 -> 495
    //   486: aload 13
    //   488: aload_0
    //   489: invokevirtual 116	java/lang/Boolean:booleanValue	()Z
    //   492: invokevirtual 125	com/j256/ormlite/field/DatabaseFieldConfig:setUnique	(Z)V
    //   495: aload 10
    //   497: ifnull +40 -> 537
    //   500: aload 10
    //   502: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   505: ldc 127
    //   507: iconst_0
    //   508: anewarray 27	java/lang/Class
    //   511: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   514: aload 10
    //   516: iconst_0
    //   517: anewarray 4	java/lang/Object
    //   520: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   523: checkcast 113	java/lang/Boolean
    //   526: astore_0
    //   527: aload_0
    //   528: ifnonnull +291 -> 819
    //   531: aload 13
    //   533: iconst_1
    //   534: invokevirtual 120	com/j256/ormlite/field/DatabaseFieldConfig:setCanBeNull	(Z)V
    //   537: aload 9
    //   539: ifnull +14 -> 553
    //   542: aload 8
    //   544: ifnonnull +309 -> 853
    //   547: aload 13
    //   549: iconst_1
    //   550: invokevirtual 130	com/j256/ormlite/field/DatabaseFieldConfig:setId	(Z)V
    //   553: aload 7
    //   555: ifnonnull +8 -> 563
    //   558: aload 6
    //   560: ifnull +128 -> 688
    //   563: ldc -124
    //   565: aload_1
    //   566: invokevirtual 135	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   569: invokevirtual 139	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   572: ifne +15 -> 587
    //   575: ldc -115
    //   577: aload_1
    //   578: invokevirtual 135	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   581: invokevirtual 139	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   584: ifeq +300 -> 884
    //   587: aload 13
    //   589: iconst_1
    //   590: invokevirtual 144	com/j256/ormlite/field/DatabaseFieldConfig:setForeignCollection	(Z)V
    //   593: aload 5
    //   595: ifnull +93 -> 688
    //   598: aload 5
    //   600: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   603: ldc 77
    //   605: iconst_0
    //   606: anewarray 27	java/lang/Class
    //   609: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   612: aload 5
    //   614: iconst_0
    //   615: anewarray 4	java/lang/Object
    //   618: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   621: checkcast 35	java/lang/String
    //   624: astore_0
    //   625: aload_0
    //   626: ifnull +16 -> 642
    //   629: aload_0
    //   630: invokevirtual 91	java/lang/String:length	()I
    //   633: ifle +9 -> 642
    //   636: aload 13
    //   638: aload_0
    //   639: invokevirtual 147	com/j256/ormlite/field/DatabaseFieldConfig:setForeignCollectionColumnName	(Ljava/lang/String;)V
    //   642: aload 5
    //   644: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   647: ldc -107
    //   649: iconst_0
    //   650: anewarray 27	java/lang/Class
    //   653: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   656: aload 5
    //   658: iconst_0
    //   659: anewarray 4	java/lang/Object
    //   662: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   665: astore_0
    //   666: aload_0
    //   667: ifnull +21 -> 688
    //   670: aload_0
    //   671: invokevirtual 152	java/lang/Object:toString	()Ljava/lang/String;
    //   674: ldc -102
    //   676: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   679: ifeq +9 -> 688
    //   682: aload 13
    //   684: iconst_1
    //   685: invokevirtual 157	com/j256/ormlite/field/DatabaseFieldConfig:setForeignCollectionEager	(Z)V
    //   688: aload 4
    //   690: ifnull +51 -> 741
    //   693: aload 4
    //   695: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   698: ldc -97
    //   700: iconst_0
    //   701: anewarray 27	java/lang/Class
    //   704: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   707: aload 4
    //   709: iconst_0
    //   710: anewarray 4	java/lang/Object
    //   713: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   716: astore_0
    //   717: aload_0
    //   718: ifnull +326 -> 1044
    //   721: aload_0
    //   722: invokevirtual 152	java/lang/Object:toString	()Ljava/lang/String;
    //   725: ldc -95
    //   727: invokevirtual 39	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   730: ifeq +314 -> 1044
    //   733: aload 13
    //   735: getstatic 167	com/j256/ormlite/field/DataType:ENUM_STRING	Lcom/j256/ormlite/field/DataType;
    //   738: invokevirtual 171	com/j256/ormlite/field/DatabaseFieldConfig:setDataType	(Lcom/j256/ormlite/field/DataType;)V
    //   741: aload_3
    //   742: ifnull +9 -> 751
    //   745: aload 13
    //   747: iconst_1
    //   748: invokevirtual 174	com/j256/ormlite/field/DatabaseFieldConfig:setVersion	(Z)V
    //   751: aload 13
    //   753: invokevirtual 178	com/j256/ormlite/field/DatabaseFieldConfig:getDataPersister	()Lcom/j256/ormlite/field/DataPersister;
    //   756: ifnonnull +12 -> 768
    //   759: aload 13
    //   761: aload_1
    //   762: invokestatic 184	com/j256/ormlite/field/DataPersisterManager:lookupForField	(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    //   765: invokevirtual 188	com/j256/ormlite/field/DatabaseFieldConfig:setDataPersister	(Lcom/j256/ormlite/field/DataPersister;)V
    //   768: aload_1
    //   769: iconst_0
    //   770: invokestatic 192	com/j256/ormlite/field/DatabaseFieldConfig:findGetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   773: ifnull +304 -> 1077
    //   776: aload_1
    //   777: iconst_0
    //   778: invokestatic 195	com/j256/ormlite/field/DatabaseFieldConfig:findSetMethod	(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    //   781: ifnull +296 -> 1077
    //   784: iconst_1
    //   785: istore 16
    //   787: aload 13
    //   789: iload 16
    //   791: invokevirtual 198	com/j256/ormlite/field/DatabaseFieldConfig:setUseGetSet	(Z)V
    //   794: aload 13
    //   796: areturn
    //   797: astore_0
    //   798: new 200	java/lang/StringBuilder
    //   801: dup
    //   802: ldc -54
    //   804: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   807: aload_1
    //   808: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   811: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   814: aload_0
    //   815: invokestatic 215	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   818: athrow
    //   819: aload 13
    //   821: aload_0
    //   822: invokevirtual 116	java/lang/Boolean:booleanValue	()Z
    //   825: invokevirtual 120	com/j256/ormlite/field/DatabaseFieldConfig:setCanBeNull	(Z)V
    //   828: goto -291 -> 537
    //   831: astore_0
    //   832: new 200	java/lang/StringBuilder
    //   835: dup
    //   836: ldc -39
    //   838: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   841: aload_1
    //   842: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   845: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   848: aload_0
    //   849: invokestatic 215	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   852: athrow
    //   853: aload 13
    //   855: iconst_1
    //   856: invokevirtual 220	com/j256/ormlite/field/DatabaseFieldConfig:setGeneratedId	(Z)V
    //   859: goto -306 -> 553
    //   862: astore_0
    //   863: new 200	java/lang/StringBuilder
    //   866: dup
    //   867: ldc -34
    //   869: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   872: aload_1
    //   873: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   876: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   879: aload_0
    //   880: invokestatic 215	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   883: athrow
    //   884: aload 13
    //   886: iconst_1
    //   887: invokevirtual 225	com/j256/ormlite/field/DatabaseFieldConfig:setForeign	(Z)V
    //   890: aload 5
    //   892: ifnull -204 -> 688
    //   895: aload 5
    //   897: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   900: ldc 77
    //   902: iconst_0
    //   903: anewarray 27	java/lang/Class
    //   906: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   909: aload 5
    //   911: iconst_0
    //   912: anewarray 4	java/lang/Object
    //   915: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   918: checkcast 35	java/lang/String
    //   921: astore_0
    //   922: aload_0
    //   923: ifnull +16 -> 939
    //   926: aload_0
    //   927: invokevirtual 91	java/lang/String:length	()I
    //   930: ifle +9 -> 939
    //   933: aload 13
    //   935: aload_0
    //   936: invokevirtual 94	com/j256/ormlite/field/DatabaseFieldConfig:setColumnName	(Ljava/lang/String;)V
    //   939: aload 5
    //   941: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   944: ldc 111
    //   946: iconst_0
    //   947: anewarray 27	java/lang/Class
    //   950: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   953: aload 5
    //   955: iconst_0
    //   956: anewarray 4	java/lang/Object
    //   959: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   962: checkcast 113	java/lang/Boolean
    //   965: astore_0
    //   966: aload_0
    //   967: ifnull +12 -> 979
    //   970: aload 13
    //   972: aload_0
    //   973: invokevirtual 116	java/lang/Boolean:booleanValue	()Z
    //   976: invokevirtual 120	com/j256/ormlite/field/DatabaseFieldConfig:setCanBeNull	(Z)V
    //   979: aload 5
    //   981: invokevirtual 75	java/lang/Object:getClass	()Ljava/lang/Class;
    //   984: ldc 122
    //   986: iconst_0
    //   987: anewarray 27	java/lang/Class
    //   990: invokevirtual 81	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   993: aload 5
    //   995: iconst_0
    //   996: anewarray 4	java/lang/Object
    //   999: invokevirtual 87	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   1002: checkcast 113	java/lang/Boolean
    //   1005: astore_0
    //   1006: aload_0
    //   1007: ifnull -319 -> 688
    //   1010: aload 13
    //   1012: aload_0
    //   1013: invokevirtual 116	java/lang/Boolean:booleanValue	()Z
    //   1016: invokevirtual 125	com/j256/ormlite/field/DatabaseFieldConfig:setUnique	(Z)V
    //   1019: goto -331 -> 688
    //   1022: astore_0
    //   1023: new 200	java/lang/StringBuilder
    //   1026: dup
    //   1027: ldc -34
    //   1029: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1032: aload_1
    //   1033: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1036: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1039: aload_0
    //   1040: invokestatic 215	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   1043: athrow
    //   1044: aload 13
    //   1046: getstatic 228	com/j256/ormlite/field/DataType:ENUM_INTEGER	Lcom/j256/ormlite/field/DataType;
    //   1049: invokevirtual 171	com/j256/ormlite/field/DatabaseFieldConfig:setDataType	(Lcom/j256/ormlite/field/DataType;)V
    //   1052: goto -311 -> 741
    //   1055: astore_0
    //   1056: new 200	java/lang/StringBuilder
    //   1059: dup
    //   1060: ldc -26
    //   1062: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1065: aload_1
    //   1066: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1069: invokevirtual 209	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1072: aload_0
    //   1073: invokestatic 215	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   1076: athrow
    //   1077: iconst_0
    //   1078: istore 16
    //   1080: goto -293 -> 787
    //   1083: aload_3
    //   1084: astore_2
    //   1085: goto -883 -> 202
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1088	0	paramDatabaseType	com.j256.ormlite.db.DatabaseType
    //   0	1088	1	paramField	java.lang.reflect.Field
    //   52	1033	2	localObject1	Object
    //   25	1059	3	localObject2	Object
    //   22	686	4	localObject3	Object
    //   19	975	5	localObject4	Object
    //   16	543	6	localObject5	Object
    //   13	541	7	localObject6	Object
    //   10	533	8	localObject7	Object
    //   7	531	9	localObject8	Object
    //   4	511	10	localObject9	Object
    //   1	469	11	localObject10	Object
    //   30	247	12	localObject11	Object
    //   59	986	13	localObject12	Object
    //   38	169	14	i	int
    //   35	10	15	j	int
    //   785	294	16	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   293	320	797	java/lang/Exception
    //   324	337	797	java/lang/Exception
    //   337	364	797	java/lang/Exception
    //   368	381	797	java/lang/Exception
    //   381	442	797	java/lang/Exception
    //   446	455	797	java/lang/Exception
    //   455	482	797	java/lang/Exception
    //   486	495	797	java/lang/Exception
    //   500	527	831	java/lang/Exception
    //   531	537	831	java/lang/Exception
    //   819	828	831	java/lang/Exception
    //   598	625	862	java/lang/Exception
    //   629	642	862	java/lang/Exception
    //   642	666	862	java/lang/Exception
    //   670	688	862	java/lang/Exception
    //   895	922	1022	java/lang/Exception
    //   926	939	1022	java/lang/Exception
    //   939	966	1022	java/lang/Exception
    //   970	979	1022	java/lang/Exception
    //   979	1006	1022	java/lang/Exception
    //   1010	1019	1022	java/lang/Exception
    //   693	717	1055	java/lang/Exception
    //   721	741	1055	java/lang/Exception
    //   1044	1052	1055	java/lang/Exception
  }
  
  public static String getEntityName(Class<?> paramClass)
  {
    Annotation[] arrayOfAnnotation = paramClass.getAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    Object localObject = null;
    if (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (!localAnnotation.annotationType().getName().equals("javax.persistence.Entity")) {
        break label132;
      }
      localObject = localAnnotation;
    }
    label132:
    for (;;)
    {
      i += 1;
      break;
      if (localObject == null) {
        paramClass = null;
      }
      for (;;)
      {
        return paramClass;
        try
        {
          localObject = (String)localObject.getClass().getMethod("name", new Class[0]).invoke(localObject, new Object[0]);
          if (localObject != null)
          {
            i = ((String)localObject).length();
            paramClass = (Class<?>)localObject;
            if (i > 0) {
              break;
            }
          }
          else
          {
            return null;
          }
        }
        catch (Exception localException)
        {
          throw new IllegalStateException("Could not get entity name from class " + paramClass, localException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.misc.JavaxPersistence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */