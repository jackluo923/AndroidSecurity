package com.appyet.c;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.data.Module;
import com.appyet.data.Web;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.b;
import com.appyet.manager.bk;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataModuleWeb;
import com.appyet.metadata.MetadataTheme;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public final class be
  extends SherlockFragment
{
  boolean a = true;
  boolean b = false;
  private ApplicationContext c;
  private WebView d;
  private Long e;
  private Module f;
  private Web g;
  private ProgressBar h;
  private String i = "http://APPYET_BASE";
  private String j;
  private ValueCallback<Uri> k;
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 != 1) || (k == null)) {
      return;
    }
    if ((paramIntent == null) || (paramInt2 != -1)) {}
    for (paramIntent = null;; paramIntent = paramIntent.getData())
    {
      k.onReceiveValue(paramIntent);
      k = null;
      return;
    }
  }
  
  /* Error */
  public final void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 76	com/actionbarsherlock/app/SherlockFragment:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: aload_0
    //   7: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   10: invokevirtual 86	com/actionbarsherlock/app/SherlockFragmentActivity:getApplicationContext	()Landroid/content/Context;
    //   13: checkcast 88	com/appyet/context/ApplicationContext
    //   16: putfield 47	com/appyet/c/be:c	Lcom/appyet/context/ApplicationContext;
    //   19: aload_0
    //   20: aload_0
    //   21: invokevirtual 92	com/appyet/c/be:getArguments	()Landroid/os/Bundle;
    //   24: ldc 94
    //   26: invokevirtual 100	android/os/Bundle:getLong	(Ljava/lang/String;)J
    //   29: invokestatic 106	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   32: putfield 108	com/appyet/c/be:e	Ljava/lang/Long;
    //   35: aload_0
    //   36: aload_0
    //   37: getfield 47	com/appyet/c/be:c	Lcom/appyet/context/ApplicationContext;
    //   40: getfield 111	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   43: aload_0
    //   44: getfield 108	com/appyet/c/be:e	Ljava/lang/Long;
    //   47: invokevirtual 115	java/lang/Long:longValue	()J
    //   50: invokevirtual 120	com/appyet/manager/d:h	(J)Lcom/appyet/data/Web;
    //   53: putfield 51	com/appyet/c/be:g	Lcom/appyet/data/Web;
    //   56: aload_0
    //   57: aload_0
    //   58: getfield 47	com/appyet/c/be:c	Lcom/appyet/context/ApplicationContext;
    //   61: getfield 111	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   64: aload_0
    //   65: getfield 108	com/appyet/c/be:e	Ljava/lang/Long;
    //   68: invokevirtual 115	java/lang/Long:longValue	()J
    //   71: invokevirtual 123	com/appyet/manager/d:g	(J)Lcom/appyet/data/Module;
    //   74: putfield 125	com/appyet/c/be:f	Lcom/appyet/data/Module;
    //   77: aload_0
    //   78: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   81: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   84: ldc -126
    //   86: invokevirtual 136	com/actionbarsherlock/app/ActionBar:setTitle	(I)V
    //   89: aload_0
    //   90: getfield 125	com/appyet/c/be:f	Lcom/appyet/data/Module;
    //   93: invokevirtual 142	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   96: ifnull +241 -> 337
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_0
    //   102: invokevirtual 146	com/appyet/c/be:getResources	()Landroid/content/res/Resources;
    //   105: invokevirtual 152	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   108: new 154	java/lang/StringBuilder
    //   111: dup
    //   112: ldc -100
    //   114: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload_0
    //   118: getfield 125	com/appyet/c/be:f	Lcom/appyet/data/Module;
    //   121: invokevirtual 142	com/appyet/data/Module:getIcon	()Ljava/lang/String;
    //   124: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokevirtual 172	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   133: astore 4
    //   135: aload 4
    //   137: astore_1
    //   138: aload_1
    //   139: invokestatic 178	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   142: astore 4
    //   144: new 180	android/util/DisplayMetrics
    //   147: dup
    //   148: invokespecial 181	android/util/DisplayMetrics:<init>	()V
    //   151: astore 5
    //   153: aload_0
    //   154: invokevirtual 185	com/appyet/c/be:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   157: invokevirtual 191	android/support/v4/app/FragmentActivity:getWindowManager	()Landroid/view/WindowManager;
    //   160: invokeinterface 197 1 0
    //   165: aload 5
    //   167: invokevirtual 203	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   170: aload 4
    //   172: invokevirtual 209	android/graphics/Bitmap:getWidth	()I
    //   175: istore 6
    //   177: aload 4
    //   179: invokevirtual 212	android/graphics/Bitmap:getHeight	()I
    //   182: istore 7
    //   184: aload 5
    //   186: getfield 216	android/util/DisplayMetrics:scaledDensity	F
    //   189: fstore_2
    //   190: aload 5
    //   192: getfield 216	android/util/DisplayMetrics:scaledDensity	F
    //   195: fstore_3
    //   196: new 218	android/graphics/Matrix
    //   199: dup
    //   200: invokespecial 219	android/graphics/Matrix:<init>	()V
    //   203: astore 5
    //   205: aload 5
    //   207: fload_2
    //   208: fload_3
    //   209: invokevirtual 223	android/graphics/Matrix:postScale	(FF)Z
    //   212: pop
    //   213: aload 4
    //   215: iconst_0
    //   216: iconst_0
    //   217: iload 6
    //   219: iload 7
    //   221: aload 5
    //   223: iconst_1
    //   224: invokestatic 227	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   227: astore 4
    //   229: new 229	android/graphics/drawable/BitmapDrawable
    //   232: dup
    //   233: aload_0
    //   234: invokevirtual 146	com/appyet/c/be:getResources	()Landroid/content/res/Resources;
    //   237: aload 4
    //   239: invokespecial 232	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   242: astore 4
    //   244: aload_0
    //   245: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   248: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   251: aload 4
    //   253: invokevirtual 236	com/actionbarsherlock/app/ActionBar:setIcon	(Landroid/graphics/drawable/Drawable;)V
    //   256: aload_1
    //   257: ifnull +7 -> 264
    //   260: aload_1
    //   261: invokevirtual 241	java/io/InputStream:close	()V
    //   264: aload_0
    //   265: iconst_1
    //   266: invokevirtual 245	com/appyet/c/be:setHasOptionsMenu	(Z)V
    //   269: return
    //   270: astore 4
    //   272: aload 4
    //   274: invokestatic 250	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   277: aload_0
    //   278: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   281: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   284: ldc -5
    //   286: invokevirtual 253	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   289: aload_1
    //   290: ifnull -26 -> 264
    //   293: aload_1
    //   294: invokevirtual 241	java/io/InputStream:close	()V
    //   297: goto -33 -> 264
    //   300: astore_1
    //   301: aload_1
    //   302: invokestatic 250	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   305: aload_0
    //   306: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   309: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   312: astore_1
    //   313: aload_1
    //   314: ldc -5
    //   316: invokevirtual 253	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   319: goto -55 -> 264
    //   322: astore 4
    //   324: aconst_null
    //   325: astore_1
    //   326: aload_1
    //   327: ifnull +7 -> 334
    //   330: aload_1
    //   331: invokevirtual 241	java/io/InputStream:close	()V
    //   334: aload 4
    //   336: athrow
    //   337: aload_0
    //   338: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   341: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   344: ldc -5
    //   346: invokevirtual 253	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   349: goto -85 -> 264
    //   352: astore_1
    //   353: aload_1
    //   354: invokestatic 250	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   357: aload_0
    //   358: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   361: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   364: ldc -5
    //   366: invokevirtual 253	com/actionbarsherlock/app/ActionBar:setIcon	(I)V
    //   369: goto -35 -> 334
    //   372: astore_1
    //   373: aload_1
    //   374: invokestatic 250	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   377: aload_0
    //   378: invokevirtual 80	com/appyet/c/be:getSherlockActivity	()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    //   381: invokevirtual 129	com/actionbarsherlock/app/SherlockFragmentActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   384: astore_1
    //   385: goto -72 -> 313
    //   388: astore 4
    //   390: goto -64 -> 326
    //   393: astore 4
    //   395: goto -69 -> 326
    //   398: astore 4
    //   400: goto -128 -> 272
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	403	0	this	be
    //   0	403	1	paramBundle	Bundle
    //   189	19	2	f1	float
    //   195	14	3	f2	float
    //   133	119	4	localObject1	Object
    //   270	3	4	localIOException1	java.io.IOException
    //   322	13	4	localObject2	Object
    //   388	1	4	localObject3	Object
    //   393	1	4	localObject4	Object
    //   398	1	4	localIOException2	java.io.IOException
    //   151	71	5	localObject5	Object
    //   175	43	6	m	int
    //   182	38	7	n	int
    // Exception table:
    //   from	to	target	type
    //   101	135	270	java/io/IOException
    //   293	297	300	java/io/IOException
    //   101	135	322	finally
    //   330	334	352	java/io/IOException
    //   260	264	372	java/io/IOException
    //   138	256	388	finally
    //   272	289	393	finally
    //   138	256	398	java/io/IOException
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689485, paramMenu);
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903142, null);
  }
  
  public final void onDestroy()
  {
    c.f.c();
    super.onDestroy();
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      d.reload();
      getSherlockActivity().supportInvalidateOptionsMenu();
      continue;
      d.stopLoading();
      getSherlockActivity().supportInvalidateOptionsMenu();
      continue;
      d.goForward();
      getSherlockActivity().supportInvalidateOptionsMenu();
      continue;
      d.goBack();
      getSherlockActivity().supportInvalidateOptionsMenu();
    }
  }
  
  public final void onPause()
  {
    c.f.a();
    super.onPause();
    if (d != null)
    {
      if (Build.VERSION.SDK_INT >= 11) {
        d.onPause();
      }
    }
    else {
      return;
    }
    try
    {
      Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(d, null);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final void onPrepareOptionsMenu(Menu paramMenu)
  {
    label66:
    MenuItem localMenuItem1;
    MenuItem localMenuItem2;
    MenuItem localMenuItem3;
    MenuItem localMenuItem4;
    if ((d != null) && (d.canGoBack()))
    {
      paramMenu.findItem(2131362072).setVisible(true);
      if ((d == null) || (!d.canGoForward())) {
        break label197;
      }
      paramMenu.findItem(2131362073).setVisible(true);
      localMenuItem1 = paramMenu.findItem(2131362037);
      localMenuItem2 = paramMenu.findItem(2131362071);
      localMenuItem3 = paramMenu.findItem(2131362073);
      localMenuItem4 = paramMenu.findItem(2131362072);
      if (!c.m.a.PrimaryBgColor.equals("DARK")) {
        break label216;
      }
      localMenuItem1.setIcon(2130837703);
      localMenuItem2.setIcon(2130837701);
      localMenuItem3.setIcon(2130837702);
      localMenuItem4.setIcon(2130837700);
    }
    for (;;)
    {
      super.onPrepareOptionsMenu(paramMenu);
      return;
      paramMenu.findItem(2131362072).setVisible(false);
      break;
      label197:
      paramMenu.findItem(2131362073).setVisible(false);
      break label66;
      label216:
      localMenuItem1.setIcon(2130837721);
      localMenuItem2.setIcon(2130837719);
      localMenuItem3.setIcon(2130837720);
      localMenuItem4.setIcon(2130837718);
    }
  }
  
  public final void onResume()
  {
    j = null;
    if (d != null)
    {
      if (Build.VERSION.SDK_INT >= 11) {
        d.onResume();
      }
    }
    else
    {
      ActionBar localActionBar = getSherlockActivity().getSupportActionBar();
      if (!getResources().getBoolean(2131558413)) {
        break label106;
      }
      localActionBar.setDisplayHomeAsUpEnabled(false);
      localActionBar.setHomeButtonEnabled(false);
    }
    for (;;)
    {
      super.onResume();
      c.f.b();
      return;
      try
      {
        Class.forName("android.webkit.WebView").getMethod("onResume", null).invoke(d, null);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      label106:
      localException.setDisplayHomeAsUpEnabled(true);
      localException.setHomeButtonEnabled(true);
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    d.saveState(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    for (;;)
    {
      try
      {
        h = ((ProgressBar)paramView.findViewById(2131362028));
        h.setMax(100);
        d = ((WebView)paramView.findViewById(2131362027));
        if (Build.VERSION.SDK_INT >= 7) {
          d.getSettings().setDomStorageEnabled(true);
        }
        d.getSettings().setSaveFormData(false);
        d.getSettings().setSavePassword(false);
        d.getSettings().setJavaScriptEnabled(true);
        d.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
        d.getSettings().setUserAgentString(c.v);
        d.getSettings().setSupportZoom(false);
        d.getSettings().setBuiltInZoomControls(false);
        d.getSettings().setPluginState(WebSettings.PluginState.OFF);
        d.getSettings().setSupportMultipleWindows(false);
        d.getSettings().setLoadWithOverviewMode(false);
        d.getSettings().setGeolocationEnabled(false);
        if (Build.VERSION.SDK_INT >= 11) {
          d.getSettings().setDisplayZoomControls(false);
        }
        d.getSettings().setUseWideViewPort(false);
        d.setScrollBarStyle(0);
        d.setWebChromeClient(new bh(this, (MainActivity)getSherlockActivity()));
        d.setWebViewClient(new bi(this));
        d.setFocusableInTouchMode(true);
        d.setFocusable(true);
        d.setHorizontalScrollBarEnabled(false);
        d.setOnTouchListener(new bf(this));
        d.addJavascriptInterface(new bg(this, getActivity()), "AppYet");
        if (paramBundle != null)
        {
          d.restoreState(paramBundle);
          if (!c.i.a(f.getGuid()).IsShowAd) {
            break;
          }
          paramView = (ViewGroup)getView().findViewById(2131361958);
          c.f.a(getSherlockActivity(), paramView);
          c.e.a("Web");
          return;
        }
        if (g.getType().equals("Link"))
        {
          paramView = new HashMap();
          paramView.put("Accept-Language", ar.c(c));
          d.loadUrl(g.getData(), paramView);
        }
        else
        {
          d.loadDataWithBaseURL(i, g.getData(), "text/html", "UTF-8", "");
        }
      }
      catch (Exception paramView)
      {
        d.a(paramView);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */