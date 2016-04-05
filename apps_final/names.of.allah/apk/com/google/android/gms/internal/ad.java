package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ad
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  private static final long lE = TimeUnit.MILLISECONDS.toNanos(100L);
  private final WindowManager lA;
  private final PowerManager lB;
  private final KeyguardManager lC;
  private ae lD;
  private boolean lF = false;
  private long lG = Long.MIN_VALUE;
  private boolean lH;
  private BroadcastReceiver lI;
  private HashSet<aa> lJ = new HashSet();
  private boolean lh = false;
  private final Object lq = new Object();
  private final WeakReference<eg> lt;
  private WeakReference<ViewTreeObserver> lu;
  private final WeakReference<View> lv;
  private final ab lw;
  private final Context lx;
  private final af ly;
  private boolean lz;
  
  public ad(am paramam, eg parameg)
  {
    this(paramam, parameg, ow.bY(), ow, new ag(ow.getContext(), ow.bY()));
  }
  
  public ad(am paramam, eg parameg, ew paramew, View paramView, af paramaf)
  {
    lt = new WeakReference(parameg);
    lv = new WeakReference(paramView);
    lu = new WeakReference(null);
    lH = true;
    lw = new ab(Integer.toString(parameg.hashCode()), paramew, mc, rv);
    ly = paramaf;
    lA = ((WindowManager)paramView.getContext().getSystemService("window"));
    lB = ((PowerManager)paramView.getContext().getApplicationContext().getSystemService("power"));
    lC = ((KeyguardManager)paramView.getContext().getSystemService("keyguard"));
    lx = paramView.getContext().getApplicationContext();
    a(paramaf);
    ly.a(new ad.1(this));
    b(ly);
    ev.B("Tracking ad unit: " + lw.ap());
  }
  
  protected final int a(int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    float f = density;
    return (int)(paramInt / f);
  }
  
  public final void a(aa paramaa)
  {
    lJ.add(paramaa);
  }
  
  public final void a(ae paramae)
  {
    synchronized (lq)
    {
      lD = paramae;
      return;
    }
  }
  
  protected final void a(af paramaf)
  {
    paramaf.d("http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html");
  }
  
  protected final void a(ey paramey, Map<String, String> paramMap)
  {
    e(false);
  }
  
  protected final void a(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray = new JSONArray();
    JSONObject localJSONObject = new JSONObject();
    localJSONArray.put(paramJSONObject);
    localJSONObject.put("units", localJSONArray);
    ly.a("AFMA_updateActiveView", localJSONObject);
  }
  
  protected final boolean a(View paramView, boolean paramBoolean)
  {
    return (paramView.getVisibility() == 0) && (paramBoolean) && (paramView.isShown()) && (lB.isScreenOn()) && (!lC.inKeyguardRestrictedInputMode());
  }
  
  protected final void aq()
  {
    synchronized (lq)
    {
      if (lI != null) {
        return;
      }
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      lI = new ad.2(this);
      lx.registerReceiver(lI, localIntentFilter);
      return;
    }
  }
  
  protected final void ar()
  {
    synchronized (lq)
    {
      if (lI != null)
      {
        lx.unregisterReceiver(lI);
        lI = null;
      }
      return;
    }
  }
  
  public final void as()
  {
    synchronized (lq)
    {
      if (lH)
      {
        aw();
        ar();
      }
      try
      {
        a(ay());
        lH = false;
        at();
        ev.B("Untracked ad unit: " + lw.ap());
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          ev.b("JSON Failure while processing active view data.", localJSONException);
        }
      }
    }
  }
  
  protected final void at()
  {
    if (lD != null) {
      lD.a(this);
    }
  }
  
  public final boolean au()
  {
    synchronized (lq)
    {
      boolean bool = lH;
      return bool;
    }
  }
  
  protected final void av()
  {
    Object localObject = (View)lv.get();
    if (localObject == null) {}
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = (ViewTreeObserver)lu.get();
      localObject = ((View)localObject).getViewTreeObserver();
    } while (localObject == localViewTreeObserver);
    lu = new WeakReference(localObject);
    ((ViewTreeObserver)localObject).addOnScrollChangedListener(this);
    ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(this);
  }
  
  protected final void aw()
  {
    ViewTreeObserver localViewTreeObserver = (ViewTreeObserver)lu.get();
    if ((localViewTreeObserver == null) || (!localViewTreeObserver.isAlive())) {
      return;
    }
    localViewTreeObserver.removeOnScrollChangedListener(this);
    localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
  
  protected final JSONObject ax()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("afmaVersion", lw.an()).put("activeViewJSON", lw.ao()).put("timestamp", TimeUnit.NANOSECONDS.toMillis(System.nanoTime())).put("adFormat", lw.am()).put("hashCode", lw.ap());
    return localJSONObject;
  }
  
  protected final JSONObject ay()
  {
    JSONObject localJSONObject = ax();
    localJSONObject.put("doneReasonCode", "u");
    return localJSONObject;
  }
  
  protected final void b(af paramaf)
  {
    paramaf.a("/updateActiveView", new ad.3(this));
    paramaf.a("/activeViewPingSent", new ad.4(this));
    paramaf.a("/visibilityChanged", new ad.5(this));
    paramaf.a("/viewabilityChanged", bc.mR);
  }
  
  protected final JSONObject c(View paramView)
  {
    Object localObject2 = new int[2];
    Object localObject1 = new int[2];
    paramView.getLocationOnScreen((int[])localObject2);
    paramView.getLocationInWindow((int[])localObject1);
    localObject1 = ax();
    DisplayMetrics localDisplayMetrics = paramView.getContext().getResources().getDisplayMetrics();
    Rect localRect1 = new Rect();
    left = localObject2[0];
    top = localObject2[1];
    right = (left + paramView.getWidth());
    bottom = (top + paramView.getHeight());
    localObject2 = new Rect();
    right = lA.getDefaultDisplay().getWidth();
    bottom = lA.getDefaultDisplay().getHeight();
    Rect localRect2 = new Rect();
    boolean bool = paramView.getGlobalVisibleRect(localRect2, null);
    Rect localRect3 = new Rect();
    paramView.getLocalVisibleRect(localRect3);
    ((JSONObject)localObject1).put("viewBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("adBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("globalVisibleBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("localVisibleBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("screenDensity", density).put("isVisible", a(paramView, bool)).put("isStopped", lF).put("isPaused", lh);
    return (JSONObject)localObject1;
  }
  
  protected final void c(af paramaf)
  {
    paramaf.e("/viewabilityChanged");
    paramaf.e("/visibilityChanged");
    paramaf.e("/activeViewPingSent");
    paramaf.e("/updateActiveView");
  }
  
  protected final void d(boolean paramBoolean)
  {
    Iterator localIterator = lJ.iterator();
    while (localIterator.hasNext()) {
      ((aa)localIterator.next()).a(this, paramBoolean);
    }
  }
  
  protected final void e(boolean paramBoolean)
  {
    long l;
    synchronized (lq)
    {
      if ((!lz) || (!lH)) {
        return;
      }
      l = System.nanoTime();
      if ((paramBoolean) && (lG + lE > l)) {
        return;
      }
    }
    lG = l;
    eg localeg = (eg)lt.get();
    View localView = (View)lv.get();
    if (localView != null) {
      if (localeg == null) {
        break label146;
      }
    }
    for (;;)
    {
      int i;
      if (i != 0)
      {
        as();
        return;
        i = 0;
      }
      else
      {
        try
        {
          a(c(localView));
          av();
          at();
          return;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            ev.b("Active view update failed.", localJSONException);
          }
        }
        label146:
        i = 1;
      }
    }
  }
  
  public final void onGlobalLayout()
  {
    e(false);
  }
  
  public final void onScrollChanged()
  {
    e(true);
  }
  
  public final void pause()
  {
    synchronized (lq)
    {
      lh = true;
      e(false);
      ly.pause();
      return;
    }
  }
  
  public final void resume()
  {
    synchronized (lq)
    {
      ly.resume();
      lh = false;
      e(false);
      return;
    }
  }
  
  public final void stop()
  {
    synchronized (lq)
    {
      lF = true;
      e(false);
      ly.pause();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */