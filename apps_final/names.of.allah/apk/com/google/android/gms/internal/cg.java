package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class cg
  extends co.a
{
  private static final int od = Color.argb(0, 0, 0, 0);
  private ey lL;
  private final Activity oe;
  private ci of;
  private ck og;
  private cg.c oh;
  private cl oi;
  private boolean oj;
  private FrameLayout ok;
  private WebChromeClient.CustomViewCallback ol;
  private boolean om = false;
  private boolean on = false;
  private boolean oo = false;
  private RelativeLayout op;
  
  public cg(Activity paramActivity)
  {
    oe = paramActivity;
  }
  
  private static RelativeLayout.LayoutParams a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(paramInt3, paramInt4);
    localLayoutParams.setMargins(paramInt1, paramInt2, 0, 0);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(9);
    return localLayoutParams;
  }
  
  public static void a(Context paramContext, ci paramci)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.AdActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", kO.sw);
    ci.a(localIntent, paramci);
    localIntent.addFlags(524288);
    if (!(paramContext instanceof Activity)) {
      localIntent.addFlags(268435456);
    }
    paramContext.startActivity(localIntent);
  }
  
  private void aO()
  {
    if ((!oe.isFinishing()) || (on)) {}
    do
    {
      do
      {
        return;
        on = true;
      } while (!oe.isFinishing());
      if (lL != null)
      {
        lL.bT();
        op.removeView(lL);
        if (oh != null)
        {
          lL.q(false);
          oh.os.addView(lL, oh.index, oh.or);
        }
      }
    } while ((of == null) || (of.ov == null));
    of.ov.U();
  }
  
  private void k(boolean paramBoolean)
  {
    if (!oj) {
      oe.requestWindowFeature(1);
    }
    Object localObject = oe.getWindow();
    if ((!oo) || (of.oF.lb)) {
      ((Window)localObject).setFlags(1024, 1024);
    }
    setRequestedOrientation(of.orientation);
    if (Build.VERSION.SDK_INT >= 11)
    {
      ev.z("Enabling hardware acceleration on the AdActivity window.");
      er.a((Window)localObject);
    }
    op = new cg.b(oe, of.oE);
    boolean bool;
    if (!oo)
    {
      op.setBackgroundColor(-16777216);
      oe.setContentView(op);
      N();
      bool = of.ow.bW().ce();
      if (!paramBoolean) {
        break label410;
      }
      lL = ey.a(oe, of.ow.Q(), true, bool, null, of.kO);
      lL.bW().a(null, null, of.ox, of.oB, true, of.oD);
      lL.bW().a(new cg.1(this));
      if (of.nZ == null) {
        break label358;
      }
      lL.loadUrl(of.nZ);
    }
    for (;;)
    {
      lL.a(this);
      localObject = lL.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(lL);
      }
      if (oo) {
        lL.setBackgroundColor(od);
      }
      op.addView(lL, -1, -1);
      if (!paramBoolean) {
        lL.bU();
      }
      i(bool);
      return;
      op.setBackgroundColor(od);
      break;
      label358:
      if (of.oA != null)
      {
        lL.loadDataWithBaseURL(of.oy, of.oA, "text/html", "UTF-8", null);
      }
      else
      {
        throw new cg.a("No URL or HTML to display in ad overlay.");
        label410:
        lL = of.ow;
        lL.setContext(oe);
      }
    }
  }
  
  public void N()
  {
    oj = true;
  }
  
  public void a(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    ok = new FrameLayout(oe);
    ok.setBackgroundColor(-16777216);
    ok.addView(paramView, -1, -1);
    oe.setContentView(ok);
    N();
    ol = paramCustomViewCallback;
  }
  
  public ck aL()
  {
    return og;
  }
  
  public void aM()
  {
    if (of != null) {
      setRequestedOrientation(of.orientation);
    }
    if (ok != null)
    {
      oe.setContentView(op);
      N();
      ok.removeAllViews();
      ok = null;
    }
    if (ol != null)
    {
      ol.onCustomViewHidden();
      ol = null;
    }
  }
  
  public void aN()
  {
    op.removeView(oi);
    i(true);
  }
  
  public void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (og != null) {
      og.setLayoutParams(a(paramInt1, paramInt2, paramInt3, paramInt4));
    }
  }
  
  public void c(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (og == null)
    {
      og = new ck(oe, lL);
      op.addView(og, 0, a(paramInt1, paramInt2, paramInt3, paramInt4));
      lL.bW().r(false);
    }
  }
  
  public void close()
  {
    oe.finish();
  }
  
  public void i(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i = 50;
      oi = new cl(oe, i);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      if (!paramBoolean) {
        break label86;
      }
    }
    label86:
    for (int i = 11;; i = 9)
    {
      localLayoutParams.addRule(i);
      oi.j(of.oz);
      op.addView(oi, localLayoutParams);
      return;
      i = 32;
      break;
    }
  }
  
  public void j(boolean paramBoolean)
  {
    if (oi != null) {
      oi.j(paramBoolean);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
    }
    om = bool;
    for (;;)
    {
      try
      {
        of = ci.a(oe.getIntent());
        if (of.oF == null) {
          break label92;
        }
        oo = of.oF.kZ;
        if (of != null) {
          break;
        }
        throw new cg.a("Could not get info for ad overlay.");
      }
      catch (cg.a paramBundle)
      {
        ev.D(paramBundle.getMessage());
        oe.finish();
      }
      return;
      label92:
      oo = false;
    }
    if (paramBundle == null)
    {
      if (of.ov != null) {
        of.ov.V();
      }
      if ((of.oC != 1) && (of.ou != null)) {
        of.ou.onAdClicked();
      }
    }
    switch (of.oC)
    {
    }
    for (;;)
    {
      throw new cg.a("Could not determine ad overlay type.");
      k(false);
      return;
      oh = new cg.c(of.ow);
      k(false);
      return;
      k(true);
      return;
      if (om)
      {
        oe.finish();
        return;
      }
      if (cd.a(oe, of.ot, of.oB)) {
        break;
      }
      oe.finish();
      return;
    }
  }
  
  public void onDestroy()
  {
    if (og != null) {
      og.destroy();
    }
    if (lL != null) {
      op.removeView(lL);
    }
    aO();
  }
  
  public void onPause()
  {
    if (og != null) {
      og.pause();
    }
    aM();
    if ((lL != null) && ((!oe.isFinishing()) || (oh == null))) {
      ep.a(lL);
    }
    aO();
  }
  
  public void onRestart() {}
  
  public void onResume()
  {
    if ((of != null) && (of.oC == 4))
    {
      if (!om) {
        break label47;
      }
      oe.finish();
    }
    for (;;)
    {
      if (lL != null) {
        ep.b(lL);
      }
      return;
      label47:
      om = true;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", om);
  }
  
  public void onStart() {}
  
  public void onStop()
  {
    aO();
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    oe.setRequestedOrientation(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */