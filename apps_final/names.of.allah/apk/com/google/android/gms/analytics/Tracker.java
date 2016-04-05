package com.google.android.gms.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.hn;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

public class Tracker
{
  private Context mContext;
  private final TrackerHandler xb;
  private final Map<String, String> xc = new HashMap();
  private ad xd;
  private final h xe;
  private final ae xf;
  private final g xg;
  private boolean xh;
  private Tracker.a xi;
  private aj xj;
  private ExceptionReporter xk;
  
  Tracker(String paramString, TrackerHandler paramTrackerHandler, Context paramContext)
  {
    this(paramString, paramTrackerHandler, h.cq(), ae.dq(), g.cp(), new z("tracking"), paramContext);
  }
  
  Tracker(String paramString, TrackerHandler paramTrackerHandler, h paramh, ae paramae, g paramg, ad paramad, Context paramContext)
  {
    xb = paramTrackerHandler;
    if (paramContext != null) {
      mContext = paramContext.getApplicationContext();
    }
    if (paramString != null) {
      xc.put("&tid", paramString);
    }
    xc.put("useSecure", "1");
    xe = paramh;
    xf = paramae;
    xg = paramg;
    xc.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
    xd = paramad;
    xi = new Tracker.a(this);
    enableAdvertisingIdCollection(false);
  }
  
  void a(aj paramaj)
  {
    aa.C("Loading Tracker config values.");
    xj = paramaj;
    if (xj.dz())
    {
      paramaj = xj.dA();
      set("&tid", paramaj);
      aa.C("[Tracker] trackingId loaded: " + paramaj);
    }
    if (xj.dB())
    {
      paramaj = Double.toString(xj.dC());
      set("&sf", paramaj);
      aa.C("[Tracker] sample frequency loaded: " + paramaj);
    }
    if (xj.dD())
    {
      setSessionTimeout(xj.getSessionTimeout());
      aa.C("[Tracker] session timeout loaded: " + dt());
    }
    if (xj.dE())
    {
      enableAutoActivityTracking(xj.dF());
      aa.C("[Tracker] auto activity tracking loaded: " + du());
    }
    if (xj.dG())
    {
      if (xj.dH())
      {
        set("&aip", "1");
        aa.C("[Tracker] anonymize ip loaded: true");
      }
      aa.C("[Tracker] anonymize ip loaded: false");
    }
    enableExceptionReporting(xj.dI());
  }
  
  long dt()
  {
    return xi.dt();
  }
  
  boolean du()
  {
    return xi.du();
  }
  
  public void enableAdvertisingIdCollection(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      xc.put("&ate", null);
      xc.put("&adid", null);
    }
    do
    {
      return;
      if (xc.containsKey("&ate")) {
        xc.remove("&ate");
      }
    } while (!xc.containsKey("&adid"));
    xc.remove("&adid");
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    xi.enableAutoActivityTracking(paramBoolean);
  }
  
  public void enableExceptionReporting(boolean paramBoolean)
  {
    if (xh == paramBoolean) {
      return;
    }
    xh = paramBoolean;
    if (paramBoolean)
    {
      xk = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), mContext);
      Thread.setDefaultUncaughtExceptionHandler(xk);
      aa.C("Uncaught exceptions will be reported to Google Analytics.");
      return;
    }
    if (xk != null) {
      Thread.setDefaultUncaughtExceptionHandler(xk.cy());
    }
    for (;;)
    {
      aa.C("Uncaught exceptions will not be reported to Google Analytics.");
      return;
      Thread.setDefaultUncaughtExceptionHandler(null);
    }
  }
  
  public String get(String paramString)
  {
    u.cP().a(u.a.vc);
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      if (xc.containsKey(paramString)) {
        return (String)xc.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return ak.a(Locale.getDefault());
      }
      if ((xe != null) && (xe.J(paramString))) {
        return xe.getValue(paramString);
      }
      if ((xf != null) && (xf.J(paramString))) {
        return xf.getValue(paramString);
      }
    } while ((xg == null) || (!xg.J(paramString)));
    return xg.getValue(paramString);
  }
  
  public void send(Map<String, String> paramMap)
  {
    u.cP().a(u.a.ve);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(xc);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid"))) {
      aa.D(String.format("Missing tracking id (%s) parameter.", new Object[] { "&tid" }));
    }
    String str = (String)localHashMap.get("&t");
    paramMap = str;
    if (TextUtils.isEmpty(str))
    {
      aa.D(String.format("Missing hit type (%s) parameter.", new Object[] { "&t" }));
      paramMap = "";
    }
    if (xi.dv()) {
      localHashMap.put("&sc", "start");
    }
    paramMap = paramMap.toLowerCase();
    if (("screenview".equals(paramMap)) || ("pageview".equals(paramMap)) || ("appview".equals(paramMap)) || (TextUtils.isEmpty(paramMap)))
    {
      int j = Integer.parseInt((String)xc.get("&a")) + 1;
      int i = j;
      if (j >= Integer.MAX_VALUE) {
        i = 1;
      }
      xc.put("&a", Integer.toString(i));
    }
    if ((!paramMap.equals("transaction")) && (!paramMap.equals("item")) && (!xd.dj()))
    {
      aa.D("Too many hits sent too quickly, rate limiting invoked.");
      return;
    }
    xb.p(localHashMap);
  }
  
  public void set(String paramString1, String paramString2)
  {
    hn.b(paramString1, "Key should be non-null");
    u.cP().a(u.a.vd);
    xc.put(paramString1, paramString2);
  }
  
  public void setAnonymizeIp(boolean paramBoolean)
  {
    set("&aip", ak.v(paramBoolean));
  }
  
  public void setAppId(String paramString)
  {
    set("&aid", paramString);
  }
  
  public void setAppInstallerId(String paramString)
  {
    set("&aiid", paramString);
  }
  
  public void setAppName(String paramString)
  {
    set("&an", paramString);
  }
  
  public void setAppVersion(String paramString)
  {
    set("&av", paramString);
  }
  
  public void setClientId(String paramString)
  {
    set("&cid", paramString);
  }
  
  public void setEncoding(String paramString)
  {
    set("&de", paramString);
  }
  
  public void setHostname(String paramString)
  {
    set("&dh", paramString);
  }
  
  public void setLanguage(String paramString)
  {
    set("&ul", paramString);
  }
  
  public void setLocation(String paramString)
  {
    set("&dl", paramString);
  }
  
  public void setPage(String paramString)
  {
    set("&dp", paramString);
  }
  
  public void setReferrer(String paramString)
  {
    set("&dr", paramString);
  }
  
  public void setSampleRate(double paramDouble)
  {
    set("&sf", Double.toHexString(paramDouble));
  }
  
  public void setScreenColors(String paramString)
  {
    set("&sd", paramString);
  }
  
  public void setScreenName(String paramString)
  {
    set("&cd", paramString);
  }
  
  public void setScreenResolution(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) && (paramInt2 < 0))
    {
      aa.D("Invalid width or height. The values should be non-negative.");
      return;
    }
    set("&sr", paramInt1 + "x" + paramInt2);
  }
  
  public void setSessionTimeout(long paramLong)
  {
    xi.setSessionTimeout(1000L * paramLong);
  }
  
  public void setTitle(String paramString)
  {
    set("&dt", paramString);
  }
  
  public void setUseSecure(boolean paramBoolean)
  {
    set("useSecure", ak.v(paramBoolean));
  }
  
  public void setViewportSize(String paramString)
  {
    set("&vp", paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */