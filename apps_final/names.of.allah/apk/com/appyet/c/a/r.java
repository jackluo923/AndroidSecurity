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
import com.a.a.b.f;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.appyet.activity.MainActivity;
import com.appyet.activity.forum.ForumNewTopicActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.manager.an;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.util.Iterator;
import java.util.List;
import net.simonvt.menudrawer.MenuDrawer;
import uk.co.senab.a.b.i;

public final class r
  extends SherlockFragment
  implements uk.co.senab.a.b.a.b
{
  protected ApplicationContext a;
  protected long b;
  private u c;
  private ListView d;
  private TextView e;
  private View f;
  private com.a.a.b.d g;
  private com.appyet.a.a.a h = null;
  private w i;
  private f j = f.a();
  private Module k;
  private String l;
  private boolean m = true;
  private boolean n = false;
  private int o = -1;
  private int p = 20;
  private int q = 0;
  private y r;
  private com.appyet.a.a.d s;
  private uk.co.senab.a.a.a.e t;
  
  public final void e()
  {
    t.a();
    if ((r == null) || (r.d() == com.appyet.f.h.c))
    {
      if (c != null)
      {
        c.clear();
        c.notifyDataSetChanged();
        d.setVisibility(8);
        e.setVisibility(8);
      }
      o = -1;
      r = new y(this, (byte)0);
      r.a(new Void[0]);
    }
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    try
    {
      paramBundle = getArguments();
      b = paramBundle.getLong("ARG_MODULE_ID");
      k = a.h.g(b);
      l = paramBundle.getString("ARG_FORUM_ID");
      s = a.p.a(b);
      paramBundle = s.b.iterator();
      while (paramBundle.hasNext())
      {
        com.appyet.a.a.a locala = (com.appyet.a.a.a)paramBundle.next();
        if (a.equals(l))
        {
          h = locala;
          continue;
          return;
        }
      }
    }
    catch (Exception paramBundle)
    {
      com.appyet.d.d.a(paramBundle);
    }
    paramBundle = getView();
    e = ((TextView)paramBundle.findViewById(2131361904));
    d = ((ListView)paramBundle.findViewById(2131361905));
    d.setVisibility(8);
    e.setVisibility(8);
    if (a.m.a.PrimaryBgColor.equals("DARK")) {
      e.setTextColor(getResources().getColor(2131296319));
    }
    for (;;)
    {
      d.setOnItemClickListener(new s(this));
      d.setOnScrollListener(new t(this));
      if (m)
      {
        f = LayoutInflater.from(getActivity()).inflate(2130903108, d, false);
        d.addFooterView(f);
      }
      if ((c != null) && (c.getCount() > 0))
      {
        d.setAdapter(c);
        d.setVisibility(0);
        e.setVisibility(8);
      }
      paramBundle = (MainActivity)getActivity();
      if (paramBundle.a() == null) {
        break;
      }
      paramBundle.a().setTouchMode(2);
      return;
      e.setTextColor(getResources().getColor(2131296318));
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 0) && (paramInt2 == 1) && ((r == null) || (r.d() == com.appyet.f.h.c)))
    {
      r = new y(this, (byte)0);
      r.a(new Void[0]);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      i = ((w)paramActivity);
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
    g = new com.a.a.b.e().a().a(2130837734).b(2130837736).c().e().a(Bitmap.Config.RGB_565).f();
    setHasOptionsMenu(true);
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131689481, paramMenu);
    try
    {
      paramMenuInflater = paramMenu.findItem(2131362037);
      paramMenu = paramMenu.findItem(2131362069);
      if (a.m.a.ActionBarFgColor)
      {
        paramMenuInflater.setIcon(2130837703);
        paramMenu.setIcon(2130837693);
        return;
      }
      paramMenuInflater.setIcon(2130837721);
      paramMenu.setIcon(2130837710);
      return;
    }
    catch (Exception paramMenu)
    {
      com.appyet.d.d.a(paramMenu);
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903115, null);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      if ((r == null) || (r.d() == com.appyet.f.h.c))
      {
        if (c != null)
        {
          c.clear();
          c.notifyDataSetChanged();
          d.setVisibility(8);
          e.setVisibility(8);
        }
        o = -1;
        r = new y(this, (byte)0);
        r.a(new Void[0]);
        continue;
        Intent localIntent = new Intent(a, ForumNewTopicActivity.class);
        localIntent.putExtra("ARG_MODULE_ID", b);
        localIntent.putExtra("ARG_FORUM_ID", l);
        startActivityForResult(localIntent, 0);
      }
    }
  }
  
  public final void onPause()
  {
    try
    {
      if ((r != null) && ((r.d() == com.appyet.f.h.a) || (r.d() == com.appyet.f.h.b))) {
        r.e();
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
    paramMenu.findItem(2131362037).setEnabled(true);
    super.onPrepareOptionsMenu(paramMenu);
  }
  
  /* Error */
  public final void onResume()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 243	com/appyet/c/a/r:k	Lcom/appyet/data/Module;
    //   4: invokevirtual 531	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   7: ifnull +361 -> 368
    //   10: aconst_null
    //   11: astore_3
    //   12: aload_0
    //   13: invokevirtual 317	com/appyet/c/a/r:getResources	()Landroid/content/res/Resources;
    //   16: invokevirtual 535	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   19: new 388	java/lang/StringBuilder
    //   22: dup
    //   23: ldc_w 537
    //   26: invokespecial 538	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   29: aload_0
    //   30: getfield 243	com/appyet/c/a/r:k	Lcom/appyet/data/Module;
    //   33: invokevirtual 531	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   36: invokevirtual 399	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 402	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokevirtual 544	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   45: astore 4
    //   47: aload 4
    //   49: astore_3
    //   50: aload_3
    //   51: invokestatic 550	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   54: astore 4
    //   56: new 552	android/util/DisplayMetrics
    //   59: dup
    //   60: invokespecial 553	android/util/DisplayMetrics:<init>	()V
    //   63: astore 5
    //   65: aload_0
    //   66: invokevirtual 131	com/appyet/c/a/r:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   69: invokevirtual 557	android/support/v4/app/FragmentActivity:getWindowManager	()Landroid/view/WindowManager;
    //   72: invokeinterface 563 1 0
    //   77: aload 5
    //   79: invokevirtual 569	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   82: aload 4
    //   84: invokevirtual 574	android/graphics/Bitmap:getWidth	()I
    //   87: istore 6
    //   89: aload 4
    //   91: invokevirtual 577	android/graphics/Bitmap:getHeight	()I
    //   94: istore 7
    //   96: aload 5
    //   98: getfield 581	android/util/DisplayMetrics:scaledDensity	F
    //   101: fstore_1
    //   102: aload 5
    //   104: getfield 581	android/util/DisplayMetrics:scaledDensity	F
    //   107: fstore_2
    //   108: new 583	android/graphics/Matrix
    //   111: dup
    //   112: invokespecial 584	android/graphics/Matrix:<init>	()V
    //   115: astore 5
    //   117: aload 5
    //   119: fload_1
    //   120: fload_2
    //   121: invokevirtual 588	android/graphics/Matrix:postScale	(FF)Z
    //   124: pop
    //   125: aload 4
    //   127: iconst_0
    //   128: iconst_0
    //   129: iload 6
    //   131: iload 7
    //   133: aload 5
    //   135: iconst_1
    //   136: invokestatic 592	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   139: astore 4
    //   141: new 594	android/graphics/drawable/BitmapDrawable
    //   144: dup
    //   145: aload_0
    //   146: invokevirtual 317	com/appyet/c/a/r:getResources	()Landroid/content/res/Resources;
    //   149: aload 4
    //   151: invokespecial 597	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   154: astore 4
    //   156: aload_0
    //   157: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   160: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   163: aload 4
    //   165: invokevirtual 612	com/actionbarsherlock/app/ActionBar:setIcon	(Landroid/graphics/drawable/Drawable;)V
    //   168: aload_3
    //   169: ifnull +7 -> 176
    //   172: aload_3
    //   173: invokevirtual 617	java/io/InputStream:close	()V
    //   176: aload_0
    //   177: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   180: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   183: aload_0
    //   184: getfield 84	com/appyet/c/a/r:a	Lcom/appyet/context/ApplicationContext;
    //   187: aload_0
    //   188: getfield 49	com/appyet/c/a/r:h	Lcom/appyet/a/a/a;
    //   191: getfield 618	com/appyet/a/a/a:b	Ljava/lang/String;
    //   194: invokestatic 623	com/appyet/f/w:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   197: invokevirtual 627	com/actionbarsherlock/app/ActionBar:setTitle	(Ljava/lang/CharSequence;)V
    //   200: invokestatic 630	android/content/res/Resources:getSystem	()Landroid/content/res/Resources;
    //   203: ldc_w 632
    //   206: ldc_w 634
    //   209: ldc_w 636
    //   212: invokevirtual 640	android/content/res/Resources:getIdentifier	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    //   215: istore 7
    //   217: iload 7
    //   219: istore 6
    //   221: iload 7
    //   223: ifne +8 -> 231
    //   226: ldc_w 641
    //   229: istore 6
    //   231: aload_0
    //   232: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   235: invokevirtual 645	com/actionbarsherlock/app/SherlockFragmentActivity:getWindow	()Landroid/view/Window;
    //   238: iload 6
    //   240: invokevirtual 648	android/view/Window:findViewById	(I)Landroid/view/View;
    //   243: checkcast 208	android/widget/TextView
    //   246: astore_3
    //   247: aload_3
    //   248: getstatic 654	android/text/TextUtils$TruncateAt:MARQUEE	Landroid/text/TextUtils$TruncateAt;
    //   251: invokevirtual 658	android/widget/TextView:setEllipsize	(Landroid/text/TextUtils$TruncateAt;)V
    //   254: aload_3
    //   255: iconst_1
    //   256: invokevirtual 661	android/widget/TextView:setSelected	(Z)V
    //   259: aload_3
    //   260: iconst_m1
    //   261: invokevirtual 664	android/widget/TextView:setMarqueeRepeatLimit	(I)V
    //   264: aload_0
    //   265: getfield 84	com/appyet/c/a/r:a	Lcom/appyet/context/ApplicationContext;
    //   268: getfield 301	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   271: getfield 306	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   274: getfield 466	com/appyet/metadata/MetadataTheme:ActionBarFgColor	Z
    //   277: ifeq +107 -> 384
    //   280: aload_3
    //   281: aload_0
    //   282: invokevirtual 317	com/appyet/c/a/r:getResources	()Landroid/content/res/Resources;
    //   285: ldc_w 665
    //   288: invokevirtual 324	android/content/res/Resources:getColor	(I)I
    //   291: invokevirtual 327	android/widget/TextView:setTextColor	(I)V
    //   294: aload_0
    //   295: invokespecial 667	com/actionbarsherlock/app/SherlockFragment:onResume	()V
    //   298: return
    //   299: astore 4
    //   301: aload 4
    //   303: invokestatic 167	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   306: aload_0
    //   307: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   310: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   313: ldc_w 668
    //   316: invokevirtual 670	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   319: aload_3
    //   320: ifnull -144 -> 176
    //   323: aload_3
    //   324: invokevirtual 617	java/io/InputStream:close	()V
    //   327: goto -151 -> 176
    //   330: astore_3
    //   331: aload_3
    //   332: invokestatic 167	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   335: aload_0
    //   336: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   339: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   342: astore_3
    //   343: aload_3
    //   344: ldc_w 668
    //   347: invokevirtual 670	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   350: goto -174 -> 176
    //   353: astore 4
    //   355: aconst_null
    //   356: astore_3
    //   357: aload_3
    //   358: ifnull +7 -> 365
    //   361: aload_3
    //   362: invokevirtual 617	java/io/InputStream:close	()V
    //   365: aload 4
    //   367: athrow
    //   368: aload_0
    //   369: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   372: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   375: ldc_w 668
    //   378: invokevirtual 670	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   381: goto -205 -> 176
    //   384: aload_3
    //   385: aload_0
    //   386: invokevirtual 317	com/appyet/c/a/r:getResources	()Landroid/content/res/Resources;
    //   389: ldc_w 671
    //   392: invokevirtual 324	android/content/res/Resources:getColor	(I)I
    //   395: invokevirtual 327	android/widget/TextView:setTextColor	(I)V
    //   398: goto -104 -> 294
    //   401: astore_3
    //   402: aload_3
    //   403: invokevirtual 674	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   406: ifnull -112 -> 294
    //   409: aload_3
    //   410: invokestatic 167	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   413: goto -119 -> 294
    //   416: astore_3
    //   417: aload_3
    //   418: invokestatic 167	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   421: aload_0
    //   422: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   425: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   428: ldc_w 668
    //   431: invokevirtual 670	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   434: goto -69 -> 365
    //   437: astore_3
    //   438: aload_3
    //   439: invokestatic 167	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   442: aload_0
    //   443: invokevirtual 601	com/appyet/c/a/r:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   446: invokevirtual 607	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   449: astore_3
    //   450: goto -107 -> 343
    //   453: astore 4
    //   455: goto -98 -> 357
    //   458: astore 4
    //   460: goto -103 -> 357
    //   463: astore 4
    //   465: goto -164 -> 301
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	468	0	this	r
    //   101	19	1	f1	float
    //   107	14	2	f2	float
    //   11	313	3	localObject1	Object
    //   330	2	3	localIOException1	java.io.IOException
    //   342	43	3	localActionBar1	com.actionbarsherlock.app.ActionBar
    //   401	9	3	localException	Exception
    //   416	2	3	localIOException2	java.io.IOException
    //   437	2	3	localIOException3	java.io.IOException
    //   449	1	3	localActionBar2	com.actionbarsherlock.app.ActionBar
    //   45	119	4	localObject2	Object
    //   299	3	4	localIOException4	java.io.IOException
    //   353	13	4	localObject3	Object
    //   453	1	4	localObject4	Object
    //   458	1	4	localObject5	Object
    //   463	1	4	localIOException5	java.io.IOException
    //   63	71	5	localObject6	Object
    //   87	152	6	i1	int
    //   94	128	7	i2	int
    // Exception table:
    //   from	to	target	type
    //   12	47	299	java/io/IOException
    //   323	327	330	java/io/IOException
    //   12	47	353	finally
    //   176	217	401	java/lang/Exception
    //   231	294	401	java/lang/Exception
    //   384	398	401	java/lang/Exception
    //   361	365	416	java/io/IOException
    //   172	176	437	java/io/IOException
    //   50	168	453	finally
    //   301	319	458	finally
    //   50	168	463	java/io/IOException
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = (ViewGroup)paramView;
    t = new uk.co.senab.a.a.a.e(paramView.getContext());
    paramBundle = uk.co.senab.a.b.a.a(getActivity());
    a = aa;
    c = paramView;
    paramView = paramBundle.a(new int[] { 2131361905, 2131361904 });
    b = this;
    paramView.a(t);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */