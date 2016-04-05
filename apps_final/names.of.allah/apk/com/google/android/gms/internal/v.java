package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.ArrayList;
import java.util.HashSet;

public class v
  extends ar.a
  implements bb, be, bg, bo, cj, cm, dn.a, ek, u
{
  private final v.c kA;
  private final z kB;
  private final ac kC;
  private boolean kD;
  private final ComponentCallbacks kE = new v.1(this);
  private final bu kz;
  
  public v(Context paramContext, am paramam, String paramString, bu parambu, ew paramew)
  {
    kA = new v.c(paramContext, paramam, paramString, paramew);
    kz = parambu;
    kB = new z(this);
    kC = new ac();
    ep.k(paramContext);
    R();
  }
  
  private void R()
  {
    if ((Build.VERSION.SDK_INT >= 14) && (kA != null) && (kA.kM != null)) {
      kA.kM.registerComponentCallbacks(kE);
    }
  }
  
  private void S()
  {
    if ((Build.VERSION.SDK_INT >= 14) && (kA != null) && (kA.kM != null)) {
      kA.kM.unregisterComponentCallbacks(kE);
    }
  }
  
  private void a(int paramInt)
  {
    ev.D("Failed to load ad: " + paramInt);
    if (kA.kP != null) {}
    try
    {
      kA.kP.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call AdListener.onAdFailedToLoad().", localRemoteException);
    }
  }
  
  private void ac()
  {
    ev.B("Ad closing.");
    if (kA.kP != null) {}
    try
    {
      kA.kP.onAdClosed();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call AdListener.onAdClosed().", localRemoteException);
    }
  }
  
  private void ad()
  {
    ev.B("Ad leaving application.");
    if (kA.kP != null) {}
    try
    {
      kA.kP.onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call AdListener.onAdLeftApplication().", localRemoteException);
    }
  }
  
  private void ae()
  {
    ev.B("Ad opening.");
    if (kA.kP != null) {}
    try
    {
      kA.kP.onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call AdListener.onAdOpened().", localRemoteException);
    }
  }
  
  private void af()
  {
    ev.B("Ad finished loading.");
    if (kA.kP != null) {}
    try
    {
      kA.kP.onAdLoaded();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call AdListener.onAdLoaded().", localRemoteException);
    }
  }
  
  private boolean ag()
  {
    boolean bool = true;
    if (!ep.a(kA.kM.getPackageManager(), kA.kM.getPackageName(), "android.permission.INTERNET"))
    {
      if (!kA.kR.md) {
        eu.a(kA.kK, kA.kR, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
      }
      bool = false;
    }
    if (!ep.j(kA.kM))
    {
      if (!kA.kR.md) {
        eu.a(kA.kK, kA.kR, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
      }
      bool = false;
    }
    if ((!bool) && (!kA.kR.md)) {
      kA.kK.setVisibility(0);
    }
    return bool;
  }
  
  private void ah()
  {
    if (kA.kS == null) {
      ev.D("Ad state was null when trying to ping click URLs.");
    }
    do
    {
      return;
      ev.z("Pinging click URLs.");
      kA.kT.bx();
      if (kA.kS.nr != null) {
        ep.a(kA.kM, kA.kO.st, kA.kS.nr);
      }
    } while ((kA.kS.rw == null) || (kA.kS.rw.nr == null));
    bs.a(kA.kM, kA.kO.st, kA.kS, kA.kL, false, kA.kS.rw.nr);
  }
  
  private void ai()
  {
    if (kA.kS != null)
    {
      kA.kS.ow.destroy();
      kA.kS = null;
    }
  }
  
  private void b(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -2);
    kA.kK.addView(paramView, localLayoutParams);
  }
  
  /* Error */
  private boolean b(eg parameg)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 301	com/google/android/gms/internal/eg:qd	Z
    //   4: ifeq +184 -> 188
    //   7: aload_1
    //   8: getfield 305	com/google/android/gms/internal/eg:nL	Lcom/google/android/gms/internal/bv;
    //   11: invokeinterface 311 1 0
    //   16: invokestatic 317	com/google/android/gms/dynamic/e:e	(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    //   19: checkcast 319	android/view/View
    //   22: astore_1
    //   23: aload_0
    //   24: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   27: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   30: invokevirtual 323	com/google/android/gms/internal/v$a:getNextView	()Landroid/view/View;
    //   33: astore_2
    //   34: aload_2
    //   35: ifnull +14 -> 49
    //   38: aload_0
    //   39: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   42: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   45: aload_2
    //   46: invokevirtual 326	com/google/android/gms/internal/v$a:removeView	(Landroid/view/View;)V
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 328	com/google/android/gms/internal/v:b	(Landroid/view/View;)V
    //   54: aload_0
    //   55: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   58: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   61: invokevirtual 332	com/google/android/gms/internal/v$a:getChildCount	()I
    //   64: iconst_1
    //   65: if_icmple +13 -> 78
    //   68: aload_0
    //   69: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   72: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   75: invokevirtual 335	com/google/android/gms/internal/v$a:showNext	()V
    //   78: aload_0
    //   79: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   82: getfield 224	com/google/android/gms/internal/v$c:kS	Lcom/google/android/gms/internal/eg;
    //   85: ifnull +70 -> 155
    //   88: aload_0
    //   89: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   92: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   95: invokevirtual 323	com/google/android/gms/internal/v$a:getNextView	()Landroid/view/View;
    //   98: astore_1
    //   99: aload_1
    //   100: instanceof 281
    //   103: ifeq +158 -> 261
    //   106: aload_1
    //   107: checkcast 281	com/google/android/gms/internal/ey
    //   110: aload_0
    //   111: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   114: getfield 85	com/google/android/gms/internal/v$c:kM	Landroid/content/Context;
    //   117: aload_0
    //   118: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   121: getfield 188	com/google/android/gms/internal/v$c:kR	Lcom/google/android/gms/internal/am;
    //   124: invokevirtual 338	com/google/android/gms/internal/ey:a	(Landroid/content/Context;Lcom/google/android/gms/internal/am;)V
    //   127: aload_0
    //   128: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   131: getfield 224	com/google/android/gms/internal/v$c:kS	Lcom/google/android/gms/internal/eg;
    //   134: getfield 305	com/google/android/gms/internal/eg:nL	Lcom/google/android/gms/internal/bv;
    //   137: ifnull +18 -> 155
    //   140: aload_0
    //   141: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   144: getfield 224	com/google/android/gms/internal/v$c:kS	Lcom/google/android/gms/internal/eg;
    //   147: getfield 305	com/google/android/gms/internal/eg:nL	Lcom/google/android/gms/internal/bv;
    //   150: invokeinterface 339 1 0
    //   155: aload_0
    //   156: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   159: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   162: iconst_0
    //   163: invokevirtual 219	com/google/android/gms/internal/v$a:setVisibility	(I)V
    //   166: iconst_1
    //   167: ireturn
    //   168: astore_1
    //   169: ldc_w 341
    //   172: aload_1
    //   173: invokestatic 135	com/google/android/gms/internal/ev:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   176: iconst_0
    //   177: ireturn
    //   178: astore_1
    //   179: ldc_w 343
    //   182: aload_1
    //   183: invokestatic 135	com/google/android/gms/internal/ev:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   186: iconst_0
    //   187: ireturn
    //   188: aload_1
    //   189: getfield 346	com/google/android/gms/internal/eg:rx	Lcom/google/android/gms/internal/am;
    //   192: ifnull -138 -> 54
    //   195: aload_1
    //   196: getfield 279	com/google/android/gms/internal/eg:ow	Lcom/google/android/gms/internal/ey;
    //   199: aload_1
    //   200: getfield 346	com/google/android/gms/internal/eg:rx	Lcom/google/android/gms/internal/am;
    //   203: invokevirtual 349	com/google/android/gms/internal/ey:a	(Lcom/google/android/gms/internal/am;)V
    //   206: aload_0
    //   207: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   210: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   213: invokevirtual 352	com/google/android/gms/internal/v$a:removeAllViews	()V
    //   216: aload_0
    //   217: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   220: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   223: aload_1
    //   224: getfield 346	com/google/android/gms/internal/eg:rx	Lcom/google/android/gms/internal/am;
    //   227: getfield 355	com/google/android/gms/internal/am:widthPixels	I
    //   230: invokevirtual 358	com/google/android/gms/internal/v$a:setMinimumWidth	(I)V
    //   233: aload_0
    //   234: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   237: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   240: aload_1
    //   241: getfield 346	com/google/android/gms/internal/eg:rx	Lcom/google/android/gms/internal/am;
    //   244: getfield 361	com/google/android/gms/internal/am:heightPixels	I
    //   247: invokevirtual 364	com/google/android/gms/internal/v$a:setMinimumHeight	(I)V
    //   250: aload_0
    //   251: aload_1
    //   252: getfield 279	com/google/android/gms/internal/eg:ow	Lcom/google/android/gms/internal/ey;
    //   255: invokespecial 328	com/google/android/gms/internal/v:b	(Landroid/view/View;)V
    //   258: goto -204 -> 54
    //   261: aload_1
    //   262: ifnull -135 -> 127
    //   265: aload_0
    //   266: getfield 53	com/google/android/gms/internal/v:kA	Lcom/google/android/gms/internal/v$c;
    //   269: getfield 197	com/google/android/gms/internal/v$c:kK	Lcom/google/android/gms/internal/v$a;
    //   272: aload_1
    //   273: invokevirtual 326	com/google/android/gms/internal/v$a:removeView	(Landroid/view/View;)V
    //   276: goto -149 -> 127
    //   279: astore_1
    //   280: ldc_w 366
    //   283: invokestatic 120	com/google/android/gms/internal/ev:D	(Ljava/lang/String;)V
    //   286: goto -131 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	this	v
    //   0	289	1	parameg	eg
    //   33	13	2	localView	View
    // Exception table:
    //   from	to	target	type
    //   7	23	168	android/os/RemoteException
    //   49	54	178	java/lang/Throwable
    //   140	155	279	android/os/RemoteException
  }
  
  private dt.a c(aj paramaj)
  {
    ApplicationInfo localApplicationInfo = kA.kM.getApplicationInfo();
    try
    {
      PackageInfo localPackageInfo = kA.kM.getPackageManager().getPackageInfo(packageName, 0);
      if ((!kA.kR.md) && (kA.kK.getParent() != null))
      {
        localObject2 = new int[2];
        kA.kK.getLocationOnScreen((int[])localObject2);
        int j = localObject2[0];
        int k = localObject2[1];
        localObject2 = kA.kM.getResources().getDisplayMetrics();
        int m = kA.kK.getWidth();
        int n = kA.kK.getHeight();
        if ((kA.kK.isShown()) && (j + m > 0) && (k + n > 0) && (j <= widthPixels) && (k <= heightPixels))
        {
          i = 1;
          localObject2 = new Bundle(5);
          ((Bundle)localObject2).putInt("x", j);
          ((Bundle)localObject2).putInt("y", k);
          ((Bundle)localObject2).putInt("width", m);
          ((Bundle)localObject2).putInt("height", n);
          ((Bundle)localObject2).putInt("visible", i);
          String str = ei.bD();
          kA.kT = new eh(str, kA.kL);
          kA.kT.f(paramaj);
          Bundle localBundle = ei.a(kA.kM, this, str);
          return new dt.a((Bundle)localObject2, paramaj, kA.kR, kA.kL, localApplicationInfo, localPackageInfo, str, ei.rN, kA.kO, localBundle);
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Object localObject1 = null;
        continue;
        int i = 0;
        continue;
        Object localObject2 = null;
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (kA.kS == null) {
      ev.D("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      ev.z("Pinging Impression URLs.");
      kA.kT.bw();
      if (kA.kS.ns != null) {
        ep.a(kA.kM, kA.kO.st, kA.kS.ns);
      }
      if ((kA.kS.rw != null) && (kA.kS.rw.ns != null)) {
        bs.a(kA.kM, kA.kO.st, kA.kS, kA.kL, paramBoolean, kA.kS.rw.ns);
      }
    } while ((kA.kS.nK == null) || (kA.kS.nK.nn == null));
    bs.a(kA.kM, kA.kO.st, kA.kS, kA.kL, paramBoolean, kA.kS.nK.nn);
  }
  
  public d P()
  {
    hn.ay("getAdFrame must be called on the main UI thread.");
    return e.h(kA.kK);
  }
  
  public am Q()
  {
    hn.ay("getAdSize must be called on the main UI thread.");
    return kA.kR;
  }
  
  public void T()
  {
    ad();
  }
  
  public void U()
  {
    kC.d(kA.kS);
    if (kA.kR.md) {
      ai();
    }
    kD = false;
    ac();
    kA.kT.by();
  }
  
  public void V()
  {
    if (kA.kR.md) {
      c(false);
    }
    kD = true;
    ae();
  }
  
  public void W()
  {
    onAdClicked();
  }
  
  public void X()
  {
    U();
  }
  
  public void Y()
  {
    T();
  }
  
  public void Z()
  {
    V();
  }
  
  public void a(am paramam)
  {
    hn.ay("setAdSize must be called on the main UI thread.");
    kA.kR = paramam;
    if (kA.kS != null) {
      kA.kS.ow.a(paramam);
    }
    if (kA.kK.getChildCount() > 1) {
      kA.kK.removeView(kA.kK.getNextView());
    }
    kA.kK.setMinimumWidth(widthPixels);
    kA.kK.setMinimumHeight(heightPixels);
    kA.kK.requestLayout();
  }
  
  public void a(aq paramaq)
  {
    hn.ay("setAdListener must be called on the main UI thread.");
    kA.kP = paramaq;
  }
  
  public void a(at paramat)
  {
    hn.ay("setAppEventListener must be called on the main UI thread.");
    kA.kU = paramat;
  }
  
  public void a(dd paramdd)
  {
    hn.ay("setInAppPurchaseListener must be called on the main UI thread.");
    kA.kW = paramdd;
  }
  
  public void a(dh paramdh, String paramString)
  {
    hn.ay("setPlayStorePurchaseParams must be called on the main UI thread.");
    kA.kX = new da(paramString);
    kA.kV = paramdh;
    if ((!ei.bH()) && (paramdh != null)) {
      new ct(kA.kM, kA.kV, kA.kX).start();
    }
  }
  
  public void a(eg parameg)
  {
    int j = 0;
    kA.kQ = null;
    if ((errorCode != -2) && (errorCode != 3)) {
      ei.b(kA.al());
    }
    if (errorCode == -1) {
      return;
    }
    boolean bool;
    if (pV.extras != null)
    {
      bool = pV.extras.getBoolean("_noRefresh", false);
      if (!kA.kR.md) {
        break label184;
      }
      ep.a(ow);
    }
    for (;;)
    {
      if ((errorCode == 3) && (rw != null) && (rw.nt != null))
      {
        ev.z("Pinging no fill URLs.");
        bs.a(kA.kM, kA.kO.st, parameg, kA.kL, false, rw.nt);
      }
      if (errorCode == -2) {
        break label285;
      }
      a(errorCode);
      return;
      bool = false;
      break;
      label184:
      if (!bool) {
        if (nv > 0L) {
          kB.a(pV, nv);
        } else if ((rw != null) && (rw.nv > 0L)) {
          kB.a(pV, rw.nv);
        } else if ((!qd) && (errorCode == 2)) {
          kB.d(pV);
        }
      }
    }
    label285:
    if (!kA.kR.md)
    {
      if (!b(parameg))
      {
        a(0);
        return;
      }
      if (kA.kK != null) {
        v.a.a(kA.kK).x(qi);
      }
    }
    if ((kA.kS != null) && (kA.kS.nN != null)) {
      kA.kS.nN.a(null);
    }
    if (nN != null) {
      nN.a(this);
    }
    kC.d(kA.kS);
    kA.kS = parameg;
    if (rx != null) {
      kA.kR = rx;
    }
    kA.kT.j(ry);
    kA.kT.k(rz);
    kA.kT.n(kA.kR.md);
    kA.kT.o(qd);
    if (!kA.kR.md) {
      c(false);
    }
    if (kA.kY == null) {
      kA.kY = new el(kA.kL);
    }
    int i;
    if (rw != null)
    {
      i = rw.nw;
      j = rw.nx;
    }
    for (;;)
    {
      kA.kY.a(i, j);
      if ((!kA.kR.md) && (ow != null) && ((ow.bW().ce()) || (rv != null)))
      {
        ad localad = kC.a(kA.kR, kA.kS);
        if ((ow.bW().ce()) && (localad != null)) {
          localad.a(new y(ow));
        }
      }
      kA.kS.ow.bS();
      af();
      return;
      i = 0;
    }
  }
  
  public void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = new cu(paramString, paramArrayList, kA.kM, kA.kO.st);
    if (kA.kW == null)
    {
      ev.D("InAppPurchaseListener is not set. Try to launch default purchase flow.");
      if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(kA.kM) != 0) {
        ev.D("Google Play Service unavailable, cannot launch default purchase flow.");
      }
      for (;;)
      {
        return;
        if (kA.kV == null)
        {
          ev.D("PlayStorePurchaseListener is not set.");
          return;
        }
        if (kA.kX == null)
        {
          ev.D("PlayStorePurchaseVerifier is not initialized.");
          return;
        }
        try
        {
          boolean bool = kA.kV.isValidPurchase(paramString);
          if (!bool) {}
        }
        catch (RemoteException paramString)
        {
          for (;;)
          {
            ev.D("Could not start In-App purchase.");
          }
        }
      }
      cv.a(kA.kM, kA.kO.sw, new cr(paramArrayList, kA.kV, kA.kX, kA.kM));
      return;
    }
    try
    {
      kA.kW.a(paramArrayList);
      return;
    }
    catch (RemoteException paramString)
    {
      ev.D("Could not start In-App purchase.");
    }
  }
  
  public void a(HashSet<eh> paramHashSet)
  {
    kA.a(paramHashSet);
  }
  
  public boolean a(aj paramaj)
  {
    hn.ay("loadAd must be called on the main UI thread.");
    if (kA.kQ != null) {
      ev.D("An ad request is already in progress. Aborting.");
    }
    do
    {
      return false;
      if ((kA.kR.md) && (kA.kS != null))
      {
        ev.D("An interstitial is already loading. Aborting.");
        return false;
      }
    } while (!ag());
    ev.B("Starting ad request.");
    if (!lT) {
      ev.B("Use AdRequest.Builder.addTestDevice(\"" + eu.o(kA.kM) + "\") to get test ads on this device.");
    }
    kB.cancel();
    kA.kZ = false;
    dt.a locala = c(paramaj);
    if (kA.kR.md)
    {
      paramaj = ey.a(kA.kM, kA.kR, false, false, kA.kN, kA.kO);
      paramaj.bW().a(this, null, this, this, true, this, this);
      kA.kQ = dn.a(kA.kM, locala, kA.kN, paramaj, kz, this);
      return true;
    }
    paramaj = kA.kK.getNextView();
    if ((paramaj instanceof ey))
    {
      paramaj = (ey)paramaj;
      paramaj.a(kA.kM, kA.kR);
    }
    for (;;)
    {
      paramaj.bW().a(this, this, this, this, false, this);
      break;
      if (paramaj != null) {
        kA.kK.removeView(paramaj);
      }
      ey localey = ey.a(kA.kM, kA.kR, false, false, kA.kN, kA.kO);
      paramaj = localey;
      if (kA.kR.me == null)
      {
        b(localey);
        paramaj = localey;
      }
    }
  }
  
  public void aa()
  {
    if (kA.kS != null) {
      ev.D("Mediation adapter " + kA.kS.nM + " refreshed, but mediation adapters should never refresh.");
    }
    c(true);
    af();
  }
  
  public void ab()
  {
    hn.ay("recordManualImpression must be called on the main UI thread.");
    if (kA.kS == null) {
      ev.D("Ad state was null when trying to ping manual tracking URLs.");
    }
    do
    {
      return;
      ev.z("Pinging manual tracking URLs.");
    } while (kA.kS.qf == null);
    ep.a(kA.kM, kA.kO.st, kA.kS.qf);
  }
  
  public void b(aj paramaj)
  {
    ViewParent localViewParent = kA.kK.getParent();
    if (((localViewParent instanceof View)) && (((View)localViewParent).isShown()) && (ep.bL()) && (!kD))
    {
      a(paramaj);
      return;
    }
    ev.B("Ad is not visible. Not refreshing ad.");
    kB.d(paramaj);
  }
  
  public void b(boolean paramBoolean)
  {
    kA.kZ = paramBoolean;
  }
  
  public void destroy()
  {
    hn.ay("destroy must be called on the main UI thread.");
    S();
    kA.kP = null;
    kA.kU = null;
    kB.cancel();
    kC.stop();
    stopLoading();
    if (kA.kK != null) {
      kA.kK.removeAllViews();
    }
    if ((kA.kS != null) && (kA.kS.ow != null)) {
      kA.kS.ow.destroy();
    }
    if ((kA.kS != null) && (kA.kS.nL != null)) {}
    try
    {
      kA.kS.nL.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.D("Could not destroy mediation adapter.");
    }
  }
  
  public boolean isReady()
  {
    hn.ay("isLoaded must be called on the main UI thread.");
    return (kA.kQ == null) && (kA.kS != null);
  }
  
  public void onAdClicked()
  {
    ah();
  }
  
  public void onAppEvent(String paramString1, String paramString2)
  {
    if (kA.kU != null) {}
    try
    {
      kA.kU.onAppEvent(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      ev.c("Could not call the AppEventListener.", paramString1);
    }
  }
  
  public void pause()
  {
    hn.ay("pause must be called on the main UI thread.");
    if (kA.kS != null) {
      ep.a(kA.kS.ow);
    }
    if ((kA.kS != null) && (kA.kS.nL != null)) {}
    try
    {
      kA.kS.nL.pause();
      kC.pause();
      kB.pause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.D("Could not pause mediation adapter.");
      }
    }
  }
  
  public void resume()
  {
    hn.ay("resume must be called on the main UI thread.");
    if (kA.kS != null) {
      ep.b(kA.kS.ow);
    }
    if ((kA.kS != null) && (kA.kS.nL != null)) {}
    try
    {
      kA.kS.nL.resume();
      kB.resume();
      kC.resume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.D("Could not resume mediation adapter.");
      }
    }
  }
  
  public void showInterstitial()
  {
    hn.ay("showInterstitial must be called on the main UI thread.");
    if (!kA.kR.md)
    {
      ev.D("Cannot call showInterstitial on a banner ad.");
      return;
    }
    if (kA.kS == null)
    {
      ev.D("The interstitial has not loaded.");
      return;
    }
    if (kA.kS.ow.bZ())
    {
      ev.D("The interstitial is already showing.");
      return;
    }
    kA.kS.ow.q(true);
    if ((kA.kS.ow.bW().ce()) || (kA.kS.rv != null))
    {
      ad localad = kC.a(kA.kR, kA.kS);
      if ((kA.kS.ow.bW().ce()) && (localad != null)) {
        localad.a(new y(kA.kS.ow));
      }
    }
    if (kA.kS.qd) {
      try
      {
        kA.kS.nL.showInterstitial();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        ev.c("Could not show interstitial.", localRemoteException);
        ai();
        return;
      }
    }
    w localw = new w(kA.kZ, false);
    Object localObject = localw;
    boolean bool2;
    if ((kA.kM instanceof Activity))
    {
      localObject = ((Activity)kA.kM).getWindow();
      Rect localRect1 = new Rect();
      Rect localRect2 = new Rect();
      ((Window)localObject).getDecorView().getGlobalVisibleRect(localRect1);
      ((Window)localObject).getDecorView().getWindowVisibleDisplayFrame(localRect2);
      localObject = localw;
      if (bottom != 0)
      {
        localObject = localw;
        if (bottom != 0)
        {
          bool2 = kA.kZ;
          if (top != top) {
            break label416;
          }
        }
      }
    }
    label416:
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject = new w(bool2, bool1);
      localObject = new ci(this, this, this, kA.kS.ow, kA.kS.orientation, kA.kO, kA.kS.qi, (w)localObject);
      cg.a(kA.kM, (ci)localObject);
      return;
    }
  }
  
  public void stopLoading()
  {
    hn.ay("stopLoading must be called on the main UI thread.");
    if (kA.kS != null)
    {
      kA.kS.ow.stopLoading();
      kA.kS = null;
    }
    if (kA.kQ != null) {
      kA.kQ.cancel();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */