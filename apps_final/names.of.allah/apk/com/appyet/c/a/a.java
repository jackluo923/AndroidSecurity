package com.appyet.c.a;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.appyet.activity.MainActivity;
import com.appyet.activity.forum.ForumSignInActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.manager.an;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.util.List;
import net.simonvt.menudrawer.MenuDrawer;
import uk.co.senab.a.b.i;

public final class a
  extends SherlockFragment
  implements uk.co.senab.a.b.a.b
{
  protected ApplicationContext a;
  protected long b;
  public List<com.appyet.a.a.a> c;
  private e d;
  private c e;
  private ListView f;
  private TextView g;
  private com.a.a.b.d h;
  private com.a.a.b.f i = com.a.a.b.f.a();
  private com.appyet.a.a.d j;
  private Module k;
  private int l = -1;
  private String m = "-1";
  private com.appyet.a.a.a n = null;
  private g o;
  private uk.co.senab.a.a.a.e p;
  
  public final void e()
  {
    p.a();
    try
    {
      if ((o != null) && ((o.d() == com.appyet.f.h.a) || (o.d() == com.appyet.f.h.b))) {
        o.e();
      }
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    for (;;)
    {
      try
      {
        paramBundle = getArguments();
        b = paramBundle.getLong("ModuleId");
        k = a.h.g(b);
        j = a.p.a(b);
        if (paramBundle.containsKey("ForumId"))
        {
          m = paramBundle.getString("ForumId");
          n = a.p.a(b, m);
          paramBundle = getView();
          f = ((ListView)paramBundle.findViewById(2131361905));
          f.setVisibility(8);
          g = ((TextView)paramBundle.findViewById(2131361904));
          g.setVisibility(8);
          if (a.m.a.PrimaryBgColor.equals("DARK"))
          {
            g.setTextColor(getResources().getColor(2131296319));
            f.setOnItemClickListener(new b(this));
            paramBundle = (MainActivity)getActivity();
            if (paramBundle.a() == null) {
              break;
            }
            paramBundle.a().setTouchMode(2);
          }
        }
        else
        {
          m = "-1";
          n = null;
          continue;
        }
        g.setTextColor(getResources().getColor(2131296318));
      }
      catch (Exception paramBundle)
      {
        com.appyet.d.d.a(paramBundle);
        return;
      }
    }
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      d = ((e)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement OnHeadlineSelectedListener");
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((ApplicationContext)getActivity().getApplicationContext());
    h = new com.a.a.b.e().a().a(2130837734).b(2130837736).c().e().a(Bitmap.Config.RGB_565).f();
    setHasOptionsMenu(true);
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131689477, paramMenu);
    try
    {
      paramMenu = paramMenu.findItem(2131362037);
      if (a.m.a.ActionBarFgColor)
      {
        paramMenu.setIcon(2130837703);
        return;
      }
      paramMenu.setIcon(2130837721);
      return;
    }
    catch (Exception paramMenu)
    {
      com.appyet.d.d.a(paramMenu);
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903109, null);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      if ((o == null) || (o.d() == com.appyet.f.h.c))
      {
        o = new g(this, (byte)0);
        o.a(new Void[0]);
        continue;
        Intent localIntent = new Intent(a, ForumSignInActivity.class);
        localIntent.putExtra("ARG_MODULE_ID", b);
        a.startActivity(localIntent);
        continue;
        new h(this, (byte)0).a(new Void[0]);
      }
    }
  }
  
  public final void onPause()
  {
    try
    {
      if ((o != null) && ((o.d() == com.appyet.f.h.a) || (o.d() == com.appyet.f.h.b))) {
        o.e();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
    }
    super.onPause();
  }
  
  public final void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = true;
    paramMenu.findItem(2131362037);
    MenuItem localMenuItem1 = paramMenu.findItem(2131362058);
    MenuItem localMenuItem2 = paramMenu.findItem(2131362059);
    boolean bool1;
    if (j != null) {
      if (((j.e == null) || (!j.e.a)) && (j.d != null))
      {
        bool1 = true;
        localMenuItem1.setVisible(bool1);
        if ((j.e == null) || (!j.e.a)) {
          break label133;
        }
        bool1 = bool2;
        label112:
        localMenuItem2.setVisible(bool1);
      }
    }
    for (;;)
    {
      super.onPrepareOptionsMenu(paramMenu);
      return;
      bool1 = false;
      break;
      label133:
      bool1 = false;
      break label112;
      localMenuItem1.setVisible(false);
      localMenuItem2.setVisible(false);
    }
  }
  
  /* Error */
  public final void onResume()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 486	com/actionbarsherlock/app/SherlockFragment:onResume	()V
    //   4: aload_0
    //   5: getfield 238	com/appyet/c/a/a:k	Lcom/appyet/data/Module;
    //   8: invokevirtual 491	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   11: astore_3
    //   12: aload_3
    //   13: ifnull +413 -> 426
    //   16: aconst_null
    //   17: astore_3
    //   18: aload_0
    //   19: invokevirtual 296	com/appyet/c/a/a:getResources	()Landroid/content/res/Resources;
    //   22: invokevirtual 495	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   25: new 333	java/lang/StringBuilder
    //   28: dup
    //   29: ldc_w 497
    //   32: invokespecial 498	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: getfield 238	com/appyet/c/a/a:k	Lcom/appyet/data/Module;
    //   39: invokevirtual 491	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   42: invokevirtual 344	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 347	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokevirtual 504	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   51: astore 4
    //   53: aload 4
    //   55: astore_3
    //   56: aload_3
    //   57: invokestatic 510	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   60: astore 4
    //   62: new 512	android/util/DisplayMetrics
    //   65: dup
    //   66: invokespecial 513	android/util/DisplayMetrics:<init>	()V
    //   69: astore 5
    //   71: aload_0
    //   72: invokevirtual 74	com/appyet/c/a/a:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   75: invokevirtual 517	android/support/v4/app/FragmentActivity:getWindowManager	()Landroid/view/WindowManager;
    //   78: invokeinterface 523 1 0
    //   83: aload 5
    //   85: invokevirtual 529	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   88: aload 4
    //   90: invokevirtual 534	android/graphics/Bitmap:getWidth	()I
    //   93: istore 6
    //   95: aload 4
    //   97: invokevirtual 537	android/graphics/Bitmap:getHeight	()I
    //   100: istore 7
    //   102: aload 5
    //   104: getfield 541	android/util/DisplayMetrics:scaledDensity	F
    //   107: fstore_1
    //   108: aload 5
    //   110: getfield 541	android/util/DisplayMetrics:scaledDensity	F
    //   113: fstore_2
    //   114: new 543	android/graphics/Matrix
    //   117: dup
    //   118: invokespecial 544	android/graphics/Matrix:<init>	()V
    //   121: astore 5
    //   123: aload 5
    //   125: fload_1
    //   126: fload_2
    //   127: invokevirtual 548	android/graphics/Matrix:postScale	(FF)Z
    //   130: pop
    //   131: aload 4
    //   133: iconst_0
    //   134: iconst_0
    //   135: iload 6
    //   137: iload 7
    //   139: aload 5
    //   141: iconst_1
    //   142: invokestatic 552	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   145: astore 4
    //   147: new 554	android/graphics/drawable/BitmapDrawable
    //   150: dup
    //   151: aload_0
    //   152: invokevirtual 296	com/appyet/c/a/a:getResources	()Landroid/content/res/Resources;
    //   155: aload 4
    //   157: invokespecial 557	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   160: astore 4
    //   162: aload_0
    //   163: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   166: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   169: aload 4
    //   171: invokevirtual 572	com/actionbarsherlock/app/ActionBar:setIcon	(Landroid/graphics/drawable/Drawable;)V
    //   174: aload_3
    //   175: ifnull +7 -> 182
    //   178: aload_3
    //   179: invokevirtual 577	java/io/InputStream:close	()V
    //   182: aload_0
    //   183: getfield 193	com/appyet/c/a/a:o	Lcom/appyet/c/a/g;
    //   186: ifnull +16 -> 202
    //   189: aload_0
    //   190: getfield 193	com/appyet/c/a/a:o	Lcom/appyet/c/a/g;
    //   193: invokevirtual 198	com/appyet/c/a/g:d	()Lcom/appyet/f/h;
    //   196: getstatic 436	com/appyet/f/h:c	Lcom/appyet/f/h;
    //   199: if_acmpne +28 -> 227
    //   202: aload_0
    //   203: new 195	com/appyet/c/a/g
    //   206: dup
    //   207: aload_0
    //   208: iconst_0
    //   209: invokespecial 439	com/appyet/c/a/g:<init>	(Lcom/appyet/c/a/a;B)V
    //   212: putfield 193	com/appyet/c/a/a:o	Lcom/appyet/c/a/g;
    //   215: aload_0
    //   216: getfield 193	com/appyet/c/a/a:o	Lcom/appyet/c/a/g;
    //   219: iconst_0
    //   220: anewarray 441	java/lang/Void
    //   223: invokevirtual 444	com/appyet/c/a/g:a	([Ljava/lang/Object;)Lcom/appyet/f/a;
    //   226: pop
    //   227: aload_0
    //   228: getfield 58	com/appyet/c/a/a:n	Lcom/appyet/a/a/a;
    //   231: ifnonnull +211 -> 442
    //   234: aload_0
    //   235: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   238: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   241: aload_0
    //   242: getfield 226	com/appyet/c/a/a:a	Lcom/appyet/context/ApplicationContext;
    //   245: aload_0
    //   246: getfield 238	com/appyet/c/a/a:k	Lcom/appyet/data/Module;
    //   249: invokevirtual 580	com/appyet/data/Module:getName	()Ljava/lang/String;
    //   252: invokestatic 585	com/appyet/f/w:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   255: invokevirtual 589	com/actionbarsherlock/app/ActionBar:setTitle	(Ljava/lang/CharSequence;)V
    //   258: invokestatic 592	android/content/res/Resources:getSystem	()Landroid/content/res/Resources;
    //   261: ldc_w 594
    //   264: ldc_w 596
    //   267: ldc_w 598
    //   270: invokevirtual 602	android/content/res/Resources:getIdentifier	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    //   273: istore 7
    //   275: iload 7
    //   277: istore 6
    //   279: iload 7
    //   281: ifne +8 -> 289
    //   284: ldc_w 603
    //   287: istore 6
    //   289: aload_0
    //   290: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   293: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getWindow	()Landroid/view/Window;
    //   296: iload 6
    //   298: invokevirtual 610	android/view/Window:findViewById	(I)Landroid/view/View;
    //   301: checkcast 272	android/widget/TextView
    //   304: astore_3
    //   305: aload_3
    //   306: getstatic 616	android/text/TextUtils$TruncateAt:MARQUEE	Landroid/text/TextUtils$TruncateAt;
    //   309: invokevirtual 620	android/widget/TextView:setEllipsize	(Landroid/text/TextUtils$TruncateAt;)V
    //   312: aload_3
    //   313: iconst_1
    //   314: invokevirtual 623	android/widget/TextView:setSelected	(Z)V
    //   317: aload_3
    //   318: iconst_m1
    //   319: invokevirtual 626	android/widget/TextView:setMarqueeRepeatLimit	(I)V
    //   322: aload_0
    //   323: getfield 226	com/appyet/c/a/a:a	Lcom/appyet/context/ApplicationContext;
    //   326: getfield 276	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   329: getfield 281	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   332: getfield 412	com/appyet/metadata/MetadataTheme:ActionBarFgColor	Z
    //   335: ifeq +147 -> 482
    //   338: aload_3
    //   339: aload_0
    //   340: invokevirtual 296	com/appyet/c/a/a:getResources	()Landroid/content/res/Resources;
    //   343: ldc_w 627
    //   346: invokevirtual 303	android/content/res/Resources:getColor	(I)I
    //   349: invokevirtual 306	android/widget/TextView:setTextColor	(I)V
    //   352: return
    //   353: astore 4
    //   355: aload 4
    //   357: invokestatic 110	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   360: aload_0
    //   361: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   364: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   367: ldc_w 628
    //   370: invokevirtual 630	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   373: aload_3
    //   374: ifnull -192 -> 182
    //   377: aload_3
    //   378: invokevirtual 577	java/io/InputStream:close	()V
    //   381: goto -199 -> 182
    //   384: astore_3
    //   385: aload_3
    //   386: invokestatic 110	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   389: aload_0
    //   390: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   393: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   396: ldc_w 628
    //   399: invokevirtual 630	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   402: goto -220 -> 182
    //   405: astore_3
    //   406: aload_3
    //   407: invokestatic 110	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   410: return
    //   411: astore 4
    //   413: aconst_null
    //   414: astore_3
    //   415: aload_3
    //   416: ifnull +7 -> 423
    //   419: aload_3
    //   420: invokevirtual 577	java/io/InputStream:close	()V
    //   423: aload 4
    //   425: athrow
    //   426: aload_0
    //   427: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   430: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   433: ldc_w 628
    //   436: invokevirtual 630	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   439: goto -257 -> 182
    //   442: aload_0
    //   443: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   446: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   449: aload_0
    //   450: getfield 226	com/appyet/c/a/a:a	Lcom/appyet/context/ApplicationContext;
    //   453: aload_0
    //   454: getfield 58	com/appyet/c/a/a:n	Lcom/appyet/a/a/a;
    //   457: getfield 632	com/appyet/a/a/a:b	Ljava/lang/String;
    //   460: invokestatic 585	com/appyet/f/w:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   463: invokevirtual 589	com/actionbarsherlock/app/ActionBar:setTitle	(Ljava/lang/CharSequence;)V
    //   466: goto -208 -> 258
    //   469: astore_3
    //   470: aload_3
    //   471: invokevirtual 635	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   474: ifnull -122 -> 352
    //   477: aload_3
    //   478: invokestatic 110	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   481: return
    //   482: aload_3
    //   483: aload_0
    //   484: invokevirtual 296	com/appyet/c/a/a:getResources	()Landroid/content/res/Resources;
    //   487: ldc_w 636
    //   490: invokevirtual 303	android/content/res/Resources:getColor	(I)I
    //   493: invokevirtual 306	android/widget/TextView:setTextColor	(I)V
    //   496: return
    //   497: astore_3
    //   498: aload_3
    //   499: invokestatic 110	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   502: aload_0
    //   503: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   506: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   509: ldc_w 628
    //   512: invokevirtual 630	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   515: goto -92 -> 423
    //   518: astore_3
    //   519: aload_3
    //   520: invokestatic 110	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   523: aload_0
    //   524: invokevirtual 561	com/appyet/c/a/a:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   527: invokevirtual 567	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   530: ldc_w 628
    //   533: invokevirtual 630	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   536: goto -354 -> 182
    //   539: astore 4
    //   541: goto -126 -> 415
    //   544: astore 4
    //   546: goto -131 -> 415
    //   549: astore 4
    //   551: goto -196 -> 355
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	554	0	this	a
    //   107	19	1	f1	float
    //   113	14	2	f2	float
    //   11	367	3	localObject1	Object
    //   384	2	3	localIOException1	java.io.IOException
    //   405	2	3	localException1	Exception
    //   414	6	3	localObject2	Object
    //   469	14	3	localException2	Exception
    //   497	2	3	localIOException2	java.io.IOException
    //   518	2	3	localIOException3	java.io.IOException
    //   51	119	4	localObject3	Object
    //   353	3	4	localIOException4	java.io.IOException
    //   411	13	4	localObject4	Object
    //   539	1	4	localObject5	Object
    //   544	1	4	localObject6	Object
    //   549	1	4	localIOException5	java.io.IOException
    //   69	71	5	localObject7	Object
    //   93	204	6	i1	int
    //   100	180	7	i2	int
    // Exception table:
    //   from	to	target	type
    //   18	53	353	java/io/IOException
    //   377	381	384	java/io/IOException
    //   4	12	405	java/lang/Exception
    //   178	182	405	java/lang/Exception
    //   182	202	405	java/lang/Exception
    //   202	227	405	java/lang/Exception
    //   377	381	405	java/lang/Exception
    //   385	402	405	java/lang/Exception
    //   419	423	405	java/lang/Exception
    //   423	426	405	java/lang/Exception
    //   426	439	405	java/lang/Exception
    //   470	481	405	java/lang/Exception
    //   498	515	405	java/lang/Exception
    //   519	536	405	java/lang/Exception
    //   18	53	411	finally
    //   227	258	469	java/lang/Exception
    //   258	275	469	java/lang/Exception
    //   289	352	469	java/lang/Exception
    //   442	466	469	java/lang/Exception
    //   482	496	469	java/lang/Exception
    //   419	423	497	java/io/IOException
    //   178	182	518	java/io/IOException
    //   56	174	539	finally
    //   355	373	544	finally
    //   56	174	549	java/io/IOException
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = (ViewGroup)paramView;
    p = new uk.co.senab.a.a.a.e(paramView.getContext());
    paramBundle = uk.co.senab.a.b.a.a(getActivity());
    a = aa;
    c = paramView;
    paramView = paramBundle.a(new int[] { 2131361905, 2131361904 });
    b = this;
    paramView.a(p);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */