package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ez
  extends WebViewClient
{
  protected final ey lL;
  private final Object lq = new Object();
  private bb mQ;
  private bg na;
  private be nb;
  private ez.a pL;
  private final HashMap<String, bd> sE = new HashMap();
  private u sF;
  private cj sG;
  private boolean sH = false;
  private boolean sI;
  private cm sJ;
  
  public ez(ey paramey, boolean paramBoolean)
  {
    lL = paramey;
    sI = paramBoolean;
  }
  
  private static boolean c(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equalsIgnoreCase(paramUri)) || ("https".equalsIgnoreCase(paramUri));
  }
  
  private void d(Uri paramUri)
  {
    Object localObject = paramUri.getPath();
    bd localbd = (bd)sE.get(localObject);
    if (localbd != null)
    {
      paramUri = ep.b(paramUri);
      if (ev.p(2))
      {
        ev.C("Received GMSG: " + (String)localObject);
        localObject = paramUri.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          ev.C("  " + str + ": " + (String)paramUri.get(str));
        }
      }
      localbd.b(lL, paramUri);
      return;
    }
    ev.C("No GMSG handler found for GMSG: " + paramUri);
  }
  
  public final void a(cf paramcf)
  {
    cj localcj = null;
    boolean bool = lL.bZ();
    u localu;
    if ((bool) && (!lL.Q().md))
    {
      localu = null;
      if (!bool) {
        break label70;
      }
    }
    for (;;)
    {
      a(new ci(paramcf, localu, localcj, sJ, lL.bY()));
      return;
      localu = sF;
      break;
      label70:
      localcj = sG;
    }
  }
  
  protected void a(ci paramci)
  {
    cg.a(lL.getContext(), paramci);
  }
  
  public final void a(ez.a parama)
  {
    pL = parama;
  }
  
  public void a(u paramu, cj paramcj, bb parambb, cm paramcm, boolean paramBoolean, be parambe)
  {
    a("/appEvent", new ba(parambb));
    a("/canOpenURLs", bc.mS);
    a("/click", bc.mT);
    a("/close", bc.mU);
    a("/customClose", bc.mV);
    a("/httpTrack", bc.mW);
    a("/log", bc.mX);
    a("/open", new bh(parambe));
    a("/touch", bc.mY);
    a("/video", bc.mZ);
    sF = paramu;
    sG = paramcj;
    mQ = parambb;
    nb = parambe;
    sJ = paramcm;
    sH = paramBoolean;
  }
  
  public void a(u paramu, cj paramcj, bb parambb, cm paramcm, boolean paramBoolean, be parambe, bg parambg)
  {
    a(paramu, paramcj, parambb, paramcm, paramBoolean, parambe);
    a("/setInterstitialProperties", new bf(parambg));
    na = parambg;
  }
  
  public final void a(String paramString, bd parambd)
  {
    sE.put(paramString, parambd);
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if ((lL.bZ()) && (!lL.Q().md)) {}
    for (u localu = null;; localu = sF)
    {
      a(new ci(localu, sG, sJ, lL, paramBoolean, paramInt, lL.bY()));
      return;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString)
  {
    cj localcj = null;
    boolean bool = lL.bZ();
    u localu;
    if ((bool) && (!lL.Q().md))
    {
      localu = null;
      if (!bool) {
        break label89;
      }
    }
    for (;;)
    {
      a(new ci(localu, localcj, mQ, sJ, lL, paramBoolean, paramInt, paramString, lL.bY(), nb));
      return;
      localu = sF;
      break;
      label89:
      localcj = sG;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    boolean bool = lL.bZ();
    u localu;
    if ((bool) && (!lL.Q().md))
    {
      localu = null;
      if (!bool) {
        break label91;
      }
    }
    label91:
    for (cj localcj = null;; localcj = sG)
    {
      a(new ci(localu, localcj, mQ, sJ, lL, paramBoolean, paramInt, paramString1, paramString2, lL.bY(), nb));
      return;
      localu = sF;
      break;
    }
  }
  
  public final void aN()
  {
    synchronized (lq)
    {
      sH = false;
      sI = true;
      cg localcg = lL.bV();
      if (localcg != null)
      {
        if (!eu.bR()) {
          eu.ss.post(new ez.1(this, localcg));
        }
      }
      else {
        return;
      }
      localcg.aN();
    }
  }
  
  public boolean ce()
  {
    synchronized (lq)
    {
      boolean bool = sI;
      return bool;
    }
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    ev.C("Loading resource: " + paramString);
    paramWebView = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(paramWebView.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(paramWebView.getHost()))) {
      d(paramWebView);
    }
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (pL != null)
    {
      pL.a(lL);
      pL = null;
    }
  }
  
  public final void r(boolean paramBoolean)
  {
    sH = paramBoolean;
  }
  
  public final void reset()
  {
    synchronized (lq)
    {
      sE.clear();
      sF = null;
      sG = null;
      pL = null;
      mQ = null;
      sH = false;
      sI = false;
      nb = null;
      sJ = null;
      return;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    ev.C("AdWebView shouldOverrideUrlLoading: " + paramString);
    Uri localUri = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(localUri.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(localUri.getHost()))) {
      d(localUri);
    }
    for (;;)
    {
      return true;
      if ((sH) && (paramWebView == lL) && (c(localUri))) {
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      }
      if (!lL.willNotDraw())
      {
        try
        {
          l locall = lL.bX();
          paramWebView = localUri;
          if (locall != null)
          {
            paramWebView = localUri;
            if (locall.a(localUri)) {
              paramWebView = locall.a(localUri, lL.getContext());
            }
          }
        }
        catch (m paramWebView)
        {
          for (;;)
          {
            ev.D("Unable to append parameter to URL: " + paramString);
            paramWebView = localUri;
          }
        }
        a(new cf("android.intent.action.VIEW", paramWebView.toString(), null, null, null, null, null));
      }
      else
      {
        ev.D("AdWebView unable to handle URL: " + paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */