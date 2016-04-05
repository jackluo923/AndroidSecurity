package com.actionbarsherlock.widget;

final class ActivityChooserModel$HistoryLoader
  implements Runnable
{
  private ActivityChooserModel$HistoryLoader(ActivityChooserModel paramActivityChooserModel) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   4: invokestatic 32	com/actionbarsherlock/widget/ActivityChooserModel:access$400	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/content/Context;
    //   7: aload_0
    //   8: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   11: invokestatic 36	com/actionbarsherlock/widget/ActivityChooserModel:access$300	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    //   14: invokevirtual 42	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   17: astore_1
    //   18: invokestatic 48	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   21: astore_2
    //   22: aload_2
    //   23: aload_1
    //   24: aconst_null
    //   25: invokeinterface 54 3 0
    //   30: iconst_0
    //   31: istore 5
    //   33: iload 5
    //   35: iconst_1
    //   36: if_icmpeq +20 -> 56
    //   39: iload 5
    //   41: iconst_2
    //   42: if_icmpeq +14 -> 56
    //   45: aload_2
    //   46: invokeinterface 58 1 0
    //   51: istore 5
    //   53: goto -20 -> 33
    //   56: ldc 60
    //   58: aload_2
    //   59: invokeinterface 64 1 0
    //   64: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   67: ifne +53 -> 120
    //   70: new 24	org/xmlpull/v1/XmlPullParserException
    //   73: dup
    //   74: ldc 72
    //   76: invokespecial 75	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   79: athrow
    //   80: astore_2
    //   81: invokestatic 78	com/actionbarsherlock/widget/ActivityChooserModel:access$1100	()Ljava/lang/String;
    //   84: new 80	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 82
    //   90: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_0
    //   94: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   97: invokestatic 36	com/actionbarsherlock/widget/ActivityChooserModel:access$300	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    //   100: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: aload_2
    //   107: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   110: pop
    //   111: aload_1
    //   112: ifnull +7 -> 119
    //   115: aload_1
    //   116: invokevirtual 101	java/io/FileInputStream:close	()V
    //   119: return
    //   120: new 103	java/util/ArrayList
    //   123: dup
    //   124: invokespecial 104	java/util/ArrayList:<init>	()V
    //   127: astore_3
    //   128: aload_2
    //   129: invokeinterface 58 1 0
    //   134: istore 5
    //   136: iload 5
    //   138: iconst_1
    //   139: if_icmpeq +142 -> 281
    //   142: iload 5
    //   144: iconst_3
    //   145: if_icmpeq -17 -> 128
    //   148: iload 5
    //   150: iconst_4
    //   151: if_icmpeq -23 -> 128
    //   154: ldc 106
    //   156: aload_2
    //   157: invokeinterface 64 1 0
    //   162: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   165: ifne +55 -> 220
    //   168: new 24	org/xmlpull/v1/XmlPullParserException
    //   171: dup
    //   172: ldc 108
    //   174: invokespecial 75	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   177: athrow
    //   178: astore_2
    //   179: invokestatic 78	com/actionbarsherlock/widget/ActivityChooserModel:access$1100	()Ljava/lang/String;
    //   182: new 80	java/lang/StringBuilder
    //   185: dup
    //   186: ldc 82
    //   188: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: aload_0
    //   192: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   195: invokestatic 36	com/actionbarsherlock/widget/ActivityChooserModel:access$300	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    //   198: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: aload_2
    //   205: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   208: pop
    //   209: aload_1
    //   210: ifnull -91 -> 119
    //   213: aload_1
    //   214: invokevirtual 101	java/io/FileInputStream:close	()V
    //   217: return
    //   218: astore_1
    //   219: return
    //   220: aload_3
    //   221: new 110	com/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord
    //   224: dup
    //   225: aload_2
    //   226: aconst_null
    //   227: ldc 112
    //   229: invokeinterface 116 3 0
    //   234: aload_2
    //   235: aconst_null
    //   236: ldc 118
    //   238: invokeinterface 116 3 0
    //   243: invokestatic 124	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   246: aload_2
    //   247: aconst_null
    //   248: ldc 126
    //   250: invokeinterface 116 3 0
    //   255: invokestatic 132	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   258: invokespecial 135	com/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord:<init>	(Ljava/lang/String;JF)V
    //   261: invokeinterface 140 2 0
    //   266: pop
    //   267: goto -139 -> 128
    //   270: astore_2
    //   271: aload_1
    //   272: ifnull +7 -> 279
    //   275: aload_1
    //   276: invokevirtual 101	java/io/FileInputStream:close	()V
    //   279: aload_2
    //   280: athrow
    //   281: aload_0
    //   282: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   285: invokestatic 144	com/actionbarsherlock/widget/ActivityChooserModel:access$500	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/Object;
    //   288: astore_2
    //   289: aload_2
    //   290: monitorenter
    //   291: new 146	java/util/LinkedHashSet
    //   294: dup
    //   295: aload_3
    //   296: invokespecial 149	java/util/LinkedHashSet:<init>	(Ljava/util/Collection;)V
    //   299: astore_3
    //   300: aload_0
    //   301: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   304: invokestatic 153	com/actionbarsherlock/widget/ActivityChooserModel:access$600	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/util/List;
    //   307: astore 4
    //   309: aload 4
    //   311: invokeinterface 156 1 0
    //   316: iconst_1
    //   317: isub
    //   318: istore 5
    //   320: iload 5
    //   322: iflt +31 -> 353
    //   325: aload_3
    //   326: aload 4
    //   328: iload 5
    //   330: invokeinterface 160 2 0
    //   335: checkcast 110	com/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord
    //   338: invokeinterface 163 2 0
    //   343: pop
    //   344: iload 5
    //   346: iconst_1
    //   347: isub
    //   348: istore 5
    //   350: goto -30 -> 320
    //   353: aload 4
    //   355: invokeinterface 156 1 0
    //   360: aload_3
    //   361: invokeinterface 164 1 0
    //   366: if_icmpne +16 -> 382
    //   369: aload_2
    //   370: monitorexit
    //   371: aload_1
    //   372: ifnull -253 -> 119
    //   375: aload_1
    //   376: invokevirtual 101	java/io/FileInputStream:close	()V
    //   379: return
    //   380: astore_1
    //   381: return
    //   382: aload 4
    //   384: invokeinterface 167 1 0
    //   389: aload 4
    //   391: aload_3
    //   392: invokeinterface 171 2 0
    //   397: pop
    //   398: aload_0
    //   399: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   402: iconst_1
    //   403: invokestatic 175	com/actionbarsherlock/widget/ActivityChooserModel:access$702	(Lcom/actionbarsherlock/widget/ActivityChooserModel;Z)Z
    //   406: pop
    //   407: aload_0
    //   408: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   411: invokestatic 179	com/actionbarsherlock/widget/ActivityChooserModel:access$1000	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/os/Handler;
    //   414: new 181	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1
    //   417: dup
    //   418: aload_0
    //   419: invokespecial 184	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1:<init>	(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    //   422: invokevirtual 190	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   425: pop
    //   426: aload_2
    //   427: monitorexit
    //   428: aload_1
    //   429: ifnull -310 -> 119
    //   432: aload_1
    //   433: invokevirtual 101	java/io/FileInputStream:close	()V
    //   436: return
    //   437: astore_1
    //   438: return
    //   439: astore_3
    //   440: aload_2
    //   441: monitorexit
    //   442: aload_3
    //   443: athrow
    //   444: astore_1
    //   445: return
    //   446: astore_1
    //   447: goto -168 -> 279
    //   450: astore_1
    //   451: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	452	0	this	HistoryLoader
    //   17	197	1	localFileInputStream	java.io.FileInputStream
    //   218	158	1	localIOException1	java.io.IOException
    //   380	53	1	localIOException2	java.io.IOException
    //   437	1	1	localIOException3	java.io.IOException
    //   444	1	1	localIOException4	java.io.IOException
    //   446	1	1	localIOException5	java.io.IOException
    //   450	1	1	localFileNotFoundException	java.io.FileNotFoundException
    //   21	38	2	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   80	77	2	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   178	69	2	localIOException6	java.io.IOException
    //   270	10	2	localObject1	Object
    //   127	265	3	localObject3	Object
    //   439	4	3	localObject4	Object
    //   307	83	4	localList	java.util.List
    //   31	318	5	i	int
    // Exception table:
    //   from	to	target	type
    //   18	30	80	org/xmlpull/v1/XmlPullParserException
    //   45	53	80	org/xmlpull/v1/XmlPullParserException
    //   56	80	80	org/xmlpull/v1/XmlPullParserException
    //   120	128	80	org/xmlpull/v1/XmlPullParserException
    //   128	136	80	org/xmlpull/v1/XmlPullParserException
    //   154	178	80	org/xmlpull/v1/XmlPullParserException
    //   220	267	80	org/xmlpull/v1/XmlPullParserException
    //   281	291	80	org/xmlpull/v1/XmlPullParserException
    //   440	444	80	org/xmlpull/v1/XmlPullParserException
    //   18	30	178	java/io/IOException
    //   45	53	178	java/io/IOException
    //   56	80	178	java/io/IOException
    //   120	128	178	java/io/IOException
    //   128	136	178	java/io/IOException
    //   154	178	178	java/io/IOException
    //   220	267	178	java/io/IOException
    //   281	291	178	java/io/IOException
    //   440	444	178	java/io/IOException
    //   213	217	218	java/io/IOException
    //   18	30	270	finally
    //   45	53	270	finally
    //   56	80	270	finally
    //   81	111	270	finally
    //   120	128	270	finally
    //   128	136	270	finally
    //   154	178	270	finally
    //   179	209	270	finally
    //   220	267	270	finally
    //   281	291	270	finally
    //   440	444	270	finally
    //   375	379	380	java/io/IOException
    //   432	436	437	java/io/IOException
    //   291	320	439	finally
    //   325	344	439	finally
    //   353	371	439	finally
    //   382	428	439	finally
    //   115	119	444	java/io/IOException
    //   275	279	446	java/io/IOException
    //   0	18	450	java/io/FileNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.HistoryLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */