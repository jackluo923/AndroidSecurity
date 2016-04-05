package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class GoogleAnalytics
  extends TrackerHandler
{
  private static boolean wj;
  private static GoogleAnalytics wq;
  private Context mContext;
  private String tA;
  private f tS;
  private String tz;
  private boolean wk;
  private af wl;
  private volatile Boolean wm = Boolean.valueOf(false);
  private Logger wn;
  private Set<GoogleAnalytics.a> wo;
  private boolean wp = false;
  
  protected GoogleAnalytics(Context paramContext)
  {
    this(paramContext, t.u(paramContext), r.cz());
  }
  
  private GoogleAnalytics(Context paramContext, f paramf, af paramaf)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context cannot be null");
    }
    mContext = paramContext.getApplicationContext();
    tS = paramf;
    wl = paramaf;
    g.r(mContext);
    ae.r(mContext);
    h.r(mContext);
    wn = new l();
    wo = new HashSet();
    de();
  }
  
  private int P(String paramString)
  {
    paramString = paramString.toLowerCase();
    if ("verbose".equals(paramString)) {
      return 0;
    }
    if ("info".equals(paramString)) {
      return 1;
    }
    if ("warning".equals(paramString)) {
      return 2;
    }
    if ("error".equals(paramString)) {
      return 3;
    }
    return -1;
  }
  
  private Tracker a(Tracker paramTracker)
  {
    if (tz != null) {
      paramTracker.set("&an", tz);
    }
    if (tA != null) {
      paramTracker.set("&av", tA);
    }
    return paramTracker;
  }
  
  static GoogleAnalytics dd()
  {
    try
    {
      GoogleAnalytics localGoogleAnalytics = wq;
      return localGoogleAnalytics;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void de()
  {
    if (wj) {}
    Object localObject;
    do
    {
      int i;
      do
      {
        do
        {
          return;
          try
          {
            ApplicationInfo localApplicationInfo = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 129);
            if (localApplicationInfo == null)
            {
              aa.D("Couldn't get ApplicationInfo to load gloabl config.");
              return;
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            for (;;)
            {
              aa.C("PackageManager doesn't know about package: " + localNameNotFoundException);
              localObject = null;
            }
            localObject = metaData;
          }
        } while (localObject == null);
        i = ((Bundle)localObject).getInt("com.google.android.gms.analytics.globalConfigResource");
      } while (i <= 0);
      localObject = (w)new v(mContext).r(i);
    } while (localObject == null);
    a((w)localObject);
  }
  
  private void f(Activity paramActivity)
  {
    Iterator localIterator = wo.iterator();
    while (localIterator.hasNext()) {
      ((GoogleAnalytics.a)localIterator.next()).h(paramActivity);
    }
  }
  
  private void g(Activity paramActivity)
  {
    Iterator localIterator = wo.iterator();
    while (localIterator.hasNext()) {
      ((GoogleAnalytics.a)localIterator.next()).i(paramActivity);
    }
  }
  
  public static GoogleAnalytics getInstance(Context paramContext)
  {
    try
    {
      if (wq == null) {
        wq = new GoogleAnalytics(paramContext);
      }
      paramContext = wq;
      return paramContext;
    }
    finally {}
  }
  
  void a(GoogleAnalytics.a parama)
  {
    wo.add(parama);
  }
  
  void a(w paramw)
  {
    aa.C("Loading global config values.");
    if (paramw.cT())
    {
      tz = paramw.cU();
      aa.C("app name loaded: " + tz);
    }
    if (paramw.cV())
    {
      tA = paramw.cW();
      aa.C("app version loaded: " + tA);
    }
    if (paramw.cX())
    {
      int i = P(paramw.cY());
      if (i >= 0)
      {
        aa.C("log level loaded: " + i);
        getLogger().setLogLevel(i);
      }
    }
    if (paramw.cZ()) {
      wl.setLocalDispatchPeriod(paramw.da());
    }
    if (paramw.db()) {
      setDryRun(paramw.dc());
    }
  }
  
  void b(GoogleAnalytics.a parama)
  {
    wo.remove(parama);
  }
  
  @Deprecated
  public void dispatchLocalHits()
  {
    wl.dispatchLocalHits();
  }
  
  public void enableAutoActivityReports(Application paramApplication)
  {
    if ((Build.VERSION.SDK_INT >= 14) && (!wp))
    {
      paramApplication.registerActivityLifecycleCallbacks(new GoogleAnalytics.b(this));
      wp = true;
    }
  }
  
  public boolean getAppOptOut()
  {
    u.cP().a(u.a.vK);
    return wm.booleanValue();
  }
  
  public Logger getLogger()
  {
    return wn;
  }
  
  public boolean isDryRunEnabled()
  {
    u.cP().a(u.a.vW);
    return wk;
  }
  
  public Tracker newTracker(int paramInt)
  {
    try
    {
      u.cP().a(u.a.vG);
      Tracker localTracker = new Tracker(null, this, mContext);
      if (paramInt > 0)
      {
        aj localaj = (aj)new ai(mContext).r(paramInt);
        if (localaj != null) {
          localTracker.a(localaj);
        }
      }
      localTracker = a(localTracker);
      return localTracker;
    }
    finally {}
  }
  
  public Tracker newTracker(String paramString)
  {
    try
    {
      u.cP().a(u.a.vG);
      paramString = a(new Tracker(paramString, this, mContext));
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  void p(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      try
      {
        throw new IllegalArgumentException("hit cannot be null");
      }
      finally {}
    }
    ak.a(paramMap, "&ul", ak.a(Locale.getDefault()));
    ak.a(paramMap, "&sr", ae.dq().getValue("&sr"));
    paramMap.put("&_u", u.cP().cR());
    u.cP().cQ();
    tS.p(paramMap);
  }
  
  public void reportActivityStart(Activity paramActivity)
  {
    if (!wp) {
      f(paramActivity);
    }
  }
  
  public void reportActivityStop(Activity paramActivity)
  {
    if (!wp) {
      g(paramActivity);
    }
  }
  
  public void setAppOptOut(boolean paramBoolean)
  {
    u.cP().a(u.a.vJ);
    wm = Boolean.valueOf(paramBoolean);
    if (wm.booleanValue()) {
      tS.cg();
    }
  }
  
  public void setDryRun(boolean paramBoolean)
  {
    u.cP().a(u.a.vV);
    wk = paramBoolean;
  }
  
  @Deprecated
  public void setLocalDispatchPeriod(int paramInt)
  {
    wl.setLocalDispatchPeriod(paramInt);
  }
  
  public void setLogger(Logger paramLogger)
  {
    u.cP().a(u.a.vX);
    wn = paramLogger;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.GoogleAnalytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */