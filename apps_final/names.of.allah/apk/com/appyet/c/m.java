package com.appyet.c;

import android.view.View;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.appyet.f.a;

final class m
  extends a<Void, Void, Void>
{
  WebView a;
  String b;
  View c;
  
  public m(k paramk, WebView paramWebView, View paramView)
  {
    a = paramWebView;
    c = paramView;
  }
  
  /* Error */
  private Void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   4: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   7: invokevirtual 42	com/appyet/data/FeedItem:getArticleStatus	()Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   10: getstatic 48	com/appyet/data/FeedItem$ArticleStatusEnum:DownloadCompleted	Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    //   13: if_acmpne +1647 -> 1660
    //   16: aload_0
    //   17: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   20: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   23: invokevirtual 52	com/appyet/data/FeedItem:getArticle	()Ljava/lang/String;
    //   26: ifnonnull +24 -> 50
    //   29: aload_0
    //   30: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   33: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   36: getfield 61	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   39: aload_0
    //   40: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   43: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   46: invokevirtual 66	com/appyet/manager/d:a	(Lcom/appyet/data/FeedItem;)Lcom/appyet/data/FeedItem;
    //   49: pop
    //   50: aload_0
    //   51: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   54: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   57: invokevirtual 52	com/appyet/data/FeedItem:getArticle	()Ljava/lang/String;
    //   60: astore_3
    //   61: ldc 68
    //   63: astore_1
    //   64: getstatic 74	android/os/Build$VERSION:SDK_INT	I
    //   67: bipush 16
    //   69: if_icmplt +24 -> 93
    //   72: new 76	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   79: ldc 68
    //   81: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc 83
    //   86: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: astore_1
    //   93: new 76	java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   100: aload_1
    //   101: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: ldc 88
    //   106: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: astore_1
    //   113: aload_0
    //   114: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   117: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   120: getfield 92	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   123: getfield 97	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   126: getfield 102	com/appyet/metadata/MetadataTheme:PrimaryBgColor	Ljava/lang/String;
    //   129: ldc 104
    //   131: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   134: ifeq +1574 -> 1708
    //   137: new 76	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   144: aload_1
    //   145: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: ldc 112
    //   150: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: astore_1
    //   157: aload_0
    //   158: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   161: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   164: getfield 115	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   167: invokevirtual 121	com/appyet/manager/bp:K	()I
    //   170: tableswitch	default:+2694->2864, 0:+1562->1732, 1:+1626->1796, 2:+1690->1860, 3:+1754->1924, 4:+1818->1988
    //   204: aload_1
    //   205: astore 4
    //   207: aload_0
    //   208: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   211: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   214: getfield 130	com/appyet/metadata/MetadataModuleFeed:IsTextRTL	Z
    //   217: ifeq +2650 -> 2867
    //   220: new 76	java/lang/StringBuilder
    //   223: dup
    //   224: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   227: aload_1
    //   228: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: ldc -124
    //   233: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: astore 4
    //   241: goto +2626 -> 2867
    //   244: aload_0
    //   245: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   248: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   251: getfield 135	com/appyet/metadata/MetadataModuleFeed:IsIncludeJQuery	Z
    //   254: ifne +82 -> 336
    //   257: aload_2
    //   258: ldc -119
    //   260: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   263: ifne +73 -> 336
    //   266: aload_2
    //   267: ldc -113
    //   269: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   272: ifne +64 -> 336
    //   275: aload 4
    //   277: astore_1
    //   278: aload_0
    //   279: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   282: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   285: invokevirtual 146	com/appyet/data/FeedItem:getEnclosureLink	()Ljava/lang/String;
    //   288: ifnull +69 -> 357
    //   291: aload 4
    //   293: astore_1
    //   294: aload_0
    //   295: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   298: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   301: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   304: ifnull +53 -> 357
    //   307: aload 4
    //   309: astore_1
    //   310: aload_0
    //   311: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   314: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   317: getfield 153	com/appyet/context/ApplicationContext:j	Lcom/appyet/manager/al;
    //   320: aload_0
    //   321: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   324: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   327: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   330: invokevirtual 159	com/appyet/manager/al:g	(Ljava/lang/String;)Z
    //   333: ifeq +24 -> 357
    //   336: new 76	java/lang/StringBuilder
    //   339: dup
    //   340: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   343: aload 4
    //   345: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: ldc -95
    //   350: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: astore_1
    //   357: aload_2
    //   358: ldc -119
    //   360: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   363: ifne +14 -> 377
    //   366: aload_1
    //   367: astore_3
    //   368: aload_2
    //   369: ldc -113
    //   371: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   374: ifeq +23 -> 397
    //   377: new 76	java/lang/StringBuilder
    //   380: dup
    //   381: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   384: aload_1
    //   385: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: ldc -93
    //   390: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: astore_3
    //   397: aload_3
    //   398: astore_1
    //   399: aload_0
    //   400: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   403: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   406: invokevirtual 146	com/appyet/data/FeedItem:getEnclosureLink	()Ljava/lang/String;
    //   409: ifnull +84 -> 493
    //   412: aload_3
    //   413: astore_1
    //   414: aload_0
    //   415: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   418: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   421: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   424: ifnull +69 -> 493
    //   427: aload_3
    //   428: astore_1
    //   429: aload_0
    //   430: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   433: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   436: getfield 153	com/appyet/context/ApplicationContext:j	Lcom/appyet/manager/al;
    //   439: aload_0
    //   440: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   443: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   446: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   449: invokevirtual 159	com/appyet/manager/al:g	(Ljava/lang/String;)Z
    //   452: ifeq +41 -> 493
    //   455: new 76	java/lang/StringBuilder
    //   458: dup
    //   459: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   462: aload_3
    //   463: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: ldc -91
    //   468: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: aload_0
    //   472: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   475: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   478: invokevirtual 168	com/appyet/data/FeedItem:getThumbnail	()Ljava/lang/String;
    //   481: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: ldc -86
    //   486: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   492: astore_1
    //   493: aload_1
    //   494: astore_3
    //   495: aload_0
    //   496: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   499: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   502: getfield 173	com/appyet/metadata/MetadataModuleFeed:ExtraHTMLHeader	Ljava/lang/String;
    //   505: ifnull +54 -> 559
    //   508: aload_1
    //   509: astore_3
    //   510: aload_0
    //   511: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   514: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   517: getfield 173	com/appyet/metadata/MetadataModuleFeed:ExtraHTMLHeader	Ljava/lang/String;
    //   520: invokevirtual 176	java/lang/String:trim	()Ljava/lang/String;
    //   523: ldc -78
    //   525: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   528: ifne +31 -> 559
    //   531: new 76	java/lang/StringBuilder
    //   534: dup
    //   535: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   538: aload_1
    //   539: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   542: aload_0
    //   543: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   546: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   549: getfield 173	com/appyet/metadata/MetadataModuleFeed:ExtraHTMLHeader	Ljava/lang/String;
    //   552: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   555: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   558: astore_3
    //   559: new 76	java/lang/StringBuilder
    //   562: dup
    //   563: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   566: aload_3
    //   567: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   570: ldc -76
    //   572: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   578: astore_3
    //   579: aload_0
    //   580: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   583: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   586: invokevirtual 184	com/appyet/data/FeedItem:getIsRead	()Z
    //   589: ifeq +2292 -> 2881
    //   592: ldc -70
    //   594: astore_1
    //   595: new 76	java/lang/StringBuilder
    //   598: dup
    //   599: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   602: aload_3
    //   603: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   606: ldc -68
    //   608: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: aload_1
    //   612: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   615: ldc -66
    //   617: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   620: aload_0
    //   621: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   624: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   627: invokevirtual 193	com/appyet/data/FeedItem:getTitle	()Ljava/lang/String;
    //   630: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   633: ldc -61
    //   635: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   638: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   641: astore_3
    //   642: aload_0
    //   643: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   646: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   649: invokestatic 200	com/appyet/manager/ar:b	(Lcom/appyet/context/ApplicationContext;)Ljava/util/Locale;
    //   652: invokevirtual 205	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   655: ldc -49
    //   657: invokevirtual 210	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   660: ifeq +1392 -> 2052
    //   663: new 76	java/lang/StringBuilder
    //   666: dup
    //   667: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   670: aload_3
    //   671: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   674: ldc -44
    //   676: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: aload_0
    //   680: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   683: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   686: aload_0
    //   687: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   690: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   693: invokevirtual 216	com/appyet/data/FeedItem:getPubDate	()Ljava/util/Date;
    //   696: invokestatic 221	com/appyet/d/a:b	(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    //   699: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   702: ldc -33
    //   704: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   707: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   710: astore_1
    //   711: aload_1
    //   712: astore_3
    //   713: aload_0
    //   714: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   717: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   720: invokevirtual 226	com/appyet/data/FeedItem:getAuthor	()Ljava/lang/String;
    //   723: ifnull +59 -> 782
    //   726: aload_1
    //   727: astore_3
    //   728: aload_0
    //   729: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   732: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   735: invokevirtual 226	com/appyet/data/FeedItem:getAuthor	()Ljava/lang/String;
    //   738: invokevirtual 229	java/lang/String:length	()I
    //   741: ifle +41 -> 782
    //   744: new 76	java/lang/StringBuilder
    //   747: dup
    //   748: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   751: aload_1
    //   752: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   755: ldc -25
    //   757: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   760: aload_0
    //   761: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   764: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   767: invokevirtual 226	com/appyet/data/FeedItem:getAuthor	()Ljava/lang/String;
    //   770: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   773: ldc -33
    //   775: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   778: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   781: astore_3
    //   782: aload_3
    //   783: astore_1
    //   784: aload_0
    //   785: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   788: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   791: ifnull +92 -> 883
    //   794: aload_3
    //   795: astore_1
    //   796: aload_0
    //   797: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   800: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   803: invokevirtual 238	com/appyet/data/Feed:getTitle	()Ljava/lang/String;
    //   806: ifnull +77 -> 883
    //   809: aload_3
    //   810: astore_1
    //   811: aload_0
    //   812: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   815: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   818: invokevirtual 238	com/appyet/data/Feed:getTitle	()Ljava/lang/String;
    //   821: invokevirtual 176	java/lang/String:trim	()Ljava/lang/String;
    //   824: invokevirtual 229	java/lang/String:length	()I
    //   827: ifle +56 -> 883
    //   830: aload_3
    //   831: astore_1
    //   832: aload_0
    //   833: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   836: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   839: getfield 241	com/appyet/metadata/MetadataModuleFeed:IsShowPublisher	Z
    //   842: ifeq +41 -> 883
    //   845: new 76	java/lang/StringBuilder
    //   848: dup
    //   849: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   852: aload_3
    //   853: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   856: ldc -13
    //   858: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   861: aload_0
    //   862: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   865: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   868: invokevirtual 238	com/appyet/data/Feed:getTitle	()Ljava/lang/String;
    //   871: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   874: ldc -33
    //   876: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   879: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   882: astore_1
    //   883: aload_1
    //   884: astore_3
    //   885: aload_0
    //   886: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   889: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   892: invokevirtual 146	com/appyet/data/FeedItem:getEnclosureLink	()Ljava/lang/String;
    //   895: ifnull +255 -> 1150
    //   898: new 245	java/text/DecimalFormat
    //   901: dup
    //   902: ldc -9
    //   904: invokespecial 250	java/text/DecimalFormat:<init>	(Ljava/lang/String;)V
    //   907: astore_3
    //   908: aload_0
    //   909: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   912: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   915: invokevirtual 254	com/appyet/data/FeedItem:getEnclosureLength	()Ljava/lang/Integer;
    //   918: ifnonnull +1361 -> 2279
    //   921: new 76	java/lang/StringBuilder
    //   924: dup
    //   925: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   928: ldc_w 256
    //   931: iconst_1
    //   932: anewarray 258	java/lang/Object
    //   935: dup
    //   936: iconst_0
    //   937: aload_3
    //   938: dconst_0
    //   939: invokevirtual 262	java/text/DecimalFormat:format	(D)Ljava/lang/String;
    //   942: aastore
    //   943: invokestatic 265	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   946: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   949: ldc_w 267
    //   952: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   955: aload_0
    //   956: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   959: ldc_w 268
    //   962: invokevirtual 272	com/appyet/c/k:getString	(I)Ljava/lang/String;
    //   965: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   968: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   971: astore 4
    //   973: aload_0
    //   974: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   977: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   980: invokevirtual 275	com/appyet/data/FeedItem:getEnclosureType	()Ljava/lang/String;
    //   983: ifnull +1407 -> 2390
    //   986: aload_0
    //   987: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   990: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   993: invokevirtual 275	com/appyet/data/FeedItem:getEnclosureType	()Ljava/lang/String;
    //   996: invokevirtual 278	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   999: ldc_w 280
    //   1002: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   1005: ifeq +1346 -> 2351
    //   1008: aload_0
    //   1009: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1012: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   1015: ldc_w 281
    //   1018: invokevirtual 282	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   1021: astore_3
    //   1022: new 76	java/lang/StringBuilder
    //   1025: dup
    //   1026: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1029: aload_1
    //   1030: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1033: ldc_w 284
    //   1036: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1039: aload_3
    //   1040: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1043: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1046: astore_3
    //   1047: aload_3
    //   1048: astore_1
    //   1049: aload_0
    //   1050: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1053: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1056: invokevirtual 254	com/appyet/data/FeedItem:getEnclosureLength	()Ljava/lang/Integer;
    //   1059: invokevirtual 289	java/lang/Integer:intValue	()I
    //   1062: ifle +29 -> 1091
    //   1065: new 76	java/lang/StringBuilder
    //   1068: dup
    //   1069: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1072: aload_3
    //   1073: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1076: ldc_w 267
    //   1079: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1082: aload 4
    //   1084: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1087: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1090: astore_1
    //   1091: aload_1
    //   1092: astore_3
    //   1093: aload_0
    //   1094: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1097: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1100: invokevirtual 292	com/appyet/data/FeedItem:getEnclosureDuration	()Ljava/lang/Integer;
    //   1103: invokevirtual 289	java/lang/Integer:intValue	()I
    //   1106: ifle +44 -> 1150
    //   1109: new 76	java/lang/StringBuilder
    //   1112: dup
    //   1113: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1116: aload_1
    //   1117: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1120: ldc_w 267
    //   1123: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1126: aload_0
    //   1127: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1130: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1133: invokevirtual 292	com/appyet/data/FeedItem:getEnclosureDuration	()Ljava/lang/Integer;
    //   1136: invokevirtual 289	java/lang/Integer:intValue	()I
    //   1139: i2l
    //   1140: invokestatic 295	com/appyet/d/a:a	(J)Ljava/lang/String;
    //   1143: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1146: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1149: astore_3
    //   1150: new 76	java/lang/StringBuilder
    //   1153: dup
    //   1154: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1157: aload_3
    //   1158: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1161: ldc_w 297
    //   1164: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1167: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1170: astore_3
    //   1171: aload_3
    //   1172: astore_1
    //   1173: aload_0
    //   1174: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1177: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1180: invokevirtual 146	com/appyet/data/FeedItem:getEnclosureLink	()Ljava/lang/String;
    //   1183: ifnull +124 -> 1307
    //   1186: ldc_w 299
    //   1189: astore 4
    //   1191: aload 4
    //   1193: astore_1
    //   1194: aload_0
    //   1195: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1198: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1201: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   1204: ifnull +72 -> 1276
    //   1207: aload 4
    //   1209: astore_1
    //   1210: aload_0
    //   1211: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1214: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   1217: getfield 153	com/appyet/context/ApplicationContext:j	Lcom/appyet/manager/al;
    //   1220: aload_0
    //   1221: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1224: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1227: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   1230: invokevirtual 159	com/appyet/manager/al:g	(Ljava/lang/String;)Z
    //   1233: ifeq +43 -> 1276
    //   1236: new 76	java/lang/StringBuilder
    //   1239: dup
    //   1240: ldc_w 301
    //   1243: invokespecial 302	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1246: aload_0
    //   1247: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1250: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   1253: getfield 153	com/appyet/context/ApplicationContext:j	Lcom/appyet/manager/al;
    //   1256: aload_0
    //   1257: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1260: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1263: invokevirtual 149	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   1266: invokevirtual 305	com/appyet/manager/al:b	(Ljava/lang/String;)Ljava/lang/String;
    //   1269: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1272: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1275: astore_1
    //   1276: new 76	java/lang/StringBuilder
    //   1279: dup
    //   1280: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1283: aload_3
    //   1284: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1287: ldc_w 307
    //   1290: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1293: aload_1
    //   1294: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1297: ldc_w 309
    //   1300: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1303: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1306: astore_1
    //   1307: aload_0
    //   1308: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1311: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   1314: invokevirtual 312	com/appyet/data/Feed:getLink	()Ljava/lang/String;
    //   1317: invokevirtual 278	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1320: ldc_w 314
    //   1323: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   1326: ifne +25 -> 1351
    //   1329: aload_0
    //   1330: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1333: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   1336: invokevirtual 312	com/appyet/data/Feed:getLink	()Ljava/lang/String;
    //   1339: invokevirtual 278	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1342: ldc_w 316
    //   1345: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   1348: ifeq +1136 -> 2484
    //   1351: aload_0
    //   1352: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1355: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1358: invokevirtual 317	com/appyet/data/FeedItem:getLink	()Ljava/lang/String;
    //   1361: astore_3
    //   1362: ldc_w 319
    //   1365: invokestatic 325	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   1368: aload_3
    //   1369: invokevirtual 329	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   1372: astore_3
    //   1373: aload_3
    //   1374: invokevirtual 334	java/util/regex/Matcher:find	()Z
    //   1377: istore 5
    //   1379: iload 5
    //   1381: ifeq +1070 -> 2451
    //   1384: aload_3
    //   1385: iconst_1
    //   1386: invokevirtual 337	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   1389: astore_3
    //   1390: new 76	java/lang/StringBuilder
    //   1393: dup
    //   1394: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1397: aload_1
    //   1398: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1401: ldc_w 339
    //   1404: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1407: aload_3
    //   1408: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1411: ldc_w 341
    //   1414: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1417: aload_3
    //   1418: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1421: ldc_w 343
    //   1424: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1427: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1430: astore_3
    //   1431: ldc_w 345
    //   1434: invokestatic 325	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   1437: aload_2
    //   1438: invokevirtual 329	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   1441: astore_1
    //   1442: aload_1
    //   1443: invokevirtual 334	java/util/regex/Matcher:find	()Z
    //   1446: istore 5
    //   1448: iload 5
    //   1450: ifeq +962 -> 2412
    //   1453: aload_1
    //   1454: iconst_1
    //   1455: invokevirtual 337	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   1458: astore_1
    //   1459: new 76	java/lang/StringBuilder
    //   1462: dup
    //   1463: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1466: aload_3
    //   1467: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1470: ldc_w 347
    //   1473: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1476: aload_1
    //   1477: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1480: ldc_w 297
    //   1483: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1486: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1489: astore_1
    //   1490: aload_1
    //   1491: astore_2
    //   1492: aload_0
    //   1493: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1496: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   1499: getfield 350	com/appyet/metadata/MetadataModuleFeed:IsShowViewWebsite	Z
    //   1502: ifeq +61 -> 1563
    //   1505: new 76	java/lang/StringBuilder
    //   1508: dup
    //   1509: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1512: aload_1
    //   1513: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1516: ldc_w 352
    //   1519: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1522: aload_0
    //   1523: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1526: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1529: invokevirtual 317	com/appyet/data/FeedItem:getLink	()Ljava/lang/String;
    //   1532: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1535: ldc -66
    //   1537: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1540: aload_0
    //   1541: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1544: ldc_w 353
    //   1547: invokevirtual 272	com/appyet/c/k:getString	(I)Ljava/lang/String;
    //   1550: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1553: ldc_w 355
    //   1556: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1559: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1562: astore_2
    //   1563: aload_2
    //   1564: astore_1
    //   1565: aload_0
    //   1566: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1569: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   1572: getfield 358	com/appyet/metadata/MetadataModuleFeed:IsDisQusComment	Z
    //   1575: ifeq +58 -> 1633
    //   1578: new 76	java/lang/StringBuilder
    //   1581: dup
    //   1582: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1585: aload_2
    //   1586: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1589: ldc_w 360
    //   1592: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1595: aload_0
    //   1596: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1599: invokestatic 363	com/appyet/c/k:g	(Lcom/appyet/c/k;)Ljava/lang/String;
    //   1602: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1605: ldc -66
    //   1607: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1610: aload_0
    //   1611: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1614: ldc_w 364
    //   1617: invokevirtual 272	com/appyet/c/k:getString	(I)Ljava/lang/String;
    //   1620: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1623: ldc_w 355
    //   1626: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1629: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1632: astore_1
    //   1633: aload_0
    //   1634: new 76	java/lang/StringBuilder
    //   1637: dup
    //   1638: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1641: aload_1
    //   1642: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1645: ldc_w 366
    //   1648: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1651: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1654: putfield 368	com/appyet/c/m:b	Ljava/lang/String;
    //   1657: goto +1222 -> 2879
    //   1660: aload_0
    //   1661: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1664: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1667: invokevirtual 371	com/appyet/data/FeedItem:getDescription	()Ljava/lang/String;
    //   1670: ifnonnull +24 -> 1694
    //   1673: aload_0
    //   1674: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1677: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   1680: getfield 61	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   1683: aload_0
    //   1684: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1687: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1690: invokevirtual 66	com/appyet/manager/d:a	(Lcom/appyet/data/FeedItem;)Lcom/appyet/data/FeedItem;
    //   1693: pop
    //   1694: aload_0
    //   1695: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1698: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   1701: invokevirtual 371	com/appyet/data/FeedItem:getDescription	()Ljava/lang/String;
    //   1704: astore_3
    //   1705: goto -1644 -> 61
    //   1708: new 76	java/lang/StringBuilder
    //   1711: dup
    //   1712: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1715: aload_1
    //   1716: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1719: ldc_w 373
    //   1722: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1725: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1728: astore_1
    //   1729: goto -1572 -> 157
    //   1732: aload_0
    //   1733: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1736: invokevirtual 377	com/appyet/c/k:getResources	()Landroid/content/res/Resources;
    //   1739: ldc_w 378
    //   1742: invokevirtual 384	android/content/res/Resources:getBoolean	(I)Z
    //   1745: ifeq +27 -> 1772
    //   1748: new 76	java/lang/StringBuilder
    //   1751: dup
    //   1752: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1755: aload_1
    //   1756: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1759: ldc_w 386
    //   1762: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1765: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1768: astore_1
    //   1769: goto -1565 -> 204
    //   1772: new 76	java/lang/StringBuilder
    //   1775: dup
    //   1776: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1779: aload_1
    //   1780: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1783: ldc_w 388
    //   1786: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1789: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1792: astore_1
    //   1793: goto -1589 -> 204
    //   1796: aload_0
    //   1797: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1800: invokevirtual 377	com/appyet/c/k:getResources	()Landroid/content/res/Resources;
    //   1803: ldc_w 378
    //   1806: invokevirtual 384	android/content/res/Resources:getBoolean	(I)Z
    //   1809: ifeq +27 -> 1836
    //   1812: new 76	java/lang/StringBuilder
    //   1815: dup
    //   1816: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1819: aload_1
    //   1820: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1823: ldc_w 390
    //   1826: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1829: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1832: astore_1
    //   1833: goto -1629 -> 204
    //   1836: new 76	java/lang/StringBuilder
    //   1839: dup
    //   1840: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1843: aload_1
    //   1844: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1847: ldc_w 392
    //   1850: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1853: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1856: astore_1
    //   1857: goto -1653 -> 204
    //   1860: aload_0
    //   1861: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1864: invokevirtual 377	com/appyet/c/k:getResources	()Landroid/content/res/Resources;
    //   1867: ldc_w 378
    //   1870: invokevirtual 384	android/content/res/Resources:getBoolean	(I)Z
    //   1873: ifeq +27 -> 1900
    //   1876: new 76	java/lang/StringBuilder
    //   1879: dup
    //   1880: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1883: aload_1
    //   1884: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1887: ldc_w 394
    //   1890: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1893: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1896: astore_1
    //   1897: goto -1693 -> 204
    //   1900: new 76	java/lang/StringBuilder
    //   1903: dup
    //   1904: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1907: aload_1
    //   1908: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1911: ldc_w 396
    //   1914: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1917: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1920: astore_1
    //   1921: goto -1717 -> 204
    //   1924: aload_0
    //   1925: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1928: invokevirtual 377	com/appyet/c/k:getResources	()Landroid/content/res/Resources;
    //   1931: ldc_w 378
    //   1934: invokevirtual 384	android/content/res/Resources:getBoolean	(I)Z
    //   1937: ifeq +27 -> 1964
    //   1940: new 76	java/lang/StringBuilder
    //   1943: dup
    //   1944: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1947: aload_1
    //   1948: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1951: ldc_w 398
    //   1954: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1957: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1960: astore_1
    //   1961: goto -1757 -> 204
    //   1964: new 76	java/lang/StringBuilder
    //   1967: dup
    //   1968: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1971: aload_1
    //   1972: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1975: ldc_w 400
    //   1978: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1981: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1984: astore_1
    //   1985: goto -1781 -> 204
    //   1988: aload_0
    //   1989: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   1992: invokevirtual 377	com/appyet/c/k:getResources	()Landroid/content/res/Resources;
    //   1995: ldc_w 378
    //   1998: invokevirtual 384	android/content/res/Resources:getBoolean	(I)Z
    //   2001: ifeq +27 -> 2028
    //   2004: new 76	java/lang/StringBuilder
    //   2007: dup
    //   2008: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2011: aload_1
    //   2012: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2015: ldc_w 402
    //   2018: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2021: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2024: astore_1
    //   2025: goto -1821 -> 204
    //   2028: new 76	java/lang/StringBuilder
    //   2031: dup
    //   2032: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2035: aload_1
    //   2036: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2039: ldc_w 404
    //   2042: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2045: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2048: astore_1
    //   2049: goto -1845 -> 204
    //   2052: aload_3
    //   2053: astore_1
    //   2054: aload_0
    //   2055: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2058: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   2061: ifnull +94 -> 2155
    //   2064: aload_3
    //   2065: astore_1
    //   2066: aload_0
    //   2067: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2070: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   2073: invokevirtual 238	com/appyet/data/Feed:getTitle	()Ljava/lang/String;
    //   2076: ifnull +79 -> 2155
    //   2079: aload_3
    //   2080: astore_1
    //   2081: aload_0
    //   2082: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2085: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   2088: invokevirtual 238	com/appyet/data/Feed:getTitle	()Ljava/lang/String;
    //   2091: invokevirtual 176	java/lang/String:trim	()Ljava/lang/String;
    //   2094: invokevirtual 229	java/lang/String:length	()I
    //   2097: ifle +58 -> 2155
    //   2100: aload_3
    //   2101: astore_1
    //   2102: aload_0
    //   2103: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2106: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   2109: getfield 241	com/appyet/metadata/MetadataModuleFeed:IsShowPublisher	Z
    //   2112: ifeq +43 -> 2155
    //   2115: new 76	java/lang/StringBuilder
    //   2118: dup
    //   2119: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2122: aload_3
    //   2123: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2126: ldc_w 406
    //   2129: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2132: aload_0
    //   2133: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2136: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   2139: invokevirtual 238	com/appyet/data/Feed:getTitle	()Ljava/lang/String;
    //   2142: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2145: ldc_w 408
    //   2148: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2151: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2154: astore_1
    //   2155: aload_1
    //   2156: astore_3
    //   2157: aload_0
    //   2158: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2161: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2164: invokevirtual 226	com/appyet/data/FeedItem:getAuthor	()Ljava/lang/String;
    //   2167: ifnull +61 -> 2228
    //   2170: aload_1
    //   2171: astore_3
    //   2172: aload_0
    //   2173: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2176: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2179: invokevirtual 226	com/appyet/data/FeedItem:getAuthor	()Ljava/lang/String;
    //   2182: invokevirtual 229	java/lang/String:length	()I
    //   2185: ifle +43 -> 2228
    //   2188: new 76	java/lang/StringBuilder
    //   2191: dup
    //   2192: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2195: aload_1
    //   2196: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2199: ldc_w 410
    //   2202: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2205: aload_0
    //   2206: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2209: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2212: invokevirtual 226	com/appyet/data/FeedItem:getAuthor	()Ljava/lang/String;
    //   2215: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2218: ldc_w 408
    //   2221: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2224: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2227: astore_3
    //   2228: new 76	java/lang/StringBuilder
    //   2231: dup
    //   2232: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2235: aload_3
    //   2236: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2239: ldc -44
    //   2241: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2244: aload_0
    //   2245: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2248: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   2251: aload_0
    //   2252: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2255: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2258: invokevirtual 216	com/appyet/data/FeedItem:getPubDate	()Ljava/util/Date;
    //   2261: invokestatic 221	com/appyet/d/a:b	(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    //   2264: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2267: ldc -33
    //   2269: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2272: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2275: astore_1
    //   2276: goto -1393 -> 883
    //   2279: new 76	java/lang/StringBuilder
    //   2282: dup
    //   2283: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2286: ldc_w 256
    //   2289: iconst_1
    //   2290: anewarray 258	java/lang/Object
    //   2293: dup
    //   2294: iconst_0
    //   2295: aload_3
    //   2296: aload_0
    //   2297: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2300: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2303: invokevirtual 254	com/appyet/data/FeedItem:getEnclosureLength	()Ljava/lang/Integer;
    //   2306: invokevirtual 289	java/lang/Integer:intValue	()I
    //   2309: i2d
    //   2310: ldc2_w 411
    //   2313: ddiv
    //   2314: invokevirtual 262	java/text/DecimalFormat:format	(D)Ljava/lang/String;
    //   2317: aastore
    //   2318: invokestatic 265	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   2321: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2324: ldc_w 267
    //   2327: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2330: aload_0
    //   2331: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2334: ldc_w 268
    //   2337: invokevirtual 272	com/appyet/c/k:getString	(I)Ljava/lang/String;
    //   2340: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2343: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2346: astore 4
    //   2348: goto -1375 -> 973
    //   2351: aload_0
    //   2352: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2355: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2358: invokevirtual 275	com/appyet/data/FeedItem:getEnclosureType	()Ljava/lang/String;
    //   2361: invokevirtual 278	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   2364: ldc_w 414
    //   2367: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   2370: ifeq +20 -> 2390
    //   2373: aload_0
    //   2374: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2377: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   2380: ldc_w 415
    //   2383: invokevirtual 282	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   2386: astore_3
    //   2387: goto -1365 -> 1022
    //   2390: aload_0
    //   2391: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2394: invokestatic 55	com/appyet/c/k:c	(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;
    //   2397: ldc_w 416
    //   2400: invokevirtual 282	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   2403: astore_3
    //   2404: goto -1382 -> 1022
    //   2407: astore_1
    //   2408: aload_1
    //   2409: invokestatic 421	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   2412: aload_3
    //   2413: astore_1
    //   2414: goto -924 -> 1490
    //   2417: astore_3
    //   2418: new 76	java/lang/StringBuilder
    //   2421: dup
    //   2422: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2425: aload_1
    //   2426: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2429: ldc_w 423
    //   2432: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2435: aload_2
    //   2436: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2439: ldc -33
    //   2441: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2444: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2447: astore_1
    //   2448: goto -958 -> 1490
    //   2451: new 76	java/lang/StringBuilder
    //   2454: dup
    //   2455: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2458: aload_1
    //   2459: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2462: ldc_w 423
    //   2465: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2468: aload_2
    //   2469: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2472: ldc -33
    //   2474: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2477: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2480: astore_1
    //   2481: goto -991 -> 1490
    //   2484: aload_0
    //   2485: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2488: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   2491: invokevirtual 312	com/appyet/data/Feed:getLink	()Ljava/lang/String;
    //   2494: invokevirtual 278	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   2497: ldc_w 425
    //   2500: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   2503: ifeq +242 -> 2745
    //   2506: aload_0
    //   2507: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2510: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2513: invokevirtual 168	com/appyet/data/FeedItem:getThumbnail	()Ljava/lang/String;
    //   2516: ifnull +229 -> 2745
    //   2519: aload_0
    //   2520: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2523: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2526: invokevirtual 168	com/appyet/data/FeedItem:getThumbnail	()Ljava/lang/String;
    //   2529: astore_3
    //   2530: aload_3
    //   2531: aload_3
    //   2532: ldc_w 427
    //   2535: invokevirtual 431	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2538: iconst_3
    //   2539: iadd
    //   2540: aload_3
    //   2541: ldc_w 433
    //   2544: invokevirtual 431	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2547: invokevirtual 437	java/lang/String:substring	(II)Ljava/lang/String;
    //   2550: astore 4
    //   2552: aload_0
    //   2553: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2556: invokestatic 36	com/appyet/c/k:b	(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;
    //   2559: new 76	java/lang/StringBuilder
    //   2562: dup
    //   2563: ldc_w 439
    //   2566: invokespecial 302	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2569: aload 4
    //   2571: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2574: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2577: invokevirtual 442	com/appyet/data/FeedItem:setLink	(Ljava/lang/String;)V
    //   2580: aload_0
    //   2581: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2584: invokestatic 235	com/appyet/c/k:e	(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;
    //   2587: invokevirtual 312	com/appyet/data/Feed:getLink	()Ljava/lang/String;
    //   2590: invokevirtual 278	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   2593: ldc_w 444
    //   2596: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   2599: ifeq +262 -> 2861
    //   2602: ldc_w 446
    //   2605: invokestatic 325	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   2608: aload_2
    //   2609: invokevirtual 329	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   2612: ldc_w 448
    //   2615: invokevirtual 451	java/util/regex/Matcher:replaceAll	(Ljava/lang/String;)Ljava/lang/String;
    //   2618: astore_3
    //   2619: aload_3
    //   2620: astore_2
    //   2621: aload_1
    //   2622: astore_3
    //   2623: new 76	java/lang/StringBuilder
    //   2626: dup
    //   2627: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2630: aload_1
    //   2631: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2634: ldc_w 339
    //   2637: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2640: aload 4
    //   2642: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2645: ldc_w 341
    //   2648: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2651: aload 4
    //   2653: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2656: ldc_w 343
    //   2659: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2662: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2665: astore_1
    //   2666: aload_1
    //   2667: astore_3
    //   2668: new 76	java/lang/StringBuilder
    //   2671: dup
    //   2672: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2675: aload_1
    //   2676: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2679: ldc_w 347
    //   2682: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2685: aload_2
    //   2686: ldc_w 453
    //   2689: ldc_w 455
    //   2692: invokevirtual 459	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   2695: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2698: ldc_w 297
    //   2701: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2704: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2707: astore_1
    //   2708: goto -1218 -> 1490
    //   2711: astore_3
    //   2712: new 76	java/lang/StringBuilder
    //   2715: dup
    //   2716: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2719: aload_1
    //   2720: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2723: ldc_w 423
    //   2726: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2729: aload_2
    //   2730: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2733: ldc -33
    //   2735: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2738: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2741: astore_1
    //   2742: goto -1252 -> 1490
    //   2745: aload_0
    //   2746: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2749: invokestatic 124	com/appyet/c/k:d	(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;
    //   2752: getfield 462	com/appyet/metadata/MetadataModuleFeed:IsViewImageOnTouch	Z
    //   2755: ifeq +53 -> 2808
    //   2758: new 76	java/lang/StringBuilder
    //   2761: dup
    //   2762: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2765: aload_1
    //   2766: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2769: ldc_w 423
    //   2772: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2775: astore_1
    //   2776: aload_0
    //   2777: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2780: astore_3
    //   2781: aload_1
    //   2782: aload_2
    //   2783: aload_0
    //   2784: getfield 17	com/appyet/c/m:d	Lcom/appyet/c/k;
    //   2787: invokestatic 464	com/appyet/c/k:f	(Lcom/appyet/c/k;)Ljava/lang/String;
    //   2790: invokestatic 467	com/appyet/c/k:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   2793: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2796: ldc -33
    //   2798: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2801: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2804: astore_1
    //   2805: goto -1315 -> 1490
    //   2808: new 76	java/lang/StringBuilder
    //   2811: dup
    //   2812: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   2815: aload_1
    //   2816: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2819: ldc_w 423
    //   2822: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2825: aload_2
    //   2826: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2829: ldc -33
    //   2831: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2834: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2837: astore_1
    //   2838: goto -1348 -> 1490
    //   2841: astore_1
    //   2842: aload_1
    //   2843: invokestatic 421	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   2846: goto +33 -> 2879
    //   2849: astore_1
    //   2850: aload_3
    //   2851: astore_1
    //   2852: goto -140 -> 2712
    //   2855: astore_1
    //   2856: aload_3
    //   2857: astore_1
    //   2858: goto -440 -> 2418
    //   2861: goto -240 -> 2621
    //   2864: goto -2660 -> 204
    //   2867: aload_3
    //   2868: astore_2
    //   2869: aload_3
    //   2870: ifnonnull -2626 -> 244
    //   2873: ldc -78
    //   2875: astore_2
    //   2876: goto -2632 -> 244
    //   2879: aconst_null
    //   2880: areturn
    //   2881: ldc_w 469
    //   2884: astore_1
    //   2885: goto -2290 -> 595
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2888	0	this	m
    //   63	2213	1	localObject1	Object
    //   2407	2	1	localIllegalStateException1	IllegalStateException
    //   2413	425	1	localObject2	Object
    //   2841	2	1	localException	Exception
    //   2849	1	1	localIllegalStateException2	IllegalStateException
    //   2851	1	1	localk1	k
    //   2855	1	1	localIllegalStateException3	IllegalStateException
    //   2857	28	1	localObject3	Object
    //   257	2619	2	localObject4	Object
    //   60	2353	3	localObject5	Object
    //   2417	1	3	localIllegalStateException4	IllegalStateException
    //   2529	139	3	localObject6	Object
    //   2711	1	3	localIllegalStateException5	IllegalStateException
    //   2780	90	3	localk2	k
    //   205	2447	4	localObject7	Object
    //   1377	72	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   1453	1490	2407	java/lang/IllegalStateException
    //   1384	1431	2417	java/lang/IllegalStateException
    //   2530	2619	2711	java/lang/IllegalStateException
    //   0	50	2841	java/lang/Exception
    //   50	61	2841	java/lang/Exception
    //   64	93	2841	java/lang/Exception
    //   93	157	2841	java/lang/Exception
    //   157	204	2841	java/lang/Exception
    //   207	241	2841	java/lang/Exception
    //   244	275	2841	java/lang/Exception
    //   278	291	2841	java/lang/Exception
    //   294	307	2841	java/lang/Exception
    //   310	336	2841	java/lang/Exception
    //   336	357	2841	java/lang/Exception
    //   357	366	2841	java/lang/Exception
    //   368	377	2841	java/lang/Exception
    //   377	397	2841	java/lang/Exception
    //   399	412	2841	java/lang/Exception
    //   414	427	2841	java/lang/Exception
    //   429	493	2841	java/lang/Exception
    //   495	508	2841	java/lang/Exception
    //   510	559	2841	java/lang/Exception
    //   559	592	2841	java/lang/Exception
    //   595	711	2841	java/lang/Exception
    //   713	726	2841	java/lang/Exception
    //   728	782	2841	java/lang/Exception
    //   784	794	2841	java/lang/Exception
    //   796	809	2841	java/lang/Exception
    //   811	830	2841	java/lang/Exception
    //   832	883	2841	java/lang/Exception
    //   885	973	2841	java/lang/Exception
    //   973	1022	2841	java/lang/Exception
    //   1022	1047	2841	java/lang/Exception
    //   1049	1091	2841	java/lang/Exception
    //   1093	1150	2841	java/lang/Exception
    //   1150	1171	2841	java/lang/Exception
    //   1173	1186	2841	java/lang/Exception
    //   1194	1207	2841	java/lang/Exception
    //   1210	1276	2841	java/lang/Exception
    //   1276	1307	2841	java/lang/Exception
    //   1307	1351	2841	java/lang/Exception
    //   1351	1379	2841	java/lang/Exception
    //   1384	1431	2841	java/lang/Exception
    //   1431	1448	2841	java/lang/Exception
    //   1453	1490	2841	java/lang/Exception
    //   1492	1563	2841	java/lang/Exception
    //   1565	1633	2841	java/lang/Exception
    //   1633	1657	2841	java/lang/Exception
    //   1660	1694	2841	java/lang/Exception
    //   1694	1705	2841	java/lang/Exception
    //   1708	1729	2841	java/lang/Exception
    //   1732	1769	2841	java/lang/Exception
    //   1772	1793	2841	java/lang/Exception
    //   1796	1833	2841	java/lang/Exception
    //   1836	1857	2841	java/lang/Exception
    //   1860	1897	2841	java/lang/Exception
    //   1900	1921	2841	java/lang/Exception
    //   1924	1961	2841	java/lang/Exception
    //   1964	1985	2841	java/lang/Exception
    //   1988	2025	2841	java/lang/Exception
    //   2028	2049	2841	java/lang/Exception
    //   2054	2064	2841	java/lang/Exception
    //   2066	2079	2841	java/lang/Exception
    //   2081	2100	2841	java/lang/Exception
    //   2102	2155	2841	java/lang/Exception
    //   2157	2170	2841	java/lang/Exception
    //   2172	2228	2841	java/lang/Exception
    //   2228	2276	2841	java/lang/Exception
    //   2279	2348	2841	java/lang/Exception
    //   2351	2387	2841	java/lang/Exception
    //   2390	2404	2841	java/lang/Exception
    //   2408	2412	2841	java/lang/Exception
    //   2418	2448	2841	java/lang/Exception
    //   2451	2481	2841	java/lang/Exception
    //   2484	2530	2841	java/lang/Exception
    //   2530	2619	2841	java/lang/Exception
    //   2623	2666	2841	java/lang/Exception
    //   2668	2708	2841	java/lang/Exception
    //   2712	2742	2841	java/lang/Exception
    //   2745	2805	2841	java/lang/Exception
    //   2808	2838	2841	java/lang/Exception
    //   2623	2666	2849	java/lang/IllegalStateException
    //   2668	2708	2849	java/lang/IllegalStateException
    //   1431	1448	2855	java/lang/IllegalStateException
    //   2408	2412	2855	java/lang/IllegalStateException
  }
  
  protected final void a()
  {
    k.i(d).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */