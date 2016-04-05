package com.millennialmedia.android;

final class MMConversionTracker
{
  private static final String KEY_REFERRER = "installReferrer";
  
  /* Error */
  protected static void trackConversion(android.content.Context paramContext, String paramString, MMRequest paramMMRequest)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: ldc 2
    //   5: monitorenter
    //   6: aload_0
    //   7: ifnull +18 -> 25
    //   10: aload_1
    //   11: ifnull +14 -> 25
    //   14: aload_1
    //   15: invokevirtual 25	java/lang/String:length	()I
    //   18: istore 7
    //   20: iload 7
    //   22: ifne +7 -> 29
    //   25: ldc 2
    //   27: monitorexit
    //   28: return
    //   29: aload_0
    //   30: ldc 27
    //   32: iconst_0
    //   33: invokevirtual 33	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   36: astore 4
    //   38: aload 4
    //   40: new 35	java/lang/StringBuilder
    //   43: dup
    //   44: ldc 37
    //   46: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   49: aload_1
    //   50: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: iconst_1
    //   57: invokeinterface 54 3 0
    //   62: istore 12
    //   64: aload 4
    //   66: ldc 8
    //   68: aconst_null
    //   69: invokeinterface 58 3 0
    //   74: astore 5
    //   76: new 60	java/util/TreeMap
    //   79: dup
    //   80: invokespecial 61	java/util/TreeMap:<init>	()V
    //   83: astore_3
    //   84: aload_2
    //   85: ifnull +12 -> 97
    //   88: aload_2
    //   89: aload_3
    //   90: invokevirtual 67	com/millennialmedia/android/MMRequest:getUrlParams	(Ljava/util/Map;)V
    //   93: aload_3
    //   94: invokestatic 70	com/millennialmedia/android/MMRequest:insertLocation	(Ljava/util/Map;)V
    //   97: aload 5
    //   99: ifnull +56 -> 155
    //   102: aload 5
    //   104: ldc 72
    //   106: invokevirtual 76	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   109: astore_2
    //   110: aload_2
    //   111: arraylength
    //   112: istore 7
    //   114: iload 6
    //   116: iload 7
    //   118: if_icmpge +37 -> 155
    //   121: aload_2
    //   122: iload 6
    //   124: aaload
    //   125: ldc 78
    //   127: invokevirtual 76	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   130: astore 5
    //   132: aload 5
    //   134: arraylength
    //   135: iconst_2
    //   136: if_icmplt +225 -> 361
    //   139: aload_3
    //   140: aload 5
    //   142: iconst_0
    //   143: aaload
    //   144: aload 5
    //   146: iconst_1
    //   147: aaload
    //   148: invokevirtual 82	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   151: pop
    //   152: goto +209 -> 361
    //   155: iload 12
    //   157: ifeq +42 -> 199
    //   160: aload 4
    //   162: invokeinterface 86 1 0
    //   167: astore_2
    //   168: aload_2
    //   169: new 35	java/lang/StringBuilder
    //   172: dup
    //   173: ldc 37
    //   175: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: aload_1
    //   179: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: iconst_0
    //   186: invokeinterface 92 3 0
    //   191: pop
    //   192: aload_2
    //   193: invokeinterface 96 1 0
    //   198: pop
    //   199: aload_0
    //   200: invokevirtual 100	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   203: aload_0
    //   204: invokevirtual 103	android/content/Context:getPackageName	()Ljava/lang/String;
    //   207: iconst_0
    //   208: invokevirtual 109	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   211: astore_2
    //   212: aload_2
    //   213: invokevirtual 113	java/lang/Object:getClass	()Ljava/lang/Class;
    //   216: ldc 115
    //   218: invokevirtual 121	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   221: aload_2
    //   222: invokevirtual 127	java/lang/reflect/Field:getLong	(Ljava/lang/Object;)J
    //   225: lstore 8
    //   227: lload 8
    //   229: lstore 10
    //   231: lload 8
    //   233: lconst_0
    //   234: lcmp
    //   235: ifle +32 -> 267
    //   238: new 129	java/util/GregorianCalendar
    //   241: dup
    //   242: invokespecial 130	java/util/GregorianCalendar:<init>	()V
    //   245: astore_2
    //   246: aload_2
    //   247: lload 8
    //   249: invokevirtual 134	java/util/GregorianCalendar:setTimeInMillis	(J)V
    //   252: aload_2
    //   253: ldc -120
    //   255: invokestatic 142	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   258: invokevirtual 146	java/util/GregorianCalendar:setTimeZone	(Ljava/util/TimeZone;)V
    //   261: aload_2
    //   262: invokevirtual 150	java/util/GregorianCalendar:getTimeInMillis	()J
    //   265: lstore 10
    //   267: aload_0
    //   268: invokestatic 156	com/millennialmedia/android/MMSDK:isConnected	(Landroid/content/Context;)Z
    //   271: ifeq +82 -> 353
    //   274: aload_3
    //   275: ldc -98
    //   277: new 35	java/lang/StringBuilder
    //   280: dup
    //   281: ldc -96
    //   283: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   286: getstatic 165	android/os/Build:MODEL	Ljava/lang/String;
    //   289: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: invokevirtual 82	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   298: pop
    //   299: aload_3
    //   300: ldc -89
    //   302: getstatic 171	com/millennialmedia/android/HandShake:apid	Ljava/lang/String;
    //   305: invokevirtual 82	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   308: pop
    //   309: aload_0
    //   310: aload_3
    //   311: invokestatic 175	com/millennialmedia/android/MMSDK:insertUrlCommonValues	(Landroid/content/Context;Ljava/util/Map;)V
    //   314: new 177	com/millennialmedia/android/MMConversionTracker$1
    //   317: dup
    //   318: aload_1
    //   319: iload 12
    //   321: lload 10
    //   323: aload_3
    //   324: invokespecial 180	com/millennialmedia/android/MMConversionTracker$1:<init>	(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    //   327: invokestatic 186	com/millennialmedia/android/Utils$ThreadUtils:execute	(Ljava/lang/Runnable;)V
    //   330: goto -305 -> 25
    //   333: astore_0
    //   334: ldc 2
    //   336: monitorexit
    //   337: aload_0
    //   338: athrow
    //   339: astore_2
    //   340: lconst_0
    //   341: lstore 8
    //   343: goto -116 -> 227
    //   346: astore_2
    //   347: lconst_0
    //   348: lstore 8
    //   350: goto -123 -> 227
    //   353: ldc -68
    //   355: invokestatic 193	com/millennialmedia/android/MMSDK$Log:w	(Ljava/lang/String;)V
    //   358: goto -333 -> 25
    //   361: iload 6
    //   363: iconst_1
    //   364: iadd
    //   365: istore 6
    //   367: goto -253 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	370	0	paramContext	android.content.Context
    //   0	370	1	paramString	String
    //   0	370	2	paramMMRequest	MMRequest
    //   83	241	3	localTreeMap	java.util.TreeMap
    //   36	125	4	localSharedPreferences	android.content.SharedPreferences
    //   74	71	5	localObject	Object
    //   1	365	6	i	int
    //   18	101	7	j	int
    //   225	124	8	l1	long
    //   229	93	10	l2	long
    //   62	258	12	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   14	20	333	finally
    //   29	84	333	finally
    //   88	97	333	finally
    //   102	114	333	finally
    //   121	152	333	finally
    //   160	199	333	finally
    //   199	212	333	finally
    //   212	227	333	finally
    //   238	267	333	finally
    //   267	330	333	finally
    //   353	358	333	finally
    //   212	227	339	java/lang/Exception
    //   199	212	346	android/content/pm/PackageManager$NameNotFoundException
    //   212	227	346	android/content/pm/PackageManager$NameNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMConversionTracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */