package org.codehaus.jackson.map.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class ISO8601Utils
{
  private static final String GMT_ID = "GMT";
  private static final TimeZone TIMEZONE_GMT = TimeZone.getTimeZone("GMT");
  
  private static void checkOffset(String paramString, int paramInt, char paramChar)
    throws IndexOutOfBoundsException
  {
    char c = paramString.charAt(paramInt);
    if (c != paramChar) {
      throw new IndexOutOfBoundsException("Expected '" + paramChar + "' character but found '" + c + "'");
    }
  }
  
  public static String format(Date paramDate)
  {
    return format(paramDate, false, TIMEZONE_GMT);
  }
  
  public static String format(Date paramDate, boolean paramBoolean)
  {
    return format(paramDate, paramBoolean, TIMEZONE_GMT);
  }
  
  public static String format(Date paramDate, boolean paramBoolean, TimeZone paramTimeZone)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(paramTimeZone, Locale.US);
    localGregorianCalendar.setTime(paramDate);
    int k = "yyyy-MM-ddThh:mm:ss".length();
    int i;
    int j;
    label51:
    char c;
    if (paramBoolean)
    {
      i = ".sss".length();
      if (paramTimeZone.getRawOffset() != 0) {
        break label320;
      }
      j = "Z".length();
      paramDate = new StringBuilder(k + i + j);
      padInt(paramDate, localGregorianCalendar.get(1), "yyyy".length());
      paramDate.append('-');
      padInt(paramDate, localGregorianCalendar.get(2) + 1, "MM".length());
      paramDate.append('-');
      padInt(paramDate, localGregorianCalendar.get(5), "dd".length());
      paramDate.append('T');
      padInt(paramDate, localGregorianCalendar.get(11), "hh".length());
      paramDate.append(':');
      padInt(paramDate, localGregorianCalendar.get(12), "mm".length());
      paramDate.append(':');
      padInt(paramDate, localGregorianCalendar.get(13), "ss".length());
      if (paramBoolean)
      {
        paramDate.append('.');
        padInt(paramDate, localGregorianCalendar.get(14), "sss".length());
      }
      i = paramTimeZone.getOffset(localGregorianCalendar.getTimeInMillis());
      if (i == 0) {
        break label336;
      }
      j = Math.abs(i / 60000 / 60);
      k = Math.abs(i / 60000 % 60);
      if (i >= 0) {
        break label330;
      }
      c = '-';
      label274:
      paramDate.append(c);
      padInt(paramDate, j, "hh".length());
      paramDate.append(':');
      padInt(paramDate, k, "mm".length());
    }
    for (;;)
    {
      return paramDate.toString();
      i = 0;
      break;
      label320:
      j = "+hh:mm".length();
      break label51;
      label330:
      c = '+';
      break label274;
      label336:
      paramDate.append('Z');
    }
  }
  
  private static void padInt(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    String str = Integer.toString(paramInt1);
    paramInt1 = paramInt2 - str.length();
    while (paramInt1 > 0)
    {
      paramStringBuilder.append('0');
      paramInt1 -= 1;
    }
    paramStringBuilder.append(str);
  }
  
  /* Error */
  public static Date parse(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: iconst_4
    //   2: iadd
    //   3: istore 5
    //   5: iload 5
    //   7: istore 4
    //   9: iload 5
    //   11: istore 4
    //   13: iload 5
    //   15: istore 4
    //   17: aload_0
    //   18: iconst_0
    //   19: iload 5
    //   21: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   24: istore 7
    //   26: iload 5
    //   28: istore 4
    //   30: iload 5
    //   32: istore 4
    //   34: iload 5
    //   36: istore 4
    //   38: aload_0
    //   39: iload 5
    //   41: bipush 45
    //   43: invokestatic 152	org/codehaus/jackson/map/util/ISO8601Utils:checkOffset	(Ljava/lang/String;IC)V
    //   46: iload 5
    //   48: iconst_1
    //   49: iadd
    //   50: istore 6
    //   52: iload 6
    //   54: iconst_2
    //   55: iadd
    //   56: istore 5
    //   58: iload 5
    //   60: istore 4
    //   62: iload 5
    //   64: istore 4
    //   66: iload 5
    //   68: istore 4
    //   70: aload_0
    //   71: iload 6
    //   73: iload 5
    //   75: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   78: istore 8
    //   80: iload 5
    //   82: istore 4
    //   84: iload 5
    //   86: istore 4
    //   88: iload 5
    //   90: istore 4
    //   92: aload_0
    //   93: iload 5
    //   95: bipush 45
    //   97: invokestatic 152	org/codehaus/jackson/map/util/ISO8601Utils:checkOffset	(Ljava/lang/String;IC)V
    //   100: iload 5
    //   102: iconst_1
    //   103: iadd
    //   104: istore 6
    //   106: iload 6
    //   108: iconst_2
    //   109: iadd
    //   110: istore 5
    //   112: iload 5
    //   114: istore 4
    //   116: iload 5
    //   118: istore 4
    //   120: iload 5
    //   122: istore 4
    //   124: aload_0
    //   125: iload 6
    //   127: iload 5
    //   129: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   132: istore 9
    //   134: iload 5
    //   136: istore 4
    //   138: iload 5
    //   140: istore 4
    //   142: iload 5
    //   144: istore 4
    //   146: aload_0
    //   147: iload 5
    //   149: bipush 84
    //   151: invokestatic 152	org/codehaus/jackson/map/util/ISO8601Utils:checkOffset	(Ljava/lang/String;IC)V
    //   154: iload 5
    //   156: iconst_1
    //   157: iadd
    //   158: istore 6
    //   160: iload 6
    //   162: iconst_2
    //   163: iadd
    //   164: istore 5
    //   166: iload 5
    //   168: istore 4
    //   170: iload 5
    //   172: istore 4
    //   174: iload 5
    //   176: istore 4
    //   178: aload_0
    //   179: iload 6
    //   181: iload 5
    //   183: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   186: istore 10
    //   188: iload 5
    //   190: istore 4
    //   192: iload 5
    //   194: istore 4
    //   196: iload 5
    //   198: istore 4
    //   200: aload_0
    //   201: iload 5
    //   203: bipush 58
    //   205: invokestatic 152	org/codehaus/jackson/map/util/ISO8601Utils:checkOffset	(Ljava/lang/String;IC)V
    //   208: iload 5
    //   210: iconst_1
    //   211: iadd
    //   212: istore 6
    //   214: iload 6
    //   216: iconst_2
    //   217: iadd
    //   218: istore 5
    //   220: iload 5
    //   222: istore 4
    //   224: iload 5
    //   226: istore 4
    //   228: iload 5
    //   230: istore 4
    //   232: aload_0
    //   233: iload 6
    //   235: iload 5
    //   237: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   240: istore 11
    //   242: iload 5
    //   244: istore 4
    //   246: iload 5
    //   248: istore 4
    //   250: iload 5
    //   252: istore 4
    //   254: aload_0
    //   255: iload 5
    //   257: bipush 58
    //   259: invokestatic 152	org/codehaus/jackson/map/util/ISO8601Utils:checkOffset	(Ljava/lang/String;IC)V
    //   262: iload 5
    //   264: iconst_1
    //   265: iadd
    //   266: istore 6
    //   268: iload 6
    //   270: iconst_2
    //   271: iadd
    //   272: istore 5
    //   274: iload 5
    //   276: istore 4
    //   278: iload 5
    //   280: istore 4
    //   282: iload 5
    //   284: istore 4
    //   286: aload_0
    //   287: iload 6
    //   289: iload 5
    //   291: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   294: istore 12
    //   296: iconst_0
    //   297: istore 6
    //   299: iload 5
    //   301: istore 4
    //   303: iload 5
    //   305: istore 4
    //   307: iload 5
    //   309: istore 4
    //   311: aload_0
    //   312: iload 5
    //   314: invokevirtual 34	java/lang/String:charAt	(I)C
    //   317: bipush 46
    //   319: if_icmpne +339 -> 658
    //   322: iload 5
    //   324: istore 4
    //   326: iload 5
    //   328: istore 4
    //   330: iload 5
    //   332: istore 4
    //   334: aload_0
    //   335: iload 5
    //   337: bipush 46
    //   339: invokestatic 152	org/codehaus/jackson/map/util/ISO8601Utils:checkOffset	(Ljava/lang/String;IC)V
    //   342: iload 5
    //   344: iconst_1
    //   345: iadd
    //   346: istore 6
    //   348: iload 6
    //   350: iconst_3
    //   351: iadd
    //   352: istore 5
    //   354: iload 5
    //   356: istore 4
    //   358: iload 5
    //   360: istore 4
    //   362: iload 5
    //   364: istore 4
    //   366: aload_0
    //   367: iload 6
    //   369: iload 5
    //   371: invokestatic 150	org/codehaus/jackson/map/util/ISO8601Utils:parseInt	(Ljava/lang/String;II)I
    //   374: istore 4
    //   376: aload_0
    //   377: iload 5
    //   379: invokevirtual 34	java/lang/String:charAt	(I)C
    //   382: istore_1
    //   383: iload_1
    //   384: bipush 43
    //   386: if_icmpeq +9 -> 395
    //   389: iload_1
    //   390: bipush 45
    //   392: if_icmpne +81 -> 473
    //   395: new 36	java/lang/StringBuilder
    //   398: dup
    //   399: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   402: ldc 8
    //   404: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: aload_0
    //   408: iload 5
    //   410: invokevirtual 155	java/lang/String:substring	(I)Ljava/lang/String;
    //   413: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: astore_2
    //   420: aload_2
    //   421: invokestatic 18	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   424: astore_3
    //   425: aload_3
    //   426: invokevirtual 158	java/util/TimeZone:getID	()Ljava/lang/String;
    //   429: aload_2
    //   430: invokevirtual 162	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   433: ifne +108 -> 541
    //   436: new 28	java/lang/IndexOutOfBoundsException
    //   439: dup
    //   440: invokespecial 163	java/lang/IndexOutOfBoundsException:<init>	()V
    //   443: athrow
    //   444: astore_2
    //   445: new 146	java/lang/IllegalArgumentException
    //   448: dup
    //   449: new 36	java/lang/StringBuilder
    //   452: dup
    //   453: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   456: ldc -91
    //   458: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: aload_0
    //   462: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   468: aload_2
    //   469: invokespecial 168	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   472: athrow
    //   473: iload_1
    //   474: bipush 90
    //   476: if_icmpne +9 -> 485
    //   479: ldc 8
    //   481: astore_2
    //   482: goto -62 -> 420
    //   485: new 28	java/lang/IndexOutOfBoundsException
    //   488: dup
    //   489: new 36	java/lang/StringBuilder
    //   492: dup
    //   493: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   496: ldc -86
    //   498: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: iload_1
    //   502: invokevirtual 46	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   505: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   508: invokespecial 57	java/lang/IndexOutOfBoundsException:<init>	(Ljava/lang/String;)V
    //   511: athrow
    //   512: astore_2
    //   513: new 146	java/lang/IllegalArgumentException
    //   516: dup
    //   517: new 36	java/lang/StringBuilder
    //   520: dup
    //   521: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   524: ldc -91
    //   526: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   529: aload_0
    //   530: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   536: aload_2
    //   537: invokespecial 168	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   540: athrow
    //   541: new 66	java/util/GregorianCalendar
    //   544: dup
    //   545: aload_3
    //   546: invokespecial 173	java/util/GregorianCalendar:<init>	(Ljava/util/TimeZone;)V
    //   549: astore_2
    //   550: aload_2
    //   551: iconst_0
    //   552: invokevirtual 177	java/util/Calendar:setLenient	(Z)V
    //   555: aload_2
    //   556: iconst_1
    //   557: iload 7
    //   559: invokevirtual 181	java/util/Calendar:set	(II)V
    //   562: aload_2
    //   563: iconst_2
    //   564: iload 8
    //   566: iconst_1
    //   567: isub
    //   568: invokevirtual 181	java/util/Calendar:set	(II)V
    //   571: aload_2
    //   572: iconst_5
    //   573: iload 9
    //   575: invokevirtual 181	java/util/Calendar:set	(II)V
    //   578: aload_2
    //   579: bipush 11
    //   581: iload 10
    //   583: invokevirtual 181	java/util/Calendar:set	(II)V
    //   586: aload_2
    //   587: bipush 12
    //   589: iload 11
    //   591: invokevirtual 181	java/util/Calendar:set	(II)V
    //   594: aload_2
    //   595: bipush 13
    //   597: iload 12
    //   599: invokevirtual 181	java/util/Calendar:set	(II)V
    //   602: aload_2
    //   603: bipush 14
    //   605: iload 4
    //   607: invokevirtual 181	java/util/Calendar:set	(II)V
    //   610: aload_2
    //   611: invokevirtual 185	java/util/Calendar:getTime	()Ljava/util/Date;
    //   614: astore_2
    //   615: aload_2
    //   616: areturn
    //   617: astore_2
    //   618: new 146	java/lang/IllegalArgumentException
    //   621: dup
    //   622: new 36	java/lang/StringBuilder
    //   625: dup
    //   626: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   629: ldc -91
    //   631: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   634: aload_0
    //   635: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   638: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   641: aload_2
    //   642: invokespecial 168	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   645: athrow
    //   646: astore_2
    //   647: goto -29 -> 618
    //   650: astore_2
    //   651: goto -138 -> 513
    //   654: astore_2
    //   655: goto -210 -> 445
    //   658: iload 6
    //   660: istore 4
    //   662: goto -286 -> 376
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	665	0	paramString	String
    //   382	120	1	c	char
    //   419	11	2	str1	String
    //   444	25	2	localIndexOutOfBoundsException1	IndexOutOfBoundsException
    //   481	1	2	str2	String
    //   512	25	2	localNumberFormatException1	NumberFormatException
    //   549	67	2	localObject	Object
    //   617	25	2	localIllegalArgumentException1	IllegalArgumentException
    //   646	1	2	localIllegalArgumentException2	IllegalArgumentException
    //   650	1	2	localNumberFormatException2	NumberFormatException
    //   654	1	2	localIndexOutOfBoundsException2	IndexOutOfBoundsException
    //   424	122	3	localTimeZone	TimeZone
    //   7	654	4	i	int
    //   3	406	5	j	int
    //   50	609	6	k	int
    //   24	534	7	m	int
    //   78	490	8	n	int
    //   132	442	9	i1	int
    //   186	396	10	i2	int
    //   240	350	11	i3	int
    //   294	304	12	i4	int
    // Exception table:
    //   from	to	target	type
    //   376	383	444	java/lang/IndexOutOfBoundsException
    //   395	420	444	java/lang/IndexOutOfBoundsException
    //   420	444	444	java/lang/IndexOutOfBoundsException
    //   485	512	444	java/lang/IndexOutOfBoundsException
    //   541	615	444	java/lang/IndexOutOfBoundsException
    //   376	383	512	java/lang/NumberFormatException
    //   395	420	512	java/lang/NumberFormatException
    //   420	444	512	java/lang/NumberFormatException
    //   485	512	512	java/lang/NumberFormatException
    //   541	615	512	java/lang/NumberFormatException
    //   17	26	617	java/lang/IllegalArgumentException
    //   38	46	617	java/lang/IllegalArgumentException
    //   70	80	617	java/lang/IllegalArgumentException
    //   92	100	617	java/lang/IllegalArgumentException
    //   124	134	617	java/lang/IllegalArgumentException
    //   146	154	617	java/lang/IllegalArgumentException
    //   178	188	617	java/lang/IllegalArgumentException
    //   200	208	617	java/lang/IllegalArgumentException
    //   232	242	617	java/lang/IllegalArgumentException
    //   254	262	617	java/lang/IllegalArgumentException
    //   286	296	617	java/lang/IllegalArgumentException
    //   311	322	617	java/lang/IllegalArgumentException
    //   334	342	617	java/lang/IllegalArgumentException
    //   366	376	617	java/lang/IllegalArgumentException
    //   376	383	646	java/lang/IllegalArgumentException
    //   395	420	646	java/lang/IllegalArgumentException
    //   420	444	646	java/lang/IllegalArgumentException
    //   485	512	646	java/lang/IllegalArgumentException
    //   541	615	646	java/lang/IllegalArgumentException
    //   17	26	650	java/lang/NumberFormatException
    //   38	46	650	java/lang/NumberFormatException
    //   70	80	650	java/lang/NumberFormatException
    //   92	100	650	java/lang/NumberFormatException
    //   124	134	650	java/lang/NumberFormatException
    //   146	154	650	java/lang/NumberFormatException
    //   178	188	650	java/lang/NumberFormatException
    //   200	208	650	java/lang/NumberFormatException
    //   232	242	650	java/lang/NumberFormatException
    //   254	262	650	java/lang/NumberFormatException
    //   286	296	650	java/lang/NumberFormatException
    //   311	322	650	java/lang/NumberFormatException
    //   334	342	650	java/lang/NumberFormatException
    //   366	376	650	java/lang/NumberFormatException
    //   17	26	654	java/lang/IndexOutOfBoundsException
    //   38	46	654	java/lang/IndexOutOfBoundsException
    //   70	80	654	java/lang/IndexOutOfBoundsException
    //   92	100	654	java/lang/IndexOutOfBoundsException
    //   124	134	654	java/lang/IndexOutOfBoundsException
    //   146	154	654	java/lang/IndexOutOfBoundsException
    //   178	188	654	java/lang/IndexOutOfBoundsException
    //   200	208	654	java/lang/IndexOutOfBoundsException
    //   232	242	654	java/lang/IndexOutOfBoundsException
    //   254	262	654	java/lang/IndexOutOfBoundsException
    //   286	296	654	java/lang/IndexOutOfBoundsException
    //   311	322	654	java/lang/IndexOutOfBoundsException
    //   334	342	654	java/lang/IndexOutOfBoundsException
    //   366	376	654	java/lang/IndexOutOfBoundsException
  }
  
  private static int parseInt(String paramString, int paramInt1, int paramInt2)
    throws NumberFormatException
  {
    if ((paramInt1 < 0) || (paramInt2 > paramString.length()) || (paramInt1 > paramInt2)) {
      throw new NumberFormatException(paramString);
    }
    int i = 0;
    int j;
    if (paramInt1 < paramInt2)
    {
      j = paramInt1 + 1;
      paramInt1 = Character.digit(paramString.charAt(paramInt1), 10);
      if (paramInt1 < 0) {
        throw new NumberFormatException("Invalid number: " + paramString);
      }
      i = -paramInt1;
      paramInt1 = j;
    }
    for (;;)
    {
      if (paramInt1 < paramInt2)
      {
        j = Character.digit(paramString.charAt(paramInt1), 10);
        if (j < 0) {
          throw new NumberFormatException("Invalid number: " + paramString);
        }
        i = i * 10 - j;
        paramInt1 += 1;
      }
      else
      {
        return -i;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.ISO8601Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */