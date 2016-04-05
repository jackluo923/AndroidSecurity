package com.appyet.activity;

import android.widget.AdapterView.OnItemClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Feed;
import com.appyet.data.Module;
import com.mobeta.android.dslv.DragSortListView;
import java.util.List;

public class CustomizeActivity
  extends SherlockActivity
{
  ApplicationContext a;
  MainActivity b;
  List<Feed> c;
  b d;
  List<Module> e = null;
  Module f = null;
  DragSortListView g;
  TextView h;
  ProgressBar i;
  private boolean j = false;
  private AdapterView.OnItemClickListener k = new a(this);
  
  /* Error */
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 52	com/actionbarsherlock/app/SherlockActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: invokestatic 57	com/appyet/manager/ar:a	(Landroid/content/Context;)V
    //   9: aload_0
    //   10: ldc 58
    //   12: invokevirtual 62	com/appyet/activity/CustomizeActivity:setContentView	(I)V
    //   15: aload_0
    //   16: aload_0
    //   17: invokevirtual 66	com/appyet/activity/CustomizeActivity:getApplicationContext	()Landroid/content/Context;
    //   20: checkcast 68	com/appyet/context/ApplicationContext
    //   23: putfield 70	com/appyet/activity/CustomizeActivity:a	Lcom/appyet/context/ApplicationContext;
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 70	com/appyet/activity/CustomizeActivity:a	Lcom/appyet/context/ApplicationContext;
    //   31: getfield 73	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   34: invokevirtual 78	com/appyet/manager/d:i	()Lcom/appyet/data/Module;
    //   37: putfield 35	com/appyet/activity/CustomizeActivity:f	Lcom/appyet/data/Module;
    //   40: aload_0
    //   41: getfield 35	com/appyet/activity/CustomizeActivity:f	Lcom/appyet/data/Module;
    //   44: ifnonnull +8 -> 52
    //   47: aload_0
    //   48: invokevirtual 81	com/appyet/activity/CustomizeActivity:finish	()V
    //   51: return
    //   52: aload_0
    //   53: ldc 82
    //   55: invokevirtual 85	com/appyet/activity/CustomizeActivity:setTitle	(I)V
    //   58: ldc 87
    //   60: astore 4
    //   62: aload 4
    //   64: astore_1
    //   65: aload_0
    //   66: getfield 35	com/appyet/activity/CustomizeActivity:f	Lcom/appyet/data/Module;
    //   69: ifnull +24 -> 93
    //   72: aload 4
    //   74: astore_1
    //   75: aload_0
    //   76: getfield 35	com/appyet/activity/CustomizeActivity:f	Lcom/appyet/data/Module;
    //   79: invokevirtual 93	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   82: ifnull +11 -> 93
    //   85: aload_0
    //   86: getfield 35	com/appyet/activity/CustomizeActivity:f	Lcom/appyet/data/Module;
    //   89: invokevirtual 93	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   92: astore_1
    //   93: aconst_null
    //   94: astore 4
    //   96: aload_0
    //   97: invokevirtual 97	com/appyet/activity/CustomizeActivity:getResources	()Landroid/content/res/Resources;
    //   100: invokevirtual 103	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   103: new 105	java/lang/StringBuilder
    //   106: dup
    //   107: ldc 107
    //   109: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   112: aload_1
    //   113: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokevirtual 123	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   122: astore_1
    //   123: aload_1
    //   124: invokestatic 129	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   127: astore 4
    //   129: new 131	android/util/DisplayMetrics
    //   132: dup
    //   133: invokespecial 132	android/util/DisplayMetrics:<init>	()V
    //   136: astore 5
    //   138: aload_0
    //   139: invokevirtual 136	com/appyet/activity/CustomizeActivity:getWindowManager	()Landroid/view/WindowManager;
    //   142: invokeinterface 142 1 0
    //   147: aload 5
    //   149: invokevirtual 148	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   152: aload 4
    //   154: invokevirtual 154	android/graphics/Bitmap:getWidth	()I
    //   157: istore 6
    //   159: aload 4
    //   161: invokevirtual 157	android/graphics/Bitmap:getHeight	()I
    //   164: istore 7
    //   166: aload 5
    //   168: getfield 161	android/util/DisplayMetrics:scaledDensity	F
    //   171: fstore_2
    //   172: aload 5
    //   174: getfield 161	android/util/DisplayMetrics:scaledDensity	F
    //   177: fstore_3
    //   178: new 163	android/graphics/Matrix
    //   181: dup
    //   182: invokespecial 164	android/graphics/Matrix:<init>	()V
    //   185: astore 5
    //   187: aload 5
    //   189: fload_2
    //   190: fload_3
    //   191: invokevirtual 168	android/graphics/Matrix:postScale	(FF)Z
    //   194: pop
    //   195: aload 4
    //   197: iconst_0
    //   198: iconst_0
    //   199: iload 6
    //   201: iload 7
    //   203: aload 5
    //   205: iconst_1
    //   206: invokestatic 172	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   209: astore 4
    //   211: new 174	android/graphics/drawable/BitmapDrawable
    //   214: dup
    //   215: aload_0
    //   216: invokevirtual 97	com/appyet/activity/CustomizeActivity:getResources	()Landroid/content/res/Resources;
    //   219: aload 4
    //   221: invokespecial 177	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   224: astore 4
    //   226: aload_0
    //   227: invokevirtual 181	com/appyet/activity/CustomizeActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   230: aload 4
    //   232: invokevirtual 187	com/actionbarsherlock/app/ActionBar:setIcon	(Landroid/graphics/drawable/Drawable;)V
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 192	java/io/InputStream:close	()V
    //   243: aload_0
    //   244: aload_0
    //   245: ldc -63
    //   247: invokevirtual 197	com/appyet/activity/CustomizeActivity:findViewById	(I)Landroid/view/View;
    //   250: checkcast 199	android/widget/TextView
    //   253: putfield 201	com/appyet/activity/CustomizeActivity:h	Landroid/widget/TextView;
    //   256: aload_0
    //   257: aload_0
    //   258: ldc -54
    //   260: invokevirtual 197	com/appyet/activity/CustomizeActivity:findViewById	(I)Landroid/view/View;
    //   263: checkcast 204	com/mobeta/android/dslv/DragSortListView
    //   266: putfield 206	com/appyet/activity/CustomizeActivity:g	Lcom/mobeta/android/dslv/DragSortListView;
    //   269: aload_0
    //   270: aload_0
    //   271: ldc -49
    //   273: invokevirtual 197	com/appyet/activity/CustomizeActivity:findViewById	(I)Landroid/view/View;
    //   276: checkcast 209	android/widget/ProgressBar
    //   279: putfield 211	com/appyet/activity/CustomizeActivity:i	Landroid/widget/ProgressBar;
    //   282: aload_0
    //   283: invokevirtual 181	com/appyet/activity/CustomizeActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   286: astore_1
    //   287: aload_1
    //   288: iconst_1
    //   289: invokevirtual 215	com/actionbarsherlock/app/ActionBar:setDisplayHomeAsUpEnabled	(Z)V
    //   292: aload_1
    //   293: iconst_1
    //   294: invokevirtual 218	com/actionbarsherlock/app/ActionBar:setHomeButtonEnabled	(Z)V
    //   297: aload_0
    //   298: getfield 206	com/appyet/activity/CustomizeActivity:g	Lcom/mobeta/android/dslv/DragSortListView;
    //   301: iconst_0
    //   302: invokevirtual 221	com/mobeta/android/dslv/DragSortListView:setCacheColorHint	(I)V
    //   305: aload_0
    //   306: new 223	com/appyet/activity/b
    //   309: dup
    //   310: aload_0
    //   311: aload_0
    //   312: invokespecial 226	com/appyet/activity/b:<init>	(Lcom/appyet/activity/CustomizeActivity;Landroid/content/Context;)V
    //   315: putfield 228	com/appyet/activity/CustomizeActivity:d	Lcom/appyet/activity/b;
    //   318: aload_0
    //   319: getfield 206	com/appyet/activity/CustomizeActivity:g	Lcom/mobeta/android/dslv/DragSortListView;
    //   322: iconst_0
    //   323: invokevirtual 231	com/mobeta/android/dslv/DragSortListView:setDividerHeight	(I)V
    //   326: aload_0
    //   327: getfield 206	com/appyet/activity/CustomizeActivity:g	Lcom/mobeta/android/dslv/DragSortListView;
    //   330: aload_0
    //   331: getfield 44	com/appyet/activity/CustomizeActivity:k	Landroid/widget/AdapterView$OnItemClickListener;
    //   334: invokevirtual 235	com/mobeta/android/dslv/DragSortListView:setOnItemClickListener	(Landroid/widget/AdapterView$OnItemClickListener;)V
    //   337: new 237	com/appyet/activity/d
    //   340: dup
    //   341: aload_0
    //   342: invokespecial 238	com/appyet/activity/d:<init>	(Lcom/appyet/activity/CustomizeActivity;)V
    //   345: iconst_0
    //   346: anewarray 240	java/lang/Void
    //   349: invokevirtual 243	com/appyet/activity/d:a	([Ljava/lang/Object;)Lcom/appyet/f/a;
    //   352: pop
    //   353: aload_0
    //   354: getfield 70	com/appyet/activity/CustomizeActivity:a	Lcom/appyet/context/ApplicationContext;
    //   357: getfield 246	com/appyet/context/ApplicationContext:e	Lcom/appyet/manager/ap;
    //   360: ldc -8
    //   362: invokevirtual 252	com/appyet/manager/ap:a	(Ljava/lang/String;)V
    //   365: return
    //   366: astore 5
    //   368: aload 4
    //   370: astore_1
    //   371: aload 5
    //   373: astore 4
    //   375: aload 4
    //   377: invokestatic 257	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   380: aload_0
    //   381: invokevirtual 181	com/appyet/activity/CustomizeActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   384: ldc_w 258
    //   387: invokevirtual 260	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   390: aload_1
    //   391: ifnull -148 -> 243
    //   394: aload_1
    //   395: invokevirtual 192	java/io/InputStream:close	()V
    //   398: goto -155 -> 243
    //   401: astore_1
    //   402: aload_1
    //   403: invokestatic 257	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   406: aload_0
    //   407: invokevirtual 181	com/appyet/activity/CustomizeActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   410: astore_1
    //   411: aload_1
    //   412: ldc_w 258
    //   415: invokevirtual 260	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   418: goto -175 -> 243
    //   421: astore 4
    //   423: aconst_null
    //   424: astore_1
    //   425: aload_1
    //   426: ifnull +7 -> 433
    //   429: aload_1
    //   430: invokevirtual 192	java/io/InputStream:close	()V
    //   433: aload 4
    //   435: athrow
    //   436: astore_1
    //   437: aload_1
    //   438: invokestatic 257	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   441: aload_0
    //   442: invokevirtual 181	com/appyet/activity/CustomizeActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   445: ldc_w 258
    //   448: invokevirtual 260	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   451: goto -18 -> 433
    //   454: astore_1
    //   455: aload_1
    //   456: invokestatic 257	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   459: aload_0
    //   460: invokevirtual 181	com/appyet/activity/CustomizeActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   463: astore_1
    //   464: goto -53 -> 411
    //   467: astore 4
    //   469: goto -44 -> 425
    //   472: astore 4
    //   474: goto -49 -> 425
    //   477: astore 4
    //   479: goto -104 -> 375
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	482	0	this	CustomizeActivity
    //   0	482	1	paramBundle	android.os.Bundle
    //   171	19	2	f1	float
    //   177	14	3	f2	float
    //   60	316	4	localObject1	Object
    //   421	13	4	localObject2	Object
    //   467	1	4	localObject3	Object
    //   472	1	4	localObject4	Object
    //   477	1	4	localIOException1	java.io.IOException
    //   136	68	5	localObject5	Object
    //   366	6	5	localIOException2	java.io.IOException
    //   157	43	6	m	int
    //   164	38	7	n	int
    // Exception table:
    //   from	to	target	type
    //   96	123	366	java/io/IOException
    //   394	398	401	java/io/IOException
    //   96	123	421	finally
    //   429	433	436	java/io/IOException
    //   239	243	454	java/io/IOException
    //   123	235	467	finally
    //   375	390	472	finally
    //   123	235	477	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.CustomizeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */