package com.appyet.context;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.a.a.b.h;
import com.appyet.d.e;
import com.appyet.data.DatabaseHelper;
import com.appyet.manager.af;
import com.appyet.manager.al;
import com.appyet.manager.am;
import com.appyet.manager.an;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.as;
import com.appyet.manager.bk;
import com.appyet.manager.bl;
import com.appyet.manager.bp;
import com.appyet.manager.bq;
import com.appyet.manager.bw;
import com.appyet.manager.bx;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataAppSync;
import com.appyet.metadata.MetadataApplication;
import com.appyet.receiver.AlarmReceiver;
import com.google.a.r;
import com.j256.ormlite.android.apptools.OpenHelperManager;
import java.util.Calendar;
import java.util.Date;

public class ApplicationContext
  extends Application
{
  private static int B = 0;
  public static String b = "app.yet";
  public int A;
  public boolean a = false;
  public as c;
  public bp d;
  public ap e;
  public com.appyet.manager.b f;
  public bl g;
  public com.appyet.manager.d h;
  public bk i;
  public al j;
  public al k;
  public af l;
  public bw m;
  public f n;
  public g o;
  public an p;
  public Metadata q;
  public MetadataAppSync r;
  public com.appyet.manager.a s;
  public bq t;
  public bx u;
  public String v;
  public String w;
  public String x;
  public int y;
  public int z;
  
  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static void d() {}
  
  private void j()
  {
    while (!a()) {
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    j = new al(this);
    j.a(am.b);
    j.h("Image/");
    k = new al(this);
    k.a(am.b);
    k.h("FavIcon/");
  }
  
  private void k()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    z = widthPixels;
    A = heightPixels;
    y = (getResourcesgetConfigurationscreenLayout & 0xF);
  }
  
  public final void a(int paramInt)
  {
    try
    {
      B = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String b()
  {
    try
    {
      String str = getPackageManagergetPackageInfogetPackageName0versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      com.appyet.d.d.a(localNameNotFoundException);
    }
    return "";
  }
  
  public final int c()
  {
    try
    {
      int i1 = B;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean e()
  {
    Date localDate = new Date();
    long l1 = d.a();
    int i1 = d.i();
    if (i1 < 0) {}
    long l2;
    do
    {
      return false;
      l2 = i1 * 86400000;
      if (l1 <= 0L) {
        return true;
      }
    } while (localDate.getTime() - l1 <= l2);
    return true;
  }
  
  public final boolean f()
  {
    if (!d.h()) {}
    Date localDate;
    long l1;
    long l2;
    do
    {
      return false;
      localDate = new Date();
      l1 = d.k();
      l2 = d.l() * 60000;
      if (l1 <= 0L) {
        return true;
      }
    } while (localDate.getTime() - l1 <= l2);
    return true;
  }
  
  public final void g()
  {
    try
    {
      String str = e.a(q.MetadataApplication.AppSyncUrl);
      if (k.g(str))
      {
        str = k.b(str, "UTF8");
        r localr = new r();
        a = "yyyy-MM-dd'T'HH:mm:ss";
        r = ((MetadataAppSync)localr.a().a(str, MetadataAppSync.class));
      }
      return;
    }
    catch (Exception localException)
    {
      r = null;
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void h()
  {
    long l1 = 1000L;
    for (;;)
    {
      try
      {
        AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
        PendingIntent localPendingIntent;
        long l2;
        if (d.h())
        {
          localPendingIntent = PendingIntent.getBroadcast(this, 0, new Intent(this, AlarmReceiver.class), 0);
          Calendar localCalendar = Calendar.getInstance();
          l2 = d.k() + d.l() * 60000 - localCalendar.getTimeInMillis();
          if (l2 < 1000L)
          {
            localCalendar.add(14, (int)l1);
            localAlarmManager.setRepeating(0, localCalendar.getTimeInMillis(), d.l() * 60000, localPendingIntent);
          }
        }
        else
        {
          localPendingIntent = PendingIntent.getBroadcast(this, 0, new Intent(this, AlarmReceiver.class), 0);
          try
          {
            localAlarmManager.cancel(localPendingIntent);
            return;
          }
          catch (Exception localException1)
          {
            com.appyet.d.d.a(localException1);
            return;
          }
        }
        l1 = l2;
      }
      catch (Exception localException2)
      {
        com.appyet.d.d.a(localException2);
        return;
      }
    }
  }
  
  public final void i()
  {
    if ((d.g() == null) || (d.g().equals("")))
    {
      WebView localWebView = new WebView(this);
      v = localWebView.getSettings().getUserAgentString();
      localWebView.destroy();
      return;
    }
    v = d.g();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    k();
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate()
  {
    super.onCreate();
    k();
    f = new com.appyet.manager.b(this);
    d = new bp(this);
    ar.a(this);
    h = new com.appyet.manager.d(this);
    g = new bl(this);
    t = new bq(this);
    m = new bw(this);
    s = new com.appyet.manager.a(this);
    u = new bx(this);
    c = new as(this);
    n = new f(this);
    o = new g(this);
    p = new an(this);
    l = new af(this);
    i = new bk(this);
    w = (getPackageName() + ".intent.action.Ui2Service");
    x = (getPackageName() + ".intent.action.Service2Ui");
    j();
    i();
    Object localObject = h;
    b = ((DatabaseHelper)OpenHelperManager.getHelper(a, DatabaseHelper.class));
    m.b();
    h();
    c.a();
    g();
    e = new ap(this);
    Context localContext = getApplicationContext();
    int i1 = (int)(Runtime.getRuntime().maxMemory() / 8L);
    if (Build.VERSION.SDK_INT >= 9) {}
    for (localObject = new com.a.a.a.b.a.c(i1);; localObject = new com.a.a.a.b.a.b(i1))
    {
      localObject = new h(localContext).a().a((com.a.a.a.b.c)localObject).b().a(new com.a.a.a.a.a.c(j.a(), new com.appyet.e.a())).a(com.a.a.b.a.k.b).c();
      com.a.a.b.f.a().a((com.a.a.b.g)localObject);
      return;
    }
  }
  
  public void onLowMemory()
  {
    System.gc();
    super.onLowMemory();
  }
  
  public void onTerminate()
  {
    if (c != null) {
      c.b();
    }
    if (h != null)
    {
      com.appyet.manager.d locald = h;
      OpenHelperManager.releaseHelper();
    }
    super.onTerminate();
  }
  
  public void startActivity(Intent paramIntent)
  {
    paramIntent.addFlags(268435456);
    super.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.appyet.context.ApplicationContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */