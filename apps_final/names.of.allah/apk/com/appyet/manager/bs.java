package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.data.FeedItem;

final class bs
  implements Runnable
{
  private final FeedItem b;
  private ApplicationContext c;
  
  bs(bq parambq, ApplicationContext paramApplicationContext, FeedItem paramFeedItem)
  {
    c = paramApplicationContext;
    b = paramFeedItem;
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_1
    //   5: aload_0
    //   6: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   9: invokestatic 34	com/appyet/manager/bq:a	(Lcom/appyet/manager/bq;)Z
    //   12: ifeq +4 -> 16
    //   15: return
    //   16: aload_0
    //   17: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   20: getfield 40	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   23: invokevirtual 45	com/appyet/manager/bl:a	()Lcom/appyet/manager/bo;
    //   26: getstatic 50	com/appyet/manager/bo:a	Lcom/appyet/manager/bo;
    //   29: if_acmpeq -14 -> 15
    //   32: aload_0
    //   33: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   36: invokevirtual 56	com/appyet/data/FeedItem:getLink	()Ljava/lang/String;
    //   39: ifnonnull +170 -> 209
    //   42: aload_0
    //   43: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   46: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   49: aload_0
    //   50: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   53: invokevirtual 64	com/appyet/data/FeedItem:getFeedItemId	()Ljava/lang/Long;
    //   56: getstatic 70	com/appyet/data/FeedItem$ArticleStatusEnum:None	Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   59: invokevirtual 75	com/appyet/manager/d:a	(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    //   62: aconst_null
    //   63: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   66: aload_0
    //   67: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   70: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   73: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   76: pop
    //   77: aload_0
    //   78: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   81: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   84: ifnull -69 -> 15
    //   87: aload_0
    //   88: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   91: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   99: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   102: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   105: istore 9
    //   107: new 96	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   114: aload_0
    //   115: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   118: ldc 98
    //   120: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   123: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: ldc 108
    //   128: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload_0
    //   132: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   135: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   138: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   141: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   144: ldc 113
    //   146: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: aload_0
    //   150: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   153: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   156: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   159: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   162: ldc 118
    //   164: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload_0
    //   168: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   171: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   174: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   177: i2f
    //   178: aload_0
    //   179: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   182: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   185: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   188: i2f
    //   189: fdiv
    //   190: f2d
    //   191: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   194: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: astore_2
    //   201: aload_1
    //   202: iload 9
    //   204: aload_2
    //   205: invokevirtual 131	com/appyet/manager/ProgressNotificationManager:a	(ILjava/lang/String;)V
    //   208: return
    //   209: new 133	com/appyet/a/d
    //   212: dup
    //   213: invokespecial 134	com/appyet/a/d:<init>	()V
    //   216: astore_2
    //   217: aload_0
    //   218: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   221: getfield 137	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   224: invokevirtual 143	com/appyet/manager/bp:z	()Lcom/appyet/context/b;
    //   227: getstatic 148	com/appyet/context/b:b	Lcom/appyet/context/b;
    //   230: if_acmpne +210 -> 440
    //   233: aload_2
    //   234: new 96	java/lang/StringBuilder
    //   237: dup
    //   238: ldc -106
    //   240: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   243: aload_0
    //   244: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   247: invokevirtual 56	com/appyet/data/FeedItem:getLink	()Ljava/lang/String;
    //   250: ldc -101
    //   252: invokestatic 161	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   255: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: putfield 164	com/appyet/a/d:a	Ljava/lang/String;
    //   264: aload_0
    //   265: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   268: getfield 40	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   271: aload_2
    //   272: invokevirtual 167	com/appyet/manager/bl:a	(Lcom/appyet/a/d;)Lcom/appyet/a/f;
    //   275: astore_2
    //   276: aload_2
    //   277: astore_1
    //   278: aload_1
    //   279: ifnull +362 -> 641
    //   282: aload_1
    //   283: astore_2
    //   284: aload_1
    //   285: getfield 173	com/appyet/a/f:f	I
    //   288: istore 9
    //   290: iload 9
    //   292: sipush 504
    //   295: if_icmpne +346 -> 641
    //   298: aload_1
    //   299: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   302: aload_0
    //   303: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   306: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   309: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   312: pop
    //   313: aload_0
    //   314: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   317: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   320: ifnull -305 -> 15
    //   323: aload_0
    //   324: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   327: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   330: astore_1
    //   331: aload_0
    //   332: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   335: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   338: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   341: istore 9
    //   343: new 96	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   350: aload_0
    //   351: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   354: ldc 98
    //   356: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   359: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: ldc 108
    //   364: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload_0
    //   368: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   371: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   374: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   377: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   380: ldc 113
    //   382: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: aload_0
    //   386: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   389: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   392: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   395: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   398: ldc 118
    //   400: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: aload_0
    //   404: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   407: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   410: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   413: i2f
    //   414: aload_0
    //   415: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   418: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   421: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   424: i2f
    //   425: fdiv
    //   426: f2d
    //   427: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   430: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: astore_2
    //   437: goto -236 -> 201
    //   440: aload_2
    //   441: new 96	java/lang/StringBuilder
    //   444: dup
    //   445: ldc -81
    //   447: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   450: aload_0
    //   451: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   454: invokevirtual 56	com/appyet/data/FeedItem:getLink	()Ljava/lang/String;
    //   457: ldc -101
    //   459: invokestatic 161	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   462: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   468: putfield 164	com/appyet/a/d:a	Ljava/lang/String;
    //   471: goto -207 -> 264
    //   474: astore_2
    //   475: aload_0
    //   476: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   479: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   482: aload_0
    //   483: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   486: invokevirtual 64	com/appyet/data/FeedItem:getFeedItemId	()Ljava/lang/Long;
    //   489: getstatic 70	com/appyet/data/FeedItem$ArticleStatusEnum:None	Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   492: invokevirtual 75	com/appyet/manager/d:a	(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    //   495: aload_2
    //   496: invokestatic 180	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   499: aload_1
    //   500: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   503: aload_0
    //   504: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   507: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   510: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   513: pop
    //   514: aload_0
    //   515: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   518: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   521: ifnull -506 -> 15
    //   524: aload_0
    //   525: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   528: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   531: astore_1
    //   532: aload_0
    //   533: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   536: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   539: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   542: istore 9
    //   544: new 96	java/lang/StringBuilder
    //   547: dup
    //   548: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   551: aload_0
    //   552: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   555: ldc 98
    //   557: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   560: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: ldc 108
    //   565: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   568: aload_0
    //   569: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   572: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   575: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   578: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   581: ldc 113
    //   583: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: aload_0
    //   587: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   590: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   593: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   596: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   599: ldc 118
    //   601: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   604: aload_0
    //   605: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   608: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   611: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   614: i2f
    //   615: aload_0
    //   616: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   619: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   622: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   625: i2f
    //   626: fdiv
    //   627: f2d
    //   628: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   631: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   634: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   637: astore_2
    //   638: goto -437 -> 201
    //   641: aload_1
    //   642: astore_2
    //   643: aload_0
    //   644: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   647: getfield 40	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   650: astore_3
    //   651: aload_1
    //   652: astore_2
    //   653: aload_1
    //   654: invokestatic 183	com/appyet/manager/bl:a	(Lcom/appyet/a/f;)Z
    //   657: ifeq +1103 -> 1760
    //   660: aload_1
    //   661: astore_2
    //   662: aload_1
    //   663: getfield 185	com/appyet/a/f:c	Ljava/lang/String;
    //   666: ldc -69
    //   668: invokevirtual 193	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   671: ifeq +1256 -> 1927
    //   674: aload_1
    //   675: astore_2
    //   676: aload_1
    //   677: getfield 196	com/appyet/a/f:b	Ljava/io/InputStream;
    //   680: invokestatic 201	com/appyet/d/b:a	(Ljava/io/InputStream;)[B
    //   683: astore 6
    //   685: aload_1
    //   686: astore_2
    //   687: aload_1
    //   688: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   691: aload_1
    //   692: astore_2
    //   693: aload_1
    //   694: getfield 203	com/appyet/a/f:d	Ljava/lang/String;
    //   697: ifnull +353 -> 1050
    //   700: aload_1
    //   701: astore_2
    //   702: aload_1
    //   703: getfield 203	com/appyet/a/f:d	Ljava/lang/String;
    //   706: ldc -51
    //   708: invokevirtual 209	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   711: ifne +339 -> 1050
    //   714: aload_1
    //   715: astore_2
    //   716: aload_1
    //   717: getfield 203	com/appyet/a/f:d	Ljava/lang/String;
    //   720: astore_3
    //   721: aload_1
    //   722: astore_2
    //   723: aload 6
    //   725: aload_3
    //   726: invokestatic 212	com/appyet/d/b:a	([BLjava/lang/String;)Ljava/lang/String;
    //   729: astore_3
    //   730: aload_3
    //   731: ifnull +1029 -> 1760
    //   734: aload_1
    //   735: astore_2
    //   736: aload_3
    //   737: ldc -42
    //   739: invokevirtual 218	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   742: istore 9
    //   744: aload_1
    //   745: astore_2
    //   746: aload_3
    //   747: ldc -36
    //   749: invokevirtual 218	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   752: istore 10
    //   754: iload 9
    //   756: iflt +326 -> 1082
    //   759: aload_1
    //   760: astore_2
    //   761: iload 9
    //   763: aload_3
    //   764: invokevirtual 223	java/lang/String:length	()I
    //   767: if_icmpge +315 -> 1082
    //   770: iload 10
    //   772: iflt +310 -> 1082
    //   775: aload_1
    //   776: astore_2
    //   777: iload 10
    //   779: aload_3
    //   780: invokevirtual 223	java/lang/String:length	()I
    //   783: if_icmpge +299 -> 1082
    //   786: iload 9
    //   788: iload 10
    //   790: if_icmpge +292 -> 1082
    //   793: aload_1
    //   794: astore_2
    //   795: aload_3
    //   796: iload 9
    //   798: iload 10
    //   800: invokevirtual 227	java/lang/String:substring	(II)Ljava/lang/String;
    //   803: astore_3
    //   804: aload_3
    //   805: ifnull +1097 -> 1902
    //   808: aload_1
    //   809: astore_2
    //   810: aload_0
    //   811: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   814: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   817: astore 4
    //   819: aload_1
    //   820: astore_2
    //   821: aload_0
    //   822: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   825: astore 5
    //   827: aload_1
    //   828: astore_2
    //   829: aload 4
    //   831: getfield 230	com/appyet/manager/d:b	Lcom/appyet/data/DatabaseHelper;
    //   834: invokevirtual 236	com/appyet/data/DatabaseHelper:getConnectionSource	()Lcom/j256/ormlite/support/ConnectionSource;
    //   837: new 238	com/appyet/manager/i
    //   840: dup
    //   841: aload 4
    //   843: aload_3
    //   844: aload 5
    //   846: invokespecial 241	com/appyet/manager/i:<init>	(Lcom/appyet/manager/d;Ljava/lang/String;Lcom/appyet/data/FeedItem;)V
    //   849: invokestatic 247	com/j256/ormlite/misc/TransactionManager:callInTransaction	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   852: pop
    //   853: aload_1
    //   854: astore_2
    //   855: aload_3
    //   856: invokestatic 252	com/appyet/d/c:a	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   859: astore_3
    //   860: aload_1
    //   861: astore_2
    //   862: new 254	java/util/ArrayList
    //   865: dup
    //   866: invokespecial 255	java/util/ArrayList:<init>	()V
    //   869: astore 5
    //   871: aload_1
    //   872: astore_2
    //   873: aload_3
    //   874: invokevirtual 259	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   877: astore 6
    //   879: aload_1
    //   880: astore_2
    //   881: aload 6
    //   883: invokeinterface 265 1 0
    //   888: ifeq +857 -> 1745
    //   891: aload_1
    //   892: astore_2
    //   893: aload 6
    //   895: invokeinterface 269 1 0
    //   900: checkcast 189	java/lang/String
    //   903: astore_3
    //   904: aload_3
    //   905: ifnonnull +366 -> 1271
    //   908: aload_1
    //   909: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   912: aload_0
    //   913: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   916: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   919: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   922: pop
    //   923: aload_0
    //   924: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   927: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   930: ifnull -915 -> 15
    //   933: aload_0
    //   934: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   937: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   940: astore_1
    //   941: aload_0
    //   942: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   945: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   948: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   951: istore 9
    //   953: new 96	java/lang/StringBuilder
    //   956: dup
    //   957: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   960: aload_0
    //   961: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   964: ldc 98
    //   966: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   969: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   972: ldc 108
    //   974: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   977: aload_0
    //   978: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   981: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   984: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   987: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   990: ldc 113
    //   992: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   995: aload_0
    //   996: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   999: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1002: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1005: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1008: ldc 118
    //   1010: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1013: aload_0
    //   1014: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1017: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1020: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1023: i2f
    //   1024: aload_0
    //   1025: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1028: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1031: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1034: i2f
    //   1035: fdiv
    //   1036: f2d
    //   1037: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   1040: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1043: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1046: astore_2
    //   1047: goto -846 -> 201
    //   1050: aload_1
    //   1051: astore_2
    //   1052: aload 6
    //   1054: invokestatic 272	com/appyet/d/b:a	([B)Ljava/lang/String;
    //   1057: astore 5
    //   1059: aload 5
    //   1061: ifnull +911 -> 1972
    //   1064: aload 5
    //   1066: astore_3
    //   1067: aload_1
    //   1068: astore_2
    //   1069: aload 5
    //   1071: ldc -51
    //   1073: invokevirtual 209	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1076: ifeq -355 -> 721
    //   1079: goto +893 -> 1972
    //   1082: aload_1
    //   1083: astore_2
    //   1084: aload_0
    //   1085: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1088: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   1091: aload_0
    //   1092: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1095: invokevirtual 64	com/appyet/data/FeedItem:getFeedItemId	()Ljava/lang/Long;
    //   1098: getstatic 70	com/appyet/data/FeedItem$ArticleStatusEnum:None	Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   1101: invokevirtual 75	com/appyet/manager/d:a	(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    //   1104: aload 4
    //   1106: astore_3
    //   1107: goto -303 -> 804
    //   1110: astore 4
    //   1112: aload_1
    //   1113: astore_2
    //   1114: aload 4
    //   1116: invokestatic 180	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1119: goto -266 -> 853
    //   1122: astore_3
    //   1123: aload_1
    //   1124: astore_2
    //   1125: aload_3
    //   1126: invokestatic 275	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   1129: aload_1
    //   1130: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   1133: aload_0
    //   1134: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1137: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1140: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   1143: pop
    //   1144: aload_0
    //   1145: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1148: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   1151: ifnull -1136 -> 15
    //   1154: aload_0
    //   1155: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1158: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   1161: astore_1
    //   1162: aload_0
    //   1163: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1166: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1169: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1172: istore 9
    //   1174: new 96	java/lang/StringBuilder
    //   1177: dup
    //   1178: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   1181: aload_0
    //   1182: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1185: ldc 98
    //   1187: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   1190: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1193: ldc 108
    //   1195: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1198: aload_0
    //   1199: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1202: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1205: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1208: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1211: ldc 113
    //   1213: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1216: aload_0
    //   1217: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1220: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1223: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1226: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1229: ldc 118
    //   1231: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1234: aload_0
    //   1235: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1238: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1241: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1244: i2f
    //   1245: aload_0
    //   1246: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1249: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1252: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1255: i2f
    //   1256: fdiv
    //   1257: f2d
    //   1258: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   1261: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1264: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1267: astore_2
    //   1268: goto -1067 -> 201
    //   1271: aload_1
    //   1272: astore_2
    //   1273: aload_3
    //   1274: invokestatic 280	com/appyet/f/z:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1277: astore 4
    //   1279: aload 4
    //   1281: astore_3
    //   1282: aload_1
    //   1283: astore_2
    //   1284: aload 4
    //   1286: ldc_w 282
    //   1289: invokevirtual 286	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1292: ifne +53 -> 1345
    //   1295: aload 4
    //   1297: astore_3
    //   1298: aload_1
    //   1299: astore_2
    //   1300: aload 4
    //   1302: ldc_w 288
    //   1305: invokevirtual 286	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1308: ifne +37 -> 1345
    //   1311: aload_1
    //   1312: astore_2
    //   1313: aload 4
    //   1315: ldc_w 290
    //   1318: invokevirtual 286	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1321: ifeq -442 -> 879
    //   1324: aload_1
    //   1325: astore_2
    //   1326: new 96	java/lang/StringBuilder
    //   1329: dup
    //   1330: ldc_w 292
    //   1333: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1336: aload 4
    //   1338: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1341: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1344: astore_3
    //   1345: aload_1
    //   1346: astore_2
    //   1347: aload_0
    //   1348: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1351: astore 4
    //   1353: aload_1
    //   1354: astore_2
    //   1355: aload_3
    //   1356: invokestatic 294	com/appyet/manager/bq:a	(Ljava/lang/String;)Z
    //   1359: istore 11
    //   1361: iload 11
    //   1363: ifeq -484 -> 879
    //   1366: aload_1
    //   1367: astore_2
    //   1368: new 296	java/net/URL
    //   1371: dup
    //   1372: aload_3
    //   1373: invokespecial 297	java/net/URL:<init>	(Ljava/lang/String;)V
    //   1376: pop
    //   1377: aload_1
    //   1378: astore_2
    //   1379: new 299	com/appyet/data/FileCache
    //   1382: dup
    //   1383: invokespecial 300	com/appyet/data/FileCache:<init>	()V
    //   1386: astore 4
    //   1388: aload_1
    //   1389: astore_2
    //   1390: aload_3
    //   1391: invokestatic 303	com/appyet/d/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1394: astore 7
    //   1396: aload_1
    //   1397: astore_2
    //   1398: aload 4
    //   1400: iconst_0
    //   1401: invokestatic 309	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1404: invokevirtual 313	com/appyet/data/FileCache:setDownloadAttempt	(Ljava/lang/Integer;)V
    //   1407: aload_1
    //   1408: astore_2
    //   1409: aload 4
    //   1411: getstatic 319	com/appyet/data/FileCache$DownloadStatusEnum:Pending	Lcom/appyet/data/FileCache$DownloadStatusEnum;
    //   1414: invokevirtual 323	com/appyet/data/FileCache:setDownloadStatus	(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V
    //   1417: aload_1
    //   1418: astore_2
    //   1419: aload 4
    //   1421: aload_3
    //   1422: invokevirtual 326	com/appyet/data/FileCache:setFileLink	(Ljava/lang/String;)V
    //   1425: aload_1
    //   1426: astore_2
    //   1427: aload 4
    //   1429: getstatic 332	com/appyet/data/FileCache$FileTypeEnum:Image	Lcom/appyet/data/FileCache$FileTypeEnum;
    //   1432: invokevirtual 336	com/appyet/data/FileCache:setFileType	(Lcom/appyet/data/FileCache$FileTypeEnum;)V
    //   1435: aload_1
    //   1436: astore_2
    //   1437: aload 4
    //   1439: aload 7
    //   1441: invokevirtual 339	com/appyet/data/FileCache:setFileCacheName	(Ljava/lang/String;)V
    //   1444: aload_1
    //   1445: astore_2
    //   1446: aload 4
    //   1448: aload_0
    //   1449: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1452: invokevirtual 342	com/appyet/data/FeedItem:getCacheGuid	()Ljava/lang/String;
    //   1455: invokevirtual 345	com/appyet/data/FileCache:setCacheGuid	(Ljava/lang/String;)V
    //   1458: aload_1
    //   1459: astore_2
    //   1460: aload_0
    //   1461: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1464: invokevirtual 348	com/appyet/data/FeedItem:getThumbnail	()Ljava/lang/String;
    //   1467: ifnonnull +69 -> 1536
    //   1470: aload_1
    //   1471: astore_2
    //   1472: aload_0
    //   1473: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1476: aload_3
    //   1477: invokevirtual 351	com/appyet/data/FeedItem:setThumbnail	(Ljava/lang/String;)V
    //   1480: aload_1
    //   1481: astore_2
    //   1482: aload_0
    //   1483: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1486: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   1489: astore 7
    //   1491: aload_1
    //   1492: astore_2
    //   1493: aload_0
    //   1494: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1497: invokevirtual 64	com/appyet/data/FeedItem:getFeedItemId	()Ljava/lang/Long;
    //   1500: astore 8
    //   1502: aload 7
    //   1504: getfield 230	com/appyet/manager/d:b	Lcom/appyet/data/DatabaseHelper;
    //   1507: invokevirtual 236	com/appyet/data/DatabaseHelper:getConnectionSource	()Lcom/j256/ormlite/support/ConnectionSource;
    //   1510: new 353	com/appyet/manager/q
    //   1513: dup
    //   1514: aload 7
    //   1516: aload_3
    //   1517: aload 8
    //   1519: invokespecial 356	com/appyet/manager/q:<init>	(Lcom/appyet/manager/d;Ljava/lang/String;Ljava/lang/Long;)V
    //   1522: invokestatic 247	com/j256/ormlite/misc/TransactionManager:callInTransaction	(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   1525: pop
    //   1526: aload_1
    //   1527: astore_2
    //   1528: aload 4
    //   1530: getstatic 359	com/appyet/data/FileCache$FileTypeEnum:Thumbnail	Lcom/appyet/data/FileCache$FileTypeEnum;
    //   1533: invokevirtual 336	com/appyet/data/FileCache:setFileType	(Lcom/appyet/data/FileCache$FileTypeEnum;)V
    //   1536: aload_1
    //   1537: astore_2
    //   1538: aload 5
    //   1540: aload 4
    //   1542: invokeinterface 364 2 0
    //   1547: pop
    //   1548: aload_1
    //   1549: astore_2
    //   1550: aload_0
    //   1551: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1554: invokestatic 367	com/appyet/manager/bq:b	(Lcom/appyet/manager/bq;)I
    //   1557: pop
    //   1558: goto -679 -> 879
    //   1561: astore_3
    //   1562: aload_1
    //   1563: astore_2
    //   1564: aload_3
    //   1565: invokestatic 180	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1568: goto -689 -> 879
    //   1571: astore_1
    //   1572: aload_2
    //   1573: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   1576: aload_0
    //   1577: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1580: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1583: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   1586: pop
    //   1587: aload_0
    //   1588: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1591: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   1594: ifnull +116 -> 1710
    //   1597: aload_0
    //   1598: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1601: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   1604: aload_0
    //   1605: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1608: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1611: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1614: new 96	java/lang/StringBuilder
    //   1617: dup
    //   1618: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   1621: aload_0
    //   1622: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1625: ldc 98
    //   1627: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   1630: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1633: ldc 108
    //   1635: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1638: aload_0
    //   1639: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1642: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1645: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1648: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1651: ldc 113
    //   1653: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1656: aload_0
    //   1657: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1660: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1663: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1666: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1669: ldc 118
    //   1671: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1674: aload_0
    //   1675: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1678: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1681: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1684: i2f
    //   1685: aload_0
    //   1686: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1689: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1692: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1695: i2f
    //   1696: fdiv
    //   1697: f2d
    //   1698: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   1701: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1704: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1707: invokevirtual 131	com/appyet/manager/ProgressNotificationManager:a	(ILjava/lang/String;)V
    //   1710: aload_1
    //   1711: athrow
    //   1712: astore_3
    //   1713: aload_1
    //   1714: astore_2
    //   1715: aload_3
    //   1716: invokestatic 180	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1719: goto -840 -> 879
    //   1722: astore_3
    //   1723: aload_1
    //   1724: astore_2
    //   1725: aload_3
    //   1726: invokestatic 275	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   1729: goto -850 -> 879
    //   1732: astore_2
    //   1733: aload_2
    //   1734: invokestatic 180	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1737: goto -211 -> 1526
    //   1740: astore_3
    //   1741: aload_1
    //   1742: astore_2
    //   1743: aload_3
    //   1744: athrow
    //   1745: aload_1
    //   1746: astore_2
    //   1747: aload_0
    //   1748: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1751: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   1754: aload 5
    //   1756: invokevirtual 370	com/appyet/manager/d:b	(Ljava/util/List;)Z
    //   1759: pop
    //   1760: aload_1
    //   1761: invokestatic 78	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   1764: aload_0
    //   1765: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1768: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1771: invokevirtual 87	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   1774: pop
    //   1775: aload_0
    //   1776: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1779: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   1782: ifnull -1767 -> 15
    //   1785: aload_0
    //   1786: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1789: invokestatic 91	com/appyet/manager/bq:d	(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    //   1792: astore_1
    //   1793: aload_0
    //   1794: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1797: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1800: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1803: istore 9
    //   1805: new 96	java/lang/StringBuilder
    //   1808: dup
    //   1809: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   1812: aload_0
    //   1813: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1816: ldc 98
    //   1818: invokevirtual 102	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   1821: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1824: ldc 108
    //   1826: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1829: aload_0
    //   1830: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1833: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1836: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1839: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1842: ldc 113
    //   1844: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1847: aload_0
    //   1848: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1851: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1854: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1857: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1860: ldc 118
    //   1862: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1865: aload_0
    //   1866: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1869: invokestatic 81	com/appyet/manager/bq:c	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1872: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1875: i2f
    //   1876: aload_0
    //   1877: getfield 16	com/appyet/manager/bs:a	Lcom/appyet/manager/bq;
    //   1880: invokestatic 116	com/appyet/manager/bq:e	(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   1883: invokevirtual 94	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   1886: i2f
    //   1887: fdiv
    //   1888: f2d
    //   1889: invokestatic 123	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   1892: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1895: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1898: astore_2
    //   1899: goto -1698 -> 201
    //   1902: aload_1
    //   1903: astore_2
    //   1904: aload_0
    //   1905: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1908: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   1911: aload_0
    //   1912: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1915: invokevirtual 64	com/appyet/data/FeedItem:getFeedItemId	()Ljava/lang/Long;
    //   1918: getstatic 70	com/appyet/data/FeedItem$ArticleStatusEnum:None	Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   1921: invokevirtual 75	com/appyet/manager/d:a	(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    //   1924: goto -164 -> 1760
    //   1927: aload_1
    //   1928: astore_2
    //   1929: aload_0
    //   1930: getfield 21	com/appyet/manager/bs:c	Lcom/appyet/context/ApplicationContext;
    //   1933: getfield 60	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   1936: aload_0
    //   1937: getfield 23	com/appyet/manager/bs:b	Lcom/appyet/data/FeedItem;
    //   1940: invokevirtual 64	com/appyet/data/FeedItem:getFeedItemId	()Ljava/lang/Long;
    //   1943: getstatic 70	com/appyet/data/FeedItem$ArticleStatusEnum:None	Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   1946: invokevirtual 75	com/appyet/manager/d:a	(Ljava/lang/Long;Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    //   1949: goto -189 -> 1760
    //   1952: astore_1
    //   1953: aconst_null
    //   1954: astore_2
    //   1955: goto -383 -> 1572
    //   1958: astore_3
    //   1959: aload_1
    //   1960: astore_2
    //   1961: aload_3
    //   1962: astore_1
    //   1963: goto -391 -> 1572
    //   1966: astore_3
    //   1967: aconst_null
    //   1968: astore_1
    //   1969: goto -846 -> 1123
    //   1972: ldc_w 372
    //   1975: astore_3
    //   1976: goto -1255 -> 721
    //   1979: astore_2
    //   1980: goto -1505 -> 475
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1983	0	this	bs
    //   4	1559	1	localObject1	Object
    //   1571	190	1	localf	com.appyet.a.f
    //   1792	136	1	localProgressNotificationManager	ProgressNotificationManager
    //   1952	8	1	localObject2	Object
    //   1962	7	1	localObject3	Object
    //   200	241	2	localObject4	Object
    //   474	22	2	localException1	Exception
    //   637	1088	2	localObject5	Object
    //   1732	2	2	localException2	Exception
    //   1742	219	2	localObject6	Object
    //   1979	1	2	localException3	Exception
    //   650	457	3	localObject7	Object
    //   1122	152	3	localOutOfMemoryError1	OutOfMemoryError
    //   1281	236	3	localObject8	Object
    //   1561	4	3	localException4	Exception
    //   1712	4	3	localException5	Exception
    //   1722	4	3	localOutOfMemoryError2	OutOfMemoryError
    //   1740	4	3	localObject9	Object
    //   1958	4	3	localObject10	Object
    //   1966	1	3	localOutOfMemoryError3	OutOfMemoryError
    //   1975	1	3	str	String
    //   1	1104	4	locald	d
    //   1110	5	4	localException6	Exception
    //   1277	264	4	localObject11	Object
    //   825	930	5	localObject12	Object
    //   683	370	6	localObject13	Object
    //   1394	121	7	localObject14	Object
    //   1500	18	8	localLong	Long
    //   105	1699	9	i	int
    //   752	47	10	j	int
    //   1359	3	11	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   32	62	474	java/lang/Exception
    //   209	264	474	java/lang/Exception
    //   264	276	474	java/lang/Exception
    //   440	471	474	java/lang/Exception
    //   829	853	1110	java/lang/Exception
    //   284	290	1122	java/lang/OutOfMemoryError
    //   643	651	1122	java/lang/OutOfMemoryError
    //   653	660	1122	java/lang/OutOfMemoryError
    //   662	674	1122	java/lang/OutOfMemoryError
    //   676	685	1122	java/lang/OutOfMemoryError
    //   687	691	1122	java/lang/OutOfMemoryError
    //   693	700	1122	java/lang/OutOfMemoryError
    //   702	714	1122	java/lang/OutOfMemoryError
    //   716	721	1122	java/lang/OutOfMemoryError
    //   723	730	1122	java/lang/OutOfMemoryError
    //   736	744	1122	java/lang/OutOfMemoryError
    //   746	754	1122	java/lang/OutOfMemoryError
    //   761	770	1122	java/lang/OutOfMemoryError
    //   777	786	1122	java/lang/OutOfMemoryError
    //   795	804	1122	java/lang/OutOfMemoryError
    //   810	819	1122	java/lang/OutOfMemoryError
    //   821	827	1122	java/lang/OutOfMemoryError
    //   829	853	1122	java/lang/OutOfMemoryError
    //   855	860	1122	java/lang/OutOfMemoryError
    //   862	871	1122	java/lang/OutOfMemoryError
    //   873	879	1122	java/lang/OutOfMemoryError
    //   881	891	1122	java/lang/OutOfMemoryError
    //   893	904	1122	java/lang/OutOfMemoryError
    //   1052	1059	1122	java/lang/OutOfMemoryError
    //   1069	1079	1122	java/lang/OutOfMemoryError
    //   1084	1104	1122	java/lang/OutOfMemoryError
    //   1114	1119	1122	java/lang/OutOfMemoryError
    //   1564	1568	1122	java/lang/OutOfMemoryError
    //   1725	1729	1122	java/lang/OutOfMemoryError
    //   1747	1760	1122	java/lang/OutOfMemoryError
    //   1904	1924	1122	java/lang/OutOfMemoryError
    //   1929	1949	1122	java/lang/OutOfMemoryError
    //   1273	1279	1561	java/lang/Exception
    //   1284	1295	1561	java/lang/Exception
    //   1300	1311	1561	java/lang/Exception
    //   1313	1324	1561	java/lang/Exception
    //   1326	1345	1561	java/lang/Exception
    //   1347	1353	1561	java/lang/Exception
    //   1355	1361	1561	java/lang/Exception
    //   1379	1388	1561	java/lang/Exception
    //   1390	1396	1561	java/lang/Exception
    //   1398	1407	1561	java/lang/Exception
    //   1409	1417	1561	java/lang/Exception
    //   1419	1425	1561	java/lang/Exception
    //   1427	1435	1561	java/lang/Exception
    //   1437	1444	1561	java/lang/Exception
    //   1446	1458	1561	java/lang/Exception
    //   1460	1470	1561	java/lang/Exception
    //   1472	1480	1561	java/lang/Exception
    //   1482	1491	1561	java/lang/Exception
    //   1493	1502	1561	java/lang/Exception
    //   1528	1536	1561	java/lang/Exception
    //   1538	1548	1561	java/lang/Exception
    //   1550	1558	1561	java/lang/Exception
    //   1715	1719	1561	java/lang/Exception
    //   1743	1745	1561	java/lang/Exception
    //   284	290	1571	finally
    //   643	651	1571	finally
    //   653	660	1571	finally
    //   662	674	1571	finally
    //   676	685	1571	finally
    //   687	691	1571	finally
    //   693	700	1571	finally
    //   702	714	1571	finally
    //   716	721	1571	finally
    //   723	730	1571	finally
    //   736	744	1571	finally
    //   746	754	1571	finally
    //   761	770	1571	finally
    //   777	786	1571	finally
    //   795	804	1571	finally
    //   810	819	1571	finally
    //   821	827	1571	finally
    //   829	853	1571	finally
    //   855	860	1571	finally
    //   862	871	1571	finally
    //   873	879	1571	finally
    //   881	891	1571	finally
    //   893	904	1571	finally
    //   1052	1059	1571	finally
    //   1069	1079	1571	finally
    //   1084	1104	1571	finally
    //   1114	1119	1571	finally
    //   1125	1129	1571	finally
    //   1273	1279	1571	finally
    //   1284	1295	1571	finally
    //   1300	1311	1571	finally
    //   1313	1324	1571	finally
    //   1326	1345	1571	finally
    //   1347	1353	1571	finally
    //   1355	1361	1571	finally
    //   1368	1377	1571	finally
    //   1379	1388	1571	finally
    //   1390	1396	1571	finally
    //   1398	1407	1571	finally
    //   1409	1417	1571	finally
    //   1419	1425	1571	finally
    //   1427	1435	1571	finally
    //   1437	1444	1571	finally
    //   1446	1458	1571	finally
    //   1460	1470	1571	finally
    //   1472	1480	1571	finally
    //   1482	1491	1571	finally
    //   1493	1502	1571	finally
    //   1528	1536	1571	finally
    //   1538	1548	1571	finally
    //   1550	1558	1571	finally
    //   1564	1568	1571	finally
    //   1715	1719	1571	finally
    //   1725	1729	1571	finally
    //   1743	1745	1571	finally
    //   1747	1760	1571	finally
    //   1904	1924	1571	finally
    //   1929	1949	1571	finally
    //   1368	1377	1712	java/lang/Exception
    //   1273	1279	1722	java/lang/OutOfMemoryError
    //   1284	1295	1722	java/lang/OutOfMemoryError
    //   1300	1311	1722	java/lang/OutOfMemoryError
    //   1313	1324	1722	java/lang/OutOfMemoryError
    //   1326	1345	1722	java/lang/OutOfMemoryError
    //   1347	1353	1722	java/lang/OutOfMemoryError
    //   1355	1361	1722	java/lang/OutOfMemoryError
    //   1368	1377	1722	java/lang/OutOfMemoryError
    //   1379	1388	1722	java/lang/OutOfMemoryError
    //   1390	1396	1722	java/lang/OutOfMemoryError
    //   1398	1407	1722	java/lang/OutOfMemoryError
    //   1409	1417	1722	java/lang/OutOfMemoryError
    //   1419	1425	1722	java/lang/OutOfMemoryError
    //   1427	1435	1722	java/lang/OutOfMemoryError
    //   1437	1444	1722	java/lang/OutOfMemoryError
    //   1446	1458	1722	java/lang/OutOfMemoryError
    //   1460	1470	1722	java/lang/OutOfMemoryError
    //   1472	1480	1722	java/lang/OutOfMemoryError
    //   1482	1491	1722	java/lang/OutOfMemoryError
    //   1493	1502	1722	java/lang/OutOfMemoryError
    //   1528	1536	1722	java/lang/OutOfMemoryError
    //   1538	1548	1722	java/lang/OutOfMemoryError
    //   1550	1558	1722	java/lang/OutOfMemoryError
    //   1715	1719	1722	java/lang/OutOfMemoryError
    //   1743	1745	1722	java/lang/OutOfMemoryError
    //   1502	1526	1732	java/lang/Exception
    //   1502	1526	1740	finally
    //   1733	1737	1740	finally
    //   32	62	1952	finally
    //   209	264	1952	finally
    //   264	276	1952	finally
    //   440	471	1952	finally
    //   475	499	1958	finally
    //   32	62	1966	java/lang/OutOfMemoryError
    //   209	264	1966	java/lang/OutOfMemoryError
    //   264	276	1966	java/lang/OutOfMemoryError
    //   440	471	1966	java/lang/OutOfMemoryError
    //   284	290	1979	java/lang/Exception
    //   643	651	1979	java/lang/Exception
    //   653	660	1979	java/lang/Exception
    //   662	674	1979	java/lang/Exception
    //   676	685	1979	java/lang/Exception
    //   687	691	1979	java/lang/Exception
    //   693	700	1979	java/lang/Exception
    //   702	714	1979	java/lang/Exception
    //   716	721	1979	java/lang/Exception
    //   723	730	1979	java/lang/Exception
    //   736	744	1979	java/lang/Exception
    //   746	754	1979	java/lang/Exception
    //   761	770	1979	java/lang/Exception
    //   777	786	1979	java/lang/Exception
    //   795	804	1979	java/lang/Exception
    //   810	819	1979	java/lang/Exception
    //   821	827	1979	java/lang/Exception
    //   855	860	1979	java/lang/Exception
    //   862	871	1979	java/lang/Exception
    //   873	879	1979	java/lang/Exception
    //   881	891	1979	java/lang/Exception
    //   893	904	1979	java/lang/Exception
    //   1052	1059	1979	java/lang/Exception
    //   1069	1079	1979	java/lang/Exception
    //   1084	1104	1979	java/lang/Exception
    //   1114	1119	1979	java/lang/Exception
    //   1564	1568	1979	java/lang/Exception
    //   1725	1729	1979	java/lang/Exception
    //   1747	1760	1979	java/lang/Exception
    //   1904	1924	1979	java/lang/Exception
    //   1929	1949	1979	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */