package com.appyet.c;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.widget.ArrayAdapter;
import com.appyet.context.ApplicationContext;
import com.appyet.data.FeedItem;

public final class ae
  extends ArrayAdapter<FeedItem>
{
  private ApplicationContext b;
  private int c;
  private LayoutInflater d;
  private boolean e;
  private int f = 0;
  
  public ae(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramInt1, 2130903101, paramInt2);
    b = ((ApplicationContext)paramInt1.getApplicationContext());
    c = paramBoolean;
    d = ((LayoutInflater)b.getSystemService("layout_inflater"));
    e = false;
    f = ((int)TypedValue.applyDimension(1, 6.0F, paramInt1.getResources().getDisplayMetrics()));
  }
  
  /* Error */
  public final android.view.View getView(int paramInt, android.view.View paramView, android.view.ViewGroup paramViewGroup)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +477 -> 478
    //   4: aload_0
    //   5: getfield 48	com/appyet/c/ae:d	Landroid/view/LayoutInflater;
    //   8: aload_0
    //   9: getfield 38	com/appyet/c/ae:c	I
    //   12: aconst_null
    //   13: iconst_0
    //   14: invokevirtual 78	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   17: astore_3
    //   18: aload_3
    //   19: astore_2
    //   20: new 80	com/appyet/c/af
    //   23: dup
    //   24: aload_0
    //   25: getfield 20	com/appyet/c/ae:a	Lcom/appyet/c/r;
    //   28: invokespecial 83	com/appyet/c/af:<init>	(Lcom/appyet/c/r;)V
    //   31: astore 4
    //   33: aload_3
    //   34: astore_2
    //   35: aload_0
    //   36: getfield 38	com/appyet/c/ae:c	I
    //   39: ldc 84
    //   41: if_icmpeq +14 -> 55
    //   44: aload_3
    //   45: astore_2
    //   46: aload_0
    //   47: getfield 38	com/appyet/c/ae:c	I
    //   50: ldc 85
    //   52: if_icmpne +384 -> 436
    //   55: aload_3
    //   56: astore_2
    //   57: aload 4
    //   59: aload_3
    //   60: ldc 86
    //   62: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   65: checkcast 94	android/widget/TextView
    //   68: putfield 97	com/appyet/c/af:a	Landroid/widget/TextView;
    //   71: aload_3
    //   72: astore_2
    //   73: aload 4
    //   75: aload_3
    //   76: ldc 98
    //   78: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   81: checkcast 94	android/widget/TextView
    //   84: putfield 100	com/appyet/c/af:b	Landroid/widget/TextView;
    //   87: aload_3
    //   88: astore_2
    //   89: aload 4
    //   91: aload_3
    //   92: ldc 101
    //   94: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   97: checkcast 94	android/widget/TextView
    //   100: putfield 103	com/appyet/c/af:c	Landroid/widget/TextView;
    //   103: aload_3
    //   104: astore_2
    //   105: aload 4
    //   107: aload_3
    //   108: ldc 104
    //   110: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   113: checkcast 94	android/widget/TextView
    //   116: putfield 106	com/appyet/c/af:d	Landroid/widget/TextView;
    //   119: aload_3
    //   120: astore_2
    //   121: aload 4
    //   123: aload_3
    //   124: ldc 107
    //   126: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   129: checkcast 94	android/widget/TextView
    //   132: putfield 109	com/appyet/c/af:e	Landroid/widget/TextView;
    //   135: aload_3
    //   136: astore_2
    //   137: aload 4
    //   139: aload_3
    //   140: ldc 110
    //   142: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   145: checkcast 112	android/widget/ImageView
    //   148: putfield 115	com/appyet/c/af:f	Landroid/widget/ImageView;
    //   151: aload_3
    //   152: astore_2
    //   153: aload 4
    //   155: aload_3
    //   156: ldc 116
    //   158: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   161: checkcast 112	android/widget/ImageView
    //   164: putfield 119	com/appyet/c/af:g	Landroid/widget/ImageView;
    //   167: aload_3
    //   168: astore_2
    //   169: aload 4
    //   171: aload_3
    //   172: ldc 120
    //   174: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   177: checkcast 112	android/widget/ImageView
    //   180: putfield 123	com/appyet/c/af:l	Landroid/widget/ImageView;
    //   183: aload_3
    //   184: astore_2
    //   185: aload 4
    //   187: aload_3
    //   188: ldc 124
    //   190: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   193: checkcast 126	android/widget/ProgressBar
    //   196: putfield 130	com/appyet/c/af:h	Landroid/widget/ProgressBar;
    //   199: aload_3
    //   200: astore_2
    //   201: aload 4
    //   203: aload_3
    //   204: ldc -125
    //   206: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   209: checkcast 112	android/widget/ImageView
    //   212: putfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   215: aload_3
    //   216: astore_2
    //   217: aload 4
    //   219: aload_3
    //   220: ldc -121
    //   222: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   225: checkcast 137	android/widget/LinearLayout
    //   228: putfield 141	com/appyet/c/af:j	Landroid/widget/LinearLayout;
    //   231: aload_3
    //   232: astore_2
    //   233: aload 4
    //   235: aload_3
    //   236: ldc -114
    //   238: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   241: checkcast 137	android/widget/LinearLayout
    //   244: putfield 145	com/appyet/c/af:k	Landroid/widget/LinearLayout;
    //   247: aload_3
    //   248: astore_2
    //   249: aload 4
    //   251: aload_3
    //   252: ldc -110
    //   254: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   257: checkcast 94	android/widget/TextView
    //   260: putfield 149	com/appyet/c/af:m	Landroid/widget/TextView;
    //   263: aload_3
    //   264: astore_2
    //   265: aload 4
    //   267: aload_3
    //   268: ldc -106
    //   270: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   273: checkcast 112	android/widget/ImageView
    //   276: putfield 153	com/appyet/c/af:n	Landroid/widget/ImageView;
    //   279: aload_3
    //   280: astore_2
    //   281: aload_3
    //   282: aload 4
    //   284: invokevirtual 157	android/view/View:setTag	(Ljava/lang/Object;)V
    //   287: aload_3
    //   288: astore_2
    //   289: aload_0
    //   290: iload_1
    //   291: invokevirtual 161	com/appyet/c/ae:getItem	(I)Ljava/lang/Object;
    //   294: checkcast 163	com/appyet/data/FeedItem
    //   297: astore 5
    //   299: aload_3
    //   300: astore_2
    //   301: aload_0
    //   302: getfield 36	com/appyet/c/ae:b	Lcom/appyet/context/ApplicationContext;
    //   305: getfield 166	com/appyet/context/ApplicationContext:n	Lcom/appyet/context/f;
    //   308: getfield 171	com/appyet/context/f:c	Ljava/util/Hashtable;
    //   311: aload 5
    //   313: invokevirtual 175	com/appyet/data/FeedItem:getFeed	()Lcom/appyet/data/Feed;
    //   316: invokevirtual 181	com/appyet/data/Feed:getFeedId	()Ljava/lang/Long;
    //   319: invokevirtual 187	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   322: checkcast 177	com/appyet/data/Feed
    //   325: astore 6
    //   327: aload_3
    //   328: astore_2
    //   329: aload_0
    //   330: getfield 36	com/appyet/c/ae:b	Lcom/appyet/context/ApplicationContext;
    //   333: getfield 166	com/appyet/context/ApplicationContext:n	Lcom/appyet/context/f;
    //   336: getfield 189	com/appyet/context/f:d	Ljava/util/Hashtable;
    //   339: aload 5
    //   341: invokevirtual 175	com/appyet/data/FeedItem:getFeed	()Lcom/appyet/data/Feed;
    //   344: invokevirtual 181	com/appyet/data/Feed:getFeedId	()Ljava/lang/Long;
    //   347: invokevirtual 187	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   350: checkcast 191	com/appyet/metadata/MetadataModuleFeed
    //   353: astore 7
    //   355: aload_3
    //   356: astore_2
    //   357: aload_0
    //   358: getfield 38	com/appyet/c/ae:c	I
    //   361: ldc 84
    //   363: if_icmpeq +16 -> 379
    //   366: aload_3
    //   367: astore_2
    //   368: aload_0
    //   369: getfield 38	com/appyet/c/ae:c	I
    //   372: istore_1
    //   373: iload_1
    //   374: ldc 85
    //   376: if_icmpne +318 -> 694
    //   379: aload 5
    //   381: invokevirtual 195	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   384: ifnonnull +108 -> 492
    //   387: aload 4
    //   389: getfield 141	com/appyet/c/af:j	Landroid/widget/LinearLayout;
    //   392: iconst_0
    //   393: iconst_0
    //   394: iconst_0
    //   395: iconst_0
    //   396: invokevirtual 199	android/widget/LinearLayout:setPadding	(IIII)V
    //   399: aload 4
    //   401: getfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   404: bipush 8
    //   406: invokevirtual 203	android/widget/ImageView:setVisibility	(I)V
    //   409: aload_3
    //   410: astore_2
    //   411: aload_0
    //   412: getfield 36	com/appyet/c/ae:b	Lcom/appyet/context/ApplicationContext;
    //   415: aload_0
    //   416: getfield 38	com/appyet/c/ae:c	I
    //   419: aload 4
    //   421: aload 5
    //   423: aload_0
    //   424: getfield 50	com/appyet/c/ae:e	Z
    //   427: aload 6
    //   429: aload 7
    //   431: invokestatic 208	com/appyet/c/r:a	(Lcom/appyet/context/ApplicationContext;ILcom/appyet/c/af;Lcom/appyet/data/FeedItem;ZLcom/appyet/data/Feed;Lcom/appyet/metadata/MetadataModuleFeed;)V
    //   434: aload_3
    //   435: areturn
    //   436: aload_3
    //   437: astore_2
    //   438: aload 4
    //   440: aload_3
    //   441: ldc -125
    //   443: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   446: checkcast 112	android/widget/ImageView
    //   449: putfield 211	com/appyet/c/af:o	Landroid/widget/ImageView;
    //   452: aload_3
    //   453: astore_2
    //   454: aload 4
    //   456: aload_3
    //   457: ldc 98
    //   459: invokevirtual 92	android/view/View:findViewById	(I)Landroid/view/View;
    //   462: checkcast 94	android/widget/TextView
    //   465: putfield 214	com/appyet/c/af:p	Landroid/widget/TextView;
    //   468: goto -189 -> 279
    //   471: astore_3
    //   472: aload_3
    //   473: invokestatic 219	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   476: aload_2
    //   477: areturn
    //   478: aload_2
    //   479: invokevirtual 223	android/view/View:getTag	()Ljava/lang/Object;
    //   482: checkcast 80	com/appyet/c/af
    //   485: astore 4
    //   487: aload_2
    //   488: astore_3
    //   489: goto -202 -> 287
    //   492: aload_0
    //   493: getfield 36	com/appyet/c/ae:b	Lcom/appyet/context/ApplicationContext;
    //   496: getfield 226	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   499: invokevirtual 232	com/appyet/manager/bp:D	()I
    //   502: istore_1
    //   503: aload_0
    //   504: getfield 36	com/appyet/c/ae:b	Lcom/appyet/context/ApplicationContext;
    //   507: invokevirtual 233	com/appyet/context/ApplicationContext:getResources	()Landroid/content/res/Resources;
    //   510: astore_2
    //   511: iconst_1
    //   512: iload_1
    //   513: i2f
    //   514: aload_2
    //   515: invokevirtual 61	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   518: invokestatic 67	android/util/TypedValue:applyDimension	(IFLandroid/util/DisplayMetrics;)F
    //   521: f2i
    //   522: istore_1
    //   523: aload_0
    //   524: getfield 36	com/appyet/c/ae:b	Lcom/appyet/context/ApplicationContext;
    //   527: invokestatic 238	com/appyet/manager/ar:b	(Lcom/appyet/context/ApplicationContext;)Ljava/util/Locale;
    //   530: invokevirtual 243	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   533: ldc -11
    //   535: invokevirtual 251	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   538: ifeq +136 -> 674
    //   541: aload 4
    //   543: getfield 141	com/appyet/c/af:j	Landroid/widget/LinearLayout;
    //   546: aload_0
    //   547: getfield 26	com/appyet/c/ae:f	I
    //   550: iload_1
    //   551: iadd
    //   552: iconst_0
    //   553: iconst_0
    //   554: iconst_0
    //   555: invokevirtual 199	android/widget/LinearLayout:setPadding	(IIII)V
    //   558: aload 4
    //   560: getfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   563: iconst_0
    //   564: invokevirtual 203	android/widget/ImageView:setVisibility	(I)V
    //   567: aload 4
    //   569: getfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   572: invokevirtual 255	android/widget/ImageView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   575: checkcast 257	android/widget/RelativeLayout$LayoutParams
    //   578: astore_2
    //   579: aload_2
    //   580: iload_1
    //   581: putfield 260	android/widget/RelativeLayout$LayoutParams:width	I
    //   584: aload_2
    //   585: iload_1
    //   586: putfield 263	android/widget/RelativeLayout$LayoutParams:height	I
    //   589: aload 4
    //   591: getfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   594: aload_2
    //   595: invokevirtual 267	android/widget/ImageView:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   598: aload 5
    //   600: invokevirtual 195	com/appyet/data/FeedItem:getThumbnailMD5	()Ljava/lang/String;
    //   603: ifnull -194 -> 409
    //   606: aload_0
    //   607: getfield 20	com/appyet/c/ae:a	Lcom/appyet/c/r;
    //   610: invokestatic 270	com/appyet/c/r:l	(Lcom/appyet/c/r;)Lcom/a/a/b/f;
    //   613: aload 5
    //   615: invokevirtual 273	com/appyet/data/FeedItem:getThumbnail	()Ljava/lang/String;
    //   618: aload 4
    //   620: getfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   623: aload_0
    //   624: getfield 20	com/appyet/c/ae:a	Lcom/appyet/c/r;
    //   627: invokestatic 276	com/appyet/c/r:k	(Lcom/appyet/c/r;)Lcom/a/a/b/d;
    //   630: invokevirtual 281	com/a/a/b/f:a	(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V
    //   633: goto -224 -> 409
    //   636: astore 8
    //   638: aload_3
    //   639: astore_2
    //   640: aload 4
    //   642: getfield 134	com/appyet/c/af:i	Landroid/widget/ImageView;
    //   645: bipush 8
    //   647: invokevirtual 203	android/widget/ImageView:setVisibility	(I)V
    //   650: aload_3
    //   651: astore_2
    //   652: aload 4
    //   654: getfield 141	com/appyet/c/af:j	Landroid/widget/LinearLayout;
    //   657: iconst_0
    //   658: iconst_0
    //   659: iconst_0
    //   660: iconst_0
    //   661: invokevirtual 199	android/widget/LinearLayout:setPadding	(IIII)V
    //   664: aload_3
    //   665: astore_2
    //   666: aload 8
    //   668: invokestatic 219	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   671: goto -262 -> 409
    //   674: aload 4
    //   676: getfield 141	com/appyet/c/af:j	Landroid/widget/LinearLayout;
    //   679: iconst_0
    //   680: iconst_0
    //   681: aload_0
    //   682: getfield 26	com/appyet/c/ae:f	I
    //   685: iload_1
    //   686: iadd
    //   687: iconst_0
    //   688: invokevirtual 199	android/widget/LinearLayout:setPadding	(IIII)V
    //   691: goto -133 -> 558
    //   694: aload_3
    //   695: astore_2
    //   696: aload_0
    //   697: getfield 20	com/appyet/c/ae:a	Lcom/appyet/c/r;
    //   700: invokestatic 270	com/appyet/c/r:l	(Lcom/appyet/c/r;)Lcom/a/a/b/f;
    //   703: aload 5
    //   705: invokevirtual 273	com/appyet/data/FeedItem:getThumbnail	()Ljava/lang/String;
    //   708: aload 4
    //   710: getfield 211	com/appyet/c/af:o	Landroid/widget/ImageView;
    //   713: aload_0
    //   714: getfield 20	com/appyet/c/ae:a	Lcom/appyet/c/r;
    //   717: invokestatic 283	com/appyet/c/r:m	(Lcom/appyet/c/r;)Lcom/a/a/b/d;
    //   720: invokevirtual 281	com/a/a/b/f:a	(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V
    //   723: goto -314 -> 409
    //   726: astore_3
    //   727: goto -255 -> 472
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	730	0	this	ae
    //   0	730	1	paramInt	int
    //   0	730	2	paramView	android.view.View
    //   0	730	3	paramViewGroup	android.view.ViewGroup
    //   31	678	4	localaf	af
    //   297	407	5	localFeedItem	FeedItem
    //   325	103	6	localFeed	com.appyet.data.Feed
    //   353	77	7	localMetadataModuleFeed	com.appyet.metadata.MetadataModuleFeed
    //   636	31	8	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   20	33	471	java/lang/Exception
    //   35	44	471	java/lang/Exception
    //   46	55	471	java/lang/Exception
    //   57	71	471	java/lang/Exception
    //   73	87	471	java/lang/Exception
    //   89	103	471	java/lang/Exception
    //   105	119	471	java/lang/Exception
    //   121	135	471	java/lang/Exception
    //   137	151	471	java/lang/Exception
    //   153	167	471	java/lang/Exception
    //   169	183	471	java/lang/Exception
    //   185	199	471	java/lang/Exception
    //   201	215	471	java/lang/Exception
    //   217	231	471	java/lang/Exception
    //   233	247	471	java/lang/Exception
    //   249	263	471	java/lang/Exception
    //   265	279	471	java/lang/Exception
    //   281	287	471	java/lang/Exception
    //   289	299	471	java/lang/Exception
    //   301	327	471	java/lang/Exception
    //   329	355	471	java/lang/Exception
    //   357	366	471	java/lang/Exception
    //   368	373	471	java/lang/Exception
    //   411	434	471	java/lang/Exception
    //   438	452	471	java/lang/Exception
    //   454	468	471	java/lang/Exception
    //   640	650	471	java/lang/Exception
    //   652	664	471	java/lang/Exception
    //   666	671	471	java/lang/Exception
    //   696	723	471	java/lang/Exception
    //   379	409	636	java/lang/Exception
    //   492	558	636	java/lang/Exception
    //   558	633	636	java/lang/Exception
    //   674	691	636	java/lang/Exception
    //   4	18	726	java/lang/Exception
    //   478	487	726	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */