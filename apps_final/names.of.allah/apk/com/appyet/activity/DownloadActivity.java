package com.appyet.activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.view.Menu;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.data.Module;
import com.appyet.manager.ar;
import com.appyet.manager.bp;
import java.io.File;

public class DownloadActivity
  extends SherlockActivity
{
  protected ApplicationContext a;
  AdapterView.OnItemClickListener b = new i(this);
  private l c;
  private TextView d;
  private ListView e;
  private ProgressBar f;
  private Module g;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    Object localObject = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    try
    {
      if (paramMenuItem.getItemId() == 2131362035)
      {
        i = position;
        try
        {
          localObject = new Intent("android.intent.action.SEND");
          File localFile = (File)c.getItem(i);
          ((Intent)localObject).setType("*/*");
          ((Intent)localObject).putExtra("android.intent.extra.STREAM", Uri.fromFile(localFile));
          ((Intent)localObject).putExtra("android.intent.extra.SUBJECT", localFile.getName());
          startActivity(Intent.createChooser((Intent)localObject, getString(2131230861)));
          return true;
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            d.a(localException1);
          }
        }
      }
      if (paramMenuItem.getItemId() != 2131362036) {
        break label199;
      }
    }
    catch (Exception localException2)
    {
      d.a(localException2);
      return super.onContextItemSelected(paramMenuItem);
    }
    int i = position;
    try
    {
      j localj = new j(this, i);
      new AlertDialog.Builder(this).setMessage(2131230816).setIcon(2130837684).setTitle(2131230815).setPositiveButton(getString(2131230817), localj).setNegativeButton(getString(2131230818), localj).show();
      return true;
    }
    catch (Exception localException3)
    {
      for (;;)
      {
        d.a(localException3);
      }
    }
    label199:
    return super.onContextItemSelected(paramMenuItem);
  }
  
  /* Error */
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 177	com/actionbarsherlock/app/SherlockActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: invokestatic 52	com/appyet/manager/ar:a	(Landroid/content/Context;)V
    //   9: aload_0
    //   10: ldc -78
    //   12: invokevirtual 182	com/appyet/activity/DownloadActivity:setContentView	(I)V
    //   15: aload_0
    //   16: aload_0
    //   17: invokevirtual 186	com/appyet/activity/DownloadActivity:getApplicationContext	()Landroid/content/Context;
    //   20: checkcast 188	com/appyet/context/ApplicationContext
    //   23: putfield 190	com/appyet/activity/DownloadActivity:a	Lcom/appyet/context/ApplicationContext;
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 190	com/appyet/activity/DownloadActivity:a	Lcom/appyet/context/ApplicationContext;
    //   31: getfield 194	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   34: invokevirtual 199	com/appyet/manager/d:h	()Lcom/appyet/data/Module;
    //   37: putfield 201	com/appyet/activity/DownloadActivity:g	Lcom/appyet/data/Module;
    //   40: aload_0
    //   41: getfield 201	com/appyet/activity/DownloadActivity:g	Lcom/appyet/data/Module;
    //   44: ifnonnull +8 -> 52
    //   47: aload_0
    //   48: invokevirtual 204	com/appyet/activity/DownloadActivity:finish	()V
    //   51: return
    //   52: aload_0
    //   53: ldc -51
    //   55: invokevirtual 207	com/appyet/activity/DownloadActivity:setTitle	(I)V
    //   58: ldc -47
    //   60: astore 4
    //   62: aload 4
    //   64: astore_1
    //   65: aload_0
    //   66: getfield 201	com/appyet/activity/DownloadActivity:g	Lcom/appyet/data/Module;
    //   69: ifnull +24 -> 93
    //   72: aload 4
    //   74: astore_1
    //   75: aload_0
    //   76: getfield 201	com/appyet/activity/DownloadActivity:g	Lcom/appyet/data/Module;
    //   79: invokevirtual 214	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   82: ifnull +11 -> 93
    //   85: aload_0
    //   86: getfield 201	com/appyet/activity/DownloadActivity:g	Lcom/appyet/data/Module;
    //   89: invokevirtual 214	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   92: astore_1
    //   93: aconst_null
    //   94: astore 4
    //   96: aload_0
    //   97: invokevirtual 218	com/appyet/activity/DownloadActivity:getResources	()Landroid/content/res/Resources;
    //   100: invokevirtual 224	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   103: new 226	java/lang/StringBuilder
    //   106: dup
    //   107: ldc -28
    //   109: invokespecial 229	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   112: aload_1
    //   113: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokevirtual 242	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   122: astore_1
    //   123: aload_1
    //   124: invokestatic 248	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   127: astore 4
    //   129: new 250	android/util/DisplayMetrics
    //   132: dup
    //   133: invokespecial 251	android/util/DisplayMetrics:<init>	()V
    //   136: astore 5
    //   138: aload_0
    //   139: invokevirtual 255	com/appyet/activity/DownloadActivity:getWindowManager	()Landroid/view/WindowManager;
    //   142: invokeinterface 261 1 0
    //   147: aload 5
    //   149: invokevirtual 267	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   152: aload 4
    //   154: invokevirtual 272	android/graphics/Bitmap:getWidth	()I
    //   157: istore 6
    //   159: aload 4
    //   161: invokevirtual 275	android/graphics/Bitmap:getHeight	()I
    //   164: istore 7
    //   166: aload 5
    //   168: getfield 279	android/util/DisplayMetrics:scaledDensity	F
    //   171: fstore_2
    //   172: aload 5
    //   174: getfield 279	android/util/DisplayMetrics:scaledDensity	F
    //   177: fstore_3
    //   178: new 281	android/graphics/Matrix
    //   181: dup
    //   182: invokespecial 282	android/graphics/Matrix:<init>	()V
    //   185: astore 5
    //   187: aload 5
    //   189: fload_2
    //   190: fload_3
    //   191: invokevirtual 286	android/graphics/Matrix:postScale	(FF)Z
    //   194: pop
    //   195: aload 4
    //   197: iconst_0
    //   198: iconst_0
    //   199: iload 6
    //   201: iload 7
    //   203: aload 5
    //   205: iconst_1
    //   206: invokestatic 290	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   209: astore 4
    //   211: new 292	android/graphics/drawable/BitmapDrawable
    //   214: dup
    //   215: aload_0
    //   216: invokevirtual 218	com/appyet/activity/DownloadActivity:getResources	()Landroid/content/res/Resources;
    //   219: aload 4
    //   221: invokespecial 295	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   224: astore 4
    //   226: aload_0
    //   227: invokevirtual 299	com/appyet/activity/DownloadActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   230: aload 4
    //   232: invokevirtual 304	com/actionbarsherlock/app/ActionBar:setIcon	(Landroid/graphics/drawable/Drawable;)V
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 309	java/io/InputStream:close	()V
    //   243: aload_0
    //   244: aload_0
    //   245: ldc_w 310
    //   248: invokevirtual 314	com/appyet/activity/DownloadActivity:findViewById	(I)Landroid/view/View;
    //   251: checkcast 316	android/widget/TextView
    //   254: putfield 43	com/appyet/activity/DownloadActivity:d	Landroid/widget/TextView;
    //   257: aload_0
    //   258: aload_0
    //   259: ldc_w 317
    //   262: invokevirtual 314	com/appyet/activity/DownloadActivity:findViewById	(I)Landroid/view/View;
    //   265: checkcast 319	android/widget/ListView
    //   268: putfield 40	com/appyet/activity/DownloadActivity:e	Landroid/widget/ListView;
    //   271: aload_0
    //   272: aload_0
    //   273: ldc_w 320
    //   276: invokevirtual 314	com/appyet/activity/DownloadActivity:findViewById	(I)Landroid/view/View;
    //   279: checkcast 322	android/widget/ProgressBar
    //   282: putfield 37	com/appyet/activity/DownloadActivity:f	Landroid/widget/ProgressBar;
    //   285: aload_0
    //   286: invokevirtual 299	com/appyet/activity/DownloadActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   289: astore_1
    //   290: aload_1
    //   291: iconst_1
    //   292: invokevirtual 326	com/actionbarsherlock/app/ActionBar:setDisplayHomeAsUpEnabled	(Z)V
    //   295: aload_1
    //   296: iconst_1
    //   297: invokevirtual 329	com/actionbarsherlock/app/ActionBar:setHomeButtonEnabled	(Z)V
    //   300: aload_0
    //   301: getfield 40	com/appyet/activity/DownloadActivity:e	Landroid/widget/ListView;
    //   304: aload_0
    //   305: getfield 29	com/appyet/activity/DownloadActivity:b	Landroid/widget/AdapterView$OnItemClickListener;
    //   308: invokevirtual 333	android/widget/ListView:setOnItemClickListener	(Landroid/widget/AdapterView$OnItemClickListener;)V
    //   311: new 335	com/appyet/activity/m
    //   314: dup
    //   315: aload_0
    //   316: invokespecial 336	com/appyet/activity/m:<init>	(Lcom/appyet/activity/DownloadActivity;)V
    //   319: iconst_0
    //   320: anewarray 338	java/lang/Void
    //   323: invokevirtual 341	com/appyet/activity/m:a	([Ljava/lang/Object;)Lcom/appyet/f/a;
    //   326: pop
    //   327: aload_0
    //   328: aload_0
    //   329: getfield 40	com/appyet/activity/DownloadActivity:e	Landroid/widget/ListView;
    //   332: invokevirtual 345	com/appyet/activity/DownloadActivity:registerForContextMenu	(Landroid/view/View;)V
    //   335: aload_0
    //   336: getfield 190	com/appyet/activity/DownloadActivity:a	Lcom/appyet/context/ApplicationContext;
    //   339: getfield 348	com/appyet/context/ApplicationContext:e	Lcom/appyet/manager/ap;
    //   342: ldc_w 350
    //   345: invokevirtual 354	com/appyet/manager/ap:a	(Ljava/lang/String;)V
    //   348: return
    //   349: astore 5
    //   351: aload 4
    //   353: astore_1
    //   354: aload 5
    //   356: astore 4
    //   358: aload 4
    //   360: invokestatic 133	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   363: aload_0
    //   364: invokevirtual 299	com/appyet/activity/DownloadActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   367: ldc_w 355
    //   370: invokevirtual 357	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   373: aload_1
    //   374: ifnull -131 -> 243
    //   377: aload_1
    //   378: invokevirtual 309	java/io/InputStream:close	()V
    //   381: goto -138 -> 243
    //   384: astore_1
    //   385: aload_1
    //   386: invokestatic 133	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   389: aload_0
    //   390: invokevirtual 299	com/appyet/activity/DownloadActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   393: astore_1
    //   394: aload_1
    //   395: ldc_w 355
    //   398: invokevirtual 357	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   401: goto -158 -> 243
    //   404: astore 4
    //   406: aconst_null
    //   407: astore_1
    //   408: aload_1
    //   409: ifnull +7 -> 416
    //   412: aload_1
    //   413: invokevirtual 309	java/io/InputStream:close	()V
    //   416: aload 4
    //   418: athrow
    //   419: astore_1
    //   420: aload_1
    //   421: invokestatic 133	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   424: aload_0
    //   425: invokevirtual 299	com/appyet/activity/DownloadActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   428: ldc_w 355
    //   431: invokevirtual 357	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   434: goto -18 -> 416
    //   437: astore_1
    //   438: aload_1
    //   439: invokestatic 133	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   442: aload_0
    //   443: invokevirtual 299	com/appyet/activity/DownloadActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   446: astore_1
    //   447: goto -53 -> 394
    //   450: astore 4
    //   452: goto -44 -> 408
    //   455: astore 4
    //   457: goto -49 -> 408
    //   460: astore 4
    //   462: goto -104 -> 358
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	465	0	this	DownloadActivity
    //   0	465	1	paramBundle	android.os.Bundle
    //   171	19	2	f1	float
    //   177	14	3	f2	float
    //   60	299	4	localObject1	Object
    //   404	13	4	localObject2	Object
    //   450	1	4	localObject3	Object
    //   455	1	4	localObject4	Object
    //   460	1	4	localIOException1	java.io.IOException
    //   136	68	5	localObject5	Object
    //   349	6	5	localIOException2	java.io.IOException
    //   157	43	6	i	int
    //   164	38	7	j	int
    // Exception table:
    //   from	to	target	type
    //   96	123	349	java/io/IOException
    //   377	381	384	java/io/IOException
    //   96	123	404	finally
    //   412	416	419	java/io/IOException
    //   239	243	437	java/io/IOException
    //   123	235	450	finally
    //   358	373	455	finally
    //   123	235	460	java/io/IOException
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    try
    {
      getMenuInflater().inflate(2131689472, paramContextMenu);
      return;
    }
    catch (Exception paramContextMenu)
    {
      d.a(paramContextMenu);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131689473, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      finish();
      continue;
      new m(this).a(new Void[0]);
      continue;
      try
      {
        CharSequence[] arrayOfCharSequence = getResources().getTextArray(2131623942);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
        localBuilder.setTitle(getString(2131230860));
        localBuilder.setSingleChoiceItems(arrayOfCharSequence, a.d.R(), new k(this));
        localBuilder.create().show();
      }
      catch (Exception localException)
      {
        d.a(localException);
      }
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.DownloadActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */