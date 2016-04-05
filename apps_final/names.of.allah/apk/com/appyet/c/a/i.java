package com.appyet.c.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bb;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.widget.ShareActionProvider;
import com.actionbarsherlock.widget.ShareActionProvider.OnShareTargetSelectedListener;
import com.appyet.activity.MainActivity;
import com.appyet.activity.forum.ForumReplyPostActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.context.g;
import com.appyet.data.Module;
import com.appyet.manager.an;
import com.appyet.manager.ap;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import com.viewpagerindicator.UnderlinePageIndicator;
import java.util.ArrayList;
import net.simonvt.menudrawer.MenuDrawer;
import uk.co.senab.a.b.a;
import uk.co.senab.a.b.h;

public final class i
  extends SherlockFragment
  implements bb, ShareActionProvider.OnShareTargetSelectedListener, uk.co.senab.a.b.a.b
{
  private k a;
  private ApplicationContext b;
  private int c;
  private Long d;
  private Module e;
  private String f;
  private String g;
  private com.appyet.a.a.d h;
  private ViewPager i;
  private com.appyet.a.a.e j;
  private UnderlinePageIndicator k;
  private uk.co.senab.a.a.a.e l;
  
  private Intent a()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      localIntent.putExtra("android.intent.extra.SUBJECT", j.c);
      StringBuilder localStringBuilder = new StringBuilder().append(j.c).append(" ");
      com.appyet.a.a.d locald = h;
      String str1 = g;
      String str2 = j.c;
      str2 = j.a;
      localIntent.putExtra("android.intent.extra.TEXT", an.a(locald, str1, j.m));
      return localIntent;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    return null;
  }
  
  private void c(int paramInt)
  {
    try
    {
      c = paramInt;
      b.e.a("ForumThread");
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void a(int paramInt)
  {
    c(paramInt);
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void b(int paramInt) {}
  
  public final void e()
  {
    l.a();
    if (a != null) {
      a.notifyDataSetChanged();
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 0) && (paramInt2 == 1) && (a != null)) {
      a.notifyDataSetChanged();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public final boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((ApplicationContext)getSherlockActivity().getApplicationContext());
    c = getArguments().getInt("ARG_POSITION");
    d = Long.valueOf(getArguments().getLong("ARG_MODULE_ID"));
    e = b.h.g(d.longValue());
    h = b.p.a(d.longValue());
    f = getArguments().getString("ARG_FORUM_ID");
    g = getArguments().getString("ARG_TOPIC_ID");
    j = b.o.b;
    setHasOptionsMenu(true);
    getActivity();
  }
  
  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689480, paramMenu);
    paramMenuInflater = (ShareActionProvider)paramMenu.findItem(2131362035).getActionProvider();
    paramMenuInflater.setShareHistoryFileName("share_history.xml");
    paramMenuInflater.setOnShareTargetSelectedListener(this);
    paramMenuInflater.setShareIntent(a());
    for (;;)
    {
      try
      {
        paramMenuInflater = paramMenu.findItem(2131362037);
        com.actionbarsherlock.view.MenuItem localMenuItem = paramMenu.findItem(2131362066);
        paramMenu = paramMenu.findItem(2131362065);
        if (b.m.a.ActionBarFgColor)
        {
          paramMenuInflater.setIcon(2130837703);
          localMenuItem.setIcon(2130837698);
          paramMenu.setIcon(2130837693);
          if (!j.e)
          {
            bool = true;
            paramMenu.setVisible(bool);
          }
        }
        else
        {
          paramMenuInflater.setIcon(2130837721);
          localMenuItem.setIcon(2130837716);
          paramMenu.setIcon(2130837710);
          continue;
        }
        boolean bool = false;
      }
      catch (Exception paramMenu)
      {
        com.appyet.d.d.a(paramMenu);
        return;
      }
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903113, null);
  }
  
  public final void onDestroy()
  {
    b.f.c();
    super.onDestroy();
  }
  
  public final boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    for (;;)
    {
      try
      {
        m = paramMenuItem.getItemId();
        switch (m)
        {
        }
      }
      catch (Exception localException2)
      {
        int m;
        com.appyet.d.d.a(localException2);
        continue;
        if (a == null) {
          continue;
        }
        a.notifyDataSetChanged();
        continue;
        Intent localIntent = new Intent(b, ForumReplyPostActivity.class);
        localIntent.putExtra("ARG_MODULE_ID", d);
        localIntent.putExtra("ARG_FORUM_ID", f);
        localIntent.putExtra("ARG_TOPIC_ID", g);
        startActivityForResult(localIntent, 0);
        continue;
      }
      return super.onOptionsItemSelected(paramMenuItem);
      try
      {
        Object localObject = new ArrayList();
        int i2 = j.h / 10;
        m = 0;
        if (m < i2 + 1)
        {
          int i1 = (m + 1) * 10;
          int n = i1;
          if (i1 > j.h + 1) {
            n = j.h + 1;
          }
          ((ArrayList)localObject).add(getResources().getString(2131230985) + " " + (m + 1) + " (" + (m * 10 + 1) + "-" + n + ")");
          m += 1;
        }
        else
        {
          localObject = (CharSequence[])((ArrayList)localObject).toArray(new CharSequence[((ArrayList)localObject).size()]);
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
          localBuilder.setTitle(getString(2131230963));
          localBuilder.setSingleChoiceItems((CharSequence[])localObject, i.getCurrentItem(), new j(this));
          localBuilder.create().show();
        }
      }
      catch (Exception localException1)
      {
        com.appyet.d.d.a(localException1);
      }
    }
  }
  
  public final void onPause()
  {
    b.f.a();
    super.onPause();
  }
  
  /* Error */
  public final void onResume()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 200	com/appyet/c/a/i:e	Lcom/appyet/data/Module;
    //   4: invokevirtual 430	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   7: astore_3
    //   8: aload_3
    //   9: ifnull +376 -> 385
    //   12: aconst_null
    //   13: astore_3
    //   14: aload_0
    //   15: invokevirtual 342	com/appyet/c/a/i:getResources	()Landroid/content/res/Resources;
    //   18: invokevirtual 434	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   21: new 68	java/lang/StringBuilder
    //   24: dup
    //   25: ldc_w 436
    //   28: invokespecial 437	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: getfield 200	com/appyet/c/a/i:e	Lcom/appyet/data/Module;
    //   35: invokevirtual 430	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   38: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokevirtual 443	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   47: astore 4
    //   49: aload 4
    //   51: astore_3
    //   52: aload_3
    //   53: invokestatic 449	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   56: astore 4
    //   58: new 451	android/util/DisplayMetrics
    //   61: dup
    //   62: invokespecial 452	android/util/DisplayMetrics:<init>	()V
    //   65: astore 5
    //   67: aload_0
    //   68: invokevirtual 233	com/appyet/c/a/i:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   71: invokevirtual 458	android/support/v4/app/FragmentActivity:getWindowManager	()Landroid/view/WindowManager;
    //   74: invokeinterface 464 1 0
    //   79: aload 5
    //   81: invokevirtual 470	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   84: aload 4
    //   86: invokevirtual 475	android/graphics/Bitmap:getWidth	()I
    //   89: istore 6
    //   91: aload 4
    //   93: invokevirtual 478	android/graphics/Bitmap:getHeight	()I
    //   96: istore 7
    //   98: aload 5
    //   100: getfield 482	android/util/DisplayMetrics:scaledDensity	F
    //   103: fstore_1
    //   104: aload 5
    //   106: getfield 482	android/util/DisplayMetrics:scaledDensity	F
    //   109: fstore_2
    //   110: new 484	android/graphics/Matrix
    //   113: dup
    //   114: invokespecial 485	android/graphics/Matrix:<init>	()V
    //   117: astore 5
    //   119: aload 5
    //   121: fload_1
    //   122: fload_2
    //   123: invokevirtual 489	android/graphics/Matrix:postScale	(FF)Z
    //   126: pop
    //   127: aload 4
    //   129: iconst_0
    //   130: iconst_0
    //   131: iload 6
    //   133: iload 7
    //   135: aload 5
    //   137: iconst_1
    //   138: invokestatic 493	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   141: astore 4
    //   143: new 495	android/graphics/drawable/BitmapDrawable
    //   146: dup
    //   147: aload_0
    //   148: invokevirtual 342	com/appyet/c/a/i:getResources	()Landroid/content/res/Resources;
    //   151: aload 4
    //   153: invokespecial 498	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   156: astore 4
    //   158: aload_0
    //   159: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   162: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   165: aload 4
    //   167: invokevirtual 507	com/actionbarsherlock/app/ActionBar:setIcon	(Landroid/graphics/drawable/Drawable;)V
    //   170: aload_3
    //   171: ifnull +7 -> 178
    //   174: aload_3
    //   175: invokevirtual 512	java/io/InputStream:close	()V
    //   178: aload_0
    //   179: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   182: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   185: aload_0
    //   186: getfield 113	com/appyet/c/a/i:b	Lcom/appyet/context/ApplicationContext;
    //   189: getfield 221	com/appyet/context/ApplicationContext:o	Lcom/appyet/context/g;
    //   192: getfield 225	com/appyet/context/g:b	Lcom/appyet/a/a/e;
    //   195: getfield 62	com/appyet/a/a/e:c	Ljava/lang/String;
    //   198: invokevirtual 515	com/actionbarsherlock/app/ActionBar:setTitle	(Ljava/lang/CharSequence;)V
    //   201: invokestatic 518	android/content/res/Resources:getSystem	()Landroid/content/res/Resources;
    //   204: ldc_w 520
    //   207: ldc_w 522
    //   210: ldc_w 524
    //   213: invokevirtual 528	android/content/res/Resources:getIdentifier	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    //   216: istore 7
    //   218: iload 7
    //   220: istore 6
    //   222: iload 7
    //   224: ifne +8 -> 232
    //   227: ldc_w 529
    //   230: istore 6
    //   232: aload_0
    //   233: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   236: invokevirtual 533	com/actionbarsherlock/app/SherlockFragmentActivity:getWindow	()Landroid/view/Window;
    //   239: iload 6
    //   241: invokevirtual 539	android/view/Window:findViewById	(I)Landroid/view/View;
    //   244: checkcast 541	android/widget/TextView
    //   247: astore_3
    //   248: aload_3
    //   249: getstatic 547	android/text/TextUtils$TruncateAt:MARQUEE	Landroid/text/TextUtils$TruncateAt;
    //   252: invokevirtual 551	android/widget/TextView:setEllipsize	(Landroid/text/TextUtils$TruncateAt;)V
    //   255: aload_3
    //   256: iconst_1
    //   257: invokevirtual 554	android/widget/TextView:setSelected	(Z)V
    //   260: aload_3
    //   261: iconst_m1
    //   262: invokevirtual 557	android/widget/TextView:setMarqueeRepeatLimit	(I)V
    //   265: aload_0
    //   266: getfield 113	com/appyet/c/a/i:b	Lcom/appyet/context/ApplicationContext;
    //   269: getfield 282	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   272: getfield 287	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   275: getfield 292	com/appyet/metadata/MetadataTheme:ActionBarFgColor	Z
    //   278: ifeq +123 -> 401
    //   281: aload_3
    //   282: aload_0
    //   283: invokevirtual 342	com/appyet/c/a/i:getResources	()Landroid/content/res/Resources;
    //   286: ldc_w 558
    //   289: invokevirtual 562	android/content/res/Resources:getColor	(I)I
    //   292: invokevirtual 565	android/widget/TextView:setTextColor	(I)V
    //   295: aload_0
    //   296: invokespecial 567	com/actionbarsherlock/app/SherlockFragment:onResume	()V
    //   299: aload_0
    //   300: getfield 113	com/appyet/c/a/i:b	Lcom/appyet/context/ApplicationContext;
    //   303: getfield 319	com/appyet/context/ApplicationContext:f	Lcom/appyet/manager/b;
    //   306: invokevirtual 569	com/appyet/manager/b:b	()V
    //   309: return
    //   310: astore 4
    //   312: aload 4
    //   314: invokestatic 101	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   317: aload_0
    //   318: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   321: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   324: ldc_w 570
    //   327: invokevirtual 572	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   330: aload_3
    //   331: ifnull -153 -> 178
    //   334: aload_3
    //   335: invokevirtual 512	java/io/InputStream:close	()V
    //   338: goto -160 -> 178
    //   341: astore_3
    //   342: aload_3
    //   343: invokestatic 101	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   346: aload_0
    //   347: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   350: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   353: ldc_w 570
    //   356: invokevirtual 572	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   359: goto -181 -> 178
    //   362: astore_3
    //   363: aload_3
    //   364: invokestatic 101	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   367: goto -72 -> 295
    //   370: astore 4
    //   372: aconst_null
    //   373: astore_3
    //   374: aload_3
    //   375: ifnull +7 -> 382
    //   378: aload_3
    //   379: invokevirtual 512	java/io/InputStream:close	()V
    //   382: aload 4
    //   384: athrow
    //   385: aload_0
    //   386: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   389: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   392: ldc_w 570
    //   395: invokevirtual 572	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   398: goto -220 -> 178
    //   401: aload_3
    //   402: aload_0
    //   403: invokevirtual 342	com/appyet/c/a/i:getResources	()Landroid/content/res/Resources;
    //   406: ldc_w 573
    //   409: invokevirtual 562	android/content/res/Resources:getColor	(I)I
    //   412: invokevirtual 565	android/widget/TextView:setTextColor	(I)V
    //   415: goto -120 -> 295
    //   418: astore_3
    //   419: aload_3
    //   420: invokestatic 101	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   423: goto -128 -> 295
    //   426: astore_3
    //   427: aload_3
    //   428: invokestatic 101	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   431: aload_0
    //   432: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   435: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   438: ldc_w 570
    //   441: invokevirtual 572	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   444: goto -62 -> 382
    //   447: astore_3
    //   448: aload_3
    //   449: invokestatic 101	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   452: aload_0
    //   453: invokevirtual 156	com/appyet/c/a/i:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   456: invokevirtual 502	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   459: ldc_w 570
    //   462: invokevirtual 572	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   465: goto -287 -> 178
    //   468: astore 4
    //   470: goto -96 -> 374
    //   473: astore 4
    //   475: goto -101 -> 374
    //   478: astore 4
    //   480: goto -168 -> 312
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	483	0	this	i
    //   103	19	1	f1	float
    //   109	14	2	f2	float
    //   7	328	3	localObject1	Object
    //   341	2	3	localIOException1	java.io.IOException
    //   362	2	3	localException1	Exception
    //   373	29	3	localObject2	Object
    //   418	2	3	localException2	Exception
    //   426	2	3	localIOException2	java.io.IOException
    //   447	2	3	localIOException3	java.io.IOException
    //   47	119	4	localObject3	Object
    //   310	3	4	localIOException4	java.io.IOException
    //   370	13	4	localObject4	Object
    //   468	1	4	localObject5	Object
    //   473	1	4	localObject6	Object
    //   478	1	4	localIOException5	java.io.IOException
    //   65	71	5	localObject7	Object
    //   89	151	6	m	int
    //   96	127	7	n	int
    // Exception table:
    //   from	to	target	type
    //   14	49	310	java/io/IOException
    //   334	338	341	java/io/IOException
    //   0	8	362	java/lang/Exception
    //   174	178	362	java/lang/Exception
    //   334	338	362	java/lang/Exception
    //   342	359	362	java/lang/Exception
    //   378	382	362	java/lang/Exception
    //   382	385	362	java/lang/Exception
    //   385	398	362	java/lang/Exception
    //   419	423	362	java/lang/Exception
    //   427	444	362	java/lang/Exception
    //   448	465	362	java/lang/Exception
    //   14	49	370	finally
    //   178	218	418	java/lang/Exception
    //   232	295	418	java/lang/Exception
    //   401	415	418	java/lang/Exception
    //   378	382	426	java/io/IOException
    //   174	178	447	java/io/IOException
    //   52	170	468	finally
    //   312	330	473	finally
    //   52	170	478	java/io/IOException
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("pageItem", i.getCurrentItem());
  }
  
  public final boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent)
  {
    if ((b.y == 3) || (b.y == 4)) {
      return false;
    }
    b.startActivity(paramIntent);
    b.e.a("Share", paramIntent.getAction(), "ForumThread");
    return true;
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    Object localObject = (ViewGroup)paramView;
    l = new uk.co.senab.a.a.a.e(((ViewGroup)localObject).getContext());
    uk.co.senab.a.b.b localb = a.a(getActivity());
    a = aa;
    c = ((ViewGroup)localObject);
    localObject = localb.a(new int[] { 2131361925, 2131361928 });
    b = this;
    ((uk.co.senab.a.b.b)localObject).a(l);
    i = ((ViewPager)getView().findViewById(2131361925));
    if (a == null) {
      a = new k(this, getChildFragmentManager());
    }
    i.setAdapter(a);
    i.setCurrentItem(c);
    c(c);
    if (paramBundle != null) {
      i.setCurrentItem(paramBundle.getInt("pageItem", 0));
    }
    k = ((UnderlinePageIndicator)getView().findViewById(2131361926));
    k.setViewPager(i);
    k.setThumbWidth(130);
    k.setCurrentItem(c);
    k.setOnPageChangeListener(this);
    k.setSelectedColor(getResources().getColor(2131296350));
    localObject = (MainActivity)getSherlockActivity();
    if (((MainActivity)localObject).a() != null) {
      ((MainActivity)localObject).a().setTouchMode(1);
    }
    localObject = ((MainActivity)localObject).getSupportActionBar();
    ((ActionBar)localObject).setDisplayHomeAsUpEnabled(true);
    ((ActionBar)localObject).setHomeButtonEnabled(true);
    localObject = (ViewGroup)getView().findViewById(2131361958);
    b.f.a(getSherlockActivity(), (ViewGroup)localObject);
    super.onViewCreated(paramView, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */