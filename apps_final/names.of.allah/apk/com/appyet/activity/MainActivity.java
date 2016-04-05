package com.appyet.activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.MenuItem;
import com.appyet.c.a.e;
import com.appyet.c.a.i;
import com.appyet.c.ak;
import com.appyet.c.ay;
import com.appyet.c.be;
import com.appyet.c.bj;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.data.Module;
import com.appyet.f.k;
import com.appyet.manager.an;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.bk;
import com.appyet.manager.bp;
import com.appyet.manager.bq;
import com.appyet.manager.bw;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataModuleWeb;
import com.appyet.metadata.MetadataTheme;
import com.appyet.receiver.b;
import com.appyet.receiver.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.simonvt.menudrawer.MenuDrawer;

public class MainActivity
  extends SherlockFragmentActivity
  implements e, com.appyet.c.a.w, ak, b
{
  protected k a = new k(this);
  private ApplicationContext b;
  private ay c;
  private int d = 0;
  private c e;
  private MenuDrawer f;
  private Drawable g = null;
  private int h;
  private net.simonvt.menudrawer.o i = new u(this);
  
  private boolean a(Intent paramIntent)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramIntent != null) {
      localObject1 = localObject2;
    }
    try
    {
      if (paramIntent.hasExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID"))
      {
        long l = paramIntent.getLongExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID", -1L);
        localObject1 = localObject2;
        if (l != -1L)
        {
          paramIntent = b.h.c(l);
          localObject1 = localObject2;
          if (paramIntent != null)
          {
            paramIntent = b.h.a(paramIntent.getFeed().getFeedId().longValue());
            localObject1 = localObject2;
            if (paramIntent != null) {
              localObject1 = b.h.g(paramIntent.getModuleId());
            }
          }
        }
      }
      if (localObject1 != null)
      {
        a(((Module)localObject1).getType(), ((Module)localObject1).getModuleId(), ((Module)localObject1).getGuid());
        return true;
      }
    }
    catch (Exception paramIntent)
    {
      com.appyet.d.d.a(paramIntent);
      b.e.a(paramIntent);
    }
    return false;
  }
  
  private void d()
  {
    try
    {
      long l = b.d.Q();
      List localList = b.h.g();
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          Module localModule = (Module)localIterator.next();
          if (localModule.getModuleId().equals(Long.valueOf(l)))
          {
            a(localModule.getType(), localModule.getModuleId(), localModule.getGuid());
            return;
          }
        }
        if (localList.size() > 0)
        {
          a(((Module)localList.get(0)).getType(), ((Module)localList.get(0)).getModuleId(), ((Module)localList.get(0)).getGuid());
          return;
        }
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      b.e.a(localException);
    }
  }
  
  private void e()
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      int j = widthPixels;
      if (j < getResources().getDimension(2131492901) + getResources().getDimension(2131492900))
      {
        f.setMenuSize(j - getResources().getDimensionPixelSize(2131492900));
        return;
      }
      f.setMenuSize(getResources().getDimensionPixelSize(2131492901));
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      b.e.a(localException);
    }
  }
  
  public final MenuDrawer a()
  {
    return f;
  }
  
  public final void a(int paramInt, Long paramLong)
  {
    com.appyet.c.a locala = new com.appyet.c.a();
    Bundle localBundle = new Bundle();
    localBundle.putInt("ARG_POSITION", paramInt);
    if (paramLong != null) {
      localBundle.putLong("ARG_MODULE_ID", paramLong.longValue());
    }
    locala.setArguments(localBundle);
    paramLong = getSupportFragmentManager().beginTransaction();
    paramLong.replace(2131361986, locala, "FeedItemDetailFragment");
    paramLong.addToBackStack("FeedItemDetailFragment");
    paramLong.setTransition(4097);
    paramLong.commitAllowingStateLoss();
  }
  
  public final void a(Long paramLong, String paramString1, String paramString2)
  {
    Object localObject2 = b.p.a(paramLong.longValue());
    Object localObject1 = b.p.a(paramLong.longValue(), paramString1);
    if (localObject1 == null) {
      return;
    }
    if (!k)
    {
      localObject2 = b.iterator();
      do
      {
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
      } while (!nextd.equals(paramString1));
    }
    for (int j = 1;; j = 0)
    {
      if (((k) || (j != 0)) && (paramString2 != paramString1))
      {
        paramString2 = new com.appyet.c.a.a();
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("ForumId", paramString1);
        ((Bundle)localObject1).putLong("ModuleId", paramLong.longValue());
        paramString2.setArguments((Bundle)localObject1);
        paramLong = getSupportFragmentManager().beginTransaction();
        paramLong.replace(2131361986, paramString2, "ForumBrowseFragment");
        paramLong.addToBackStack("ForumBrowseFragment");
        paramLong.setTransition(4097);
        paramLong.commitAllowingStateLoss();
        return;
      }
      paramString2 = new com.appyet.c.a.r();
      localObject1 = new Bundle();
      ((Bundle)localObject1).putString("ARG_FORUM_ID", paramString1);
      ((Bundle)localObject1).putLong("ARG_MODULE_ID", paramLong.longValue());
      paramString2.setArguments((Bundle)localObject1);
      paramLong = getSupportFragmentManager().beginTransaction();
      paramLong.replace(2131361986, paramString2, "ForumTopicFragment");
      paramLong.addToBackStack("ForumTopicFragment");
      paramLong.setTransition(4097);
      paramLong.commitAllowingStateLoss();
      return;
    }
  }
  
  public final void a(String paramString1, Long paramLong, String paramString2)
  {
    if (paramString1 == null) {}
    label83:
    int j;
    do
    {
      do
      {
        return;
        try
        {
          if (!paramString1.equals("Sync")) {
            break label83;
          }
          if (b.c() == 0)
          {
            Toast.makeText(b, 2131230802, 1).show();
            b.t.a(true);
            return;
          }
        }
        catch (Exception paramString1)
        {
          com.appyet.d.d.a(paramString1);
          b.e.a(paramString1);
          return;
        }
        Toast.makeText(b, 2131230802, 1).show();
        return;
        if (paramString1.equals("Downloads"))
        {
          paramString1 = new Intent(b, DownloadActivity.class);
          b.startActivity(paramString1);
          return;
        }
        if (!paramString1.equals("Themes")) {
          break;
        }
      } while (b.q.MetadataThemes.size() == 1);
      if (b.q.MetadataThemes.size() == 2)
      {
        if (b.q.MetadataThemes.get(1)).Guid.equals(b.d.F())) {
          b.d.b(b.q.MetadataThemes.get(0)).Guid);
        }
        for (;;)
        {
          b.m.a();
          finish();
          paramString1 = new Intent(this, MainActivity.class);
          paramString1.addFlags(67108864);
          paramString1.addFlags(268435456);
          startActivity(paramString1);
          return;
          b.d.b(b.q.MetadataThemes.get(1)).Guid);
        }
      }
      j = b.q.MetadataThemes.size();
    } while (j < 3);
    for (;;)
    {
      try
      {
        paramString1 = new ArrayList();
        int k = 0;
        j = 0;
        if (j < b.q.MetadataThemes.size())
        {
          paramLong = (MetadataTheme)b.q.MetadataThemes.get(j);
          paramString1.add(com.appyet.f.w.b(this, Name));
          if (!Guid.equals(b.d.F())) {
            break label1467;
          }
          k = j;
          break label1467;
        }
        paramString1 = (CharSequence[])paramString1.toArray(new CharSequence[paramString1.size()]);
        paramLong = new AlertDialog.Builder(this);
        paramLong.setTitle(getString(2131230942));
        paramLong.setSingleChoiceItems(paramString1, k, new o(this));
        paramLong.create().show();
        return;
      }
      catch (Exception paramString1)
      {
        com.appyet.d.d.a(paramString1);
        return;
      }
      if (paramString1.equals("Settings"))
      {
        startActivityForResult(new Intent(b, SettingsActivity.class), 2);
        return;
      }
      Object localObject;
      Bundle localBundle;
      if (paramString1.equals("Feed"))
      {
        paramString1 = getSupportFragmentManager();
        paramString2 = paramString1.beginTransaction();
        localObject = new com.appyet.c.r();
        localBundle = new Bundle();
        localBundle.putString("DisplayType", "Module");
        localBundle.putLong("ModuleId", paramLong.longValue());
        ((com.appyet.c.r)localObject).setArguments(localBundle);
        ((com.appyet.c.r)localObject).setRetainInstance(true);
        paramString1.popBackStack(null, 1);
        paramString2.setCustomAnimations(2130968590, 2130968594);
        paramString2.replace(2131361986, (Fragment)localObject, "ContentFrameFragment");
        paramString2.commitAllowingStateLoss();
        if (!getResources().getBoolean(2131558413)) {
          new Handler().postDelayed(new p(this), 100L);
        }
        b.d.c(paramLong.longValue());
        return;
      }
      if (paramString1.equals("FeedQuery"))
      {
        paramString1 = getSupportFragmentManager();
        paramString2 = paramString1.beginTransaction();
        localObject = new com.appyet.c.r();
        localBundle = new Bundle();
        localBundle.putString("DisplayType", "FeedQuery");
        localBundle.putLong("ModuleId", paramLong.longValue());
        ((com.appyet.c.r)localObject).setArguments(localBundle);
        ((com.appyet.c.r)localObject).setRetainInstance(true);
        paramString1.popBackStack(null, 1);
        paramString2.setCustomAnimations(2130968590, 2130968594);
        paramString2.replace(2131361986, (Fragment)localObject, "ContentFrameFragment");
        paramString2.commitAllowingStateLoss();
        if (!getResources().getBoolean(2131558413)) {
          new Handler().postDelayed(new q(this), 100L);
        }
        b.d.c(paramLong.longValue());
        return;
      }
      if (paramString1.equals("Web"))
      {
        paramString1 = b.i.a(paramString2);
        if (paramString1 == null) {
          break;
        }
        if ((Type != null) && (Type.equals("Link")) && (LinkTarget != null) && ((LinkTarget.equals("NIA")) || (LinkTarget.equals("NSD"))))
        {
          if (LinkTarget.equals("NIA"))
          {
            paramLong = new Intent(this, WebBrowserActivity.class);
            paramLong.putExtra("URL", Data);
            startActivity(paramLong);
            return;
          }
          startActivity(new Intent("android.intent.action.VIEW", Uri.parse(Data)));
          return;
        }
        paramString1 = getSupportFragmentManager();
        paramString2 = paramString1.beginTransaction();
        localObject = new be();
        localBundle = new Bundle();
        localBundle.putLong("ModuleId", paramLong.longValue());
        ((be)localObject).setArguments(localBundle);
        ((be)localObject).setRetainInstance(true);
        paramString1.popBackStack(null, 1);
        paramString2.setCustomAnimations(2130968590, 2130968594);
        paramString2.replace(2131361986, (Fragment)localObject, "ContentFrameFragment");
        paramString2.commitAllowingStateLoss();
        if (!getResources().getBoolean(2131558413)) {
          new Handler().postDelayed(new r(this), 100L);
        }
        b.d.c(paramLong.longValue());
        return;
      }
      if (paramString1.equals("YouTube"))
      {
        paramString1 = getSupportFragmentManager();
        paramString2 = paramString1.beginTransaction();
        localObject = new bj();
        localBundle = new Bundle();
        localBundle.putLong("ModuleId", paramLong.longValue());
        ((bj)localObject).setArguments(localBundle);
        ((bj)localObject).setRetainInstance(true);
        paramString1.popBackStack(null, 1);
        paramString2.setCustomAnimations(2130968590, 2130968594);
        paramString2.replace(2131361986, (Fragment)localObject, "ContentFrameFragment");
        paramString2.commitAllowingStateLoss();
        if (!getResources().getBoolean(2131558413)) {
          new Handler().postDelayed(new s(this), 100L);
        }
        b.d.c(paramLong.longValue());
        return;
      }
      if (paramString1.equals("Forum"))
      {
        paramString1 = getSupportFragmentManager();
        paramString2 = paramString1.beginTransaction();
        localObject = new com.appyet.c.a.a();
        localBundle = new Bundle();
        localBundle.putLong("ModuleId", paramLong.longValue());
        ((com.appyet.c.a.a)localObject).setArguments(localBundle);
        ((com.appyet.c.a.a)localObject).setRetainInstance(true);
        paramString1.popBackStack(null, 1);
        paramString2.setCustomAnimations(2130968590, 2130968594);
        paramString2.replace(2131361986, (Fragment)localObject, "ContentFrameFragment");
        paramString2.commitAllowingStateLoss();
        if (!getResources().getBoolean(2131558413)) {
          new Handler().postDelayed(new t(this), 100L);
        }
        b.d.c(paramLong.longValue());
        return;
      }
      if (!paramString1.equals("Customize")) {
        break;
      }
      paramString1 = new Intent(b, CustomizeActivity.class);
      b.startActivity(paramString1);
      return;
      label1467:
      j += 1;
    }
  }
  
  public final void b()
  {
    c();
  }
  
  public final void b(Long paramLong, String paramString1, String paramString2)
  {
    i locali = new i();
    Bundle localBundle = new Bundle();
    localBundle.putString("ARG_TOPIC_ID", paramString2);
    localBundle.putString("ARG_FORUM_ID", paramString1);
    localBundle.putLong("ARG_MODULE_ID", paramLong.longValue());
    locali.setArguments(localBundle);
    paramLong = getSupportFragmentManager().beginTransaction();
    paramLong.replace(2131361986, locali, "ForumThreadFragment");
    paramLong.addToBackStack("ForumThreadFragment");
    paramLong.setTransition(4097);
    paramLong.commitAllowingStateLoss();
  }
  
  public final void c()
  {
    try
    {
      if (getResources().getBoolean(2131558413))
      {
        if (c != null) {
          c.a();
        }
      }
      else if ((c != null) && (f.b()))
      {
        c.a();
        return;
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public File getCacheDir()
  {
    return super.getCacheDir();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    for (;;)
    {
      return;
      try
      {
        b.m.b();
        b.i();
        b.h();
        if ((ar.a == null) || (!ar.a.toString().equals(b.d.q())))
        {
          ar.a = null;
          ar.a(this);
          finish();
          paramIntent = new Intent(this, MainActivity.class);
          paramIntent.addFlags(67108864);
          paramIntent.addFlags(268435456);
          startActivity(paramIntent);
          return;
        }
      }
      catch (Exception paramIntent)
      {
        com.appyet.d.d.a(paramIntent);
        b.e.a(paramIntent);
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    e();
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  /* Error */
  public void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 634	com/appyet/manager/ar:a	(Landroid/content/Context;)V
    //   4: aload_0
    //   5: aload_0
    //   6: invokevirtual 647	com/appyet/activity/MainActivity:getApplicationContext	()Landroid/content/Context;
    //   9: checkcast 76	com/appyet/context/ApplicationContext
    //   12: putfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   15: aload_0
    //   16: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   19: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   22: invokevirtual 650	com/appyet/manager/bp:P	()I
    //   25: iconst_m1
    //   26: if_icmpne +204 -> 230
    //   29: aload_0
    //   30: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   33: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   36: aload_0
    //   37: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   40: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   43: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   46: getfield 659	com/appyet/metadata/MetadataSetting:DefaultThemeGuid	Ljava/lang/String;
    //   49: invokevirtual 392	com/appyet/manager/bp:b	(Ljava/lang/String;)V
    //   52: aload_0
    //   53: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   56: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   59: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   62: getfield 662	com/appyet/metadata/MetadataSetting:DefaultUpdateInterval	I
    //   65: iconst_m1
    //   66: if_icmpne +1001 -> 1067
    //   69: aload_0
    //   70: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   73: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   76: iconst_0
    //   77: invokevirtual 664	com/appyet/manager/bp:e	(Z)V
    //   80: aload_0
    //   81: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   84: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   87: bipush 60
    //   89: invokevirtual 666	com/appyet/manager/bp:b	(I)V
    //   92: aload_0
    //   93: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   96: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   99: aload_0
    //   100: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   103: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   106: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   109: getfield 669	com/appyet/metadata/MetadataSetting:IsSyncOnStartUp	Z
    //   112: invokevirtual 671	com/appyet/manager/bp:f	(Z)V
    //   115: aload_0
    //   116: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   119: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   122: aload_0
    //   123: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   126: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   129: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   132: getfield 674	com/appyet/metadata/MetadataSetting:IsWiFiOnlyForArticle	Z
    //   135: invokevirtual 676	com/appyet/manager/bp:b	(Z)V
    //   138: aload_0
    //   139: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   142: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   145: aload_0
    //   146: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   149: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   152: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   155: getfield 679	com/appyet/metadata/MetadataSetting:IsWiFiOnlyForImage	Z
    //   158: invokevirtual 681	com/appyet/manager/bp:c	(Z)V
    //   161: aload_0
    //   162: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   165: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   168: aload_0
    //   169: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   172: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   175: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   178: getfield 684	com/appyet/metadata/MetadataSetting:IsWiFiOnlyForDownload	Z
    //   181: invokevirtual 686	com/appyet/manager/bp:d	(Z)V
    //   184: aload_0
    //   185: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   188: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   191: aload_0
    //   192: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   195: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   198: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   201: getfield 689	com/appyet/metadata/MetadataSetting:AutoCleanUpRead	I
    //   204: invokevirtual 691	com/appyet/manager/bp:c	(I)V
    //   207: aload_0
    //   208: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   211: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   214: aload_0
    //   215: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   218: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   221: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   224: getfield 694	com/appyet/metadata/MetadataSetting:AutoCleanUpUnread	I
    //   227: invokevirtual 696	com/appyet/manager/bp:d	(I)V
    //   230: aload_0
    //   231: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   234: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   237: getfield 700	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   240: getfield 705	com/appyet/metadata/MetadataApplication:ApplicationVersionCode	I
    //   243: aload_0
    //   244: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   247: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   250: invokevirtual 650	com/appyet/manager/bp:P	()I
    //   253: if_icmpeq +152 -> 405
    //   256: aload_0
    //   257: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   260: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   263: getfield 700	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   266: getfield 708	com/appyet/metadata/MetadataApplication:AppSyncUrl	Ljava/lang/String;
    //   269: invokestatic 713	com/appyet/d/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   272: astore_2
    //   273: aload_0
    //   274: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   277: getfield 716	com/appyet/context/ApplicationContext:k	Lcom/appyet/manager/al;
    //   280: aload_2
    //   281: invokevirtual 720	com/appyet/manager/al:g	(Ljava/lang/String;)Z
    //   284: ifeq +23 -> 307
    //   287: aload_0
    //   288: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   291: getfield 716	com/appyet/context/ApplicationContext:k	Lcom/appyet/manager/al;
    //   294: aload_2
    //   295: invokevirtual 722	com/appyet/manager/al:a	(Ljava/lang/String;)Z
    //   298: pop
    //   299: aload_0
    //   300: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   303: aconst_null
    //   304: putfield 726	com/appyet/context/ApplicationContext:r	Lcom/appyet/metadata/MetadataAppSync;
    //   307: aload_0
    //   308: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   311: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   314: lconst_1
    //   315: invokevirtual 728	com/appyet/manager/bp:a	(J)V
    //   318: aload_0
    //   319: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   322: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   325: lconst_0
    //   326: invokevirtual 730	com/appyet/manager/bp:b	(J)V
    //   329: aload_0
    //   330: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   333: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   336: aload_0
    //   337: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   340: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   343: getfield 700	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   346: getfield 705	com/appyet/metadata/MetadataApplication:ApplicationVersionCode	I
    //   349: invokevirtual 732	com/appyet/manager/bp:g	(I)V
    //   352: aload_0
    //   353: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   356: getfield 79	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   359: invokevirtual 734	com/appyet/manager/d:k	()Z
    //   362: pop
    //   363: aload_0
    //   364: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   367: getfield 354	com/appyet/context/ApplicationContext:t	Lcom/appyet/manager/bq;
    //   370: iconst_1
    //   371: invokevirtual 359	com/appyet/manager/bq:a	(Z)V
    //   374: aload_0
    //   375: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   378: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   381: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   384: getfield 737	com/appyet/metadata/MetadataSetting:WhatsNew	Ljava/lang/String;
    //   387: ifnull +18 -> 405
    //   390: aload_0
    //   391: new 62	android/content/Intent
    //   394: dup
    //   395: aload_0
    //   396: ldc_w 739
    //   399: invokespecial 366	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   402: invokevirtual 410	com/appyet/activity/MainActivity:startActivity	(Landroid/content/Intent;)V
    //   405: getstatic 744	android/os/Build$VERSION:SDK_INT	I
    //   408: bipush 16
    //   410: if_icmplt +16 -> 426
    //   413: aload_0
    //   414: invokevirtual 748	com/appyet/activity/MainActivity:getWindow	()Landroid/view/Window;
    //   417: ldc_w 749
    //   420: ldc_w 749
    //   423: invokevirtual 755	android/view/Window:setFlags	(II)V
    //   426: aload_0
    //   427: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   430: getfield 396	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   433: aload_0
    //   434: invokevirtual 757	com/appyet/manager/bw:a	(Landroid/app/Activity;)V
    //   437: aload_0
    //   438: aload_1
    //   439: invokespecial 759	com/actionbarsherlock/app/SherlockFragmentActivity:onCreate	(Landroid/os/Bundle;)V
    //   442: aload_0
    //   443: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   446: ldc_w 493
    //   449: invokevirtual 497	android/content/res/Resources:getBoolean	(I)Z
    //   452: ifne +926 -> 1378
    //   455: aload_0
    //   456: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   459: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   462: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   465: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   468: ifnonnull +19 -> 487
    //   471: aload_0
    //   472: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   475: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   478: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   481: ldc_w 764
    //   484: putfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   487: aload_0
    //   488: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   491: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   494: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   497: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   500: ldc_w 764
    //   503: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   506: ifne +833 -> 1339
    //   509: aload_0
    //   510: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   513: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   516: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   519: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   522: ldc_w 766
    //   525: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   528: ifeq +635 -> 1163
    //   531: aload_0
    //   532: aload_0
    //   533: getstatic 771	net/simonvt/menudrawer/r:a	Lnet/simonvt/menudrawer/r;
    //   536: getstatic 776	net/simonvt/menudrawer/x:a	Lnet/simonvt/menudrawer/x;
    //   539: iconst_0
    //   540: invokestatic 779	net/simonvt/menudrawer/MenuDrawer:a	(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    //   543: putfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   546: aload_0
    //   547: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   550: iconst_1
    //   551: invokevirtual 782	net/simonvt/menudrawer/MenuDrawer:setOffsetMenuEnabled	(Z)V
    //   554: aload_0
    //   555: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   558: ldc_w 783
    //   561: invokevirtual 786	net/simonvt/menudrawer/MenuDrawer:setContentView	(I)V
    //   564: aload_0
    //   565: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   568: ldc_w 787
    //   571: invokevirtual 790	net/simonvt/menudrawer/MenuDrawer:setMenuView	(I)V
    //   574: aload_0
    //   575: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   578: getfield 396	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   581: getfield 793	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   584: getfield 796	com/appyet/metadata/MetadataTheme:ActionBarFgColor	Z
    //   587: ifeq +778 -> 1365
    //   590: aload_0
    //   591: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   594: ldc_w 797
    //   597: invokevirtual 800	net/simonvt/menudrawer/MenuDrawer:setSlideDrawable	(I)V
    //   600: aload_0
    //   601: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   604: iconst_1
    //   605: invokevirtual 803	net/simonvt/menudrawer/MenuDrawer:setDrawerIndicatorEnabled	(Z)V
    //   608: aload_0
    //   609: invokespecial 638	com/appyet/activity/MainActivity:e	()V
    //   612: aload_0
    //   613: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   616: aload_0
    //   617: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   620: ldc_w 804
    //   623: invokevirtual 224	android/content/res/Resources:getDimensionPixelSize	(I)I
    //   626: invokevirtual 807	net/simonvt/menudrawer/MenuDrawer:setDropShadowSize	(I)V
    //   629: aload_0
    //   630: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   633: ldc_w 808
    //   636: invokevirtual 811	net/simonvt/menudrawer/MenuDrawer:setDropShadow	(I)V
    //   639: aload_0
    //   640: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   643: iconst_2
    //   644: invokevirtual 814	net/simonvt/menudrawer/MenuDrawer:setTouchMode	(I)V
    //   647: aload_0
    //   648: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   651: aload_0
    //   652: getfield 51	com/appyet/activity/MainActivity:i	Lnet/simonvt/menudrawer/o;
    //   655: invokevirtual 818	net/simonvt/menudrawer/MenuDrawer:setOnDrawerStateChangeListener	(Lnet/simonvt/menudrawer/o;)V
    //   658: aload_0
    //   659: invokevirtual 822	com/appyet/activity/MainActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   662: iconst_1
    //   663: invokevirtual 827	com/actionbarsherlock/app/ActionBar:setHomeButtonEnabled	(Z)V
    //   666: aload_0
    //   667: ldc_w 828
    //   670: invokevirtual 832	com/appyet/activity/MainActivity:findViewById	(I)Landroid/view/View;
    //   673: checkcast 834	android/widget/RelativeLayout
    //   676: astore_1
    //   677: aload_0
    //   678: ldc_w 835
    //   681: invokevirtual 832	com/appyet/activity/MainActivity:findViewById	(I)Landroid/view/View;
    //   684: checkcast 837	android/widget/FrameLayout
    //   687: astore_2
    //   688: aload_0
    //   689: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   692: getfield 396	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   695: getfield 793	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   698: getfield 840	com/appyet/metadata/MetadataTheme:PrimaryBgColor	Ljava/lang/String;
    //   701: ldc_w 842
    //   704: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   707: ifeq +697 -> 1404
    //   710: aload_1
    //   711: aload_0
    //   712: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   715: ldc_w 843
    //   718: invokevirtual 846	android/content/res/Resources:getColor	(I)I
    //   721: invokevirtual 849	android/widget/RelativeLayout:setBackgroundColor	(I)V
    //   724: aload_2
    //   725: aload_0
    //   726: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   729: ldc_w 843
    //   732: invokevirtual 846	android/content/res/Resources:getColor	(I)I
    //   735: invokevirtual 850	android/widget/FrameLayout:setBackgroundColor	(I)V
    //   738: aload_0
    //   739: invokevirtual 258	com/appyet/activity/MainActivity:getSupportFragmentManager	()Landroid/support/v4/app/FragmentManager;
    //   742: astore_2
    //   743: aload_2
    //   744: invokevirtual 264	android/support/v4/app/FragmentManager:beginTransaction	()Landroid/support/v4/app/FragmentTransaction;
    //   747: astore_1
    //   748: aload_2
    //   749: ldc_w 852
    //   752: invokevirtual 856	android/support/v4/app/FragmentManager:findFragmentByTag	(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    //   755: ifnonnull +38 -> 793
    //   758: new 603	com/appyet/c/ay
    //   761: dup
    //   762: invokespecial 857	com/appyet/c/ay:<init>	()V
    //   765: astore_2
    //   766: aload_2
    //   767: iconst_1
    //   768: invokevirtual 858	com/appyet/c/ay:setRetainInstance	(Z)V
    //   771: aload_1
    //   772: ldc_w 835
    //   775: aload_2
    //   776: ldc_w 852
    //   779: invokevirtual 273	android/support/v4/app/FragmentTransaction:replace	(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    //   782: pop
    //   783: aload_0
    //   784: aload_2
    //   785: putfield 184	com/appyet/activity/MainActivity:c	Lcom/appyet/c/ay;
    //   788: aload_1
    //   789: invokevirtual 284	android/support/v4/app/FragmentTransaction:commitAllowingStateLoss	()I
    //   792: pop
    //   793: aload_0
    //   794: aload_0
    //   795: invokevirtual 862	com/appyet/activity/MainActivity:getIntent	()Landroid/content/Intent;
    //   798: invokespecial 864	com/appyet/activity/MainActivity:a	(Landroid/content/Intent;)Z
    //   801: ifne +7 -> 808
    //   804: aload_0
    //   805: invokespecial 866	com/appyet/activity/MainActivity:d	()V
    //   808: aload_0
    //   809: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   812: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   815: invokevirtual 869	com/appyet/manager/bp:O	()Z
    //   818: ifeq +14 -> 832
    //   821: aload_0
    //   822: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   825: getfield 354	com/appyet/context/ApplicationContext:t	Lcom/appyet/manager/bq;
    //   828: iconst_0
    //   829: invokevirtual 359	com/appyet/manager/bq:a	(Z)V
    //   832: aload_0
    //   833: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   836: ldc_w 493
    //   839: invokevirtual 497	android/content/res/Resources:getBoolean	(I)Z
    //   842: istore 5
    //   844: iload 5
    //   846: ifeq +589 -> 1435
    //   849: aload_0
    //   850: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   853: getfield 133	com/appyet/context/ApplicationContext:e	Lcom/appyet/manager/ap;
    //   856: astore_1
    //   857: aload_0
    //   858: invokevirtual 872	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   861: astore_2
    //   862: aload_2
    //   863: ifnull +82 -> 945
    //   866: aload_2
    //   867: invokevirtual 876	android/content/Intent:getData	()Landroid/net/Uri;
    //   870: astore_2
    //   871: aload_2
    //   872: ifnull +73 -> 945
    //   875: aload_1
    //   876: getfield 879	com/appyet/manager/ap:a	Lcom/google/analytics/tracking/android/Tracker;
    //   879: ifnull +31 -> 910
    //   882: aload_2
    //   883: ifnull +27 -> 910
    //   886: aload_2
    //   887: ldc_w 881
    //   890: invokevirtual 884	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   893: ifnull +616 -> 1509
    //   896: aload_1
    //   897: getfield 879	com/appyet/manager/ap:a	Lcom/google/analytics/tracking/android/Tracker;
    //   900: ldc_w 886
    //   903: aload_2
    //   904: invokevirtual 889	android/net/Uri:getPath	()Ljava/lang/String;
    //   907: invokevirtual 894	com/google/analytics/tracking/android/Tracker:set	(Ljava/lang/String;Ljava/lang/String;)V
    //   910: aload_1
    //   911: getfield 896	com/appyet/manager/ap:b	Lcom/google/analytics/tracking/android/Tracker;
    //   914: ifnull +31 -> 945
    //   917: aload_2
    //   918: ifnull +27 -> 945
    //   921: aload_2
    //   922: ldc_w 881
    //   925: invokevirtual 884	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   928: ifnull +619 -> 1547
    //   931: aload_1
    //   932: getfield 896	com/appyet/manager/ap:b	Lcom/google/analytics/tracking/android/Tracker;
    //   935: ldc_w 886
    //   938: aload_2
    //   939: invokevirtual 889	android/net/Uri:getPath	()Ljava/lang/String;
    //   942: invokevirtual 894	com/google/analytics/tracking/android/Tracker:set	(Ljava/lang/String;Ljava/lang/String;)V
    //   945: aload_0
    //   946: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   949: getfield 133	com/appyet/context/ApplicationContext:e	Lcom/appyet/manager/ap;
    //   952: ldc_w 898
    //   955: invokevirtual 900	com/appyet/manager/ap:a	(Ljava/lang/String;)V
    //   958: aload_0
    //   959: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   962: getfield 396	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   965: getfield 793	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   968: getfield 903	com/appyet/metadata/MetadataTheme:ActionBarBgColor	Ljava/lang/String;
    //   971: invokestatic 909	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   974: istore 4
    //   976: new 911	android/graphics/drawable/ColorDrawable
    //   979: dup
    //   980: iload 4
    //   982: invokespecial 913	android/graphics/drawable/ColorDrawable:<init>	(I)V
    //   985: astore_2
    //   986: aload_0
    //   987: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   990: getfield 396	com/appyet/context/ApplicationContext:m	Lcom/appyet/manager/bw;
    //   993: getfield 793	com/appyet/manager/bw:a	Lcom/appyet/metadata/MetadataTheme;
    //   996: getfield 796	com/appyet/metadata/MetadataTheme:ActionBarFgColor	Z
    //   999: ifeq +586 -> 1585
    //   1002: aload_0
    //   1003: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   1006: ldc_w 914
    //   1009: invokevirtual 918	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   1012: astore_1
    //   1013: new 920	android/graphics/drawable/LayerDrawable
    //   1016: dup
    //   1017: iconst_2
    //   1018: anewarray 922	android/graphics/drawable/Drawable
    //   1021: dup
    //   1022: iconst_0
    //   1023: aload_2
    //   1024: aastore
    //   1025: dup
    //   1026: iconst_1
    //   1027: aload_1
    //   1028: aastore
    //   1029: invokespecial 925	android/graphics/drawable/LayerDrawable:<init>	([Landroid/graphics/drawable/Drawable;)V
    //   1032: astore_1
    //   1033: aload_0
    //   1034: getfield 44	com/appyet/activity/MainActivity:g	Landroid/graphics/drawable/Drawable;
    //   1037: ifnonnull +562 -> 1599
    //   1040: aload_0
    //   1041: invokevirtual 822	com/appyet/activity/MainActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   1044: aload_1
    //   1045: invokevirtual 929	com/actionbarsherlock/app/ActionBar:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1048: aload_0
    //   1049: aload_1
    //   1050: putfield 44	com/appyet/activity/MainActivity:g	Landroid/graphics/drawable/Drawable;
    //   1053: aload_0
    //   1054: iload 4
    //   1056: putfield 931	com/appyet/activity/MainActivity:h	I
    //   1059: aload_0
    //   1060: getfield 42	com/appyet/activity/MainActivity:a	Lcom/appyet/f/k;
    //   1063: invokevirtual 932	com/appyet/f/k:a	()V
    //   1066: return
    //   1067: aload_0
    //   1068: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1071: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   1074: iconst_1
    //   1075: invokevirtual 664	com/appyet/manager/bp:e	(Z)V
    //   1078: aload_0
    //   1079: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1082: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   1085: aload_0
    //   1086: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1089: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   1092: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   1095: getfield 662	com/appyet/metadata/MetadataSetting:DefaultUpdateInterval	I
    //   1098: invokevirtual 666	com/appyet/manager/bp:b	(I)V
    //   1101: goto -1009 -> 92
    //   1104: astore_2
    //   1105: aload_2
    //   1106: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1109: aload_0
    //   1110: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1113: getfield 133	com/appyet/context/ApplicationContext:e	Lcom/appyet/manager/ap;
    //   1116: aload_2
    //   1117: invokevirtual 136	com/appyet/manager/ap:a	(Ljava/lang/Exception;)V
    //   1120: goto -890 -> 230
    //   1123: astore_2
    //   1124: aload_2
    //   1125: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1128: goto -821 -> 307
    //   1131: astore_2
    //   1132: aload_2
    //   1133: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1136: goto -762 -> 374
    //   1139: astore_2
    //   1140: aload_2
    //   1141: invokestatic 935	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   1144: goto -770 -> 374
    //   1147: astore_2
    //   1148: aload_2
    //   1149: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1152: goto -747 -> 405
    //   1155: astore_2
    //   1156: aload_2
    //   1157: invokestatic 935	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   1160: goto -755 -> 405
    //   1163: aload_0
    //   1164: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1167: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   1170: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   1173: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   1176: ldc_w 937
    //   1179: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1182: ifeq +29 -> 1211
    //   1185: aload_0
    //   1186: aload_0
    //   1187: getstatic 771	net/simonvt/menudrawer/r:a	Lnet/simonvt/menudrawer/r;
    //   1190: getstatic 776	net/simonvt/menudrawer/x:a	Lnet/simonvt/menudrawer/x;
    //   1193: iconst_0
    //   1194: invokestatic 779	net/simonvt/menudrawer/MenuDrawer:a	(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    //   1197: putfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1200: aload_0
    //   1201: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1204: iconst_0
    //   1205: invokevirtual 782	net/simonvt/menudrawer/MenuDrawer:setOffsetMenuEnabled	(Z)V
    //   1208: goto -654 -> 554
    //   1211: aload_0
    //   1212: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1215: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   1218: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   1221: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   1224: ldc_w 939
    //   1227: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1230: ifeq +29 -> 1259
    //   1233: aload_0
    //   1234: aload_0
    //   1235: getstatic 771	net/simonvt/menudrawer/r:a	Lnet/simonvt/menudrawer/r;
    //   1238: getstatic 776	net/simonvt/menudrawer/x:a	Lnet/simonvt/menudrawer/x;
    //   1241: iconst_0
    //   1242: invokestatic 779	net/simonvt/menudrawer/MenuDrawer:a	(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    //   1245: putfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1248: aload_0
    //   1249: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1252: iconst_0
    //   1253: invokevirtual 782	net/simonvt/menudrawer/MenuDrawer:setOffsetMenuEnabled	(Z)V
    //   1256: goto -702 -> 554
    //   1259: aload_0
    //   1260: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1263: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   1266: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   1269: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   1272: ldc_w 941
    //   1275: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1278: ifeq +21 -> 1299
    //   1281: aload_0
    //   1282: aload_0
    //   1283: getstatic 943	net/simonvt/menudrawer/r:c	Lnet/simonvt/menudrawer/r;
    //   1286: getstatic 776	net/simonvt/menudrawer/x:a	Lnet/simonvt/menudrawer/x;
    //   1289: iconst_1
    //   1290: invokestatic 779	net/simonvt/menudrawer/MenuDrawer:a	(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    //   1293: putfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1296: goto -742 -> 554
    //   1299: aload_0
    //   1300: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1303: getfield 376	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   1306: getfield 654	com/appyet/metadata/Metadata:MetadataSetting	Lcom/appyet/metadata/MetadataSetting;
    //   1309: getfield 762	com/appyet/metadata/MetadataSetting:LeftMenuType	Ljava/lang/String;
    //   1312: ldc_w 945
    //   1315: invokevirtual 314	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1318: ifeq +21 -> 1339
    //   1321: aload_0
    //   1322: aload_0
    //   1323: getstatic 943	net/simonvt/menudrawer/r:c	Lnet/simonvt/menudrawer/r;
    //   1326: getstatic 776	net/simonvt/menudrawer/x:a	Lnet/simonvt/menudrawer/x;
    //   1329: iconst_0
    //   1330: invokestatic 779	net/simonvt/menudrawer/MenuDrawer:a	(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    //   1333: putfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1336: goto -782 -> 554
    //   1339: aload_0
    //   1340: aload_0
    //   1341: getstatic 771	net/simonvt/menudrawer/r:a	Lnet/simonvt/menudrawer/r;
    //   1344: getstatic 776	net/simonvt/menudrawer/x:a	Lnet/simonvt/menudrawer/x;
    //   1347: iconst_1
    //   1348: invokestatic 779	net/simonvt/menudrawer/MenuDrawer:a	(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    //   1351: putfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1354: aload_0
    //   1355: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1358: iconst_1
    //   1359: invokevirtual 782	net/simonvt/menudrawer/MenuDrawer:setOffsetMenuEnabled	(Z)V
    //   1362: goto -808 -> 554
    //   1365: aload_0
    //   1366: getfield 55	com/appyet/activity/MainActivity:f	Lnet/simonvt/menudrawer/MenuDrawer;
    //   1369: ldc_w 946
    //   1372: invokevirtual 800	net/simonvt/menudrawer/MenuDrawer:setSlideDrawable	(I)V
    //   1375: goto -775 -> 600
    //   1378: aload_0
    //   1379: ldc_w 783
    //   1382: invokevirtual 947	com/appyet/activity/MainActivity:setContentView	(I)V
    //   1385: aload_0
    //   1386: invokevirtual 822	com/appyet/activity/MainActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   1389: iconst_0
    //   1390: invokevirtual 950	com/actionbarsherlock/app/ActionBar:setDisplayHomeAsUpEnabled	(Z)V
    //   1393: aload_0
    //   1394: invokevirtual 822	com/appyet/activity/MainActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   1397: iconst_0
    //   1398: invokevirtual 827	com/actionbarsherlock/app/ActionBar:setHomeButtonEnabled	(Z)V
    //   1401: goto -735 -> 666
    //   1404: aload_1
    //   1405: aload_0
    //   1406: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   1409: ldc_w 951
    //   1412: invokevirtual 846	android/content/res/Resources:getColor	(I)I
    //   1415: invokevirtual 849	android/widget/RelativeLayout:setBackgroundColor	(I)V
    //   1418: aload_2
    //   1419: aload_0
    //   1420: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   1423: ldc_w 951
    //   1426: invokevirtual 846	android/content/res/Resources:getColor	(I)I
    //   1429: invokevirtual 850	android/widget/FrameLayout:setBackgroundColor	(I)V
    //   1432: goto -694 -> 738
    //   1435: aload_0
    //   1436: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1439: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   1442: invokevirtual 954	com/appyet/manager/bp:S	()Z
    //   1445: ifeq +20 -> 1465
    //   1448: aload_0
    //   1449: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1452: getfield 141	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   1455: invokevirtual 146	com/appyet/manager/bp:Q	()J
    //   1458: ldc2_w 67
    //   1461: lcmp
    //   1462: ifne -613 -> 849
    //   1465: new 499	android/os/Handler
    //   1468: dup
    //   1469: invokespecial 500	android/os/Handler:<init>	()V
    //   1472: new 956	com/appyet/activity/n
    //   1475: dup
    //   1476: aload_0
    //   1477: invokespecial 957	com/appyet/activity/n:<init>	(Lcom/appyet/activity/MainActivity;)V
    //   1480: ldc2_w 958
    //   1483: invokevirtual 509	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   1486: pop
    //   1487: goto -638 -> 849
    //   1490: astore_1
    //   1491: aload_1
    //   1492: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1495: aload_0
    //   1496: getfield 74	com/appyet/activity/MainActivity:b	Lcom/appyet/context/ApplicationContext;
    //   1499: getfield 133	com/appyet/context/ApplicationContext:e	Lcom/appyet/manager/ap;
    //   1502: aload_1
    //   1503: invokevirtual 136	com/appyet/manager/ap:a	(Ljava/lang/Exception;)V
    //   1506: goto -657 -> 849
    //   1509: aload_2
    //   1510: ldc_w 961
    //   1513: invokevirtual 884	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   1516: ifnull -606 -> 910
    //   1519: aload_1
    //   1520: getfield 879	com/appyet/manager/ap:a	Lcom/google/analytics/tracking/android/Tracker;
    //   1523: ldc_w 963
    //   1526: aload_2
    //   1527: ldc_w 961
    //   1530: invokevirtual 884	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   1533: invokevirtual 894	com/google/analytics/tracking/android/Tracker:set	(Ljava/lang/String;Ljava/lang/String;)V
    //   1536: goto -626 -> 910
    //   1539: astore_3
    //   1540: aload_3
    //   1541: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1544: goto -634 -> 910
    //   1547: aload_2
    //   1548: ldc_w 961
    //   1551: invokevirtual 884	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   1554: ifnull -609 -> 945
    //   1557: aload_1
    //   1558: getfield 896	com/appyet/manager/ap:b	Lcom/google/analytics/tracking/android/Tracker;
    //   1561: ldc_w 963
    //   1564: aload_2
    //   1565: ldc_w 961
    //   1568: invokevirtual 884	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   1571: invokevirtual 894	com/google/analytics/tracking/android/Tracker:set	(Ljava/lang/String;Ljava/lang/String;)V
    //   1574: goto -629 -> 945
    //   1577: astore_1
    //   1578: aload_1
    //   1579: invokestatic 130	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   1582: goto -637 -> 945
    //   1585: aload_0
    //   1586: invokevirtual 212	com/appyet/activity/MainActivity:getResources	()Landroid/content/res/Resources;
    //   1589: ldc_w 964
    //   1592: invokevirtual 918	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   1595: astore_1
    //   1596: goto -583 -> 1013
    //   1599: new 966	android/graphics/drawable/TransitionDrawable
    //   1602: dup
    //   1603: iconst_2
    //   1604: anewarray 922	android/graphics/drawable/Drawable
    //   1607: dup
    //   1608: iconst_0
    //   1609: aload_0
    //   1610: getfield 44	com/appyet/activity/MainActivity:g	Landroid/graphics/drawable/Drawable;
    //   1613: aastore
    //   1614: dup
    //   1615: iconst_1
    //   1616: aload_1
    //   1617: aastore
    //   1618: invokespecial 967	android/graphics/drawable/TransitionDrawable:<init>	([Landroid/graphics/drawable/Drawable;)V
    //   1621: astore_2
    //   1622: aload_0
    //   1623: invokevirtual 822	com/appyet/activity/MainActivity:getSupportActionBar	()Lcom/actionbarsherlock/app/ActionBar;
    //   1626: aload_2
    //   1627: invokevirtual 929	com/actionbarsherlock/app/ActionBar:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1630: aload_2
    //   1631: sipush 200
    //   1634: invokevirtual 970	android/graphics/drawable/TransitionDrawable:startTransition	(I)V
    //   1637: goto -589 -> 1048
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1640	0	this	MainActivity
    //   0	1640	1	paramBundle	Bundle
    //   272	752	2	localObject	Object
    //   1104	13	2	localException1	Exception
    //   1123	2	2	localException2	Exception
    //   1131	2	2	localException3	Exception
    //   1139	2	2	localError1	Error
    //   1147	2	2	localException4	Exception
    //   1155	410	2	localError2	Error
    //   1621	10	2	localTransitionDrawable	android.graphics.drawable.TransitionDrawable
    //   1539	2	3	localException5	Exception
    //   974	81	4	j	int
    //   842	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   15	92	1104	java/lang/Exception
    //   92	230	1104	java/lang/Exception
    //   1067	1101	1104	java/lang/Exception
    //   256	307	1123	java/lang/Exception
    //   352	374	1131	java/lang/Exception
    //   352	374	1139	java/lang/Error
    //   374	405	1147	java/lang/Exception
    //   374	405	1155	java/lang/Error
    //   832	844	1490	java/lang/Exception
    //   1435	1465	1490	java/lang/Exception
    //   1465	1487	1490	java/lang/Exception
    //   875	882	1539	java/lang/Exception
    //   886	910	1539	java/lang/Exception
    //   1509	1536	1539	java/lang/Exception
    //   910	917	1577	java/lang/Exception
    //   921	945	1577	java/lang/Exception
    //   1547	1574	1577	java/lang/Exception
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      if (!getResources().getBoolean(2131558413))
      {
        FragmentManager localFragmentManager = getSupportFragmentManager();
        if (paramInt == 4)
        {
          if (localFragmentManager.getBackStackEntryCount() != 0) {
            break label67;
          }
          if (f.b())
          {
            finish();
            return true;
          }
          f.n();
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    label67:
    do
    {
      return super.onKeyUp(paramInt, paramKeyEvent);
    } while (!f.b());
    f.o();
    return true;
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    if (paramIntent != null) {}
    try
    {
      if (paramIntent.hasExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID"))
      {
        long l = paramIntent.getLongExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID", -1L);
        if (l != -1L)
        {
          finish();
          Intent localIntent = new Intent(this, MainActivity.class);
          localIntent.addFlags(67108864);
          localIntent.addFlags(268435456);
          localIntent.putExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID", l);
          startActivity(localIntent);
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
        b.e.a(localException);
      }
    }
    super.onNewIntent(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    for (;;)
    {
      try
      {
        int j = paramMenuItem.getItemId();
        switch (j)
        {
        }
      }
      catch (Exception localException)
      {
        com.appyet.d.d.a(localException);
        b.e.a(localException);
        continue;
      }
      return super.onOptionsItemSelected(paramMenuItem);
      if (getSupportFragmentManager().getBackStackEntryCount() == 0)
      {
        if (!getResources().getBoolean(2131558413))
        {
          f.m();
          return true;
        }
      }
      else {
        onBackPressed();
      }
    }
  }
  
  public void onPause()
  {
    unregisterReceiver(e);
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    ar.a(this);
    b.a = true;
    ((NotificationManager)getSystemService("notification")).cancel(0);
    e = new c(this);
    IntentFilter localIntentFilter = new IntentFilter(b.x);
    registerReceiver(e, localIntentFilter);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.appyet.activity.MainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */