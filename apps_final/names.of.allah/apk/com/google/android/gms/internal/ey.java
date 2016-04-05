package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ey
  extends WebView
  implements DownloadListener
{
  private final WindowManager lA;
  private final Object lq = new Object();
  private am nD;
  private final ew nE;
  private final l py;
  private boolean sA;
  private boolean sB;
  private boolean sC;
  private final ez sx;
  private final ey.a sy;
  private cg sz;
  
  private ey(ey.a parama, am paramam, boolean paramBoolean1, boolean paramBoolean2, l paraml, ew paramew)
  {
    super(parama);
    sy = parama;
    nD = paramam;
    sA = paramBoolean1;
    py = paraml;
    nE = paramew;
    lA = ((WindowManager)getContext().getSystemService("window"));
    setBackgroundColor(0);
    paramam = getSettings();
    paramam.setJavaScriptEnabled(true);
    paramam.setSavePassword(false);
    paramam.setSupportMultipleWindows(true);
    paramam.setJavaScriptCanOpenWindowsAutomatically(true);
    ep.a(parama, st, paramam);
    if (Build.VERSION.SDK_INT >= 17)
    {
      es.a(getContext(), paramam);
      setDownloadListener(this);
      if (Build.VERSION.SDK_INT < 11) {
        break label194;
      }
      sx = new fb(this, paramBoolean2);
      label142:
      setWebViewClient(sx);
      if (Build.VERSION.SDK_INT < 14) {
        break label211;
      }
      setWebChromeClient(new fc(this));
    }
    for (;;)
    {
      cb();
      return;
      if (Build.VERSION.SDK_INT < 11) {
        break;
      }
      er.a(getContext(), paramam);
      break;
      label194:
      sx = new ez(this, paramBoolean2);
      break label142;
      label211:
      if (Build.VERSION.SDK_INT >= 11) {
        setWebChromeClient(new fa(this));
      }
    }
  }
  
  public static ey a(Context paramContext, am paramam, boolean paramBoolean1, boolean paramBoolean2, l paraml, ew paramew)
  {
    return new ey(new ey.a(paramContext), paramam, paramBoolean1, paramBoolean2, paraml, paramew);
  }
  
  private void cb()
  {
    for (;;)
    {
      synchronized (lq)
      {
        if ((sA) || (nD.md))
        {
          if (Build.VERSION.SDK_INT < 14)
          {
            ev.z("Disabling hardware acceleration on an overlay.");
            cc();
            return;
          }
          ev.z("Enabling hardware acceleration on an overlay.");
          cd();
        }
      }
      if (Build.VERSION.SDK_INT < 18)
      {
        ev.z("Disabling hardware acceleration on an AdView.");
        cc();
      }
      else
      {
        ev.z("Enabling hardware acceleration on an AdView.");
        cd();
      }
    }
  }
  
  private void cc()
  {
    synchronized (lq)
    {
      if ((!sB) && (Build.VERSION.SDK_INT >= 11)) {
        er.d(this);
      }
      sB = true;
      return;
    }
  }
  
  private void cd()
  {
    synchronized (lq)
    {
      if ((sB) && (Build.VERSION.SDK_INT >= 11)) {
        er.e(this);
      }
      sB = false;
      return;
    }
  }
  
  protected void E(String paramString)
  {
    synchronized (lq)
    {
      if (!isDestroyed())
      {
        loadUrl(paramString);
        return;
      }
      ev.D("The webview is destroyed. Ignoring action.");
    }
  }
  
  public am Q()
  {
    synchronized (lq)
    {
      am localam = nD;
      return localam;
    }
  }
  
  public void a(Context paramContext, am paramam)
  {
    synchronized (lq)
    {
      sy.setBaseContext(paramContext);
      sz = null;
      nD = paramam;
      sA = false;
      ep.b(this);
      loadUrl("about:blank");
      sx.reset();
      return;
    }
  }
  
  public void a(am paramam)
  {
    synchronized (lq)
    {
      nD = paramam;
      requestLayout();
      return;
    }
  }
  
  public void a(cg paramcg)
  {
    synchronized (lq)
    {
      sz = paramcg;
      return;
    }
  }
  
  public void a(String paramString, Map<String, ?> paramMap)
  {
    try
    {
      paramMap = ep.o(paramMap);
      b(paramString, paramMap);
      return;
    }
    catch (JSONException paramString)
    {
      ev.D("Could not convert parameters to JSON.");
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("javascript:" + paramString + "(");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    E(((StringBuilder)localObject).toString());
  }
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("javascript:AFMA_ReceiveMessage('");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    ((StringBuilder)localObject).append(",");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    ev.C("Dispatching AFMA event: " + localObject);
    E(((StringBuilder)localObject).toString());
  }
  
  public void bS()
  {
    if (!bW().ce()) {
      return;
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    Display localDisplay = lA.getDefaultDisplay();
    localDisplay.getMetrics(localDisplayMetrics);
    int j = ep.m(getContext());
    float f = 160.0F / densityDpi;
    int i = (int)(widthPixels * f);
    j = (int)((heightPixels - j) * f);
    try
    {
      b("onScreenInfoChanged", new JSONObject().put("width", i).put("height", j).put("density", density).put("rotation", localDisplay.getRotation()));
      return;
    }
    catch (JSONException localJSONException)
    {
      ev.b("Error occured while obtaining screen information.", localJSONException);
    }
  }
  
  public void bT()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", nE.st);
    a("onhide", localHashMap);
  }
  
  public void bU()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", nE.st);
    a("onshow", localHashMap);
  }
  
  public cg bV()
  {
    synchronized (lq)
    {
      cg localcg = sz;
      return localcg;
    }
  }
  
  public ez bW()
  {
    return sx;
  }
  
  public l bX()
  {
    return py;
  }
  
  public ew bY()
  {
    return nE;
  }
  
  public boolean bZ()
  {
    synchronized (lq)
    {
      boolean bool = sA;
      return bool;
    }
  }
  
  public Context ca()
  {
    return sy.ca();
  }
  
  public void destroy()
  {
    synchronized (lq)
    {
      super.destroy();
      sC = true;
      return;
    }
  }
  
  public boolean isDestroyed()
  {
    synchronized (lq)
    {
      boolean bool = sC;
      return bool;
    }
  }
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.setDataAndType(Uri.parse(paramString1), paramString4);
      getContext().startActivity(paramString2);
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      ev.z("Couldn't find an Activity to view url/mimetype: " + paramString1 + " / " + paramString4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = Integer.MAX_VALUE;
    for (;;)
    {
      int i;
      int m;
      int k;
      synchronized (lq)
      {
        if ((isInEditMode()) || (sA))
        {
          super.onMeasure(paramInt1, paramInt2);
          return;
        }
        int n = View.MeasureSpec.getMode(paramInt1);
        i = View.MeasureSpec.getSize(paramInt1);
        m = View.MeasureSpec.getMode(paramInt2);
        k = View.MeasureSpec.getSize(paramInt2);
        if (n == Integer.MIN_VALUE) {
          break label277;
        }
        if (n != 1073741824) {
          break label270;
        }
        break label277;
        if ((nD.widthPixels > paramInt1) || (nD.heightPixels > paramInt2))
        {
          float f = sy.getResources().getDisplayMetrics().density;
          ev.D("Not enough space to show ad. Needs " + (int)(nD.widthPixels / f) + "x" + (int)(nD.heightPixels / f) + " dp, but only has " + (int)(i / f) + "x" + (int)(k / f) + " dp.");
          if (getVisibility() != 8) {
            setVisibility(4);
          }
          setMeasuredDimension(0, 0);
          return;
        }
      }
      if (getVisibility() != 8) {
        setVisibility(0);
      }
      setMeasuredDimension(nD.widthPixels, nD.heightPixels);
      continue;
      label270:
      paramInt1 = Integer.MAX_VALUE;
      break label280;
      label277:
      paramInt1 = i;
      label280:
      if (m != Integer.MIN_VALUE)
      {
        paramInt2 = j;
        if (m != 1073741824) {}
      }
      else
      {
        paramInt2 = k;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (py != null) {
      py.a(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void q(boolean paramBoolean)
  {
    synchronized (lq)
    {
      sA = paramBoolean;
      cb();
      return;
    }
  }
  
  public void setContext(Context paramContext)
  {
    sy.setBaseContext(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */