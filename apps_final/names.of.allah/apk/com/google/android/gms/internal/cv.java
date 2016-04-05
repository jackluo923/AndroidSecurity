package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

public class cv
  extends de.a
  implements ServiceConnection
{
  private dh oV;
  private cs oW;
  private final cy oX;
  private da oZ;
  private final Activity oe;
  private Context pf;
  private dc pg;
  private cw ph;
  private String pi = null;
  
  public cv(Activity paramActivity)
  {
    oe = paramActivity;
    oX = cy.h(oe.getApplicationContext());
  }
  
  public static void a(Context paramContext, boolean paramBoolean, cr paramcr)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", paramBoolean);
    cr.a(localIntent, paramcr);
    paramContext.startActivity(localIntent);
  }
  
  private void a(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent)
  {
    try
    {
      oV.a(new cx(pf, paramString, paramBoolean, paramInt, paramIntent, ph));
      return;
    }
    catch (RemoteException paramString)
    {
      ev.D("Fail to invoke PlayStorePurchaseListener.");
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1001) {}
    for (;;)
    {
      try
      {
        paramInt1 = cz.c(paramIntent);
        if ((paramInt2 != -1) || (paramInt1 != 0)) {
          continue;
        }
        if (!oZ.a(pi, paramInt2, paramIntent)) {
          continue;
        }
        a(pg.getProductId(), true, paramInt2, paramIntent);
      }
      catch (RemoteException paramIntent)
      {
        ev.D("Fail to process purchase result.");
        return;
        oX.a(ph);
        a(pg.getProductId(), false, paramInt2, paramIntent);
        continue;
      }
      finally
      {
        pi = null;
        oe.finish();
      }
      pg.recordPlayBillingResolution(paramInt1);
      pi = null;
      oe.finish();
      return;
      a(pg.getProductId(), false, paramInt2, paramIntent);
    }
  }
  
  public void onCreate()
  {
    Object localObject = cr.b(oe.getIntent());
    oV = kV;
    oZ = kX;
    pg = oR;
    oW = new cs(oe.getApplicationContext());
    pf = oS;
    localObject = oe;
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    oe.getApplicationContext();
    ((Activity)localObject).bindService(localIntent, this, 1);
  }
  
  public void onDestroy()
  {
    oe.unbindService(this);
    oW.destroy();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    oW.o(paramIBinder);
    try
    {
      pi = oZ.bh();
      paramComponentName = oW.a(oe.getPackageName(), pg.getProductId(), pi);
      paramIBinder = (PendingIntent)paramComponentName.getParcelable("BUY_INTENT");
      if (paramIBinder == null)
      {
        int i = cz.a(paramComponentName);
        pg.recordPlayBillingResolution(i);
        a(pg.getProductId(), false, i, null);
        oe.finish();
        return;
      }
      ph = new cw(pg.getProductId(), pi);
      oX.b(ph);
      oe.startIntentSenderForResult(paramIBinder.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
      return;
    }
    catch (RemoteException paramComponentName)
    {
      ev.c("Error when connecting in-app billing service", paramComponentName);
      oe.finish();
      return;
    }
    catch (IntentSender.SendIntentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    ev.B("In-app billing service disconnected.");
    oW.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */